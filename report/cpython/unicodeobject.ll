inline.NumInlined: 2798
inline.NumDeleted: 306
begin_hunk_0_@PyUnicode_FromWideChar:bb.a
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.z) #38
  br label %get_latin1_char.exit

get_latin1_char.exit:                             ; preds = %Py_DECREF.exit28.sink.split.i, %bb.ab, %bb.aa, %_PyUnicode_DATA.exit.i, %bb.w, %bb.v, %bb.u, %bb.t, %unicode_write_widechar.exit, %find_maxchar_surrogates.exit, %bb.i, %bb.h, %bb.e, %.loopexit, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %.loopexit ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.e ], [ null, %find_maxchar_surrogates.exit ], [ %i.n, %bb.i ], [ %i.k, %bb.h ], [ %i.z, %unicode_write_widechar.exit ], [ %i.dy, %bb.aa ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.t ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.u ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.v ], [ %i.z, %bb.w ], [ %i.dy, %_PyUnicode_DATA.exit.i ], [ %i.dy, %bb.ab ], [ %.1.ph.i, %Py_DECREF.exit28.sink.split.i ]
  ret ptr %.0
}

end_hunk_0
begin_hunk_1_@PyUnicode_FromKindAndData:bb.a
  br label %_PyUnicode_FromUCS1.exit

_PyUnicode_FromUCS1.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %ucs1lib_find_max_char.exit.i, %bb.g, %bb.f, %bb.d, %bb.r, %bb.q, %bb.p, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.r ], [ %i.z, %bb.q ], [ %i.y, %bb.p ], [ null, %ucs1lib_find_max_char.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.d ], [ %i.t, %_PyUnicode_DATA.exit.i ], [ %i.f, %bb.f ], [ %i.i, %bb.g ]
  ret ptr %.0
}

end_hunk_1
begin_hunk_2_@_PyUnicode_FromUCS2:bb.a
  %i.cu = icmp ult ptr %i.cq, %i.w
  br i1 %i.cu, label %.lr.ph62, label %unicode_char.exit, !llvm.loop !323

unicode_char.exit:                                ; preds = %.lr.ph62, %middle.block, %vec.epilog.middle.block, %.preheader, %_PyUnicode_DATA.exit19.i, %_PyUnicode_DATA.exit.i, %bb.f, %bb.e, %bb.d, %bb.a, %_PyUnicode_DATA.exit, %ucs2lib_find_max_char.exit
  %.0 = phi ptr [ %i.ao, %_PyUnicode_DATA.exit ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.a ], [ null, %ucs2lib_find_max_char.exit ], [ %i.k, %bb.e ], [ %i.l, %_PyUnicode_DATA.exit.i ], [ null, %bb.f ], [ %i.l, %_PyUnicode_DATA.exit19.i ], [ %i.h, %bb.d ], [ %i.ao, %.preheader ], [ %i.ao, %middle.block ], [ %i.ao, %vec.epilog.middle.block ], [ %i.ao, %.lr.ph62 ]
  ret ptr %.0
}

end_hunk_2
begin_hunk_3_@_PyUnicode_FromUCS4:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.0.i90, ptr align 4 %0, i64 %.idx93, i1 false)
  br label %unicode_char.exit

unicode_char.exit:                                ; preds = %.lr.ph103, %.lr.ph111, %middle.block, %middle.block167, %.preheader94, %.preheader, %_PyUnicode_DATA.exit19.i, %_PyUnicode_DATA.exit.i, %bb.f, %bb.e, %bb.d, %bb.a, %_PyUnicode_DATA.exit92, %ucs4lib_find_max_char.exit
  %.0 = phi ptr [ %i.an, %_PyUnicode_DATA.exit92 ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.a ], [ null, %ucs4lib_find_max_char.exit ], [ %i.an, %.preheader ], [ %i.j, %bb.e ], [ %i.k, %_PyUnicode_DATA.exit.i ], [ null, %bb.f ], [ %i.k, %_PyUnicode_DATA.exit19.i ], [ %i.g, %bb.d ], [ %i.an, %.preheader94 ], [ %i.an, %middle.block167 ], [ %i.an, %middle.block ], [ %i.an, %.lr.ph111 ], [ %i.an, %.lr.ph103 ]
  ret ptr %.0
}

end_hunk_3
begin_hunk_4_@PyUnicode_Decode:bb.a
  call void @_Py_Dealloc(ptr noundef nonnull %i.dz) #38
  br label %_PyUnicode_Result.exit

_PyUnicode_Result.exit:                           ; preds = %_PyUnicode_DATA.exit.i.i, %ucs1lib_find_max_char.exit.i.i, %bb.ae, %bb.ad, %bb.w, %bb.t, %bb.q, %bb.n, %bb.bh, %bb.bg, %bb.bf, %bb.an, %PyUnicode_DecodeLatin1.exit, %Py_DECREF.exit28.sink.split.i, %bb.be, %bb.bd, %_PyUnicode_DATA.exit.i, %bb.az, %bb.ay, %bb.ax, %bb.aw, %Py_DECREF.exit, %bb.b, %bb.a, %bb.d
  %.1 = phi ptr [ null, %bb.bh ], [ null, %bb.a ], [ %i.g, %bb.d ], [ %.1.ph.i, %Py_DECREF.exit28.sink.split.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.b ], [ %i.eb, %Py_DECREF.exit ], [ %i.fh, %bb.bd ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.aw ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.ax ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.ay ], [ %i.eb, %bb.az ], [ %i.fh, %_PyUnicode_DATA.exit.i ], [ %i.fh, %bb.be ], [ null, %PyUnicode_DecodeLatin1.exit ], [ null, %bb.an ], [ null, %bb.bf ], [ null, %bb.bg ], [ %i.dh, %bb.ae ], [ %i.de, %bb.ad ], [ %i.ds, %_PyUnicode_DATA.exit.i.i ], [ %i.aq, %bb.n ], [ null, %ucs1lib_find_max_char.exit.i.i ], [ %i.bu, %bb.w ], [ %i.ba, %bb.t ], [ %i.av, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  ret ptr %.1
end_hunk_4
begin_hunk_5_@PyUnicode_DecodeLatin1:bb.a
  br label %_PyUnicode_FromUCS1.exit

_PyUnicode_FromUCS1.exit:                         ; preds = %bb.a, %bb.c, %bb.d, %ucs1lib_find_max_char.exit.i, %_PyUnicode_DATA.exit.i
  %.0.i = phi ptr [ null, %ucs1lib_find_max_char.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.a ], [ %i.r, %_PyUnicode_DATA.exit.i ], [ %i.d, %bb.c ], [ %i.g, %bb.d ]
  ret ptr %.0.i
}

end_hunk_5
begin_hunk_6_@unicode_decode_utf8:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  br label %get_latin1_char.exit

get_latin1_char.exit:                             ; preds = %bb.g, %.thread, %bb.c, %bb.b, %_PyUnicode_DATA.exit, %bb.n, %bb.j, %bb.r, %bb.z, %bb.i
  %.4 = phi ptr [ null, %bb.r ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.c ], [ null, %bb.i ], [ %i.p, %_PyUnicode_DATA.exit ], [ null, %bb.j ], [ %i.p, %bb.n ], [ %.1, %bb.z ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.b ], [ %i.g, %.thread ], [ %i.j, %bb.g ]
  ret ptr %.4
}

end_hunk_6
begin_hunk_7_@PyUnicode_DecodeUTF32Stateful:bb.a
  call void @_Py_Dealloc(ptr noundef nonnull %i.ga) #38
  br label %Py_XDECREF.exit102

Py_XDECREF.exit102:                               ; preds = %bb.av, %bb.au, %bb.at, %Py_XDECREF.exit99, %bb.j, %bb.i, %Py_XDECREF.exit96
  %.055 = phi ptr [ %i.fw, %Py_XDECREF.exit96 ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.i ], [ null, %Py_XDECREF.exit99 ], [ null, %bb.at ], [ null, %bb.au ], [ null, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #38
end_hunk_7
begin_hunk_8_@PyUnicode_DecodeUTF16Stateful:bb.a
  call void @_Py_Dealloc(ptr noundef nonnull %i.qr) #38
  br label %Py_XDECREF.exit159

Py_XDECREF.exit159:                               ; preds = %bb.cf, %bb.ce, %bb.cd, %Py_XDECREF.exit156, %bb.j, %bb.i, %Py_XDECREF.exit153
  %.0 = phi ptr [ %i.qn, %Py_XDECREF.exit153 ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.i ], [ null, %Py_XDECREF.exit156 ], [ null, %bb.cd ], [ null, %bb.ce ], [ null, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #38
end_hunk_8
begin_hunk_9_@_PyUnicode_DecodeUnicodeEscapeInternal2:bb.a
  call void @_Py_Dealloc(ptr noundef nonnull %i.ob) #38
  br label %Py_XDECREF.exit167

Py_XDECREF.exit167:                               ; preds = %bb.gc, %bb.gb, %bb.ga, %Py_XDECREF.exit164, %bb.c, %bb.b, %Py_XDECREF.exit161
  %.0 = phi ptr [ %i.nw, %Py_XDECREF.exit161 ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.c ], [ null, %bb.gc ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.b ], [ null, %Py_XDECREF.exit164 ], [ null, %bb.ga ], [ null, %bb.gb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #38
end_hunk_9
begin_hunk_10_@_PyUnicode_DecodeRawUnicodeEscapeStateful:bb.a
  call void @_Py_Dealloc(ptr noundef nonnull %i.hv) #38
  br label %Py_XDECREF.exit112

Py_XDECREF.exit112:                               ; preds = %bb.di, %bb.dh, %bb.dg, %Py_XDECREF.exit109, %bb.c, %bb.b, %Py_XDECREF.exit106
  %.061 = phi ptr [ %i.hr, %Py_XDECREF.exit106 ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.b ], [ null, %Py_XDECREF.exit109 ], [ null, %bb.dg ], [ null, %bb.dh ], [ null, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #38
end_hunk_10
begin_hunk_11_@PyUnicode_DecodeCharmap:bb.a
  br label %PyUnicode_DecodeLatin1.exit

PyUnicode_DecodeLatin1.exit:                      ; preds = %bb.n, %_PyUnicode_DATA.exit.i.i, %ucs1lib_find_max_char.exit.i.i, %bb.e, %bb.d, %bb.b, %bb.dj, %bb.di
  %.0 = phi ptr [ %i.kx, %bb.di ], [ %i.w, %bb.e ], [ null, %bb.dj ], [ null, %ucs1lib_find_max_char.exit.i.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.b ], [ %i.ah, %_PyUnicode_DATA.exit.i.i ], [ %i.t, %bb.d ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  ret ptr %.0
}
end_hunk_11
begin_hunk_12_@_PyUnicode_JoinArray:bb.a
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0107277) #38
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au, %.thread202, %bb.at, %bb.as, %.loopexit.thread, %.loopexit, %bb.d, %bb.c, %bb.a
  %.0 = phi ptr [ %i.dw, %bb.at ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.a ], [ %i.a, %bb.d ], [ %i.a, %bb.c ], [ %i.dv, %.loopexit ], [ %i.dw, %.loopexit.thread ], [ %i.dw, %bb.as ], [ null, %.thread202 ], [ null, %bb.au ], [ null, %bb.av ], [ null, %bb.aw ], [ null, %bb.ax ]
  ret ptr %.0
}

end_hunk_12
begin_hunk_13_@PyUnicode_Splitlines:bb.a
  br label %_PyUnicode_FromUCS1.exit.thread.i

_PyUnicode_FromUCS1.exit.thread.i:                ; preds = %_PyUnicode_DATA.exit.i.i, %_PyUnicode_FromUCS1.exit.i, %bb.af
  %.0.i69.i = phi ptr [ %.0.i.i55, %_PyUnicode_FromUCS1.exit.i ], [ %i.do, %_PyUnicode_DATA.exit.i.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.af ] ; 4 uses
  %i.dt = tail call i32 @PyList_Append(ptr noundef nonnull %i.bq, ptr noundef nonnull %.0.i69.i) #38, !inline_history !561
  %.not59.i56 = icmp eq i32 %i.dt, 0
  %i.du = load i32, ptr %.0.i69.i, align 8, !tbaa !205 ; 2 uses
end_hunk_13
begin_hunk_14_@PyUnicode_Substring:bb.a
  %i.ai = tail call ptr @PyUnicode_FromKindAndData(i32 noundef %i.ac, ptr noundef %i.ah, i64 noundef %i.i)
  br label %_PyUnicode_FromASCII.exit

_PyUnicode_FromASCII.exit:                        ; preds = %_PyUnicode_DATA.exit.i, %bb.m, %bb.l, %bb.k, %bb.e, %_PyUnicode_DATA.exit48, %bb.d, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.d ], [ %i.ai, %_PyUnicode_DATA.exit48 ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.e ], [ null, %bb.m ], [ %i.w, %_PyUnicode_DATA.exit.i ], [ %i.s, %bb.k ], [ %i.v, %bb.l ]
  ret ptr %.0
}

end_hunk_14
begin_hunk_15_@split:bb.a
  br label %_PyUnicode_FromUCS1.exit.thread.i

_PyUnicode_FromUCS1.exit.thread.i:                ; preds = %_PyUnicode_DATA.exit.i.i, %_PyUnicode_FromUCS1.exit.i, %bb.bf
  %.0.i104131.i = phi ptr [ %.0.i104.i, %_PyUnicode_FromUCS1.exit.i ], [ %i.fq, %_PyUnicode_DATA.exit.i.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.bf ] ; 7 uses
  %i.fv = icmp samesign ult i64 %.071154.i, 12
  br i1 %i.fv, label %bb.bo, label %bb.bp

end_hunk_15
begin_hunk_16_@split:bb.a
  br label %_PyUnicode_FromUCS1.exit129.thread.i

_PyUnicode_FromUCS1.exit129.thread.i:             ; preds = %_PyUnicode_DATA.exit.i118.i, %_PyUnicode_FromUCS1.exit129.i, %bb.by
  %.0.i108135.i = phi ptr [ %.0.i108.i, %_PyUnicode_FromUCS1.exit129.i ], [ %i.hj, %_PyUnicode_DATA.exit.i118.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.by ] ; 7 uses
  %i.ho = icmp slt i64 %.1.i117, 12
  br i1 %i.ho, label %bb.ch, label %bb.ci

end_hunk_16
begin_hunk_17_@split:bb.a
  br label %_PyUnicode_FromUCS1.exit.thread.i.i

_PyUnicode_FromUCS1.exit.thread.i.i:              ; preds = %_PyUnicode_DATA.exit.i.i.i, %_PyUnicode_FromUCS1.exit.i.i, %bb.ir
  %.0.i107.i.i = phi ptr [ %.0.i.i.i331, %_PyUnicode_FromUCS1.exit.i.i ], [ %i.wf, %_PyUnicode_DATA.exit.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.ir ] ; 7 uses
  %i.wk = icmp slt i64 %.053128.i.i1295, 12
  br i1 %i.wk, label %bb.iy, label %bb.iz

end_hunk_17
begin_hunk_18_@split:bb.a
  br label %.loopexit.i.i325

bb.jf:                                            ; preds = %.lr.ph.i.i329
  %i.wu = add i64 %.155124.i.i, 1                 ; 2 uses
  %exitcond.not.i.i330 = icmp eq i64 %i.wu, %.val100
  br i1 %exitcond.not.i.i330, label %.critedge.i.i321, label %.lr.ph.i.i329, !llvm.loop !640

end_hunk_18
begin_hunk_19_@split:bb.a
  br label %_PyUnicode_FromUCS1.exit105.thread.i.i

_PyUnicode_FromUCS1.exit105.thread.i.i:           ; preds = %_PyUnicode_DATA.exit.i94.i.i, %_PyUnicode_FromUCS1.exit105.i.i, %bb.jj
  %.0.i84111.i.i = phi ptr [ %.0.i84.i.i, %_PyUnicode_FromUCS1.exit105.i.i ], [ %i.xv, %_PyUnicode_DATA.exit.i94.i.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.jj ] ; 7 uses
  %i.ya = icmp slt i64 %.053.lcssa.i.i323, 12
  br i1 %i.ya, label %bb.js, label %bb.jt

end_hunk_19
begin_hunk_20_@split:bb.a
  br label %_PyUnicode_FromUCS1.exit.thread.i360

_PyUnicode_FromUCS1.exit.thread.i360:             ; preds = %_PyUnicode_DATA.exit.i.i376, %_PyUnicode_FromUCS1.exit.i359, %bb.ke
  %.0.i86115.i = phi ptr [ %.0.i86.i, %_PyUnicode_FromUCS1.exit.i359 ], [ %i.zp, %_PyUnicode_DATA.exit.i.i376 ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.ke ] ; 7 uses
  %i.zu = icmp samesign ult i64 %.060147.i, 12
  br i1 %i.zu, label %bb.kn, label %bb.ko

end_hunk_20
begin_hunk_21_@split:bb.a
  br label %_PyUnicode_FromUCS1.exit113.thread.i

_PyUnicode_FromUCS1.exit113.thread.i:             ; preds = %_PyUnicode_DATA.exit.i102.i, %_PyUnicode_FromUCS1.exit113.i, %._crit_edge.thread205.i
  %.0.i92119.i = phi ptr [ %.0.i92.i, %_PyUnicode_FromUCS1.exit113.i ], [ %i.abf, %_PyUnicode_DATA.exit.i102.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %._crit_edge.thread205.i ] ; 7 uses
  %i.abk = icmp slt i64 %.060.lcssa203.i, 12
  br i1 %i.abk, label %bb.le, label %bb.lf

end_hunk_21
begin_hunk_22_@PyUnicode_Partition:bb.a
  br label %_PyUnicode_FromUCS1.exit.i

_PyUnicode_FromUCS1.exit.i:                       ; preds = %_PyUnicode_DATA.exit.i.i97, %ucs1lib_find_max_char.exit.i.i, %bb.ax, %bb.aw, %bb.au
  %.0.i.i87 = phi ptr [ null, %ucs1lib_find_max_char.exit.i.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.au ], [ %i.ds, %_PyUnicode_DATA.exit.i.i97 ], [ %i.de, %bb.aw ], [ %i.dh, %bb.ax ]
  %i.dx = getelementptr i8, ptr %i.cm, i64 32
  store ptr %.0.i.i87, ptr %i.dx, align 8, !tbaa !194
  %i.dy = load i32, ptr %1, align 8, !tbaa !205   ; 2 uses
end_hunk_22
begin_hunk_23_@PyUnicode_Partition:bb.a
  br label %_PyUnicode_FromUCS1.exit61.i

_PyUnicode_FromUCS1.exit61.i:                     ; preds = %_PyUnicode_DATA.exit.i50.i, %ucs1lib_find_max_char.exit.i42.i, %bb.bj, %bb.bi, %Py_INCREF.exit.i88
  %.0.i40.i = phi ptr [ null, %ucs1lib_find_max_char.exit.i42.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %Py_INCREF.exit.i88 ], [ %i.ew, %_PyUnicode_DATA.exit.i50.i ], [ %i.ei, %bb.bi ], [ %i.el, %bb.bj ]
  %i.fb = getelementptr i8, ptr %i.cm, i64 48
  store ptr %.0.i40.i, ptr %i.fb, align 8, !tbaa !194
  %i.fc = tail call ptr @PyErr_Occurred() #38, !inline_history !655
end_hunk_23
begin_hunk_24_@PyUnicode_RPartition:bb.a
  br label %_PyUnicode_FromUCS1.exit.i

_PyUnicode_FromUCS1.exit.i:                       ; preds = %_PyUnicode_DATA.exit.i.i111, %ucs1lib_find_max_char.exit.i.i, %bb.bx, %bb.bw, %bb.bu
  %.0.i39.i = phi ptr [ null, %ucs1lib_find_max_char.exit.i.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.bu ], [ %i.jk, %_PyUnicode_DATA.exit.i.i111 ], [ %i.iw, %bb.bw ], [ %i.iz, %bb.bx ]
  %i.jp = getelementptr i8, ptr %i.fi, i64 32
  store ptr %.0.i39.i, ptr %i.jp, align 8, !tbaa !194
  %i.jq = load i32, ptr %1, align 8, !tbaa !205   ; 2 uses
end_hunk_24
begin_hunk_25_@PyUnicode_RPartition:bb.a
  br label %_PyUnicode_FromUCS1.exit62.i

_PyUnicode_FromUCS1.exit62.i:                     ; preds = %_PyUnicode_DATA.exit.i51.i, %ucs1lib_find_max_char.exit.i43.i, %bb.cj, %bb.ci, %Py_INCREF.exit.i104
  %.0.i41.i = phi ptr [ null, %ucs1lib_find_max_char.exit.i43.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %Py_INCREF.exit.i104 ], [ %i.ko, %_PyUnicode_DATA.exit.i51.i ], [ %i.ka, %bb.ci ], [ %i.kd, %bb.cj ]
  %i.kt = getelementptr i8, ptr %i.fi, i64 48
  store ptr %.0.i41.i, ptr %i.kt, align 8, !tbaa !194
  %i.ku = tail call ptr @PyErr_Occurred() #38, !inline_history !665
end_hunk_25
begin_hunk_26_@rsplit:bb.a
  br label %_PyUnicode_FromUCS1.exit.thread.i

_PyUnicode_FromUCS1.exit.thread.i:                ; preds = %_PyUnicode_DATA.exit.i.i, %_PyUnicode_FromUCS1.exit.i, %.critedge2.thread.i144
  %.0.i97125.i = phi ptr [ %.0.i97.i, %_PyUnicode_FromUCS1.exit.i ], [ %i.fq, %_PyUnicode_DATA.exit.i.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %.critedge2.thread.i144 ] ; 7 uses
  %i.fv = icmp samesign ult i64 %.066159.i, 12
  br i1 %i.fv, label %bb.bn, label %bb.bo

end_hunk_26
begin_hunk_27_@rsplit:bb.a
  br label %_PyUnicode_FromUCS1.exit.thread.i.i

_PyUnicode_FromUCS1.exit.thread.i.i:              ; preds = %_PyUnicode_DATA.exit.i.i.i, %_PyUnicode_FromUCS1.exit.i.i, %bb.it
  %.0.i101.i.i = phi ptr [ %.0.i.i.i321, %_PyUnicode_FromUCS1.exit.i.i ], [ %i.yw, %_PyUnicode_DATA.exit.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.it ] ; 7 uses
  %i.zb = icmp samesign ult i64 %.050121.i.i1491, 12
  br i1 %i.zb, label %bb.jc, label %bb.jd

end_hunk_27
begin_hunk_28_@rsplit:bb.a
  br label %_PyUnicode_FromUCS1.exit99.thread.i.i

_PyUnicode_FromUCS1.exit99.thread.i.i:            ; preds = %_PyUnicode_DATA.exit.i88.i.i, %_PyUnicode_FromUCS1.exit99.i.i, %bb.jm
  %.0.i78105.i.i = phi ptr [ %.0.i78.i.i, %_PyUnicode_FromUCS1.exit99.i.i ], [ %i.aao, %_PyUnicode_DATA.exit.i88.i.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.jm ] ; 7 uses
  %i.aat = icmp slt i64 %.050.lcssa154.i.i, 12
  br i1 %i.aat, label %bb.jv, label %bb.jw

end_hunk_28
begin_hunk_29_@rsplit:bb.a
  br label %_PyUnicode_FromUCS1.exit.thread.i362

_PyUnicode_FromUCS1.exit.thread.i362:             ; preds = %_PyUnicode_DATA.exit.i.i378, %_PyUnicode_FromUCS1.exit.i361, %bb.km
  %.0.i85115.i = phi ptr [ %.0.i85.i, %_PyUnicode_FromUCS1.exit.i361 ], [ %i.aet, %_PyUnicode_DATA.exit.i.i378 ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.km ] ; 7 uses
  %i.aey = icmp samesign ult i64 %.057158.i, 12
  br i1 %i.aey, label %bb.kv, label %bb.kw

end_hunk_29
begin_hunk_30_@rsplit:bb.a
  br label %_PyUnicode_FromUCS1.exit112.thread.i

_PyUnicode_FromUCS1.exit112.thread.i:             ; preds = %_PyUnicode_DATA.exit.i101.i, %_PyUnicode_FromUCS1.exit112.i, %ucs1lib_fastsearch.exit.thread.thread241.i
  %.0.i91119.i = phi ptr [ %.0.i91.i, %_PyUnicode_FromUCS1.exit112.i ], [ %i.agh, %_PyUnicode_DATA.exit.i101.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %ucs1lib_fastsearch.exit.thread.thread241.i ] ; 7 uses
  %i.agm = icmp slt i64 %.057138239.i, 12
  br i1 %i.agm, label %bb.lm, label %bb.ln

end_hunk_30
begin_hunk_31_@unicode_vectorcall:bb.a
  %i.ay = call ptr @PyUnicode_FromEncodedObject(ptr noundef %i.aa, ptr noundef nonnull %i.ai, ptr noundef %.0)
  br label %Py_DECREF.exit45

Py_DECREF.exit45:                                 ; preds = %arg_as_utf8.exit57.thread63, %arg_as_utf8.exit57.thread, %arg_as_utf8.exit.thread60, %arg_as_utf8.exit.thread, %bb.o, %bb.l, %bb.k, %Py_DECREF.exit43, %bb.g, %bb.f, %bb.e, %bb.q, %bb.aa, %bb.n, %bb.c
  %.5 = phi ptr [ null, %bb.g ], [ %i.m, %bb.l ], [ null, %bb.n ], [ null, %bb.c ], [ null, %arg_as_utf8.exit57.thread63 ], [ %i.z, %bb.q ], [ null, %arg_as_utf8.exit.thread60 ], [ %i.ay, %bb.aa ], [ null, %bb.e ], [ null, %bb.f ], [ %i.m, %Py_DECREF.exit43 ], [ %i.m, %bb.k ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.o ], [ null, %arg_as_utf8.exit.thread ], [ null, %arg_as_utf8.exit57.thread ]
  ret ptr %.5
}

end_hunk_31
begin_hunk_32_@formatteriter_next:bb.a

_Py_NewRef.exit:                                  ; preds = %bb.f
  %i.af = trunc nuw i32 %i.z to i8                ; 2 uses
  %4 = zext nneg i32 %i.z to i64
  %5 = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %4
  %6 = and i8 %i.af, 127
  %i.ag = zext nneg i8 %6 to i64
  %7 = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.ag
  %i.ah = icmp slt i8 %i.af, 0
  %.018 = select i1 %i.ah, ptr %7, ptr %5         ; 2 uses
  %i.ai = icmp eq ptr %.018, null
  br i1 %i.ai, label %_Py_NewRef.exit.thread47, label %_Py_NewRef.exit.thread

end_hunk_32
begin_hunk_33_@formatteriter_next:bb.a
  store i32 %i.z, ptr %.0.i17.i.i, align 4, !tbaa !7
  br label %_Py_NewRef.exit.thread

_Py_NewRef.exit.thread:                           ; preds = %_PyUnicode_DATA.exit19.i.i, %_PyUnicode_DATA.exit.i.i, %bb.d, %bb.e, %_Py_NewRef.exit
  %.01846 = phi ptr [ %.018, %_Py_NewRef.exit ], [ %i.aj, %_PyUnicode_DATA.exit19.i.i ], [ %i.aj, %_PyUnicode_DATA.exit.i.i ], [ @_Py_NoneStruct, %bb.d ], [ @_Py_NoneStruct, %bb.e ] ; 2 uses
  %i.aw = call ptr (i64, ...) @PyTuple_Pack(i64 noundef 4, ptr noundef nonnull %.0.i41, ptr noundef nonnull %.0.i2744, ptr noundef nonnull %i.x, ptr noundef nonnull %.01846) #38
  br label %_Py_NewRef.exit.thread47

end_hunk_33
