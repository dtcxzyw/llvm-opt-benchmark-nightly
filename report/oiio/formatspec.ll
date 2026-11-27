Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/formatspec?download=true
inline.NumInlined: 8159
inline.NumDeleted: 2481
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN11OpenImageIO4v3_19ImageSpec12metadata_valB5cxx11ERKNS0_10ParamValueEb:bb.a

bb.s:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.t:                                             ; preds = %bb.n
  %.sroa.0.0.copyload.i88 = load ptr, ptr %1, align 8, !tbaa !722 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  %.not.i.i89 = icmp eq ptr %.sroa.0.0.copyload.i88, null
  br i1 %.not.i.i89, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit91, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i88, i64 -24
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !748, !noalias !1371
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit91

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit91: ; preds = %bb.t, %bb.u
  %.0.i.i90 = phi i64 [ %i.bm, %bb.u ], [ 0, %bb.t ]
  store ptr %.sroa.0.0.copyload.i88, ptr %11, align 8, !tbaa !714, !alias.scope !1371
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %.0.i.i90, ptr %i.bn, align 8, !tbaa !715, !alias.scope !1371
  store ptr @.str.38, ptr %12, align 8, !tbaa !714
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 6, ptr %i.bo, align 8, !tbaa !715
  %i.bp = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil12istarts_withENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %11, ptr noundef nonnull dead_on_return %12)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit91
  br i1 %i.bp, label %bb.w, label %.critedge.thread

bb.w:                                             ; preds = %bb.v
  %i.bq = invoke { ptr, i64 } @_ZN11OpenImageIO4v3_13pvt23canon_explanation_tableEv()
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.br = extractvalue { ptr, i64 } %i.bq, 0      ; 2 uses
  %i.bs = extractvalue { ptr, i64 } %i.bq, 1      ; 2 uses
  %.idx = mul nuw nsw i64 %i.bs, 24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 %.idx
  %.not61205 = icmp eq i64 %i.bs, 0
  br i1 %.not61205, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.bu = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %14, i64 8
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.ab
  %.040207 = phi ptr [ %i.br, %.lr.ph ], [ %i.cc, %bb.ab ] ; 3 uses
  %.2206 = phi ptr [ null, %.lr.ph ], [ %spec.select79, %bb.ab ]
  %i.bw = load ptr, ptr %.040207, align 8, !tbaa !1369 ; 3 uses
  store ptr %i.bw, ptr %13, align 8, !tbaa !714
  %.not.i92 = icmp eq ptr %i.bw, null
  br i1 %.not.i92, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit93, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bx = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bw) #39
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit93

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit93: ; preds = %bb.y, %bb.z
  %i.by = phi i64 [ %i.bx, %bb.z ], [ 0, %bb.y ]
  store i64 %i.by, ptr %i.bu, align 8, !tbaa !715
  %.sroa.0.0.copyload.i94 = load ptr, ptr %1, align 8, !tbaa !722 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  %.not.i.i95 = icmp eq ptr %.sroa.0.0.copyload.i94, null
  br i1 %.not.i.i95, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit97, label %bb.aa

bb.aa:                                            ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit93
  %i.bz = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i94, i64 -24
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !748, !noalias !1372
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit97

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit97: ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit93, %bb.aa
  %.0.i.i96 = phi i64 [ %i.ca, %bb.aa ], [ 0, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit93 ]
  store ptr %.sroa.0.0.copyload.i94, ptr %14, align 8, !tbaa !714, !alias.scope !1372
  store i64 %.0.i.i96, ptr %i.bv, align 8, !tbaa !715, !alias.scope !1372
  %i.cb = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %13, ptr noundef nonnull dead_on_return %14)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit97
  %spec.select79 = select i1 %i.cb, ptr %.040207, ptr %.2206 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.040207, i64 24 ; 2 uses
  %.not61 = icmp eq ptr %i.cc, %i.bt
  br i1 %.not61, label %.critedge, label %bb.y

.critedge:                                        ; preds = %bb.ab
  %.not64 = icmp eq ptr %spec.select79, null
  br i1 %.not64, label %.critedge.thread, label %.critedge.thread180

.critedge.thread180:                              ; preds = %bb.n, %.critedge
  %.4183 = phi ptr [ %spec.select79, %.critedge ], [ %spec.select, %bb.n ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #39
  %i.cd = getelementptr inbounds nuw i8, ptr %.4183, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !751
  %i.cf = getelementptr inbounds nuw i8, ptr %.4183, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !752
  invoke void %i.ce(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(39) %1, ptr noundef %i.cg)
          to label %bb.ac unwind label %bb.ai

bb.ac:                                            ; preds = %.critedge.thread180
  %i.ch = load ptr, ptr %10, align 8, !tbaa !688  ; 6 uses
  %i.ci = icmp eq ptr %i.ch, %i.bc
  %i.cj = load ptr, ptr %15, align 8, !tbaa !688  ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck                ; 2 uses
  br i1 %i.ci, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i104: ; preds = %bb.ac
  br i1 %i.cl, label %bb.ad, label %.thread.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i98: ; preds = %bb.ac
  br i1 %i.cl, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i99

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i104
  %i.cm = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !693 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 16
  call void @llvm.assume(i1 %i.co)
  switch i64 %i.cn, label %bb.af [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i102
    i64 1, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.cp = load i8, ptr %i.cj, align 1, !tbaa !689
  store i8 %i.cp, ptr %i.ch, align 1, !tbaa !689
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i102

bb.af:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ch, ptr align 1 %i.cj, i64 %i.cn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i102: ; preds = %bb.af, %bb.ae, %bb.ad
  %i.cq = load i64, ptr %i.cm, align 8, !tbaa !693 ; 2 uses
  store i64 %i.cq, ptr %i.bd, align 8, !tbaa !693
  %i.cr = load ptr, ptr %10, align 8, !tbaa !688
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cq
  store i8 0, ptr %i.cs, align 1, !tbaa !689
  %.pre.i103 = load ptr, ptr %15, align 8, !tbaa !688
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit106

.thread.i105:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i104
  store ptr %i.cj, ptr %10, align 8, !tbaa !688
  %i.ct = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cu = load <2 x i64>, ptr %i.ct, align 8, !tbaa !689
  store <2 x i64> %i.cu, ptr %i.bd, align 8, !tbaa !689
  br label %bb.ah

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i99: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i98
  %i.cv = load i64, ptr %i.bc, align 8, !tbaa !689
  store ptr %i.cj, ptr %10, align 8, !tbaa !688
  %i.cw = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cx = load <2 x i64>, ptr %i.cw, align 8, !tbaa !689
  store <2 x i64> %i.cx, ptr %i.bd, align 8, !tbaa !689
  %.not.i100 = icmp eq ptr %i.ch, null
  br i1 %.not.i100, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i99
  store ptr %i.ch, ptr %15, align 8, !tbaa !688
  store i64 %i.cv, ptr %i.ck, align 8, !tbaa !689
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit106

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i99, %.thread.i105
  store ptr %i.ck, ptr %15, align 8, !tbaa !688
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i102, %bb.ag, %bb.ah
  %i.cy = phi ptr [ %i.ch, %bb.ag ], [ %i.ck, %bb.ah ], [ %.pre.i103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i102 ]
  %i.cz = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.cz, align 8, !tbaa !693
  store i8 0, ptr %i.cy, align 1, !tbaa !689
  %i.da = load ptr, ptr %15, align 8, !tbaa !688  ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit106
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !689
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #39
  br label %.critedge.thread

bb.ai:                                            ; preds = %.critedge.thread180
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #39
  br label %.loopexit.split-lp.loopexit.split-lp

.critedge.thread:                                 ; preds = %bb.x, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %.critedge
  %or.cond187 = icmp eq i64 %i.c, 459271
  br i1 %or.cond187, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit110.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel: ; preds = %.critedge.thread
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 38 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  %smax = call i32 @llvm.smax.i32(i32 %.sroa.8.0.extract.trunc, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  %.pre224 = load ptr, ptr %i.dh, align 8
  %.pre = load i8, ptr %i.dg, align 2, !tbaa !744, !range !745
  %i.dk = trunc nuw i8 %.pre to i1
  %i.dl = select i1 %i.dk, ptr %.pre224, ptr %i.dh ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !84 ; 2 uses
  %.not70.peel = icmp eq i32 %i.dn, 0
  br i1 %.not70.peel, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel
  %i.do = load i32, ptr %i.dl, align 4, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #39
  %i.dp = sitofp i32 %i.do to float
  %i.dq = sitofp i32 %i.dn to float
  %i.dr = fdiv float %i.dp, %i.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39, !noalias !1373
  store float %i.dr, ptr %3, align 16, !noalias !1373
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr nonnull @.str.40, i64 4, i64 9, ptr nonnull %3)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp301.loopexit.split-lp

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39, !noalias !1373
  %i.ds = load i64, ptr %i.di, align 8, !tbaa !693 ; 2 uses
  %i.dt = load i64, ptr %i.bd, align 8, !tbaa !693
  %i.du = sub i64 4611686018427387903, %i.dt
  %i.dv = icmp ult i64 %i.du, %i.ds
  br i1 %i.dv, label %.loopexit219, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel: ; preds = %bb.ak
  %i.dw = load ptr, ptr %16, align 8, !tbaa !688
  %i.dx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.dw, i64 noundef %i.ds)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel unwind label %.loopexit.split-lp192.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %i.dy = load ptr, ptr %16, align 8, !tbaa !688  ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.dj
  br i1 %i.dz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i116.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  %i.ea = load i64, ptr %i.dj, align 8, !tbaa !689
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i116.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  %20 = load i64, ptr %i.di, align 8, !tbaa !693
  %21 = icmp ult i64 %20, 16
  call void @llvm.assume(i1 %21)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i116.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit124.peel

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel
  %i.ec = load i64, ptr %i.bd, align 8, !tbaa !693
  %i.ed = add i64 %i.ec, -4611686018427387901
  %i.ee = icmp ult i64 %i.ed, 3
  br i1 %i.ee, label %.loopexit223.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i121.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i121.peel: ; preds = %bb.al
  %i.ef = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.41, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit124.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit124.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i121.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.peel
  %exitcond.peel.not = icmp slt i32 %.sroa.8.0.extract.trunc, 2
  br i1 %exitcond.peel.not, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit110.thread, label %.peel.next

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit124.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit124
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit124 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit124.peel ] ; 2 uses
  %i.eg = load i64, ptr %i.bd, align 8, !tbaa !693
  %i.eh = and i64 %i.eg, -2
  %i.ei = icmp eq i64 %i.eh, 4611686018427387902
  br i1 %i.ei, label %.loopexit223.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %.peel.next
  %i.ej = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.39, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ek = load i8, ptr %i.dg, align 2, !tbaa !744, !range !745, !noundef !746
  %i.el = trunc nuw i8 %i.ek to i1
  %i.em = load ptr, ptr %i.dh, align 8
  %i.en = select i1 %i.el, ptr %i.em, ptr %i.dh
  %.idx297 = shl nuw nsw i64 %indvars.iv, 3
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %.idx297 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !84 ; 2 uses
  %.not70 = icmp eq i32 %i.eq, 0
  br i1 %.not70, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.er = load i32, ptr %i.eo, align 4, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #39
  %i.es = sitofp i32 %i.er to float
  %i.et = sitofp i32 %i.eq to float
  %i.eu = fdiv float %i.es, %i.et
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39, !noalias !1373
  store float %i.eu, ptr %3, align 16, !noalias !1373
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr nonnull @.str.40, i64 4, i64 9, ptr nonnull %3)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp301.loopexit.split-lp

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39, !noalias !1373
  %i.ev = load i64, ptr %i.di, align 8, !tbaa !693 ; 2 uses
  %i.ew = load i64, ptr %i.bd, align 8, !tbaa !693
  %i.ex = sub i64 4611686018427387903, %i.ew
  %i.ey = icmp ult i64 %i.ex, %i.ev
  br i1 %i.ey, label %.loopexit219, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

.loopexit219:                                     ; preds = %bb.an, %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.449) #41
          to label %.noexc113 unwind label %.loopexit.split-lp192.loopexit.split-lp.loopexit.split-lp

.noexc113:                                        ; preds = %.loopexit219
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.an
  %i.ez = load ptr, ptr %16, align 8, !tbaa !688
  %i.fa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.ez, i64 noundef %i.ev)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp192.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.fb = load ptr, ptr %16, align 8, !tbaa !688  ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.dj
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.fd = load i64, ptr %i.dj, align 8, !tbaa !689
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit124

.loopexit.split-lp.loopexit.split-lp301.loopexit.split-lp: ; preds = %bb.am, %bb.aj
  %lpad.loopexit.split-lp314 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

.loopexit.split-lp192.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel, %.loopexit219
  %lpad.loopexit.split-lp317 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ff = load ptr, ptr %16, align 8, !tbaa !688  ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.dj
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %.loopexit.split-lp192.loopexit.split-lp.loopexit.split-lp
  %i.fh = load i64, ptr %i.dj, align 8, !tbaa !689
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %.loopexit.split-lp192.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp301.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118
  %.pn71 = phi { ptr, i32 } [ %lpad.loopexit.split-lp317, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118 ], [ %lpad.loopexit.split-lp314, %.loopexit.split-lp.loopexit.split-lp301.loopexit.split-lp ], [ %lpad.loopexit.split-lp317, %.loopexit.split-lp192.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  br label %.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.fj = load i64, ptr %i.bd, align 8, !tbaa !693
  %i.fk = add i64 %i.fj, -4611686018427387901
  %i.fl = icmp ult i64 %i.fk, 3
  br i1 %i.fl, label %.loopexit223.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i121

.loopexit223.invoke:                              ; preds = %bb.ao, %.peel.next, %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.449) #41
          to label %.loopexit223.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit223.cont:                                ; preds = %.loopexit223.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i121: ; preds = %bb.ao
  %i.fm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.41, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit124 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i121, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit97, %.loopexit223.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i121.peel, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit91, %bb.w
  %lpad.loopexit.split-lp320 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit124: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i121, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit110.thread, label %.peel.next, !llvm.loop !1358

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit110.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit124.peel, %.critedge.thread
  %i.fn = load i64, ptr %i.bd, align 8, !tbaa !693
  %.not65 = icmp eq i64 %i.fn, 0
  br i1 %.not65, label %bb.bg, label %bb.ap

bb.ap:                                            ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit110.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #39
  call void @llvm.experimental.noalias.scope.decl(metadata !1374)
  %i.fo = load ptr, ptr %0, align 8, !tbaa !688, !noalias !1374
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !693, !noalias !1374 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  store ptr %i.fr, ptr %19, align 8, !tbaa !692, !alias.scope !1375
  %i.fs = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  store i64 0, ptr %i.fs, align 8, !tbaa !693, !alias.scope !1375
  store i8 0, ptr %i.fr, align 8, !tbaa !689, !alias.scope !1375
  %i.ft = add i64 %i.fq, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef %i.ft)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fu = load i64, ptr %i.fs, align 8, !tbaa !693, !alias.scope !1375
  %i.fv = sub i64 4611686018427387903, %i.fu
  %i.fw = icmp ult i64 %i.fv, %i.fq
  br i1 %i.fw, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.aq
  %i.fx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef %i.fo, i64 noundef %i.fq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.ar ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.fy = load i64, ptr %i.fs, align 8, !tbaa !693, !alias.scope !1375
  %i.fz = and i64 %i.fy, -2
  %i.ga = icmp eq i64 %i.fz, 4611686018427387902
  br i1 %i.ga, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.aq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.449) #41
          to label %.cont.i.i unwind label %bb.ar

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.gb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.42, i64 noundef 2)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.ar ; 0 uses

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.ap
  %i.gc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gd = load ptr, ptr %19, align 8, !tbaa !688, !alias.scope !1375 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.fr
  br i1 %i.ge, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  %i.gf = load i64, ptr %i.bd, align 8, !tbaa !693, !noalias !1376 ; 2 uses
  %i.gg = load i64, ptr %i.fs, align 8, !tbaa !693, !noalias !1376
  %i.gh = sub i64 4611686018427387903, %i.gg
  %i.gi = icmp ult i64 %i.gh, %i.gf
  br i1 %i.gi, label %bb.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i125

end_hunk_0
