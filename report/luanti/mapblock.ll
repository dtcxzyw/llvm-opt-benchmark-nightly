Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mapblock?download=true
inline.NumInlined: 1707
inline.NumDeleted: 782
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_Z13analyze_blockB5cxx11P8MapBlock:bb.a
  %i.bu = icmp eq i64 %i.bt, 4611686018427387902
  br i1 %i.bu, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #31
          to label %.noexc85 unwind label %bb.s

.noexc85:                                         ; preds = %bb.o
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.n
  %i.bv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.10, i64 noundef 2)
          to label %.noexc86 unwind label %bb.s   ; 6 uses

.noexc86:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.bw, ptr %3, align 8, !tbaa !137, !alias.scope !328
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !89 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 5 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

bb.p:                                             ; preds = %.noexc86
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !139 ; 3 uses
  %i.cc = icmp ult i64 %i.cb, 16
  call void @llvm.assume(i1 %i.cc)
  %i.cd = add nuw nsw i64 %i.cb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bw, ptr noundef nonnull align 8 dereferenceable(1) %i.by, i64 %i.cd, i1 false)
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %.noexc86
  store ptr %i.bx, ptr %3, align 8, !tbaa !89, !alias.scope !328
  %i.ce = load i64, ptr %i.by, align 8, !tbaa !93
  store i64 %i.ce, ptr %i.bw, align 8, !tbaa !93, !alias.scope !328
  %.phi.trans.insert.i83 = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.pre.i84 = load i64, ptr %.phi.trans.insert.i83, align 8, !tbaa !139
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %bb.p
  %i.cf = phi i64 [ %i.cb, %bb.p ], [ %.pre.i84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.cf, ptr %i.ch, align 8, !tbaa !139, !alias.scope !328
  store ptr %i.by, ptr %i.bv, align 8, !tbaa !89
  store i64 0, ptr %i.cg, align 8, !tbaa !139
  store i8 0, ptr %i.by, align 8, !tbaa !93
  %i.ci = load ptr, ptr %3, align 8, !tbaa !89
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !139
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.ci, i64 noundef %i.cj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.t ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.q
  %i.cl = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bw
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.cn = load i64, ptr %i.bw, align 8, !tbaa !93
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  %i.cp = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.bg
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cr = load i64, ptr %i.bg, align 8, !tbaa !93
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  %i.ct = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.aa
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.cv = load i64, ptr %i.aa, align 8, !tbaa !93
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76

bb.r:                                             ; preds = %_Z4itosB5cxx11i.exit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.o
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

bb.t:                                             ; preds = %bb.q
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.bw
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %bb.t
  %i.dc = load i64, ptr %i.bw, align 8, !tbaa !93
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95, %bb.s
  %.pn = phi { ptr, i32 } [ %i.cy, %bb.s ], [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95 ], [ %i.cz, %bb.t ] ; 2 uses
  %i.de = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.bg
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.dg = load i64, ptr %i.bg, align 8, !tbaa !93
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %i.cx, %bb.r ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ]
  %i.di = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.aa
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %i.dk = load i64, ptr %i.aa, align 8, !tbaa !93
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.bc

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %.invoke307, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 82
  %i.dn = load i8, ptr %i.dm, align 2, !tbaa !68, !range !83, !noundef !84
  %i.do = trunc nuw i8 %i.dn to i1
  %.str.46..str.47 = select i1 %i.do, ptr @.str.46, ptr @.str.47
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %.str.46..str.47, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 83
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !69, !range !83, !noundef !84
  %i.ds = trunc nuw i8 %i.dr to i1
  %.str.48..str.49 = select i1 %i.ds, ptr @.str.48, ptr @.str.49
  %i.dt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %.str.48..str.49, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105
  %i.du = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.50, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit113 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit113: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dw = load i16, ptr %i.dv, align 8, !tbaa !67
  %i.dx = zext i16 %i.dw to i64
  %i.dy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.dx)
          to label %_ZNSolsEt.exit unwind label %bb.d

_ZNSolsEt.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit113
  %i.dz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef nonnull @.str.10, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116.preheader unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116.preheader: ; preds = %_ZNSolsEt.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 16 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 16 uses
  br label %.preheader218

.preheader218:                                    ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116
  %indvars.iv235 = phi i64 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116.preheader ], [ %indvars.iv.next236, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116 ] ; 3 uses
  %.041233 = phi i1 [ false, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116.preheader ], [ %.344.15, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116 ]
  %.045232 = phi i1 [ true, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116.preheader ], [ %.348.15, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116 ]
  %.049231 = phi i1 [ false, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116.preheader ], [ %..251.15, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116 ]
  %.053230 = phi i1 [ true, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116.preheader ], [ %.255..15, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116 ]
  %i.ec = shl nuw nsw i64 %indvars.iv235, 8
  br label %.preheader

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116
  %i.ed = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.51, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit118 unwind label %bb.x ; 0 uses

.preheader:                                       ; preds = %.preheader218, %_ZN8MapBlock11getNodeNoExEN4core8vector3dIsEE.exit.15
  %indvars.iv = phi i64 [ 0, %.preheader218 ], [ %indvars.iv.next, %_ZN8MapBlock11getNodeNoExEN4core8vector3dIsEE.exit.15 ] ; 3 uses
  %.142228 = phi i1 [ %.041233, %.preheader218 ], [ %.344.15, %_ZN8MapBlock11getNodeNoExEN4core8vector3dIsEE.exit.15 ]
  %.146227 = phi i1 [ %.045232, %.preheader218 ], [ %.348.15, %_ZN8MapBlock11getNodeNoExEN4core8vector3dIsEE.exit.15 ]
  %.150226 = phi i1 [ %.049231, %.preheader218 ], [ %..251.15, %_ZN8MapBlock11getNodeNoExEN4core8vector3dIsEE.exit.15 ]
  %.154225 = phi i1 [ %.053230, %.preheader218 ], [ %.255..15, %_ZN8MapBlock11getNodeNoExEN4core8vector3dIsEE.exit.15 ]
  %i.ee = or i64 %indvars.iv, %indvars.iv235
  %13 = icmp samesign ult i64 %i.ee, 16
  br i1 %13, label %bb.v, label %_ZN8MapBlock11getNodeNoExEN4core8vector3dIsEE.exit.15

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116: ; preds = %_ZN8MapBlock11getNodeNoExEN4core8vector3dIsEE.exit.15
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 2 uses
  %exitcond237.not = icmp eq i64 %indvars.iv.next236, 16
  br i1 %exitcond237.not, label %bb.u, label %.preheader218, !llvm.loop !331

bb.v:                                             ; preds = %.preheader
  %i.ef = shl nuw nsw i64 %indvars.iv, 4
  %14 = or disjoint i64 %i.ef, %i.ec              ; 16 uses
  %i.eg = load ptr, ptr %i.ea, align 8, !tbaa !57
  %i.eh = load i8, ptr %i.eb, align 4, !tbaa !60, !range !83, !noundef !84
  %i.ei = trunc nuw i8 %i.eh to i1
  %i.ej = select i1 %i.ei, i64 0, i64 %14
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4
  %i.em = trunc i32 %i.el to i16                  ; 2 uses
  %i.en = icmp eq i16 %i.em, 127
  %i.eo = icmp eq i16 %i.em, 126
  %i.ep = load ptr, ptr %i.ea, align 8, !tbaa !57
  %i.eq = load i8, ptr %i.eb, align 4, !tbaa !60, !range !83, !noundef !84
  %i.er = trunc nuw i8 %i.eq to i1
  %i.es = or disjoint i64 %14, 1
  %i.et = select i1 %i.er, i64 0, i64 %i.es
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4
  %i.ew = trunc i32 %i.ev to i16                  ; 2 uses
  %i.ex = icmp eq i16 %i.ew, 127
  %i.ey = icmp eq i16 %i.ew, 126
  %i.ez = load ptr, ptr %i.ea, align 8, !tbaa !57
  %i.fa = load i8, ptr %i.eb, align 4, !tbaa !60, !range !83, !noundef !84
  %i.fb = trunc nuw i8 %i.fa to i1
  %i.fc = or disjoint i64 %14, 2
  %i.fd = select i1 %i.fb, i64 0, i64 %i.fc
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4
  %i.fg = trunc i32 %i.ff to i16                  ; 2 uses
  %i.fh = icmp eq i16 %i.fg, 127
  %i.fi = icmp eq i16 %i.fg, 126
  %i.fj = load ptr, ptr %i.ea, align 8, !tbaa !57
  %i.fk = load i8, ptr %i.eb, align 4, !tbaa !60, !range !83, !noundef !84
  %i.fl = trunc nuw i8 %i.fk to i1
  %i.fm = or disjoint i64 %14, 3
  %i.fn = select i1 %i.fl, i64 0, i64 %i.fm
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4
  %i.fq = trunc i32 %i.fp to i16                  ; 2 uses
  %i.fr = icmp eq i16 %i.fq, 127
  %i.fs = icmp eq i16 %i.fq, 126
  %i.ft = load ptr, ptr %i.ea, align 8, !tbaa !57
  %i.fu = load i8, ptr %i.eb, align 4, !tbaa !60, !range !83, !noundef !84
  %i.fv = trunc nuw i8 %i.fu to i1
  %i.fw = or disjoint i64 %14, 4
  %i.fx = select i1 %i.fv, i64 0, i64 %i.fw
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4
  %i.ga = trunc i32 %i.fz to i16                  ; 2 uses
  %i.gb = icmp eq i16 %i.ga, 127
  %i.gc = icmp eq i16 %i.ga, 126
  %i.gd = load ptr, ptr %i.ea, align 8, !tbaa !57
  %i.ge = load i8, ptr %i.eb, align 4, !tbaa !60, !range !83, !noundef !84
  %i.gf = trunc nuw i8 %i.ge to i1
  %i.gg = or disjoint i64 %14, 5
  %i.gh = select i1 %i.gf, i64 0, i64 %i.gg
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4
  %i.gk = trunc i32 %i.gj to i16                  ; 2 uses
  %i.gl = icmp eq i16 %i.gk, 127
  %i.gm = icmp eq i16 %i.gk, 126
  %i.gn = load ptr, ptr %i.ea, align 8, !tbaa !57
  %i.go = load i8, ptr %i.eb, align 4, !tbaa !60, !range !83, !noundef !84
  %i.gp = trunc nuw i8 %i.go to i1
  %i.gq = or disjoint i64 %14, 6
  %i.gr = select i1 %i.gp, i64 0, i64 %i.gq
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.gr
  %i.gt = load i32, ptr %i.gs, align 4
  %i.gu = trunc i32 %i.gt to i16                  ; 2 uses
  %i.gv = icmp eq i16 %i.gu, 127
  %i.gw = icmp eq i16 %i.gu, 126
  %i.gx = load ptr, ptr %i.ea, align 8, !tbaa !57
  %i.gy = load i8, ptr %i.eb, align 4, !tbaa !60, !range !83, !noundef !84
  %i.gz = trunc nuw i8 %i.gy to i1
  %i.ha = or disjoint i64 %14, 7
  %i.hb = select i1 %i.gz, i64 0, i64 %i.ha
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.hb
  %i.hd = load i32, ptr %i.hc, align 4
  %i.he = trunc i32 %i.hd to i16                  ; 2 uses
  %i.hf = icmp eq i16 %i.he, 127
  %i.hg = icmp eq i16 %i.he, 126
  %i.hh = load ptr, ptr %i.ea, align 8, !tbaa !57
  %i.hi = load i8, ptr %i.eb, align 4, !tbaa !60, !range !83, !noundef !84
  %i.hj = trunc nuw i8 %i.hi to i1
  %i.hk = or disjoint i64 %14, 8
  %i.hl = select i1 %i.hj, i64 0, i64 %i.hk
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 4
  %i.ho = trunc i32 %i.hn to i16                  ; 2 uses
  %i.hp = icmp eq i16 %i.ho, 127
  %i.hq = icmp eq i16 %i.ho, 126
  %i.hr = load ptr, ptr %i.ea, align 8, !tbaa !57
  %i.hs = load i8, ptr %i.eb, align 4, !tbaa !60, !range !83, !noundef !84
  %i.ht = trunc nuw i8 %i.hs to i1
  %i.hu = or disjoint i64 %14, 9
  %i.hv = select i1 %i.ht, i64 0, i64 %i.hu
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4
  %i.hy = trunc i32 %i.hx to i16                  ; 2 uses
  %i.hz = icmp eq i16 %i.hy, 127
  %i.ia = icmp eq i16 %i.hy, 126
  %i.ib = load ptr, ptr %i.ea, align 8, !tbaa !57
  %i.ic = load i8, ptr %i.eb, align 4, !tbaa !60, !range !83, !noundef !84
  %i.id = trunc nuw i8 %i.ic to i1
  %i.ie = or disjoint i64 %14, 10
  %i.if = select i1 %i.id, i64 0, i64 %i.ie
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 4
  %i.ii = trunc i32 %i.ih to i16                  ; 2 uses
  %i.ij = icmp eq i16 %i.ii, 127
  %i.ik = icmp eq i16 %i.ii, 126
  %i.il = load ptr, ptr %i.ea, align 8, !tbaa !57
  %i.im = load i8, ptr %i.eb, align 4, !tbaa !60, !range !83, !noundef !84
  %i.in = trunc nuw i8 %i.im to i1
  %i.io = or disjoint i64 %14, 11
  %i.ip = select i1 %i.in, i64 0, i64 %i.io
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4
  %i.is = trunc i32 %i.ir to i16                  ; 2 uses
  %i.it = icmp eq i16 %i.is, 127
  %i.iu = icmp eq i16 %i.is, 126
  %i.iv = load ptr, ptr %i.ea, align 8, !tbaa !57
  %i.iw = load i8, ptr %i.eb, align 4, !tbaa !60, !range !83, !noundef !84
  %i.ix = trunc nuw i8 %i.iw to i1
  %i.iy = or disjoint i64 %14, 12
  %i.iz = select i1 %i.ix, i64 0, i64 %i.iy
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.iz
  %i.jb = load i32, ptr %i.ja, align 4
  %i.jc = trunc i32 %i.jb to i16                  ; 2 uses
  %i.jd = icmp eq i16 %i.jc, 127
  %i.je = icmp eq i16 %i.jc, 126
  %i.jf = load ptr, ptr %i.ea, align 8, !tbaa !57
  %i.jg = load i8, ptr %i.eb, align 4, !tbaa !60, !range !83, !noundef !84
  %i.jh = trunc nuw i8 %i.jg to i1
  %i.ji = or disjoint i64 %14, 13
  %i.jj = select i1 %i.jh, i64 0, i64 %i.ji
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %i.jj
  %i.jl = load i32, ptr %i.jk, align 4
  %i.jm = trunc i32 %i.jl to i16                  ; 2 uses
  %i.jn = icmp eq i16 %i.jm, 127
  %i.jo = icmp eq i16 %i.jm, 126
  %i.jp = load ptr, ptr %i.ea, align 8, !tbaa !57
  %i.jq = load i8, ptr %i.eb, align 4, !tbaa !60, !range !83, !noundef !84
  %i.jr = trunc nuw i8 %i.jq to i1
  %i.js = or disjoint i64 %14, 14
  %i.jt = select i1 %i.jr, i64 0, i64 %i.js
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %i.jt
  %i.jv = load i32, ptr %i.ju, align 4
  %i.jw = trunc i32 %i.jv to i16                  ; 2 uses
  %i.jx = icmp eq i16 %i.jw, 127
  %i.jy = icmp eq i16 %i.jw, 126
  %i.jz = load ptr, ptr %i.ea, align 8, !tbaa !57
  %i.ka = load i8, ptr %i.eb, align 4, !tbaa !60, !range !83, !noundef !84
  %i.kb = trunc nuw i8 %i.ka to i1
  %i.kc = or disjoint i64 %14, 15
  %i.kd = select i1 %i.kb, i64 0, i64 %i.kc
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.kd
  %i.kf = load i32, ptr %i.ke, align 4
  %i.kg = trunc i32 %i.kf to i16
  br label %_ZN8MapBlock11getNodeNoExEN4core8vector3dIsEE.exit.15

_ZN8MapBlock11getNodeNoExEN4core8vector3dIsEE.exit.15: ; preds = %.preheader, %bb.v
  %i.kh = phi i1 [ %i.jy, %bb.v ], [ false, %.preheader ] ; 2 uses
  %i.ki = phi i1 [ %i.jx, %bb.v ], [ true, %.preheader ] ; 2 uses
  %i.kj = phi i1 [ %i.je, %bb.v ], [ false, %.preheader ] ; 2 uses
  %i.kk = phi i1 [ %i.jd, %bb.v ], [ true, %.preheader ] ; 2 uses
  %i.kl = phi i1 [ %i.ik, %bb.v ], [ false, %.preheader ] ; 2 uses
  %i.km = phi i1 [ %i.ij, %bb.v ], [ true, %.preheader ] ; 2 uses
  %i.kn = phi i1 [ %i.hq, %bb.v ], [ false, %.preheader ] ; 2 uses
  %i.ko = phi i1 [ %i.hp, %bb.v ], [ true, %.preheader ] ; 2 uses
  %i.kp = phi i1 [ %i.gw, %bb.v ], [ false, %.preheader ] ; 2 uses
  %i.kq = phi i1 [ %i.gv, %bb.v ], [ true, %.preheader ] ; 2 uses
  %i.kr = phi i1 [ %i.gc, %bb.v ], [ false, %.preheader ] ; 2 uses
  %i.ks = phi i1 [ %i.gb, %bb.v ], [ true, %.preheader ] ; 2 uses
  %i.kt = phi i1 [ %i.fi, %bb.v ], [ false, %.preheader ] ; 2 uses
  %i.ku = phi i1 [ %i.fh, %bb.v ], [ true, %.preheader ] ; 2 uses
  %i.kv = phi i1 [ %i.eo, %bb.v ], [ false, %.preheader ] ; 2 uses
  %i.kw = phi i1 [ %i.en, %bb.v ], [ true, %.preheader ] ; 2 uses
  %i.kx = phi i1 [ %i.ex, %bb.v ], [ true, %.preheader ] ; 2 uses
  %i.ky = phi i1 [ %i.ey, %bb.v ], [ false, %.preheader ] ; 2 uses
  %i.kz = phi i1 [ %i.fr, %bb.v ], [ true, %.preheader ] ; 2 uses
  %i.la = phi i1 [ %i.fs, %bb.v ], [ false, %.preheader ] ; 2 uses
  %i.lb = phi i1 [ %i.gl, %bb.v ], [ true, %.preheader ] ; 2 uses
  %i.lc = phi i1 [ %i.gm, %bb.v ], [ false, %.preheader ] ; 2 uses
  %i.ld = phi i1 [ %i.hf, %bb.v ], [ true, %.preheader ] ; 2 uses
  %i.le = phi i1 [ %i.hg, %bb.v ], [ false, %.preheader ] ; 2 uses
  %i.lf = phi i1 [ %i.hz, %bb.v ], [ true, %.preheader ] ; 2 uses
  %i.lg = phi i1 [ %i.ia, %bb.v ], [ false, %.preheader ] ; 2 uses
  %i.lh = phi i1 [ %i.it, %bb.v ], [ true, %.preheader ] ; 2 uses
  %i.li = phi i1 [ %i.iu, %bb.v ], [ false, %.preheader ] ; 2 uses
  %i.lj = phi i1 [ %i.jn, %bb.v ], [ true, %.preheader ] ; 2 uses
  %i.lk = phi i1 [ %i.jo, %bb.v ], [ false, %.preheader ] ; 2 uses
  %.sroa.0.0.insert.insert.i.i.15 = phi i16 [ %i.kg, %bb.v ], [ 127, %.preheader ] ; 2 uses
  %i.ll = icmp eq i16 %.sroa.0.0.insert.insert.i.i.15, 127 ; 2 uses
  %i.lm = select i1 %i.ll, i1 %i.ki, i1 false
  %i.ln = select i1 %i.lm, i1 %i.lj, i1 false
  %i.lo = select i1 %i.ln, i1 %i.kk, i1 false
  %i.lp = select i1 %i.lo, i1 %i.lh, i1 false
  %i.lq = select i1 %i.lp, i1 %i.km, i1 false
  %i.lr = select i1 %i.lq, i1 %i.lf, i1 false
  %i.ls = select i1 %i.lr, i1 %i.ko, i1 false
  %i.lt = select i1 %i.ls, i1 %i.ld, i1 false
  %i.lu = select i1 %i.lt, i1 %i.kq, i1 false
  %i.lv = select i1 %i.lu, i1 %i.lb, i1 false
  %i.lw = select i1 %i.lv, i1 %i.ks, i1 false
  %i.lx = select i1 %i.lw, i1 %i.kz, i1 false
  %i.ly = select i1 %i.lx, i1 %i.ku, i1 false
  %i.lz = select i1 %i.ly, i1 %i.kx, i1 false
  %i.ma = select i1 %i.lz, i1 %i.kw, i1 false
  %.255..15 = select i1 %i.ma, i1 %.154225, i1 false ; 5 uses
  %i.mb = select i1 %i.ll, i1 true, i1 %i.ki
  %i.mc = select i1 %i.mb, i1 true, i1 %i.lj
  %i.md = select i1 %i.mc, i1 true, i1 %i.kk
  %i.me = select i1 %i.md, i1 true, i1 %i.lh
  %i.mf = select i1 %i.me, i1 true, i1 %i.km
  %i.mg = select i1 %i.mf, i1 true, i1 %i.lf
  %i.mh = select i1 %i.mg, i1 true, i1 %i.ko
  %i.mi = select i1 %i.mh, i1 true, i1 %i.ld
  %i.mj = select i1 %i.mi, i1 true, i1 %i.kq
  %i.mk = select i1 %i.mj, i1 true, i1 %i.lb
  %i.ml = select i1 %i.mk, i1 true, i1 %i.ks
  %i.mm = select i1 %i.ml, i1 true, i1 %i.kz
  %i.mn = select i1 %i.mm, i1 true, i1 %i.ku
  %i.mo = select i1 %i.mn, i1 true, i1 %i.kx
  %i.mp = select i1 %i.mo, i1 true, i1 %i.kw
  %..251.15 = select i1 %i.mp, i1 true, i1 %.150226 ; 3 uses
  %i.mq = icmp eq i16 %.sroa.0.0.insert.insert.i.i.15, 126 ; 2 uses
  %i.mr = select i1 %i.mq, i1 %i.kh, i1 false
  %i.ms = select i1 %i.mr, i1 %i.lk, i1 false
  %i.mt = select i1 %i.ms, i1 %i.kj, i1 false
  %i.mu = select i1 %i.mt, i1 %i.li, i1 false
  %i.mv = select i1 %i.mu, i1 %i.kl, i1 false
  %i.mw = select i1 %i.mv, i1 %i.lg, i1 false
  %i.mx = select i1 %i.mw, i1 %i.kn, i1 false
  %i.my = select i1 %i.mx, i1 %i.le, i1 false
  %i.mz = select i1 %i.my, i1 %i.kp, i1 false
  %i.na = select i1 %i.mz, i1 %i.lc, i1 false
  %i.nb = select i1 %i.na, i1 %i.kr, i1 false
  %i.nc = select i1 %i.nb, i1 %i.la, i1 false
  %i.nd = select i1 %i.nc, i1 %i.kt, i1 false
  %i.ne = select i1 %i.nd, i1 %i.ky, i1 false
  %i.nf = select i1 %i.ne, i1 %i.kv, i1 false
  %.348.15 = select i1 %i.nf, i1 %.146227, i1 false ; 5 uses
  %i.ng = select i1 %i.mq, i1 true, i1 %i.kh
  %i.nh = select i1 %i.ng, i1 true, i1 %i.lk
  %i.ni = select i1 %i.nh, i1 true, i1 %i.kj
  %i.nj = select i1 %i.ni, i1 true, i1 %i.li
  %i.nk = select i1 %i.nj, i1 true, i1 %i.kl
  %i.nl = select i1 %i.nk, i1 true, i1 %i.lg
  %i.nm = select i1 %i.nl, i1 true, i1 %i.kn
  %i.nn = select i1 %i.nm, i1 true, i1 %i.le
  %i.no = select i1 %i.nn, i1 true, i1 %i.kp
  %i.np = select i1 %i.no, i1 true, i1 %i.lc
  %i.nq = select i1 %i.np, i1 true, i1 %i.kr
  %i.nr = select i1 %i.nq, i1 true, i1 %i.la
  %i.ns = select i1 %i.nr, i1 true, i1 %i.kt
  %i.nt = select i1 %i.ns, i1 true, i1 %i.ky
  %i.nu = select i1 %i.nt, i1 true, i1 %i.kv
  %.344.15 = select i1 %i.nu, i1 true, i1 %.142228 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116, label %.preheader, !llvm.loop !332

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit118: ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit118
  %brmerge = select i1 %.255..15, i1 true, i1 %..251.15
  br i1 %brmerge, label %.invoke308, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit120

bb.x:                                             ; preds = %bb.u
  %i.nv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.y:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit118
  %i.nw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.z:                                             ; preds = %.invoke308, %.invoke, %bb.ap
  %i.nx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.invoke308:                                       ; preds = %bb.w
  %.mux = select i1 %.255..15, i64 15, i64 8
  %.str.52.mux = select i1 %.255..15, ptr @.str.52, ptr @.str.53
  %i.ny = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %.str.52.mux, i64 noundef %.mux)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit120 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit120: ; preds = %bb.w, %.invoke308
  %brmerge309 = select i1 %.348.15, i1 true, i1 %.344.15
  br i1 %brmerge309, label %.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit120
  %.mux310 = select i1 %.348.15, i64 12, i64 5
  %.str.54.mux = select i1 %.348.15, ptr @.str.54, ptr @.str.55
  %i.nz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %.str.54.mux, i64 noundef %.mux310)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit120, %.invoke
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !333)
  call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.oa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.oa, ptr %7, align 8, !tbaa !137, !alias.scope !339
  %i.ob = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.ob, align 8, !tbaa !139, !alias.scope !339
  store i8 0, ptr %i.oa, align 8, !tbaa !93, !alias.scope !339
  %i.oc = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !223, !noalias !339 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.od, null
  %i.oe = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.of = load ptr, ptr %i.oe, align 8, !noalias !339 ; 2 uses
  %i.og = icmp ugt ptr %i.od, %i.of
  %.08.i.i.i = select i1 %i.og, ptr %i.od, ptr %i.of ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124
  %i.oh = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !224, !noalias !339 ; 2 uses
  %i.oj = ptrtoint ptr %.08.i.i.i to i64
  %i.ok = ptrtoint ptr %i.oi to i64
  %i.ol = sub i64 %i.oj, %i.ok
  %i.om = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.oi, i64 noundef %i.ol)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ab ; 0 uses

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  %i.on = landingpad { ptr, i32 }
          cleanup
  %i.oo = load ptr, ptr %7, align 8, !tbaa !89, !alias.scope !339 ; 2 uses
  %i.op = icmp eq ptr %i.oo, %i.oa
  br i1 %i.op, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ab
  %i.oq = load i64, ptr %i.oa, align 8, !tbaa !93, !alias.scope !339
  %i.or = add i64 %i.oq, 1
  call void @_ZdlPvm(ptr noundef %i.oo, i64 noundef %i.or) #29
  br label %.body

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124
  %i.os = getelementptr inbounds nuw i8, ptr %6, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.os)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ab

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.ac, %bb.aa
  %i.ot = load i64, ptr %i.ob, align 8, !tbaa !139 ; 2 uses
  %i.ou = icmp ugt i64 %i.ot, 1
  %i.ov = load ptr, ptr %7, align 8, !tbaa !89    ; 2 uses
  %i.ow = icmp eq ptr %i.ov, %i.oa
end_hunk_0
