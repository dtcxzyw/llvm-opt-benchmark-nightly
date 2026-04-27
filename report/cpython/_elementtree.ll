inline.NumInlined: 446
inline.NumDeleted: 84
begin_hunk_0_@_elementtree_XMLParser_close:bb.a
  br label %_elementtree_XMLParser_close_impl.exit

_elementtree_XMLParser_close_impl.exit:           ; preds = %_check_xmlparser.exit.thread.i, %_check_xmlparser.exit.i, %bb.c, %Py_DECREF.exit19.i, %bb.g, %bb.h, %Py_DECREF.exit.i
  %.1.i = phi ptr [ null, %_check_xmlparser.exit.thread.i ], [ @_Py_NoneStruct, %bb.h ], [ %i.au, %Py_DECREF.exit.i ], [ %_Py_NoneStruct..i.i, %bb.g ], [ %_Py_NoneStruct..i.i, %Py_DECREF.exit19.i ], [ null, %bb.c ], [ null, %_check_xmlparser.exit.i ]
  ret ptr %.1.i
}

end_hunk_0
begin_hunk_1_@_elementtree_XMLParser__parse_whole:bb.a
  br label %_elementtree_XMLParser__parse_whole_impl.exit

_elementtree_XMLParser__parse_whole_impl.exit:    ; preds = %_check_xmlparser.exit.thread.i, %_check_xmlparser.exit.i, %._crit_edge.i, %bb.c, %bb.d, %bb.l, %bb.m, %bb.n, %Py_DECREF.exit62.i, %bb.ad, %bb.ae, %bb.af, %Py_DECREF.exit54.i, %bb.am, %expat_parse.exit98.i, %Py_DECREF.exit.i, %bb.aq
  %.1.i = phi ptr [ null, %_check_xmlparser.exit.i ], [ null, %_check_xmlparser.exit.thread.i ], [ null, %bb.af ], [ %_Py_NoneStruct..i.i, %bb.aq ], [ null, %Py_DECREF.exit62.i ], [ null, %bb.n ], [ null, %bb.d ], [ @_Py_NoneStruct, %expat_parse.exit98.i ], [ null, %._crit_edge.i ], [ null, %bb.c ], [ null, %bb.l ], [ null, %bb.m ], [ null, %bb.ad ], [ null, %bb.ae ], [ %_Py_NoneStruct..i.i, %Py_DECREF.exit.i ], [ null, %bb.am ], [ null, %Py_DECREF.exit54.i ]
  ret ptr %.1.i
}

end_hunk_1
