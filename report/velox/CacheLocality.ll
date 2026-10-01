Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/CacheLocality?download=true
inline.NumInlined: 1643
inline.NumDeleted: 798
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN5folly13CacheLocality24readFromProcCpuinfoLinesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE:bb.a
  store ptr %i.hb, ptr %i.gv, align 8, !tbaa !47
  store ptr %i.hb, ptr %i.gn, align 8, !tbaa !45
  br label %_ZNSt6vectorImSaImEEaSESt16initializer_listImE.exit

bb.az:                                            ; preds = %bb.aw
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 5 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !47 ; 2 uses
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = sub i64 %i.he, %i.gr                    ; 9 uses
  %.not.i52 = icmp ult i64 %i.hf, 24
  br i1 %.not.i52, label %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gp, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %.pre.i53 = load ptr, ptr %i.hc, align 8, !tbaa !47
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gp, i64 24 ; 2 uses
  %.not.i16.i = icmp eq ptr %.pre.i53, %i.hg
  br i1 %.not.i16.i, label %_ZNSt6vectorImSaImEEaSESt16initializer_listImE.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.ba
  store ptr %i.hg, ptr %i.hc, align 8, !tbaa !47
  br label %_ZNSt6vectorImSaImEEaSESt16initializer_listImE.exit

_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %bb.az
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.hf ; 2 uses
  %i.hh = icmp samesign ugt i64 %i.hf, 8
  br i1 %i.hh, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i, label %bb.bb, !prof !65

bb.bb:                                            ; preds = %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.hi = icmp eq i64 %i.hf, 8
  br i1 %i.hi, label %bb.bc, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i.thread

bb.bc:                                            ; preds = %bb.bb
  store i64 %.12863, ptr %i.gp, align 8, !tbaa !46
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i.thread

_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i.thread:      ; preds = %bb.bc, %bb.bb
  %gepdiff124 = sub nuw nsw i64 24, %i.hf
  br label %bb.bd

_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i:             ; preds = %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.gp, ptr nonnull align 8 %i.d, i64 %i.hf, i1 false)
  %.pre21.i = load ptr, ptr %i.hc, align 8, !tbaa !47 ; 4 uses
  %gepdiff = sub nuw nsw i64 24, %i.hf            ; 2 uses
  %i.hj = icmp samesign ult i64 %i.hf, 16
  br i1 %i.hj, label %bb.bd, label %bb.be, !prof !229

bb.bd:                                            ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i.thread, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i
  %gepdiff125 = phi i64 [ %gepdiff124, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i.thread ], [ %gepdiff, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i ] ; 2 uses
  %i.hk = phi ptr [ %i.hd, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i.thread ], [ %.pre21.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.hk, ptr nonnull align 8 %.sink.i.i, i64 %gepdiff125, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E.exit.i

bb.be:                                            ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i
  %i.hl = icmp eq i64 %i.hf, 16
  br i1 %i.hl, label %bb.bf, label %_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E.exit.i

bb.bf:                                            ; preds = %bb.be
  %i.hm = load i64, ptr %.sink.i.i, align 8, !tbaa !46
  store i64 %i.hm, ptr %.pre21.i, align 8, !tbaa !46
  br label %_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E.exit.i

_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E.exit.i: ; preds = %bb.bf, %bb.be, %bb.bd
  %gepdiff126 = phi i64 [ 8, %bb.bf ], [ %gepdiff, %bb.be ], [ %gepdiff125, %bb.bd ]
  %i.hn = phi ptr [ %.pre21.i, %bb.bf ], [ %.pre21.i, %bb.be ], [ %i.hk, %bb.bd ]
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %gepdiff126
  store ptr %i.ho, ptr %i.hc, align 8, !tbaa !47
  br label %_ZNSt6vectorImSaImEEaSESt16initializer_listImE.exit

_ZNSt6vectorImSaImEEaSESt16initializer_listImE.exit: ; preds = %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i, %bb.ba, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i, %_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #35
  %i.hp = add nuw i64 %.02470, 1                  ; 2 uses
  %i.hq = load ptr, ptr %i.k, align 8, !tbaa !73
  %i.hr = load ptr, ptr %3, align 8, !tbaa !81    ; 2 uses
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = sub i64 %i.hs, %i.ht
  %i.hv = sdiv exact i64 %i.hu, 24
  %i.hw = icmp ult i64 %i.hp, %i.hv
  br i1 %i.hw, label %.peel.next, label %._crit_edge, !llvm.loop !222

.loopexit:                                        ; preds = %bb.ax
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit.split-lp:                               ; preds = %bb.ar
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bg:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #35
  br label %bb.bm

bb.bh:                                            ; preds = %._crit_edge
  %i.hx = load ptr, ptr %5, align 8, !tbaa !50    ; 3 uses
  %i.hy = load ptr, ptr %i.gc, align 8, !tbaa !51 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.hx, %i.hy
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %bb.bh, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.if, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i ], [ %i.hx, %bb.bh ] ; 3 uses
  %i.hz = load ptr, ptr %.05.i.i.i, align 8, !tbaa !44 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i.i.i37
  %i.ia = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !45
  %i.ic = ptrtoint ptr %i.ib to i64
  %i.id = ptrtoint ptr %i.hz to i64
  %i.ie = sub i64 %i.ic, %i.id
  call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef %i.ie) #38
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i:  ; preds = %bb.bi, %.lr.ph.i.i.i37
  %i.if = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.if, %i.hy
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i37, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !50
  br label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.bh
  %i.ig = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.hx, %bb.bh ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ig, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit48, label %bb.bj

bb.bj:                                            ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i
  %i.ih = load ptr, ptr %i.gd, align 8, !tbaa !52
  %i.ii = ptrtoint ptr %i.ih to i64
  %i.ij = ptrtoint ptr %i.ig to i64
  %i.ik = sub i64 %i.ii, %i.ij
  call void @_ZdlPvm(ptr noundef nonnull %i.ig, i64 noundef %i.ik) #38
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit48

_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit48:       ; preds = %bb.bj, %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i
  %.pre78 = load ptr, ptr %3, align 8, !tbaa !81  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %.not.i.i.i49 = icmp eq ptr %.pre78, null
  br i1 %.not.i.i.i49, label %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit48
  %i.il = load ptr, ptr %i.l, align 8, !tbaa !74
  %i.im = ptrtoint ptr %i.il to i64
  %i.in = ptrtoint ptr %.pre78 to i64
  %i.io = sub i64 %i.im, %i.in
  call void @_ZdlPvm(ptr noundef nonnull %.pre78, i64 noundef %i.io) #38
  br label %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EED2Ev.exit

_ZNSt6vectorISt5tupleIJmmmEESaIS1_EED2Ev.exit:    ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit48, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  ret void

bb.bl:                                            ; preds = %._crit_edge
  %i.ip = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #35
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bg
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.bg ], [ %i.ip, %bb.bl ]
  call void @_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #35
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.au
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bm ], [ %i.gf, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.at
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bn ], [ %i.ge, %bb.at ]
  %i.iq = load ptr, ptr %3, align 8, !tbaa !81    ; 3 uses
  %.not.i.i.i50 = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i50, label %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EED2Ev.exit51, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ir = load ptr, ptr %i.l, align 8, !tbaa !74
  %i.is = ptrtoint ptr %i.ir to i64
  %i.it = ptrtoint ptr %i.iq to i64
  %i.iu = sub i64 %i.is, %i.it
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.iu) #38
  br label %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EED2Ev.exit51

_ZNSt6vectorISt5tupleIJmmmEESaIS1_EED2Ev.exit51:  ; preds = %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %common.resume
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE17_M_realloc_insertIJRmS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !81     ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt5tupleIJmmmEESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #36
  unreachable

_ZNKSt6vectorISt5tupleIJmmmEESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #37 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  %i.r = load i64, ptr %4, align 8, !tbaa !46
  store i64 %i.r, ptr %i.q, align 8, !tbaa !76
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i64, ptr %3, align 8, !tbaa !46
  store i64 %i.t, ptr %i.s, align 8, !tbaa !78
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.v = load i64, ptr %2, align 8, !tbaa !46
  store i64 %i.v, ptr %i.u, align 8, !tbaa !80
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt5tupleIJmmmEESaIS1_EE12_M_check_lenEmPKc.exit
  %i.w = add i64 %i.m, -24
  %i.x = sub i64 %i.w, %i.e                       ; 2 uses
  %i.y = udiv i64 %i.x, 24                        ; 2 uses
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 456
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader70, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %5 = mul nuw i64 %i.y, 24
  %6 = add i64 %5, 24                             ; 2 uses
  %7 = getelementptr i8, ptr %i.p, i64 %6
  %8 = getelementptr i8, ptr %i.c, i64 %6
  %bound0 = icmp ult ptr %i.p, %8
  %bound1 = icmp ult ptr %i.c, %7
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader70, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 2305843009213693948      ; 3 uses
  %i.aa = mul i64 %n.vec, 24                      ; 2 uses
  %i.ab = getelementptr i8, ptr %i.p, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.c, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = mul i64 %index, 24                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ad
  %next.gep38 = getelementptr i8, ptr %i.c, i64 %i.ad
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %wide.vec = load <12 x i64>, ptr %next.gep38, align 8, !tbaa !46, !alias.scope !242, !noalias !241
  store <12 x i64> %wide.vec, ptr %next.gep, align 8, !tbaa !46, !alias.scope !241, !noalias !242
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !234

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.preheader70

.lr.ph.i.i.i.preheader70:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader70, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader70 ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader70 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.af = load <2 x i64>, ptr %.0911.i.i.i, align 8, !tbaa !46, !alias.scope !242, !noalias !241
  store <2 x i64> %i.af, ptr %.012.i.i.i, align 8, !tbaa !46, !alias.scope !241, !noalias !242
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !46, !alias.scope !242, !noalias !241
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !46, !alias.scope !241, !noalias !242
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !235

_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt5tupleIJmmmEESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt5tupleIJmmmEESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.ab, %middle.block ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %i.al = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 24 ; 6 uses
  %.not10.i.i.i18 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i18, label %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit24, label %.lr.ph.i.i.i19.preheader

.lr.ph.i.i.i19.preheader:                         ; preds = %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.am = add i64 %i.d, -24
  %i.an = sub i64 %i.am, %i.m                     ; 2 uses
  %i.ao = udiv i64 %i.an, 24                      ; 2 uses
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check48 = icmp ult i64 %i.an, 456
  br i1 %min.iters.check48, label %.lr.ph.i.i.i19.preheader69, label %vector.memcheck49

vector.memcheck49:                                ; preds = %.lr.ph.i.i.i19.preheader
  %i.aq = mul nuw i64 %i.ao, 24                   ; 2 uses
  %i.ar = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 48
  %i.at = getelementptr i8, ptr %1, i64 %i.aq
  %i.au = getelementptr i8, ptr %i.at, i64 24
  %bound050 = icmp ult ptr %i.al, %i.au
  %bound151 = icmp ult ptr %1, %i.as
  %found.conflict52 = and i1 %bound050, %bound151
  br i1 %found.conflict52, label %.lr.ph.i.i.i19.preheader69, label %vector.ph53

vector.ph53:                                      ; preds = %vector.memcheck49
  %n.vec54 = and i64 %i.ap, 2305843009213693948   ; 3 uses
  %i.av = mul i64 %n.vec54, 24                    ; 2 uses
  %i.aw = getelementptr i8, ptr %i.al, i64 %i.av  ; 2 uses
  %i.ax = getelementptr i8, ptr %1, i64 %i.av
  br label %vector.body55

vector.body55:                                    ; preds = %vector.body55, %vector.ph53
  %index56 = phi i64 [ 0, %vector.ph53 ], [ %index.next64, %vector.body55 ] ; 2 uses
  %i.ay = mul i64 %index56, 24                    ; 2 uses
  %next.gep57 = getelementptr i8, ptr %i.al, i64 %i.ay
  %next.gep58 = getelementptr i8, ptr %1, i64 %i.ay
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %wide.vec59 = load <12 x i64>, ptr %next.gep58, align 8, !tbaa !46, !alias.scope !244, !noalias !243
  store <12 x i64> %wide.vec59, ptr %next.gep57, align 8, !tbaa !46, !alias.scope !243, !noalias !244
  %index.next64 = add nuw i64 %index56, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next64, %n.vec54
  br i1 %i.az, label %middle.block65, label %vector.body55, !llvm.loop !239

middle.block65:                                   ; preds = %vector.body55
  %cmp.n66 = icmp eq i64 %i.ap, %n.vec54
  br i1 %cmp.n66, label %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit24, label %.lr.ph.i.i.i19.preheader69

.lr.ph.i.i.i19.preheader69:                       ; preds = %vector.memcheck49, %.lr.ph.i.i.i19.preheader, %middle.block65
  %.012.i.i.i20.ph = phi ptr [ %i.al, %vector.memcheck49 ], [ %i.al, %.lr.ph.i.i.i19.preheader ], [ %i.aw, %middle.block65 ]
  %.0911.i.i.i21.ph = phi ptr [ %1, %vector.memcheck49 ], [ %1, %.lr.ph.i.i.i19.preheader ], [ %i.ax, %middle.block65 ]
  br label %.lr.ph.i.i.i19

.lr.ph.i.i.i19:                                   ; preds = %.lr.ph.i.i.i19.preheader69, %.lr.ph.i.i.i19
  %.012.i.i.i20 = phi ptr [ %i.bf, %.lr.ph.i.i.i19 ], [ %.012.i.i.i20.ph, %.lr.ph.i.i.i19.preheader69 ] ; 3 uses
  %.0911.i.i.i21 = phi ptr [ %i.be, %.lr.ph.i.i.i19 ], [ %.0911.i.i.i21.ph, %.lr.ph.i.i.i19.preheader69 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.ba = load <2 x i64>, ptr %.0911.i.i.i21, align 8, !tbaa !46, !alias.scope !244, !noalias !243
  store <2 x i64> %i.ba, ptr %.012.i.i.i20, align 8, !tbaa !46, !alias.scope !243, !noalias !244
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i20, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !46, !alias.scope !244, !noalias !243
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !46, !alias.scope !243, !noalias !244
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i20, i64 24 ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i22, label %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit24, label %.lr.ph.i.i.i19, !llvm.loop !240

_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit24: ; preds = %.lr.ph.i.i.i19, %middle.block65, %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i23 = phi ptr [ %i.al, %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.aw, %middle.block65 ], [ %i.bf, %.lr.ph.i.i.i19 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i25 = icmp eq ptr %i.c, null
  br i1 %.not.i25, label %_ZNSt12_Vector_baseISt5tupleIJmmmEESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !74
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #38
  br label %_ZNSt12_Vector_baseISt5tupleIJmmmEESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseISt5tupleIJmmmEESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit24, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !81
  store ptr %.0.lcssa.i.i.i23, ptr %i.a, align 8, !tbaa !73
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %0, ptr %1) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sdiv exact i64 %i.d, 24
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = shl nuw nsw i64 %i.f, 1
  %i.h = xor i64 %i.g, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %0, ptr %1, i64 noundef %i.h)
  %i.i = icmp sgt i64 %i.d, 384
  br i1 %i.i, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %bb.c
  %indvar = phi i64 [ %indvar.next, %bb.i ], [ 0, %bb.c ] ; 3 uses
  %.sroa.07.018.i.idx = phi i64 [ %.sroa.07.018.i.add, %bb.i ], [ 24, %bb.c ] ; 3 uses
  %.pn17.i = phi ptr [ %.sroa.07.018.i.ptr, %bb.i ], [ %0, %bb.c ] ; 7 uses
  %.sroa.07.018.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.07.018.i.idx ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !46   ; 6 uses
  %i.n = load i64, ptr %i.j, align 8, !tbaa !46   ; 2 uses
  %i.o = icmp eq i64 %i.m, %i.n
  br i1 %i.o, label %bb.e, label %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i_crit_edge

._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i_crit_edge: ; preds = %bb.d
  %i.p = icmp ult i64 %i.m, %i.n
  %.phi.trans.insert22.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 32
  %.pre.i.pre = load i64, ptr %.phi.trans.insert22.i.phi.trans.insert, align 8, !tbaa !46 ; 2 uses
  %.pre20.i18 = load i64, ptr %.sroa.07.018.i.ptr, align 8, !tbaa !46 ; 2 uses
  br i1 %i.p, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge.i

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !46   ; 6 uses
  %i.s = load i64, ptr %i.k, align 8, !tbaa !46   ; 2 uses
  %i.t = icmp eq i64 %i.r, %i.s
  %i.u = load i64, ptr %.sroa.07.018.i.ptr, align 8, !tbaa !46 ; 5 uses
  br i1 %i.t, label %.split.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i

.split.i:                                         ; preds = %bb.e
  %i.v = load i64, ptr %0, align 8, !tbaa !46
  %i.w = icmp ult i64 %i.u, %i.v
  br i1 %i.w, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i: ; preds = %bb.e
  %i.x = icmp ult i64 %i.r, %i.s
  br i1 %i.x, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.split.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i_crit_edge
  %i.y = phi i64 [ %i.r, %.split.i ], [ %i.r, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i ], [ %.pre.i.pre, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i_crit_edge ]
  %i.z = phi i64 [ %i.u, %.split.i ], [ %i.u, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i ], [ %.pre20.i18, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i_crit_edge ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 48
  %i.ab = udiv exact i64 %.sroa.07.018.i.idx, 24  ; 2 uses
  %i.ac = and i64 %indvar, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ac, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.preheader.i.i.i.i.i.i
  %i.ad = getelementptr inbounds i8, ptr %.sroa.07.018.i.ptr, i64 -24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 24 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.sroa.07.018.i.ptr, i64 -8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 40
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !46
  %i.ai = getelementptr inbounds i8, ptr %.sroa.07.018.i.ptr, i64 -16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !46
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 32
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !46
  %i.al = load i64, ptr %i.ad, align 8, !tbaa !46
  store i64 %i.al, ptr %i.ae, align 8, !tbaa !46
  %i.am = add nsw i64 %i.ab, -1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.preheader.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.ab, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.am, %.lr.ph.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %i.aa, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %.sroa.07.018.i.ptr, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.an = icmp eq i64 %indvar, 0
  br i1 %i.an, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!35 = !{!34, !33, i64 0}
!36 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!37 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !34, i64 0, !26, i64 8, !20, i64 16}
!38 = !{!37, !33, i64 0}
!39 = !{!37, !26, i64 8}
!40 = !{!29, !28, i64 16}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"p1 long", !27, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !42, i64 0, !42, i64 8, !42, i64 16}
!44 = !{!43, !42, i64 0}
!45 = !{!43, !42, i64 16}
!46 = !{!26, !26, i64 0}
!47 = !{!43, !42, i64 8}
!48 = !{!"p1 _ZTSSt6vectorImSaImEE", !27, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!50 = !{!49, !48, i64 0}
!51 = !{!49, !48, i64 8}
!52 = !{!49, !48, i64 16}
!53 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !43, i64 0}
!54 = !{!"_ZTSSt12_Vector_baseImSaImEE", !53, i64 0}
!55 = !{!"_ZTSSt6vectorImSaImEE", !54, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE12_Vector_implE", !49, i64 0}
!57 = !{!"_ZTSSt12_Vector_baseISt6vectorImSaImEESaIS2_EE", !56, i64 0}
!58 = !{!"_ZTSSt6vectorIS_ImSaImEESaIS1_EE", !57, i64 0}
!59 = !{!"_ZTSN5folly13CacheLocalityE", !26, i64 0, !55, i64 8, !55, i64 32, !58, i64 56}
!60 = !{!59, !26, i64 0}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = !{!"llvm.loop.unroll.runtime.disable"}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !{!48, !48, i64 0}
!65 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!66 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !27, i64 0}
!67 = !{!66, !66, i64 0}
!68 = !{!21, !21, i64 0}
!69 = !{!33, !33, i64 0}
!70 = !{!42, !42, i64 0}
!71 = !{!"p1 _ZTSSt5tupleIJmmmEE", !27, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseISt5tupleIJmmmEESaIS1_EE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!73 = !{!72, !71, i64 8}
!74 = !{!72, !71, i64 16}
!75 = !{!"_ZTSSt10_Head_baseILm2EmLb0EE", !26, i64 0}
!76 = !{!75, !26, i64 0}
!77 = !{!"_ZTSSt10_Head_baseILm1EmLb0EE", !26, i64 0}
!78 = !{!77, !26, i64 0}
!79 = !{!"_ZTSSt10_Head_baseILm0EmLb0EE", !26, i64 0}
!80 = !{!79, !26, i64 0}
!81 = !{!72, !71, i64 0}
!82 = !{!"branch_weights", i32 1, i32 1048575}
!83 = !{!"_ZTSN5folly17LLCAccessSpreaderE", !27, i64 0, !26, i64 8, !55, i64 16}
!84 = !{!83, !27, i64 0}
!85 = !{!"any p2 pointer", !27, i64 0}
!86 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !85, i64 0}
!87 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !27, i64 0}
!88 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !87, i64 0}
!89 = !{!"float", !20, i64 0}
!90 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !89, i64 0, !26, i64 8}
!91 = !{!"_ZTSSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE", !86, i64 0, !26, i64 8, !88, i64 16, !26, i64 24, !90, i64 32, !87, i64 48}
!92 = !{!91, !86, i64 0}
!93 = !{!91, !26, i64 8}
!94 = !{!91, !26, i64 24}
!95 = !{!83, !26, i64 8}
!96 = !{!91, !87, i64 16}
!97 = !{!88, !87, i64 0}
!98 = !{!87, !87, i64 0}
!99 = !{!"_ZTSSt12__mutex_base", !20, i64 0}
!100 = !{!"_ZTSSt5mutex", !99, i64 0}
!101 = !{!"_ZTSNSt12_Vector_baseIPvSaIS0_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!102 = !{!"_ZTSNSt12_Vector_baseIPvSaIS0_EE12_Vector_implE", !101, i64 0}
!103 = !{!"_ZTSSt12_Vector_baseIPvSaIS0_EE", !102, i64 0}
!104 = !{!"_ZTSSt6vectorIPvSaIS0_EE", !103, i64 0}
!105 = !{!"_ZTSN5folly12_GLOBAL__N_115SimpleAllocatorE", !100, i64 0, !33, i64 40, !33, i64 48, !27, i64 56, !26, i64 64, !104, i64 72}
!106 = !{!105, !27, i64 56}
!107 = !{!27, !27, i64 0}
!108 = !{!"p1 _ZTSN5folly12_GLOBAL__N_115SimpleAllocatorE", !27, i64 0}
!109 = !{!108, !108, i64 0}
!110 = !{!"_ZTSN5folly18CoreAllocatorGuardE", !26, i64 0, !26, i64 8}
!111 = !{!110, !26, i64 0}
!112 = !{!110, !26, i64 8}
!113 = !{!"p1 _ZTSN5folly18CoreAllocatorGuardE", !27, i64 0}
!114 = !{!113, !113, i64 0}
!115 = distinct !{null}
!116 = distinct !{!116, !41}
!117 = !{!"_ZTSSt13_Ios_Fmtflags", !20, i64 0}
!118 = !{!"_ZTSSt12_Ios_Iostate", !20, i64 0}
!119 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !27, i64 0}
!120 = !{!"_ZTSNSt8ios_base6_WordsE", !27, i64 0, !26, i64 8}
!121 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !27, i64 0}
!122 = !{!"p1 _ZTSNSt6locale5_ImplE", !27, i64 0}
!123 = !{!"_ZTSSt6locale", !122, i64 0}
!124 = !{!"_ZTSSt8ios_base", !26, i64 8, !26, i64 16, !117, i64 24, !118, i64 28, !118, i64 32, !119, i64 40, !120, i64 48, !20, i64 64, !21, i64 192, !121, i64 200, !123, i64 208}
!125 = !{!124, !118, i64 32}
!126 = !{!"p1 _ZTSSo", !27, i64 0}
!127 = !{!"bool", !20, i64 0}
!128 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !27, i64 0}
!129 = !{!"p1 _ZTSSt5ctypeIcE", !27, i64 0}
!130 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !27, i64 0}
!131 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !27, i64 0}
!132 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !124, i64 0, !126, i64 216, !20, i64 224, !127, i64 225, !128, i64 232, !129, i64 240, !130, i64 248, !131, i64 256}
!133 = !{!132, !129, i64 240}
!134 = !{!"_ZTSNSt6locale5facetE", !21, i64 8}
!135 = !{!"p1 _ZTS15__locale_struct", !27, i64 0}
!136 = !{!"p1 int", !27, i64 0}
!137 = !{!"p1 short", !27, i64 0}
!138 = !{!"_ZTSSt5ctypeIcE", !134, i64 0, !135, i64 16, !127, i64 24, !136, i64 32, !136, i64 40, !137, i64 48, !20, i64 56, !20, i64 57, !20, i64 313, !20, i64 569}
!139 = !{!138, !20, i64 56}
!140 = distinct !{!140, !41}
!141 = distinct !{!141, !41}
!142 = distinct !{!142, !41}
!143 = distinct !{!143, !41, !61, !62}
!144 = distinct !{!144, !41, !61, !62}
!145 = distinct !{!145, !41, !62, !61}
!146 = distinct !{!146, !41}
!147 = distinct !{!147, !63}
!148 = distinct !{!148, !41}
!149 = !{!"branch_weights", i32 4, i32 12}
!150 = distinct !{!150, !41}
!151 = distinct !{!151, !41}
!152 = distinct !{!152, !41}
!153 = distinct !{!153, !41}
!154 = distinct !{!154, !41}
!155 = distinct !{!155, !41}
!156 = distinct !{!156, !41}
!157 = distinct !{!157, !41}
!158 = distinct !{!158, !41}
!159 = distinct !{!159, !"_ZN3fmt3v116formatIJPcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSA_"}
!160 = distinct !{!160, !159, !"_ZN3fmt3v116formatIJPcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSA_: argument 0"}
!161 = distinct !{!161, !"_ZN3fmt3v116formatIZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_1clEvE18FMT_COMPILE_STRINGJRmETnNSt9enable_ifIXsr18is_compiled_stringIT_EE5valueEiE4typeELi0EEENSt7__cxx1112basic_stringINSC_9char_typeES5_ISH_ESaISH_EEERKSC_DpOT0_"}
!162 = distinct !{!162, !161, !"_ZN3fmt3v116formatIZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_1clEvE18FMT_COMPILE_STRINGJRmETnNSt9enable_ifIXsr18is_compiled_stringIT_EE5valueEiE4typeELi0EEENSt7__cxx1112basic_stringINSC_9char_typeES5_ISH_ESaISH_EEERKSC_DpOT0_: argument 0"}
!163 = distinct !{!163, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!164 = distinct !{!164, !163, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!165 = distinct !{!165, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!166 = distinct !{!166, !165, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!167 = distinct !{!167, !"_ZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_2clEiRKNSt7__cxx1112basic_stringIcS3_SaIcEEE"}
!168 = distinct !{!168, !167, !"_ZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_2clEiRKNSt7__cxx1112basic_stringIcS3_SaIcEEE: argument 0"}
!169 = distinct !{!169, !"_ZN3fmt3v116formatIJRSt17basic_string_viewIcSt11char_traitsIcEEPcEEENSt7__cxx1112basic_stringIcS4_SaIcEEENS0_7fstringIJDpT_EE1tEDpOSD_"}
!170 = distinct !{!170, !169, !"_ZN3fmt3v116formatIJRSt17basic_string_viewIcSt11char_traitsIcEEPcEEENSt7__cxx1112basic_stringIcS4_SaIcEEENS0_7fstringIJDpT_EE1tEDpOSD_: argument 0"}
!171 = distinct !{!171, !41}
!172 = distinct !{!172, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!173 = distinct !{!173, !172, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!174 = distinct !{!174, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!175 = distinct !{!175, !174, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!176 = distinct !{!176, !"_ZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_2clEiRKNSt7__cxx1112basic_stringIcS3_SaIcEEE"}
!177 = distinct !{!177, !176, !"_ZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_2clEiRKNSt7__cxx1112basic_stringIcS3_SaIcEEE: argument 0"}
!178 = distinct !{!178, !"_ZN3fmt3v116formatIJRSt17basic_string_viewIcSt11char_traitsIcEEPcEEENSt7__cxx1112basic_stringIcS4_SaIcEEENS0_7fstringIJDpT_EE1tEDpOSD_"}
!179 = distinct !{!179, !178, !"_ZN3fmt3v116formatIJRSt17basic_string_viewIcSt11char_traitsIcEEPcEEENSt7__cxx1112basic_stringIcS4_SaIcEEENS0_7fstringIJDpT_EE1tEDpOSD_: argument 0"}
!180 = distinct !{!180, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOSB_"}
!181 = distinct !{!181, !180, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!182 = distinct !{!182, !41}
!183 = distinct !{!183, !41}
!184 = !{!160}
!185 = !{!162}
!186 = !{!164}
!187 = !{!166}
!188 = !{!168}
!189 = !{!170}
!190 = !{!173}
!191 = !{!175}
!192 = !{!177}
!193 = !{!179}
!194 = !{!181}
!195 = distinct !{!195, !"_ZN3fmt3v116formatIJRSt17basic_string_viewIcSt11char_traitsIcEEPcEEENSt7__cxx1112basic_stringIcS4_SaIcEEENS0_7fstringIJDpT_EE1tEDpOSD_"}
!196 = distinct !{!196, !195, !"_ZN3fmt3v116formatIJRSt17basic_string_viewIcSt11char_traitsIcEEPcEEENSt7__cxx1112basic_stringIcS4_SaIcEEENS0_7fstringIJDpT_EE1tEDpOSD_: argument 0"}
!197 = !{!196}
!198 = distinct !{!198, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOSB_"}
!199 = distinct !{!199, !198, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!200 = !{!199}
!201 = distinct !{!201, !"_ZSt19__relocate_object_aISt6vectorImSaImEES2_SaIS2_EEvPT_PT0_RT1_"}
!202 = distinct !{!202, !201, !"_ZSt19__relocate_object_aISt6vectorImSaImEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!203 = distinct !{!203, !201, !"_ZSt19__relocate_object_aISt6vectorImSaImEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!204 = distinct !{!204, !41}
!205 = distinct !{!205, !"_ZSt19__relocate_object_aISt6vectorImSaImEES2_SaIS2_EEvPT_PT0_RT1_"}
!206 = distinct !{!206, !205, !"_ZSt19__relocate_object_aISt6vectorImSaImEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!207 = distinct !{!207, !205, !"_ZSt19__relocate_object_aISt6vectorImSaImEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!208 = !{!202}
!209 = !{!203}
!210 = !{!206}
!211 = !{!207}
!212 = distinct !{!212, !"_ZN5folly12_GLOBAL__N_121parseProcCpuinfoLinesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE"}
!213 = distinct !{!213, !212, !"_ZN5folly12_GLOBAL__N_121parseProcCpuinfoLinesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE: argument 0"}
!214 = distinct !{!214, !"_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6rbeginEv"}
!215 = distinct !{!215, !214, !"_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6rbeginEv: argument 0"}
!216 = distinct !{!216, !"_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4rendEv"}
!217 = distinct !{!217, !216, !"_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4rendEv: argument 0"}
!218 = distinct !{!218, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!219 = distinct !{!219, !218, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!220 = distinct !{!220, !41}
!221 = distinct !{!221, !41}
!222 = distinct !{!222, !41, !230}
!223 = !{!213}
!224 = !{!28, !28, i64 0}
!225 = !{!215, !213}
!226 = !{!217, !213}
!227 = !{!71, !71, i64 0}
!228 = !{!219}
!229 = !{!"branch_weights", !"expected", i32 2146409907, i32 1073741}
!230 = !{!"llvm.loop.peeled.count", i32 1}
!231 = distinct !{!231, !"_ZSt19__relocate_object_aISt5tupleIJmmmEES1_SaIS1_EEvPT_PT0_RT1_"}
!232 = distinct !{!232, !231, !"_ZSt19__relocate_object_aISt5tupleIJmmmEES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!233 = distinct !{!233, !231, !"_ZSt19__relocate_object_aISt5tupleIJmmmEES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!234 = distinct !{!234, !41, !61, !62}
!235 = distinct !{!235, !41, !61}
!236 = distinct !{!236, !"_ZSt19__relocate_object_aISt5tupleIJmmmEES1_SaIS1_EEvPT_PT0_RT1_"}
!237 = distinct !{!237, !236, !"_ZSt19__relocate_object_aISt5tupleIJmmmEES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!238 = distinct !{!238, !236, !"_ZSt19__relocate_object_aISt5tupleIJmmmEES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!239 = distinct !{!239, !41, !61, !62}
!240 = distinct !{!240, !41, !61}
!241 = !{!232}
!242 = !{!233}
!243 = !{!237}
!244 = !{!238}
!245 = distinct !{!245, !41}
!246 = distinct !{!246, !41}
!247 = distinct !{!247, !41}
!248 = distinct !{!248, !41}
!249 = distinct !{!249, !41}
!250 = distinct !{!250, !41}
!251 = distinct !{!251, !41}
!252 = distinct !{!252, !41}
!253 = distinct !{!253, !41}
!254 = distinct !{!254, !41}
!255 = distinct !{!255, !41, !61, !62}
!256 = distinct !{!256, !41, !62, !61}
!257 = distinct !{!257, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!258 = distinct !{!258, !257, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!259 = distinct !{!259, !257, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!260 = distinct !{!260, !41}
!261 = distinct !{!261, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!262 = distinct !{!262, !261, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!263 = distinct !{!263, !261, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!264 = !{!258}
!265 = !{!259}
!266 = !{!258, !259}
!267 = !{!262}
!268 = !{!263}
!269 = !{!262, !263}
!270 = distinct !{!270, !41}
!271 = distinct !{!271, !63}
!272 = !{ptr @_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE}
!273 = distinct !{!273, !63}
!274 = distinct !{!274, !41}
!275 = distinct !{!275, !41}
!276 = !{!90, !89, i64 0}
!277 = !{!"_ZTSSt4pairIKmmE", !26, i64 0, !26, i64 8}
!278 = !{!277, !26, i64 0}
!279 = !{!277, !26, i64 8}
!280 = !{!90, !26, i64 8}
!281 = distinct !{!281, !41}
!282 = !{!91, !87, i64 48}
!283 = !{!"branch_weights", i32 1023, i32 1}
!284 = !{!"_ZTSZNK5folly17LLCAccessSpreader7currentEvE11ThreadCache", !26, i64 0, !26, i64 8}
!285 = !{!284, !26, i64 0}
!286 = !{!284, !26, i64 8}
!287 = !{!105, !26, i64 64}
!288 = !{!105, !33, i64 40}
!289 = !{!105, !33, i64 48}
!290 = !{!101, !85, i64 8}
!291 = !{!101, !85, i64 16}
!292 = !{!101, !85, i64 0}
!293 = distinct !{null, null, null}
end_hunk_1
