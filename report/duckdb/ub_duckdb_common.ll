Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common?download=true
inline.NumInlined: 29986
inline.NumDeleted: 10454
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 387
loop-unroll.NumUnrolled: 433
begin_hunk_0_@_ZN6duckdb15LocalGlobResultC2ERNS_15LocalFileSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15FileGlobOptionsENS_12optional_ptrINS_10FileOpenerELb1EEE:bb.a
          to label %.noexc116 unwind label %.loopexit253 ; 2 uses

.noexc116:                                        ; preds = %.noexc10.i.i114
  store ptr %i.cp, ptr %9, align 8, !tbaa !217, !alias.scope !3728
  %i.cq = load i64, ptr %i.b, align 8, !tbaa !231, !noalias !3728
  store i64 %i.cq, ptr %i.v, align 8, !tbaa !254, !alias.scope !3728
  br label %._crit_edge.i.i.i113

._crit_edge.i.i.i113:                             ; preds = %.noexc116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i111
  %i.cr = phi ptr [ %i.cp, %.noexc116 ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i111 ] ; 2 uses
  switch i64 %spec.select.i.i.i112, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %bb.z
  ]

bb.x:                                             ; preds = %._crit_edge.i.i.i113
  %i.cs = load i8, ptr %i.cm, align 1, !tbaa !254
  store i8 %i.cs, ptr %i.cr, align 1, !tbaa !254
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i.i113
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cr, ptr align 1 %i.cm, i64 %spec.select.i.i.i112, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %._crit_edge.i.i.i113
  %i.ct = load i64, ptr %i.b, align 8, !tbaa !231, !noalias !3728 ; 2 uses
  store i64 %i.ct, ptr %i.w, align 8, !tbaa !300, !alias.scope !3728
  %i.cu = load ptr, ptr %9, align 8, !tbaa !217, !alias.scope !3728
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ct
  store i8 0, ptr %i.cv, align 1, !tbaa !254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58, !noalias !3728
  %i.cw = load ptr, ptr %i.u, align 8, !tbaa !1327 ; 9 uses
  %i.cx = load ptr, ptr %i.x, align 8, !tbaa !1328
  %.not.i118 = icmp eq ptr %i.cw, %i.cx
  br i1 %.not.i118, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.cy = load ptr, ptr %9, align 8, !tbaa !217   ; 4 uses
  %i.cz = icmp eq ptr %i.cy, %i.v
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i130, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i130: ; preds = %bb.aa
  %i.da = load i64, ptr %i.w, align 8, !tbaa !300 ; 3 uses
  %i.db = icmp samesign ult i64 %i.da, 16
  call void @llvm.assume(i1 %i.db)
  %i.dc = add nuw nsw i64 %i.da, 1                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.dc, i1 false)
  store ptr %i.v, ptr %9, align 8, !tbaa !217
  store i64 0, ptr %i.w, align 8, !tbaa !300
  store i8 0, ptr %i.v, align 8, !tbaa !254
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  store ptr %i.dd, ptr %i.cw, align 8, !tbaa !328
  br label %bb.ab

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i119: ; preds = %bb.aa
  %i.de = load i64, ptr %i.v, align 8, !tbaa !254
  store i64 %i.de, ptr %i.y, align 8, !tbaa !254
  %.pre.i121 = load i64, ptr %i.w, align 8, !tbaa !300 ; 3 uses
  store ptr %i.v, ptr %9, align 8, !tbaa !217
  store i64 0, ptr %i.w, align 8, !tbaa !300
  store i8 0, ptr %i.v, align 8, !tbaa !254
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 3 uses
  store ptr %i.df, ptr %i.cw, align 8, !tbaa !328
  %i.dg = icmp eq ptr %i.cy, %i.y
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i119._crit_edge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i119._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i119
  %.pre299 = add nuw nsw i64 %.pre.i121, 1
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i119._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i130
  %.pre-phi300 = phi i64 [ %.pre299, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i119._crit_edge ], [ %i.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i130 ]
  %i.dh = phi ptr [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i119._crit_edge ], [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i130 ] ; 2 uses
  %i.di = phi i64 [ %.pre.i121, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i119._crit_edge ], [ %i.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i130 ] ; 2 uses
  %i.dj = icmp ult i64 %i.di, 16
  call void @llvm.assume(i1 %i.dj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dh, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %.pre-phi300, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i122: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i119
  store ptr %i.cy, ptr %i.cw, align 8, !tbaa !217
  %i.dk = load i64, ptr %i.y, align 8, !tbaa !254
  store i64 %i.dk, ptr %i.df, align 8, !tbaa !254
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i123: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i122, %bb.ab
  %i.dl = phi i64 [ %.pre.i121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i122 ], [ %i.di, %bb.ab ] ; 3 uses
  %i.dm = phi ptr [ %i.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i122 ], [ %i.dh, %bb.ab ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %i.dl, ptr %i.dn, align 8, !tbaa !300
  store ptr %i.y, ptr %6, align 8, !tbaa !217
  store i64 0, ptr %i.z, align 8, !tbaa !300
  store i8 0, ptr %i.y, align 8, !tbaa !254
  %.not.i.i.i124 = icmp eq i64 %i.dl, 0
  br i1 %.not.i.i.i124, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i127, label %.lr.ph.i.i.i125

.lr.ph.i.i.i125:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i123, %bb.ac
  %.069.i.i.i126 = phi i64 [ %i.dq, %bb.ac ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i123 ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.069.i.i.i126
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !254
  switch i8 %i.dp, label %bb.ac [
    i8 42, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i127
    i8 63, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i127
    i8 91, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i127
  ]

bb.ac:                                            ; preds = %.lr.ph.i.i.i125
  %i.dq = add nuw i64 %.069.i.i.i126, 1           ; 2 uses
  %exitcond.not.i.i.i129 = icmp eq i64 %i.dq, %i.dl
  br i1 %exitcond.not.i.i.i129, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i127, label %.lr.ph.i.i.i125, !llvm.loop !64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i127: ; preds = %bb.ac, %.lr.ph.i.i.i125, %.lr.ph.i.i.i125, %.lr.ph.i.i.i125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i123
  %.lcssa.i.i.i128 = phi i8 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i123 ], [ 1, %.lr.ph.i.i.i125 ], [ 1, %.lr.ph.i.i.i125 ], [ 1, %.lr.ph.i.i.i125 ], [ 0, %bb.ac ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  store i8 %.lcssa.i.i.i128, ptr %i.dr, align 8, !tbaa !1330
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ds = load ptr, ptr %i.u, align 8, !tbaa !1327
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  store ptr %i.dt, ptr %i.u, align 8, !tbaa !1327
  br label %_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE12emplace_backIJRNS0_15LocalFileSystemENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit132

bb.ad:                                            ; preds = %bb.z
  invoke void @_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE17_M_realloc_insertIJRNS0_15LocalFileSystemENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr %i.cw, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE12emplace_backIJRNS0_15LocalFileSystemENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit132 unwind label %bb.ae

_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE12emplace_backIJRNS0_15LocalFileSystemENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit132: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i127, %bb.ad
  %i.du = load ptr, ptr %9, align 8, !tbaa !217   ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.v
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE12emplace_backIJRNS0_15LocalFileSystemENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit132
  call void @_ZdlPv(ptr noundef %i.du) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE12emplace_backIJRNS0_15LocalFileSystemENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #58
  br label %bb.af

.loopexit253:                                     ; preds = %.noexc10.i.i114
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

.loopexit.split-lp:                               ; preds = %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

bb.ae:                                            ; preds = %bb.ad
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = load ptr, ptr %9, align 8, !tbaa !217   ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.v
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %bb.ae
  call void @_ZdlPv(ptr noundef %i.dx) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %bb.ae, %.loopexit253, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  %.pn88 = phi { ptr, i32 } [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit253 ], [ %i.dw, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #58
  br label %bb.cx

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dz = add nuw i64 %.069271, 1
  %.pre = load i64, ptr %i.r, align 8, !tbaa !300
  br label %bb.ag

bb.ag:                                            ; preds = %bb.h, %bb.af, %bb.j
  %i.ea = phi i64 [ %i.ap, %bb.j ], [ %.pre, %bb.af ], [ %i.ap, %bb.h ] ; 5 uses
  %.168 = phi i64 [ %i.au, %bb.j ], [ %i.dz, %bb.af ], [ %.067274, %bb.h ] ; 5 uses
  %i.eb = add nuw i64 %.069271, 1                 ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.ea
  br i1 %i.ec, label %bb.h, label %._crit_edge, !llvm.loop !3723

bb.ah:                                            ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.ed = load i64, ptr %i.d, align 8, !tbaa !231, !noalias !3725 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !300, !alias.scope !3725
  %i.ef = load ptr, ptr %10, align 8, !tbaa !217, !alias.scope !3725
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ed
  store i8 0, ptr %i.eg, align 1, !tbaa !254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58, !noalias !3725
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !1327 ; 9 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !1328
  %.not.i139 = icmp eq ptr %i.ei, %i.ek
  br i1 %.not.i139, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.em = load ptr, ptr %10, align 8, !tbaa !217  ; 4 uses
  %i.en = icmp eq ptr %i.em, %i.ah
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i151, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i151: ; preds = %bb.ai
  %i.eo = load i64, ptr %i.ee, align 8, !tbaa !300 ; 3 uses
  %i.ep = icmp samesign ult i64 %i.eo, 16
  call void @llvm.assume(i1 %i.ep)
  %i.eq = add nuw nsw i64 %i.eo, 1                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.el, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.eq, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.ah, ptr %10, align 8, !tbaa !217
  store i64 0, ptr %i.ee, align 8, !tbaa !300
  store i8 0, ptr %i.ah, align 8, !tbaa !254
  %i.es = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 2 uses
  store ptr %i.es, ptr %i.ei, align 8, !tbaa !328
  br label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i140: ; preds = %bb.ai
  %i.et = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.eu = load <2 x i64>, ptr %i.ee, align 8, !tbaa !254
  %.pre.i142 = load i64, ptr %i.ee, align 8, !tbaa !300 ; 3 uses
  store <2 x i64> %i.eu, ptr %i.et, align 8, !tbaa !254
  store ptr %i.ah, ptr %10, align 8, !tbaa !217
  store i64 0, ptr %i.ee, align 8, !tbaa !300
  store i8 0, ptr %i.ah, align 8, !tbaa !254
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 3 uses
  store ptr %i.ev, ptr %i.ei, align 8, !tbaa !328
  %i.ew = icmp eq ptr %i.em, %i.el
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i140._crit_edge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i140._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i140
  %.pre296 = add nuw nsw i64 %.pre.i142, 1
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i140._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i151
  %.pre-phi = phi i64 [ %.pre296, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i140._crit_edge ], [ %i.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i151 ]
  %i.ex = phi ptr [ %i.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i140._crit_edge ], [ %i.es, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i151 ] ; 2 uses
  %i.ey = phi ptr [ %i.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i140._crit_edge ], [ %i.er, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i151 ]
  %i.ez = phi i64 [ %.pre.i142, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i140._crit_edge ], [ %i.eo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i151 ] ; 2 uses
  %i.fa = icmp ult i64 %i.ez, 16
  call void @llvm.assume(i1 %i.fa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ex, ptr noundef nonnull align 8 dereferenceable(1) %i.el, i64 %.pre-phi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i140
  store ptr %i.em, ptr %i.ei, align 8, !tbaa !217
  %i.fb = load i64, ptr %i.el, align 8, !tbaa !254
  store i64 %i.fb, ptr %i.ev, align 8, !tbaa !254
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i144: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143, %bb.aj
  %i.fc = phi ptr [ %i.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143 ], [ %i.ey, %bb.aj ]
  %i.fd = phi i64 [ %.pre.i142, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143 ], [ %i.ez, %bb.aj ] ; 3 uses
  %i.fe = phi ptr [ %i.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143 ], [ %i.ex, %bb.aj ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i64 %i.fd, ptr %i.ff, align 8, !tbaa !300
  store ptr %i.el, ptr %5, align 8, !tbaa !217
  store i64 0, ptr %i.fc, align 8, !tbaa !300
  store i8 0, ptr %i.el, align 8, !tbaa !254
  %.not.i.i.i145 = icmp eq i64 %i.fd, 0
  br i1 %.not.i.i.i145, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i148, label %.lr.ph.i.i.i146

.lr.ph.i.i.i146:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i144, %bb.ak
  %.069.i.i.i147 = phi i64 [ %i.fi, %bb.ak ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i144 ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.069.i.i.i147
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !254
  switch i8 %i.fh, label %bb.ak [
    i8 42, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i148
    i8 63, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i148
    i8 91, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i148
  ]

bb.ak:                                            ; preds = %.lr.ph.i.i.i146
  %i.fi = add nuw i64 %.069.i.i.i147, 1           ; 2 uses
  %exitcond.not.i.i.i150 = icmp eq i64 %i.fi, %i.fd
  br i1 %exitcond.not.i.i.i150, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i148, label %.lr.ph.i.i.i146, !llvm.loop !64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i148: ; preds = %bb.ak, %.lr.ph.i.i.i146, %.lr.ph.i.i.i146, %.lr.ph.i.i.i146, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i144
  %.lcssa.i.i.i149 = phi i8 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i144 ], [ 1, %.lr.ph.i.i.i146 ], [ 1, %.lr.ph.i.i.i146 ], [ 1, %.lr.ph.i.i.i146 ], [ 0, %bb.ak ]
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  store i8 %.lcssa.i.i.i149, ptr %i.fj, align 8, !tbaa !1330
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.fk = load ptr, ptr %i.eh, align 8, !tbaa !1327
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  store ptr %i.fl, ptr %i.eh, align 8, !tbaa !1327
  br label %_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE12emplace_backIJRNS0_15LocalFileSystemENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit153

bb.al:                                            ; preds = %bb.ah
  invoke void @_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE17_M_realloc_insertIJRNS0_15LocalFileSystemENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr %i.ei, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE12emplace_backIJRNS0_15LocalFileSystemENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit153 unwind label %bb.ap

_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE12emplace_backIJRNS0_15LocalFileSystemENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i148, %bb.al
  %i.fm = load ptr, ptr %10, align 8, !tbaa !217  ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.ah
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE12emplace_backIJRNS0_15LocalFileSystemENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit153
  call void @_ZdlPv(ptr noundef %i.fm) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156: ; preds = %_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE12emplace_backIJRNS0_15LocalFileSystemENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit153, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #58
  store i8 0, ptr %i.o, align 8, !tbaa !1331
  %i.fo = load ptr, ptr %1, align 8, !tbaa !234
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 232
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = invoke noundef zeroext i1 %i.fq(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
  br i1 %i.fr, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am
  store i8 1, ptr %i.o, align 8, !tbaa !1331
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread242

bb.ao:                                            ; preds = %.noexc10.i.i, %bb.e
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

bb.ap:                                            ; preds = %bb.al
  %i.ft = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fu = load ptr, ptr %10, align 8, !tbaa !217  ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.ah
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157: ; preds = %bb.ap
  call void @_ZdlPv(ptr noundef %i.fu) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.fs, %bb.ao ], [ %i.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157 ], [ %i.ft, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #58
  br label %bb.cx

bb.aq:                                            ; preds = %bb.bu, %bb.at, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.ar:                                            ; preds = %bb.am
  %i.fx = invoke noundef nonnull align 8 dereferenceable(33) ptr @_ZN6duckdb6vectorINS_9PathSplitELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 0)
          to label %._crit_edge.i.i unwind label %bb.aq

._crit_edge.i.i:                                  ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #58
  %i.fy = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.fy, ptr %11, align 8, !tbaa !328
  store i8 58, ptr %i.fy, align 8, !tbaa !254
  %i.fz = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 1, ptr %i.fz, align 8, !tbaa !300
  %i.ga = getelementptr inbounds nuw i8, ptr %11, i64 17
  store i8 0, ptr %i.ga, align 1, !tbaa !254
  %i.gb = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %i.fx, ptr noundef nonnull %i.fy, i64 noundef 0, i64 noundef 1) #58, !inline_history !970
  %.not = icmp eq i64 %i.gb, -1
  %i.gc = load ptr, ptr %11, align 8, !tbaa !217  ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.fy
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %._crit_edge.i.i
  call void @_ZdlPv(ptr noundef %i.gc) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #58
  br i1 %.not, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163
  store i8 1, ptr %i.o, align 8, !tbaa !1331
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread242

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163
  %i.ge = invoke noundef nonnull align 8 dereferenceable(33) ptr @_ZN6duckdb6vectorINS_9PathSplitELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 0)
          to label %bb.au unwind label %bb.aq     ; 2 uses

bb.au:                                            ; preds = %bb.at
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !300
  %i.gh = icmp eq i64 %i.gg, 1
  br i1 %i.gh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread242

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.au
  %i.gi = load ptr, ptr %i.ge, align 8, !tbaa !217
  %lhsc = load i8, ptr %i.gi, align 1
  %i.gj = icmp eq i8 %lhsc, 126
  br i1 %i.gj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread242

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #58
  invoke void @_ZN6duckdb10FileSystem16GetHomeDirectoryB5cxx11ENS_12optional_ptrINS_10FileOpenerELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr %4)
          to label %bb.av unwind label %bb.bc

bb.av:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.gk = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !300
  %i.gm = icmp eq i64 %i.gl, 0
  br i1 %i.gm, label %_ZN6duckdb10FileSystem7HasGlobERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store i8 1, ptr %i.o, align 8, !tbaa !1331
  %i.gn = invoke noundef nonnull align 8 dereferenceable(33) ptr @_ZN6duckdb6vectorINS_9PathSplitELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 0)
          to label %bb.ax unwind label %bb.bd

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.gn, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.bd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.ax
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE17_M_realloc_insertIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !300, !alias.scope !6425, !noalias !6424 ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false), !alias.scope !6426
  br label %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.ar, ptr %.012.i.i.i.i, align 8, !tbaa !217, !alias.scope !6424, !noalias !6425
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !254, !alias.scope !6425, !noalias !6424
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !254, !alias.scope !6424, !noalias !6425
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !300, !alias.scope !6425, !noalias !6424
  br label %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.h
  %i.az = phi i64 [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.av, %bb.h ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !300, !alias.scope !6424, !noalias !6425
  store ptr %i.as, ptr %.0911.i.i.i.i, align 8, !tbaa !217, !alias.scope !6425, !noalias !6424
  store i64 0, ptr %i.ba, align 8, !tbaa !300, !alias.scope !6425, !noalias !6424
  store i8 0, ptr %i.as, align 8, !tbaa !254, !alias.scope !6425, !noalias !6424
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40
  %i.bf = load <2 x ptr>, ptr %i.bd, align 8, !tbaa !232, !alias.scope !6425, !noalias !6424
  store ptr null, ptr %i.be, align 8, !tbaa !253, !alias.scope !6425, !noalias !6424
  store <2 x ptr> %i.bf, ptr %i.bc, align 8, !tbaa !232, !alias.scope !6424, !noalias !6425
  store ptr null, ptr %i.bd, align 8, !tbaa !1120, !alias.scope !6425, !noalias !6424
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bg, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !137

_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i, %bb.g
  %.0.lcssa.i.i.i.i = phi ptr [ %i.r, %bb.g ], [ %i.bh, %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i.i31 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i.i31, label %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit41, label %.lr.ph.i.i.i.i32

.lr.ph.i.i.i.i32:                                 ; preds = %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i38
  %.012.i.i.i.i33 = phi ptr [ %i.ca, %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i38 ], [ %i.bi, %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 6 uses
  %.0911.i.i.i.i34 = phi ptr [ %i.bz, %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i38 ], [ %1, %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6427)
  call void @llvm.experimental.noalias.scope.decl(metadata !6428)
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i33, i64 16 ; 3 uses
  store ptr %i.bj, ptr %.012.i.i.i.i33, align 8, !tbaa !328, !alias.scope !6427, !noalias !6428
  %i.bk = load ptr, ptr %.0911.i.i.i.i34, align 8, !tbaa !217, !alias.scope !6428, !noalias !6427 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i34, i64 16 ; 5 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i35

bb.i:                                             ; preds = %.lr.ph.i.i.i.i32
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i34, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !300, !alias.scope !6428, !noalias !6427 ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 16
  call void @llvm.assume(i1 %i.bp)
  %i.bq = add nuw nsw i64 %i.bo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(1) %i.bl, i64 %i.bq, i1 false), !alias.scope !6429
  br label %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i35: ; preds = %.lr.ph.i.i.i.i32
  store ptr %i.bk, ptr %.012.i.i.i.i33, align 8, !tbaa !217, !alias.scope !6427, !noalias !6428
  %i.br = load i64, ptr %i.bl, align 8, !tbaa !254, !alias.scope !6428, !noalias !6427
  store i64 %i.br, ptr %i.bj, align 8, !tbaa !254, !alias.scope !6427, !noalias !6428
  %.phi.trans.insert.i.i.i.i.i36 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i34, i64 8
  %.pre.i.i.i.i.i37 = load i64, ptr %.phi.trans.insert.i.i.i.i.i36, align 8, !tbaa !300, !alias.scope !6428, !noalias !6427
  br label %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i38

_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i35, %bb.i
  %i.bs = phi i64 [ %.pre.i.i.i.i.i37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i35 ], [ %i.bo, %bb.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i34, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i33, i64 8
  store i64 %i.bs, ptr %i.bu, align 8, !tbaa !300, !alias.scope !6427, !noalias !6428
  store ptr %i.bl, ptr %.0911.i.i.i.i34, align 8, !tbaa !217, !alias.scope !6428, !noalias !6427
  store i64 0, ptr %i.bt, align 8, !tbaa !300, !alias.scope !6428, !noalias !6427
  store i8 0, ptr %i.bl, align 8, !tbaa !254, !alias.scope !6428, !noalias !6427
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i33, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i34, i64 32 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i34, i64 40
  %i.by = load <2 x ptr>, ptr %i.bw, align 8, !tbaa !232, !alias.scope !6428, !noalias !6427
  store ptr null, ptr %i.bx, align 8, !tbaa !253, !alias.scope !6428, !noalias !6427
  store <2 x ptr> %i.by, ptr %i.bv, align 8, !tbaa !232, !alias.scope !6427, !noalias !6428
  store ptr null, ptr %i.bw, align 8, !tbaa !1120, !alias.scope !6428, !noalias !6427
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i34, i64 48 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i33, i64 48 ; 2 uses
  %.not.i.i.i.i39 = icmp eq ptr %i.bz, %i.c
  br i1 %.not.i.i.i.i39, label %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit41, label %.lr.ph.i.i.i.i32, !llvm.loop !137

_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit41: ; preds = %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i38, %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i40 = phi ptr [ %i.bi, %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ca, %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i38 ]
  %.not.i42 = icmp eq ptr %i.d, null
  br i1 %.not.i42, label %_ZNSt12_Vector_baseIN6duckdb12OpenFileInfoESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit41
  call void @_ZdlPv(ptr noundef nonnull %i.d) #60
  br label %_ZNSt12_Vector_baseIN6duckdb12OpenFileInfoESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb12OpenFileInfoESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit41, %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %0, align 8, !tbaa !1142
  store ptr %.0.lcssa.i.i.i.i40, ptr %i.b, align 8, !tbaa !1143
  %i.cc = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %i.m
  store ptr %i.cc, ptr %i.cb, align 8, !tbaa !1145
  ret void

.body:                                            ; preds = %.noexc.i
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  %i.cf = call ptr @__cxa_begin_catch(ptr %i.ce) #58 ; 0 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %_ZSt8_DestroyIPN6duckdb12OpenFileInfoES1_EvT_S3_RSaIT0_E.exit.thread, label %_ZSt8_DestroyIPN6duckdb12OpenFileInfoES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb12OpenFileInfoES1_EvT_S3_RSaIT0_E.exit.thread: ; preds = %.body
  call void @_ZN6duckdb12OpenFileInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.s) #58
  br label %_ZNSt12_Vector_baseIN6duckdb12OpenFileInfoESaIS1_EE13_M_deallocateEPS1_m.exit44

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb12OpenFileInfoESaIS1_EE13_M_deallocateEPS1_m.exit44
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

_ZSt8_DestroyIPN6duckdb12OpenFileInfoES1_EvT_S3_RSaIT0_E.exit: ; preds = %.body
  call void @_ZdlPv(ptr noundef nonnull %i.r) #60
  br label %_ZNSt12_Vector_baseIN6duckdb12OpenFileInfoESaIS1_EE13_M_deallocateEPS1_m.exit44

_ZNSt12_Vector_baseIN6duckdb12OpenFileInfoESaIS1_EE13_M_deallocateEPS1_m.exit44: ; preds = %_ZSt8_DestroyIPN6duckdb12OpenFileInfoES1_EvT_S3_RSaIT0_E.exit, %_ZSt8_DestroyIPN6duckdb12OpenFileInfoES1_EvT_S3_RSaIT0_E.exit.thread
  invoke void @__cxa_rethrow() #59
          to label %bb.n unwind label %bb.k

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.cg

bb.m:                                             ; preds = %bb.k
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #61
  unreachable

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb12OpenFileInfoESaIS1_EE13_M_deallocateEPS1_m.exit44
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE17_M_realloc_insertIJRNS0_15LocalFileSystemENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1327 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1332   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb9PathSplitESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2036) #59
  unreachable

_ZNKSt6vectorIN6duckdb9PathSplitESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6duckdb9PathSplitESaIS1_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6duckdb9PathSplitESaIS1_EE12_M_check_lenEmPKc.exit
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #64
  br label %_ZNSt12_Vector_baseIN6duckdb9PathSplitESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN6duckdb9PathSplitESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN6duckdb9PathSplitESaIS1_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorIN6duckdb9PathSplitESaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.s, ptr %4, align 8, !tbaa !328
  %i.t = load ptr, ptr %3, align 8, !tbaa !217    ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread: ; preds = %_ZNSt12_Vector_baseIN6duckdb9PathSplitESaIS1_EE11_M_allocateEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !300  ; 3 uses
  %i.y = icmp samesign ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.u, ptr %3, align 8, !tbaa !217
  store i64 0, ptr %i.aa, align 8, !tbaa !300
  store i8 0, ptr %i.u, align 8, !tbaa !254
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store ptr %i.ac, ptr %i.r, align 8, !tbaa !328
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %_ZNSt12_Vector_baseIN6duckdb9PathSplitESaIS1_EE11_M_allocateEm.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.af = load <2 x i64>, ptr %.phi.trans.insert, align 8, !tbaa !254
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !300 ; 2 uses
  store <2 x i64> %i.af, ptr %i.ae, align 8, !tbaa !254
  store ptr %i.u, ptr %3, align 8, !tbaa !217
  store i64 0, ptr %i.ad, align 8, !tbaa !300
  store i8 0, ptr %i.u, align 8, !tbaa !254
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr %i.ag, ptr %i.r, align 8, !tbaa !328
  %i.ah = icmp eq ptr %i.t, %i.s
  br i1 %i.ah, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.ai = phi ptr [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 2 uses
  %i.aj = phi ptr [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ]
  %i.ak = phi i64 [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.am, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.t, ptr %i.r, align 8, !tbaa !217
  %i.an = load i64, ptr %i.s, align 8, !tbaa !254
  store i64 %i.an, ptr %i.ag, align 8, !tbaa !254
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d
  %i.ao = phi ptr [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.aj, %bb.d ]
  %i.ap = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ak, %bb.d ] ; 3 uses
  %i.aq = phi ptr [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ai, %bb.d ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ap, ptr %i.ar, align 8, !tbaa !300
  store ptr %i.s, ptr %4, align 8, !tbaa !217
  store i64 0, ptr %i.ao, align 8, !tbaa !300
  store i8 0, ptr %i.s, align 8, !tbaa !254
  %.not.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %bb.e
  %.069.i.i = phi i64 [ %i.au, %bb.e ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.069.i.i
  %i.at = load i8, ptr %i.as, align 1, !tbaa !254
  switch i8 %i.at, label %bb.e [
    i8 42, label %.loopexit
    i8 63, label %.loopexit
    i8 91, label %.loopexit
  ]

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.au = add nuw i64 %.069.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.au, %i.ap
  br i1 %exitcond.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !64

.loopexit:                                        ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %.lcssa.i.i = phi i8 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ], [ 0, %bb.e ], [ 1, %.lr.ph.i.i ], [ 1, %.lr.ph.i.i ], [ 1, %.lr.ph.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i8 %.lcssa.i.i, ptr %i.av, align 8, !tbaa !1330
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit, %_ZSt19__relocate_object_aIN6duckdb9PathSplitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bm, %_ZSt19__relocate_object_aIN6duckdb9PathSplitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.q, %.loopexit ] ; 6 uses
  %.0911.i.i.i.i = phi ptr [ %i.bl, %_ZSt19__relocate_object_aIN6duckdb9PathSplitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.c, %.loopexit ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6437)
  call void @llvm.experimental.noalias.scope.decl(metadata !6438)
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.aw, ptr %.012.i.i.i.i, align 8, !tbaa !328, !alias.scope !6437, !noalias !6438
  %i.ax = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !217, !alias.scope !6438, !noalias !6437 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !300, !alias.scope !6438, !noalias !6437 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %i.bb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.bd, i1 false), !alias.scope !6439
  br label %_ZSt19__relocate_object_aIN6duckdb9PathSplitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.ax, ptr %.012.i.i.i.i, align 8, !tbaa !217, !alias.scope !6437, !noalias !6438
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !254, !alias.scope !6438, !noalias !6437
  store i64 %i.be, ptr %i.aw, align 8, !tbaa !254, !alias.scope !6437, !noalias !6438
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !300, !alias.scope !6438, !noalias !6437
  br label %_ZSt19__relocate_object_aIN6duckdb9PathSplitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aIN6duckdb9PathSplitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.f
  %i.bf = phi i64 [ %i.bb, %bb.f ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.bf, ptr %i.bh, align 8, !tbaa !300, !alias.scope !6437, !noalias !6438
  store ptr %i.ay, ptr %.0911.i.i.i.i, align 8, !tbaa !217, !alias.scope !6438, !noalias !6437
  store i64 0, ptr %i.bg, align 8, !tbaa !300, !alias.scope !6438, !noalias !6437
  store i8 0, ptr %i.ay, align 8, !tbaa !254, !alias.scope !6438, !noalias !6437
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !1330, !range !289, !alias.scope !6438, !noalias !6437, !noundef !290
  store i8 %i.bk, ptr %i.bi, align 8, !tbaa !1330, !alias.scope !6437, !noalias !6438
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bl, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !6433

_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN6duckdb9PathSplitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i, %.loopexit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.q, %.loopexit ], [ %i.bm, %_ZSt19__relocate_object_aIN6duckdb9PathSplitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i28, label %_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38, label %.lr.ph.i.i.i.i29

.lr.ph.i.i.i.i29:                                 ; preds = %_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN6duckdb9PathSplitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i35
  %.012.i.i.i.i30 = phi ptr [ %i.ce, %_ZSt19__relocate_object_aIN6duckdb9PathSplitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i35 ], [ %i.bn, %_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 6 uses
  %.0911.i.i.i.i31 = phi ptr [ %i.cd, %_ZSt19__relocate_object_aIN6duckdb9PathSplitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i35 ], [ %1, %_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6440)
  call void @llvm.experimental.noalias.scope.decl(metadata !6441)
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i30, i64 16 ; 3 uses
  store ptr %i.bo, ptr %.012.i.i.i.i30, align 8, !tbaa !328, !alias.scope !6440, !noalias !6441
  %i.bp = load ptr, ptr %.0911.i.i.i.i31, align 8, !tbaa !217, !alias.scope !6441, !noalias !6440 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 16 ; 5 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32

bb.g:                                             ; preds = %.lr.ph.i.i.i.i29
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !300, !alias.scope !6441, !noalias !6440 ; 3 uses
  %i.bu = icmp ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  %i.bv = add nuw nsw i64 %i.bt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bo, ptr noundef nonnull align 8 dereferenceable(1) %i.bq, i64 %i.bv, i1 false), !alias.scope !6442
  br label %_ZSt19__relocate_object_aIN6duckdb9PathSplitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i.i29
  store ptr %i.bp, ptr %.012.i.i.i.i30, align 8, !tbaa !217, !alias.scope !6440, !noalias !6441
  %i.bw = load i64, ptr %i.bq, align 8, !tbaa !254, !alias.scope !6441, !noalias !6440
  store i64 %i.bw, ptr %i.bo, align 8, !tbaa !254, !alias.scope !6440, !noalias !6441
  %.phi.trans.insert.i.i.i.i.i33 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 8
  %.pre.i.i.i.i.i34 = load i64, ptr %.phi.trans.insert.i.i.i.i.i33, align 8, !tbaa !300, !alias.scope !6441, !noalias !6440
  br label %_ZSt19__relocate_object_aIN6duckdb9PathSplitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i35

_ZSt19__relocate_object_aIN6duckdb9PathSplitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32, %bb.g
  %i.bx = phi i64 [ %i.bt, %bb.g ], [ %.pre.i.i.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32 ]
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i30, i64 8
  store i64 %i.bx, ptr %i.bz, align 8, !tbaa !300, !alias.scope !6440, !noalias !6441
  store ptr %i.bq, ptr %.0911.i.i.i.i31, align 8, !tbaa !217, !alias.scope !6441, !noalias !6440
  store i64 0, ptr %i.by, align 8, !tbaa !300, !alias.scope !6441, !noalias !6440
  store i8 0, ptr %i.bq, align 8, !tbaa !254, !alias.scope !6441, !noalias !6440
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i30, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 32
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !1330, !range !289, !alias.scope !6441, !noalias !6440, !noundef !290
  store i8 %i.cc, ptr %i.ca, align 8, !tbaa !1330, !alias.scope !6440, !noalias !6441
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 40 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i30, i64 40 ; 2 uses
  %.not.i.i.i.i36 = icmp eq ptr %i.cd, %i.b
  br i1 %.not.i.i.i.i36, label %_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38, label %.lr.ph.i.i.i.i29, !llvm.loop !6433

_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38: ; preds = %_ZSt19__relocate_object_aIN6duckdb9PathSplitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i35, %_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i37 = phi ptr [ %i.bn, %_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ce, %_ZSt19__relocate_object_aIN6duckdb9PathSplitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i35 ]
  %.not.i39 = icmp eq ptr %i.c, null
  br i1 %.not.i39, label %_ZNSt12_Vector_baseIN6duckdb9PathSplitESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38
  call void @_ZdlPv(ptr noundef nonnull %i.c) #60
  br label %_ZNSt12_Vector_baseIN6duckdb9PathSplitESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb9PathSplitESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38, %bb.h
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.q, ptr %0, align 8, !tbaa !1332
  store ptr %.0.lcssa.i.i.i.i37, ptr %i.a, align 8, !tbaa !1327
  %i.cg = getelementptr inbounds nuw [40 x i8], ptr %i.q, i64 %i.l
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !1328
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb15ExpandDirectoryESaIS1_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1335 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1339
  %.not = icmp eq ptr %i.c, %i.e
  br i1 %.not, label %bb.f, label %bb.b
end_hunk_1
