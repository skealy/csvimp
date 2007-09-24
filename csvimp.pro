#
# Common Public Attribution License Version 1.0.
#
# The contents of this file are subject to the Common Public Attribution
# License Version 1.0 (the "License"); you may not use this file except
# in compliance with the License. You may obtain a copy of the License
# at http://www.xTuple.com/CPAL.  The License is based on the Mozilla
# Public License Version 1.1 but Sections 14 and 15 have been added to
# cover use of software over a computer network and provide for limited
# attribution for the Original Developer. In addition, Exhibit A has
# been modified to be consistent with Exhibit B.
#
# Software distributed under the License is distributed on an "AS IS"
# basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
# the License for the specific language governing rights and limitations
# under the License.
#
# The Original Code is PostBooks Accounting, ERP, and CRM Suite.
#
# The Original Developer is not the Initial Developer and is __________.
# If left blank, the Original Developer is the Initial Developer.
# The Initial Developer of the Original Code is OpenMFG, LLC,
# d/b/a xTuple. All portions of the code written by xTuple are Copyright
# (c) 1999-2007 OpenMFG, LLC, d/b/a xTuple. All Rights Reserved.
#
# Contributor(s): ______________________.
#
# Alternatively, the contents of this file may be used under the terms
# of the xTuple End-User License Agreeement (the xTuple License), in which
# case the provisions of the xTuple License are applicable instead of
# those above.  If you wish to allow use of your version of this file only
# under the terms of the xTuple License and not to allow others to use
# your version of this file under the CPAL, indicate your decision by
# deleting the provisions above and replace them with the notice and other
# provisions required by the xTuple License. If you do not delete the
# provisions above, a recipient may use your version of this file under
# either the CPAL or the xTuple License.
#
# EXHIBIT B.  Attribution Information
#
# Attribution Copyright Notice:
# Copyright (c) 1999-2007 by OpenMFG, LLC, d/b/a xTuple
#
# Attribution Phrase:
# Powered by PostBooks, an open source solution from xTuple
#
# Attribution URL: www.xtuple.org
# (to be included in the "Community" menu of the application if possible)
#
# Graphic Image as provided in the Covered Code, if any.
# (online at www.xtuple.com/poweredby)
#
# Display of Attribution Information is required in Larger Works which
# are defined in the CPAL as a work which combines Covered Code or
# portions thereof with code not governed by the terms of the CPAL.
#

TEMPLATE = app
CONFIG += qt warn_on release
INCLUDEPATH += ../xtuple/common
INCLUDEPATH += ../openrpt/common
win32:INCLUDEPATH += .

TARGET = csvimp

OBJECTS_DIR = tmp
MOC_DIR     = tmp
UI_DIR      = tmp

LIBS += -L../xtuple/lib -lxtuplecommon
LIBS += -L../openrpt/lib -lcommon


# Input
#The following line was changed from FORMS to FORMS3 by qt3to4
FORMS3   += csvtoolwindow.ui \
           csvloadprogress.ui \
           csvimportprogress.ui \
           logwindow.ui \
           missingfield.ui \
           csvatlaswindow.ui

HEADERS += csvdata.h \
           csvmap.h \
           csvatlas.h \
           rowcontroller.h \
           data.h

SOURCES += csvdata.cpp \
           csvmap.cpp \
           csvatlas.cpp \
           rowcontroller.cpp \
           data.cpp \
           main.cpp

#The following line was inserted by qt3to4
QT += xml  sql 
#The following line was inserted by qt3to4
CONFIG += uic3

QT += qt3support
macx {
  CONFIG += x86 ppc
}

