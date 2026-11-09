Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/pad2_layer?download=true
inline.NumInlined: 1312
inline.NumDeleted: 469
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN2cvL13parallel_for_ERKNS_5RangeESt8functionIFvS2_EEd:bb.a

bb.n:                                             ; preds = %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.p:                                             ; preds = %_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #23
  br label %.body

.body:                                            ; preds = %.body.i, %bb.p
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.p ], [ %i.r, %.body.i ]
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !201 ; 2 uses
  %.not.i7 = icmp eq ptr %i.ah, null
  br i1 %.not.i7, label %_ZNSt14_Function_baseD2Ev.exit8, label %bb.q

bb.q:                                             ; preds = %.body
  %i.ai = invoke noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit8 unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit8:                  ; preds = %.body, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %common.resume
}

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !201  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #23
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29ParallelLoopBodyLambdaWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit unwind label %bb.c, !inline_history !209 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #25, !inline_history !209
  unreachable

_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit:   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #23, !inline_history !209
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv29ParallelLoopBodyLambdaWrapperclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !201
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #24
  unreachable

_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit:     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !208
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 4 dereferenceable(8) %1), !inline_history !279
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS8_RS6_E3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #16 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !206   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !290, !nonnull !195, !align !210 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !36   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !36   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load i32, ptr %i.i, align 4, !tbaa !36   ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !291, !nonnull !195, !align !211 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !35   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !35   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !35   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !35   ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !292, !nonnull !195, !align !211
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !194  ; 2 uses
  %i.z = ptrtoaddr ptr %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !293, !nonnull !195, !align !211
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !194
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !22  ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !294, !nonnull !195, !align !211
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !194 ; 3 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !295, !nonnull !195, !align !210 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i32, ptr %i.am, align 4, !tbaa !36 ; 7 uses
  %i.ao = load i32, ptr %1, align 4, !tbaa !198   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !199
  %i.ar = icmp slt i32 %i.ao, %i.aq
  br i1 %i.ar, label %.lr.ph137.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS4_RS2_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit"

.lr.ph137.i.i.i:                                  ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 36
  %i.at = load i32, ptr %i.as, align 4, !tbaa !36
  %.sroa.speculated.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.at, i32 0)
  %i.au = load ptr, ptr %.val, align 8, !tbaa !296, !nonnull !195, !align !210
  %i.av = load i32, ptr %i.au, align 4, !tbaa !36
  %.not.i.i.i = icmp eq ptr %i.m, null
  %.not96.i.i.i = icmp eq ptr %i.o, null
  %.not97.i.i.i = icmp eq ptr %i.q, null
  %i.aw = icmp sgt i32 %i.h, 0
  %.not98.i.i.i = icmp eq ptr %i.s, null
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.az = icmp eq i32 %i.av, 0                    ; 2 uses
  %i.ba = icmp sgt i32 %i.an, 0                   ; 2 uses
  %i.bb = sub i32 %i.j, %.sroa.speculated.i.i.i   ; 2 uses
  %i.bc = icmp sgt i32 %i.j, 0
  br i1 %i.aw, label %.lr.ph137.split.us.preheader.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS4_RS2_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit"

.lr.ph137.split.us.preheader.i.i.i:               ; preds = %.lr.ph137.i.i.i
  %i.bd = zext i32 %i.an to i64                   ; 3 uses
  %i.be = sext i32 %i.an to i64                   ; 4 uses
  %i.bf = zext i32 %i.bb to i64                   ; 2 uses
  %i.bg = zext nneg i32 %i.j to i64
  %wide.trip.count173.i.i.i = zext nneg i32 %i.h to i64
  %xtraiter = and i64 %i.bd, 3                    ; 3 uses
  %i.bh = icmp ult i32 %i.an, 4
  %unroll_iter = and i64 %i.bd, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod21 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph137.split.us.i.i.i

.lr.ph137.split.us.i.i.i:                         ; preds = %._crit_edge134.us.i.i.i, %.lr.ph137.split.us.preheader.i.i.i
  %.091135.us.i.i.i = phi i32 [ %i.hv, %._crit_edge134.us.i.i.i ], [ %i.ao, %.lr.ph137.split.us.preheader.i.i.i ] ; 3 uses
  %i.bi = srem i32 %.091135.us.i.i.i, %i.f        ; 2 uses
  %i.bj = sdiv i32 %.091135.us.i.i.i, %i.f        ; 2 uses
  %i.bk = srem i32 %i.bj, %i.d                    ; 3 uses
  %i.bl = sdiv i32 %i.bj, %i.d                    ; 3 uses
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph137.split.us.i.i.i
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph137.split.us.i.i.i
  %i.bp = phi i32 [ %i.bo, %bb.b ], [ %i.bl, %.lr.ph137.split.us.i.i.i ] ; 2 uses
  br i1 %.not96.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = sext i32 %i.bk to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bt = phi i32 [ %i.bs, %bb.d ], [ %i.bk, %bb.c ] ; 2 uses
  %.pre.i.i.i = sext i32 %i.bi to i64             ; 3 uses
  br i1 %.not97.i.i.i, label %.lr.ph133.us.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.pre.i.i.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !36 ; 2 uses
  %.pre175.i.i.i = sext i32 %i.bv to i64
  br label %.lr.ph133.us.i.i.i

.lr.ph133.us.i.i.i:                               ; preds = %bb.f, %bb.e
  %.pre-phi176.i.i.i = phi i64 [ %.pre175.i.i.i, %bb.f ], [ %.pre.i.i.i, %bb.e ]
  %i.bw = phi i32 [ %i.bv, %bb.f ], [ %i.bi, %bb.e ]
  %i.bx = sext i32 %i.bl to i64
  %i.by = sext i32 %i.bk to i64
  %i.bz = sext i32 %i.bp to i64
  %i.ca = sext i32 %i.bt to i64
  %i.cb = or i32 %i.bp, %i.bw
  %i.cc = or i32 %i.cb, %i.bt
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.us.i.i.i, %.lr.ph133.us.i.i.i
  %indvars.iv170.i.i.i = phi i64 [ 0, %.lr.ph133.us.i.i.i ], [ %indvars.iv.next171.i.i.i, %.loopexit.us.i.i.i ] ; 4 uses
  %i.cd = trunc nuw nsw i64 %indvars.iv170.i.i.i to i32
  br i1 %.not98.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv170.i.i.i
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cg = phi i32 [ %i.cf, %bb.h ], [ %i.cd, %bb.g ] ; 2 uses
  %i.ch = load ptr, ptr %i.ax, align 8, !tbaa !297, !nonnull !195, !align !211 ; 4 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !59
  %i.cj = mul i64 %i.ci, %i.bx                    ; 3 uses
  %i.ck = getelementptr i8, ptr %i.ai, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !59
  %i.cn = mul i64 %i.cm, %i.by                    ; 3 uses
  %i.co = getelementptr i8, ptr %i.ck, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !59
  %i.cr = mul i64 %i.cq, %.pre.i.i.i              ; 3 uses
  %i.cs = getelementptr i8, ptr %i.co, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !59
  %i.cv = mul i64 %i.cu, %indvars.iv170.i.i.i     ; 3 uses
  %i.cw = getelementptr i8, ptr %i.cs, i64 %i.cv  ; 15 uses
  %i.cx = or i32 %i.cc, %i.cg
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %.preheader.us.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cz = load ptr, ptr %i.ay, align 8, !tbaa !298, !nonnull !195, !align !211 ; 4 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !59
  %i.db = mul i64 %i.da, %i.bz                    ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.y, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !59
  %i.df = mul i64 %i.de, %i.ca                    ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.dc, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !59
  %i.dj = mul i64 %i.di, %.pre-phi176.i.i.i       ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %i.dg, i64 %i.dj
  %i.dl = sext i32 %i.cg to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !59
  %i.do = mul i64 %i.dn, %i.dl                    ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %i.dk, i64 %i.do ; 13 uses
  br i1 %i.az, label %.preheader114.us.i.i.i, label %.preheader116.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph.us.i.i.i.preheader, %.lr.ph.us.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %.lr.ph.us.i.i.i ], [ 0, %.lr.ph.us.i.i.i.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.i.i.i ], [ 0, %.lr.ph.us.i.i.i.preheader ]
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i.i.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !36
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds i8, ptr %i.dp, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !22
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cw, i64 %indvars.iv.i.i.i
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !22
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !36
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds i8, ptr %i.dp, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !22
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cw, i64 %indvars.iv.next.i.i.i
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !22
  %indvars.iv.next.i.i.i.1 = or disjoint i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.1
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !36
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds i8, ptr %i.dp, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !22
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cw, i64 %indvars.iv.next.i.i.i.1
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !22
  %indvars.iv.next.i.i.i.2 = or disjoint i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.2
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !36
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds i8, ptr %i.dp, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !22
  %i.en = getelementptr inbounds nuw i8, ptr %i.cw, i64 %indvars.iv.next.i.i.i.2
  store i8 %i.em, ptr %i.en, align 1, !tbaa !22
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit115.us.i.i.i.loopexit.unr-lcssa, label %.lr.ph.us.i.i.i, !llvm.loop !280

.loopexit115.us.i.i.i.loopexit.unr-lcssa:         ; preds = %.lr.ph.us.i.i.i
  br i1 %lcmp.mod.not, label %.loopexit115.us.i.i.i, label %.lr.ph.us.i.i.i.epil.preheader

.lr.ph.us.i.i.i.epil.preheader:                   ; preds = %.loopexit115.us.i.i.i.loopexit.unr-lcssa, %.lr.ph.us.i.i.i.preheader
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.us.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.3, %.loopexit115.us.i.i.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph.us.i.i.i.epil

.lr.ph.us.i.i.i.epil:                             ; preds = %.lr.ph.us.i.i.i.epil, %.lr.ph.us.i.i.i.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.next.i.i.i.epil, %.lr.ph.us.i.i.i.epil ], [ %indvars.iv.i.i.i.epil.init, %.lr.ph.us.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.us.i.i.i.epil ], [ 0, %.lr.ph.us.i.i.i.epil.preheader ]
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i.i.i.epil
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !36
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds i8, ptr %i.dp, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !22
  %i.et = getelementptr inbounds nuw i8, ptr %i.cw, i64 %indvars.iv.i.i.i.epil
  store i8 %i.es, ptr %i.et, align 1, !tbaa !22
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit115.us.i.i.i, label %.lr.ph.us.i.i.i.epil, !llvm.loop !281

.loopexit115.us.i.i.i:                            ; preds = %.loopexit115.us.i.i.i.loopexit.unr-lcssa, %.lr.ph.us.i.i.i.epil, %.preheader116.us.i.i.i, %.lr.ph120.us.preheader.i.i.i, %.preheader114.us.i.i.i
  %.3.us.i.i.i = phi i32 [ 0, %.preheader114.us.i.i.i ], [ %i.an, %.lr.ph120.us.preheader.i.i.i ], [ 0, %.preheader116.us.i.i.i ], [ %i.an, %.lr.ph.us.i.i.i.epil ], [ %i.an, %.loopexit115.us.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %i.eu = icmp slt i32 %.3.us.i.i.i, %i.bb
  br i1 %i.eu, label %iter.check, label %._crit_edge.us.i.i.i

iter.check:                                       ; preds = %.loopexit115.us.i.i.i
  %i.ev = zext nneg i32 %.3.us.i.i.i to i64       ; 8 uses
  %i.ew = add nuw nsw i64 %i.ev, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ew, i64 %i.bf)
  %i.ex = sub nsw i64 %umax, %i.ev                ; 7 uses
  %min.iters.check = icmp ult i64 %i.ex, 8
  br i1 %min.iters.check, label %.lr.ph123.us.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ey = add i64 %i.dj, %i.z
  %i.ez = add i64 %i.ey, %i.do
  %i.fa = add i64 %i.ez, %i.df
  %i.fb = add i64 %i.fa, %i.db
  %i.fc = add i64 %i.cv, %i.aj
  %i.fd = add i64 %i.fc, %i.cr
  %i.fe = add i64 %i.fd, %i.cn
  %2 = add i64 %i.fe, %i.cj
  %i.ff = add i64 %2, %i.be
  %3 = sub i64 %i.fb, %i.ff
  %diff.check = icmp ugt i64 %3, -32
  br i1 %diff.check, label %.lr.ph123.us.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check13 = icmp ult i64 %i.ex, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fg = and i64 %i.ex, 24
  %n.vec = and i64 %i.ex, -32                     ; 4 uses
  %i.fh = add nsw i64 %n.vec, %i.ev               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fi = add nuw i64 %index, %i.ev               ; 2 uses
  %i.fj = sub nsw i64 %i.fi, %i.be
  %i.fk = getelementptr inbounds i8, ptr %i.dp, i64 %i.fj ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %wide.load = load <16 x i8>, ptr %i.fk, align 1, !tbaa !22
  %wide.load14 = load <16 x i8>, ptr %i.fl, align 1, !tbaa !22
  %i.fm = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.fi ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store <16 x i8> %wide.load, ptr %i.fm, align 1, !tbaa !22
  store <16 x i8> %wide.load14, ptr %i.fn, align 1, !tbaa !22
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fo = icmp eq i64 %index.next, %n.vec
  br i1 %i.fo, label %middle.block, label %vector.body, !llvm.loop !282

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ex, %n.vec
  br i1 %cmp.n, label %._crit_edge.us.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fg, 0
  br i1 %min.epilog.iters.check, label %.lr.ph123.us.i.i.i.preheader, label %vec.epilog.ph, !prof !299

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %i.ex, -8                    ; 3 uses
  %i.fp = add nsw i64 %n.vec15, %i.ev             ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 2 uses
  %i.fq = add nuw i64 %index16, %i.ev             ; 2 uses
  %i.fr = sub nsw i64 %i.fq, %i.be
  %i.fs = getelementptr inbounds i8, ptr %i.dp, i64 %i.fr
  %wide.load17 = load <8 x i8>, ptr %i.fs, align 1, !tbaa !22
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.fq
  store <8 x i8> %wide.load17, ptr %i.ft, align 1, !tbaa !22
  %index.next18 = add nuw i64 %index16, 8         ; 2 uses
  %i.fu = icmp eq i64 %index.next18, %n.vec15
  br i1 %i.fu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !283

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %i.ex, %n.vec15
  br i1 %cmp.n19, label %._crit_edge.us.loopexit.i.i.i, label %.lr.ph123.us.i.i.i.preheader

.lr.ph123.us.i.i.i.preheader:                     ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv158.i.i.i.ph = phi i64 [ %i.ev, %iter.check ], [ %i.ev, %vector.memcheck ], [ %i.fh, %vec.epilog.iter.check ], [ %i.fp, %vec.epilog.middle.block ]
  br label %.lr.ph123.us.i.i.i

.lr.ph123.us.i.i.i:                               ; preds = %.lr.ph123.us.i.i.i.preheader, %.lr.ph123.us.i.i.i
  %indvars.iv158.i.i.i = phi i64 [ %indvars.iv.next159.i.i.i, %.lr.ph123.us.i.i.i ], [ %indvars.iv158.i.i.i.ph, %.lr.ph123.us.i.i.i.preheader ] ; 3 uses
  %i.fv = sub nsw i64 %indvars.iv158.i.i.i, %i.be
  %i.fw = getelementptr inbounds i8, ptr %i.dp, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !22
  %i.fy = getelementptr inbounds nuw i8, ptr %i.cw, i64 %indvars.iv158.i.i.i
  store i8 %i.fx, ptr %i.fy, align 1, !tbaa !22
  %indvars.iv.next159.i.i.i = add nuw nsw i64 %indvars.iv158.i.i.i, 1 ; 3 uses
  %i.fz = icmp samesign ult i64 %indvars.iv.next159.i.i.i, %i.bf
  br i1 %i.fz, label %.lr.ph123.us.i.i.i, label %._crit_edge.us.loopexit.i.i.i, !llvm.loop !284

._crit_edge.us.loopexit.i.i.i:                    ; preds = %.lr.ph123.us.i.i.i, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next159.i.i.i.lcssa = phi i64 [ %i.fp, %vec.epilog.middle.block ], [ %i.fh, %middle.block ], [ %indvars.iv.next159.i.i.i, %.lr.ph123.us.i.i.i ]
  %i.ga = trunc nuw nsw i64 %indvars.iv.next159.i.i.i.lcssa to i32
  br label %._crit_edge.us.i.i.i

._crit_edge.us.i.i.i:                             ; preds = %._crit_edge.us.loopexit.i.i.i, %.loopexit115.us.i.i.i
  %.4.lcssa.us.i.i.i = phi i32 [ %.3.us.i.i.i, %.loopexit115.us.i.i.i ], [ %i.ga, %._crit_edge.us.loopexit.i.i.i ] ; 6 uses
  %i.gb = icmp slt i32 %.4.lcssa.us.i.i.i, %i.j   ; 2 uses
  br i1 %i.az, label %.preheader110.us.i.i.i, label %.preheader112.us.i.i.i

.lr.ph126.us.i.i.i:                               ; preds = %.lr.ph126.us.i.i.i.prol.loopexit, %.lr.ph126.us.i.i.i
  %indvars.iv161.i.i.i = phi i64 [ %indvars.iv.next162.i.i.i.3, %.lr.ph126.us.i.i.i ], [ %indvars.iv161.i.i.i.unr, %.lr.ph126.us.i.i.i.prol.loopexit ] ; 6 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv161.i.i.i
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !36
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds i8, ptr %i.dp, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !22
  %i.gh = getelementptr inbounds nuw i8, ptr %i.cw, i64 %indvars.iv161.i.i.i
  store i8 %i.gg, ptr %i.gh, align 1, !tbaa !22
  %indvars.iv.next162.i.i.i = add nuw nsw i64 %indvars.iv161.i.i.i, 1 ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next162.i.i.i
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !36
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds i8, ptr %i.dp, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !22
  %i.gn = getelementptr inbounds nuw i8, ptr %i.cw, i64 %indvars.iv.next162.i.i.i
  store i8 %i.gm, ptr %i.gn, align 1, !tbaa !22
  %indvars.iv.next162.i.i.i.1 = add nuw nsw i64 %indvars.iv161.i.i.i, 2 ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next162.i.i.i.1
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !36
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds i8, ptr %i.dp, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !22
  %i.gt = getelementptr inbounds nuw i8, ptr %i.cw, i64 %indvars.iv.next162.i.i.i.1
  store i8 %i.gs, ptr %i.gt, align 1, !tbaa !22
  %indvars.iv.next162.i.i.i.2 = add nuw nsw i64 %indvars.iv161.i.i.i, 3 ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next162.i.i.i.2
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !36
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds i8, ptr %i.dp, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !22
  %i.gz = getelementptr inbounds nuw i8, ptr %i.cw, i64 %indvars.iv.next162.i.i.i.2
  store i8 %i.gy, ptr %i.gz, align 1, !tbaa !22
  %indvars.iv.next162.i.i.i.3 = add nuw nsw i64 %indvars.iv161.i.i.i, 4 ; 2 uses
  %i.ha = trunc nuw i64 %indvars.iv.next162.i.i.i.3 to i32
  %i.hb = icmp sgt i32 %i.j, %i.ha
  br i1 %i.hb, label %.lr.ph126.us.i.i.i, label %.loopexit.us.i.i.i, !llvm.loop !285

.loopexit.us.i.i.i:                               ; preds = %.lr.ph126.us.i.i.i.prol.loopexit, %.lr.ph126.us.i.i.i, %.preheader112.us.i.i.i, %.lr.ph128.us.preheader.i.i.i, %.preheader110.us.i.i.i, %.lr.ph130.us.preheader.i.i.i, %.preheader.us.i.i.i
  %indvars.iv.next171.i.i.i = add nuw nsw i64 %indvars.iv170.i.i.i, 1 ; 2 uses
  %exitcond174.not.i.i.i = icmp eq i64 %indvars.iv.next171.i.i.i, %wide.trip.count173.i.i.i
  br i1 %exitcond174.not.i.i.i, label %._crit_edge134.us.i.i.i, label %bb.g, !llvm.loop !286

.preheader.us.i.i.i:                              ; preds = %bb.i
  br i1 %i.bc, label %.lr.ph130.us.preheader.i.i.i, label %.loopexit.us.i.i.i

.lr.ph130.us.preheader.i.i.i:                     ; preds = %.preheader.us.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cw, i8 %i.ae, i64 %i.bg, i1 false), !tbaa !22
  br label %.loopexit.us.i.i.i

.preheader110.us.i.i.i:                           ; preds = %._crit_edge.us.i.i.i
  br i1 %i.gb, label %.lr.ph128.us.preheader.i.i.i, label %.loopexit.us.i.i.i

.lr.ph128.us.preheader.i.i.i:                     ; preds = %.preheader110.us.i.i.i
  %i.hc = zext i32 %.4.lcssa.us.i.i.i to i64
  %i.hd = getelementptr i8, ptr %i.ai, i64 %i.cv
  %i.he = getelementptr i8, ptr %i.hd, i64 %i.cr
  %i.hf = getelementptr i8, ptr %i.he, i64 %i.cn
  %i.hg = getelementptr i8, ptr %i.hf, i64 %i.cj
  %scevgep.i.i.i = getelementptr i8, ptr %i.hg, i64 %i.hc
  %i.hh = xor i32 %.4.lcssa.us.i.i.i, -1
  %i.hi = add i32 %i.j, %i.hh
  %i.hj = zext i32 %i.hi to i64
  %i.hk = add nuw nsw i64 %i.hj, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.i.i, i8 %i.ae, i64 %i.hk, i1 false), !tbaa !22
  br label %.loopexit.us.i.i.i

.preheader112.us.i.i.i:                           ; preds = %._crit_edge.us.i.i.i
  br i1 %i.gb, label %.lr.ph126.us.preheader.i.i.i, label %.loopexit.us.i.i.i

.lr.ph126.us.preheader.i.i.i:                     ; preds = %.preheader112.us.i.i.i
  %i.hl = zext i32 %.4.lcssa.us.i.i.i to i64      ; 2 uses
  %i.hm = sub i32 %i.j, %.4.lcssa.us.i.i.i
  %xtraiter22 = and i32 %i.hm, 3                  ; 2 uses
  %lcmp.mod23.not = icmp eq i32 %xtraiter22, 0
  br i1 %lcmp.mod23.not, label %.lr.ph126.us.i.i.i.prol.loopexit, label %.lr.ph126.us.i.i.i.prol

.lr.ph126.us.i.i.i.prol:                          ; preds = %.lr.ph126.us.preheader.i.i.i, %.lr.ph126.us.i.i.i.prol
  %indvars.iv161.i.i.i.prol = phi i64 [ %indvars.iv.next162.i.i.i.prol, %.lr.ph126.us.i.i.i.prol ], [ %i.hl, %.lr.ph126.us.preheader.i.i.i ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph126.us.i.i.i.prol ], [ 0, %.lr.ph126.us.preheader.i.i.i ]
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv161.i.i.i.prol
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !36
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds i8, ptr %i.dp, i64 %i.hp
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !22
  %i.hs = getelementptr inbounds nuw i8, ptr %i.cw, i64 %indvars.iv161.i.i.i.prol
  store i8 %i.hr, ptr %i.hs, align 1, !tbaa !22
  %indvars.iv.next162.i.i.i.prol = add nuw nsw i64 %indvars.iv161.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter22
  br i1 %prol.iter.cmp.not, label %.lr.ph126.us.i.i.i.prol.loopexit, label %.lr.ph126.us.i.i.i.prol, !llvm.loop !287

.lr.ph126.us.i.i.i.prol.loopexit:                 ; preds = %.lr.ph126.us.i.i.i.prol, %.lr.ph126.us.preheader.i.i.i
  %indvars.iv161.i.i.i.unr = phi i64 [ %i.hl, %.lr.ph126.us.preheader.i.i.i ], [ %indvars.iv.next162.i.i.i.prol, %.lr.ph126.us.i.i.i.prol ]
  %i.ht = sub i32 %.4.lcssa.us.i.i.i, %i.j
  %i.hu = icmp ugt i32 %i.ht, -4
  br i1 %i.hu, label %.loopexit.us.i.i.i, label %.lr.ph126.us.i.i.i

.preheader114.us.i.i.i:                           ; preds = %bb.j
  br i1 %i.ba, label %.lr.ph120.us.preheader.i.i.i, label %.loopexit115.us.i.i.i

.lr.ph120.us.preheader.i.i.i:                     ; preds = %.preheader114.us.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cw, i8 %i.ae, i64 %i.bd, i1 false), !tbaa !22
  br label %.loopexit115.us.i.i.i

.preheader116.us.i.i.i:                           ; preds = %bb.j
  br i1 %i.ba, label %.lr.ph.us.i.i.i.preheader, label %.loopexit115.us.i.i.i

.lr.ph.us.i.i.i.preheader:                        ; preds = %.preheader116.us.i.i.i
  br i1 %i.bh, label %.lr.ph.us.i.i.i.epil.preheader, label %.lr.ph.us.i.i.i

._crit_edge134.us.i.i.i:                          ; preds = %.loopexit.us.i.i.i
  %i.hv = add nsw i32 %.091135.us.i.i.i, 1        ; 2 uses
  %i.hw = load i32, ptr %i.ap, align 4, !tbaa !199
  %i.hx = icmp slt i32 %i.hv, %i.hw
  br i1 %i.hx, label %.lr.ph137.split.us.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS4_RS2_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit", !llvm.loop !288

end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS8_RS6_E3$_2E9_M_invokeERKSt9_Any_dataS3_":bb.a
  %index.next33 = add nuw i64 %index32, 8         ; 2 uses
  %i.hv = icmp eq i64 %index.next33, %n.vec28
  br i1 %i.hv, label %middle.block34, label %vector.body31, !llvm.loop !338

middle.block34:                                   ; preds = %vector.body31
  %cmp.n35 = icmp eq i64 %i.hs, %n.vec28
  br i1 %cmp.n35, label %.loopexit.us.i.i.i, label %.lr.ph128.us.i.i.i.preheader

.lr.ph128.us.i.i.i.preheader:                     ; preds = %.lr.ph128.us.preheader.i.i.i, %middle.block34
  %indvars.iv164.i.i.i.ph = phi i64 [ %i.ho, %.lr.ph128.us.preheader.i.i.i ], [ %i.ht, %middle.block34 ]
  br label %.lr.ph128.us.i.i.i

.preheader112.us.i.i.i:                           ; preds = %._crit_edge.us.i.i.i
  br i1 %i.gg, label %.lr.ph126.us.preheader.i.i.i, label %.loopexit.us.i.i.i

.lr.ph126.us.preheader.i.i.i:                     ; preds = %.preheader112.us.i.i.i
  %i.hw = zext i32 %.4.lcssa.us.i.i.i to i64      ; 2 uses
  %i.hx = sub i32 %i.j, %.4.lcssa.us.i.i.i
  %xtraiter67 = and i32 %i.hx, 3                  ; 2 uses
  %lcmp.mod68.not = icmp eq i32 %xtraiter67, 0
  br i1 %lcmp.mod68.not, label %.lr.ph126.us.i.i.i.prol.loopexit, label %.lr.ph126.us.i.i.i.prol

.lr.ph126.us.i.i.i.prol:                          ; preds = %.lr.ph126.us.preheader.i.i.i, %.lr.ph126.us.i.i.i.prol
  %indvars.iv161.i.i.i.prol = phi i64 [ %indvars.iv.next162.i.i.i.prol, %.lr.ph126.us.i.i.i.prol ], [ %i.hw, %.lr.ph126.us.preheader.i.i.i ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph126.us.i.i.i.prol ], [ 0, %.lr.ph126.us.preheader.i.i.i ]
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv161.i.i.i.prol
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !36
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !36
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv161.i.i.i.prol
  store i32 %i.ic, ptr %i.id, align 4, !tbaa !36
  %indvars.iv.next162.i.i.i.prol = add nuw nsw i64 %indvars.iv161.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter67
  br i1 %prol.iter.cmp.not, label %.lr.ph126.us.i.i.i.prol.loopexit, label %.lr.ph126.us.i.i.i.prol, !llvm.loop !339

.lr.ph126.us.i.i.i.prol.loopexit:                 ; preds = %.lr.ph126.us.i.i.i.prol, %.lr.ph126.us.preheader.i.i.i
  %indvars.iv161.i.i.i.unr = phi i64 [ %i.hw, %.lr.ph126.us.preheader.i.i.i ], [ %indvars.iv.next162.i.i.i.prol, %.lr.ph126.us.i.i.i.prol ]
  %i.ie = sub i32 %.4.lcssa.us.i.i.i, %i.j
  %i.if = icmp ugt i32 %i.ie, -4
  br i1 %i.if, label %.loopexit.us.i.i.i, label %.lr.ph126.us.i.i.i

.preheader114.us.i.i.i:                           ; preds = %bb.k
  br i1 %i.az, label %.lr.ph120.us.i.i.i.preheader, label %.loopexit115.us.i.i.i

.lr.ph120.us.i.i.i.preheader:                     ; preds = %.preheader114.us.i.i.i
  br i1 %min.iters.check49, label %.lr.ph120.us.i.i.i.preheader63, label %vector.body54

vector.body54:                                    ; preds = %.lr.ph120.us.i.i.i.preheader, %vector.body54
  %index55 = phi i64 [ %index.next56, %vector.body54 ], [ 0, %.lr.ph120.us.i.i.i.preheader ] ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %index55 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store <4 x i32> %broadcast.splat53, ptr %i.ig, align 4, !tbaa !36
  store <4 x i32> %broadcast.splat53, ptr %i.ih, align 4, !tbaa !36
  %index.next56 = add nuw i64 %index55, 8         ; 2 uses
  %i.ii = icmp eq i64 %index.next56, %n.vec51
  br i1 %i.ii, label %middle.block57, label %vector.body54, !llvm.loop !340

middle.block57:                                   ; preds = %vector.body54
  br i1 %cmp.n58, label %.loopexit115.us.i.i.i, label %.lr.ph120.us.i.i.i.preheader63

.lr.ph120.us.i.i.i.preheader63:                   ; preds = %.lr.ph120.us.i.i.i.preheader, %middle.block57
  %indvars.iv151.i.i.i.ph = phi i64 [ 0, %.lr.ph120.us.i.i.i.preheader ], [ %n.vec51, %middle.block57 ]
  br label %.lr.ph120.us.i.i.i

.preheader116.us.i.i.i:                           ; preds = %bb.k
  br i1 %i.az, label %.lr.ph.us.i.i.i.preheader, label %.loopexit115.us.i.i.i

.lr.ph.us.i.i.i.preheader:                        ; preds = %.preheader116.us.i.i.i
  br i1 %i.bu, label %.lr.ph.us.i.i.i.epil.preheader, label %.lr.ph.us.i.i.i

._crit_edge134.us.i.i.i:                          ; preds = %.loopexit.us.i.i.i
  %i.ij = add nsw i32 %.091135.us.i.i.i, 1        ; 2 uses
  %i.ik = load i32, ptr %i.ap, align 4, !tbaa !199
  %i.il = icmp slt i32 %i.ij, %i.ik
  br i1 %i.il, label %bb.b, label %"_ZSt10__invoke_rIvRZN2cv3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS4_RS2_E3$_2JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit", !llvm.loop !341

"_ZSt10__invoke_rIvRZN2cv3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS4_RS2_E3$_2JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit": ; preds = %._crit_edge134.us.i.i.i, %bb.a, %.lr.ph137.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS8_RS6_E3$_2E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL3padERKNS1_3MatERKSt6vectorIiSaIiEEiS5_RS3_E3$_2E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnnL3padERKNS_3MatERKSt6vectorIiSaIiEEiS3_RS1_E3$_2", ptr %0, align 8, !tbaa !214
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL3padERKNS1_3MatERKSt6vectorIiSaIiEEiS5_RS3_E3$_2E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !206
  store ptr %.val, ptr %0, align 8, !tbaa !206
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL3padERKNS1_3MatERKSt6vectorIiSaIiEEiS5_RS3_E3$_2E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #21 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %.val6, i64 72, i1 false), !tbaa.struct !215
  store ptr %i.a, ptr %0, align 8, !tbaa !206
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL3padERKNS1_3MatERKSt6vectorIiSaIiEEiS5_RS3_E3$_2E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !206 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL3padERKNS1_3MatERKSt6vectorIiSaIiEEiS5_RS3_E3$_2E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 72) #22
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL3padERKNS1_3MatERKSt6vectorIiSaIiEEiS5_RS3_E3$_2E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL3padERKNS1_3MatERKSt6vectorIiSaIiEEiS5_RS3_E3$_2E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS8_RS6_E3$_3E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #16 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !206   ; 9 uses
  %.val2 = load i32, ptr %1, align 4, !tbaa !198  ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val3 = load i32, ptr %i.a, align 4            ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !367, !nonnull !195, !align !210 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !36   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !36   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !36   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = load i32, ptr %i.j, align 4, !tbaa !36   ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !368, !nonnull !195, !align !211 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !35   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !35   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !35   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !35   ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !369, !nonnull !195, !align !211
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !194  ; 2 uses
  %i.aa = ptrtoaddr ptr %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !370, !nonnull !195, !align !211
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !194
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !59 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !371, !nonnull !195, !align !211
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !194 ; 2 uses
  %i.ak = ptrtoaddr ptr %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !372, !nonnull !195, !align !210 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !36 ; 9 uses
  %i.ap = icmp slt i32 %.val2, %.val3
  br i1 %i.ap, label %.lr.ph38.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS4_RS2_E3$_3JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit"

.lr.ph38.i.i.i:                                   ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 36
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !36
  %.sroa.speculated.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 0)
  %i.as = load ptr, ptr %.val, align 8, !tbaa !373, !nonnull !195, !align !210
  %i.at = load i32, ptr %i.as, align 4, !tbaa !36
  %.not.i.i.i = icmp eq ptr %i.n, null
  %.not96.i.i.i = icmp eq ptr %i.p, null
  %.not97.i.i.i = icmp eq ptr %i.r, null
  %i.au = icmp sgt i32 %i.i, 0
  %.not98.i.i.i = icmp eq ptr %i.t, null
  %i.av = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.aw = icmp eq i32 %i.at, 0                    ; 2 uses
  %i.ax = icmp sgt i32 %i.ao, 0                   ; 2 uses
  %i.ay = sub i32 %i.k, %.sroa.speculated.i.i.i   ; 2 uses
  %i.az = icmp sgt i32 %i.k, 0
  br i1 %i.au, label %.lr.ph38.split.us.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS4_RS2_E3$_3JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit"

.lr.ph38.split.us.i.i.i:                          ; preds = %.lr.ph38.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !374, !nonnull !195, !align !211 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bf = sext i32 %i.ao to i64                   ; 3 uses
  %i.bg = zext i32 %i.ay to i64                   ; 2 uses
  %wide.trip.count76.i.i.i = zext nneg i32 %i.i to i64
  %wide.trip.count.i.i.i = zext i32 %i.ao to i64  ; 5 uses
  %wide.trip.count71.i.i.i = zext i32 %i.k to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 3 uses
  %i.bh = icmp ult i32 %i.ao, 4
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod67 = icmp ne i64 %xtraiter, 0
  %min.iters.check50 = icmp ult i32 %i.ao, 4
  %n.vec52 = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert53 = insertelement <2 x i64> poison, i64 %i.af, i64 0
  %broadcast.splat54 = shufflevector <2 x i64> %broadcast.splatinsert53, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n59 = icmp eq i64 %n.vec52, %wide.trip.count.i.i.i
  %broadcast.splatinsert30 = insertelement <2 x i64> poison, i64 %i.af, i64 0
  %broadcast.splat31 = shufflevector <2 x i64> %broadcast.splatinsert30, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %min.iters.check = icmp ult i32 %i.k, 4
  %n.vec = and i64 %wide.trip.count71.i.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.af, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count71.i.i.i
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge35.us.i.i.i, %.lr.ph38.split.us.i.i.i
  %.09136.us.i.i.i = phi i32 [ %.val2, %.lr.ph38.split.us.i.i.i ], [ %i.hz, %._crit_edge35.us.i.i.i ] ; 3 uses
  %i.bi = srem i32 %.09136.us.i.i.i, %i.g         ; 2 uses
  %i.bj = sdiv i32 %.09136.us.i.i.i, %i.g         ; 2 uses
  %i.bk = srem i32 %i.bj, %i.e                    ; 3 uses
  %i.bl = sdiv i32 %i.bj, %i.e                    ; 3 uses
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bp = phi i32 [ %i.bo, %bb.c ], [ %i.bl, %bb.b ] ; 2 uses
  br i1 %.not96.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bq = sext i32 %i.bk to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !36
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bt = phi i32 [ %i.bs, %bb.e ], [ %i.bk, %bb.d ] ; 2 uses
  %.pre.i.i.i = sext i32 %i.bi to i64             ; 3 uses
  br i1 %.not97.i.i.i, label %.lr.ph34.us.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.r, i64 %.pre.i.i.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !36 ; 2 uses
  %.pre79.i.i.i = sext i32 %i.bv to i64
  br label %.lr.ph34.us.i.i.i

.lr.ph34.us.i.i.i:                                ; preds = %bb.g, %bb.f
  %.pre-phi80.i.i.i = phi i64 [ %.pre79.i.i.i, %bb.g ], [ %.pre.i.i.i, %bb.f ]
  %i.bw = phi i32 [ %i.bv, %bb.g ], [ %i.bi, %bb.f ]
  %i.bx = sext i32 %i.bl to i64
  %i.by = sext i32 %i.bk to i64
  %i.bz = sext i32 %i.bp to i64
  %i.ca = sext i32 %i.bt to i64
  %i.cb = or i32 %i.bp, %i.bw
  %i.cc = or i32 %i.cb, %i.bt
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.us.i.i.i, %.lr.ph34.us.i.i.i
  %indvars.iv73.i.i.i = phi i64 [ 0, %.lr.ph34.us.i.i.i ], [ %indvars.iv.next74.i.i.i, %.loopexit.us.i.i.i ] ; 5 uses
  %i.cd = trunc nuw nsw i64 %indvars.iv73.i.i.i to i32
  br i1 %.not98.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv73.i.i.i
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !36
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cg = phi i32 [ %i.cf, %bb.i ], [ %i.cd, %bb.h ] ; 2 uses
  %i.ch = load i64, ptr %i.bb, align 8, !tbaa !59
  %i.ci = mul i64 %i.ch, %i.bx                    ; 2 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ci
  %i.ck = load i64, ptr %i.bc, align 8, !tbaa !59
  %i.cl = mul i64 %i.ck, %i.by                    ; 2 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.cl
  %i.cn = load i64, ptr %i.bd, align 8, !tbaa !59
  %i.co = mul i64 %i.cn, %.pre.i.i.i              ; 2 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.co
  %i.cq = load i64, ptr %i.be, align 8, !tbaa !59 ; 2 uses
  %i.cr = mul nsw i64 %i.cq, %indvars.iv73.i.i.i
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cr ; 18 uses
  %i.ct = or i32 %i.cc, %i.cg
  %i.cu = icmp slt i32 %i.ct, 0
  br i1 %i.cu, label %.preheader.us.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cv = load ptr, ptr %i.av, align 8, !tbaa !375, !nonnull !195, !align !211 ; 4 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !59
  %i.cx = mul i64 %i.cw, %i.bz                    ; 2 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !59
  %i.db = mul i64 %i.da, %i.ca                    ; 2 uses
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !59
  %i.df = mul i64 %i.de, %.pre-phi80.i.i.i        ; 2 uses
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.df
  %i.dh = sext i32 %i.cg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !59
  %i.dk = mul i64 %i.dj, %i.dh                    ; 2 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.dk ; 12 uses
  br i1 %i.aw, label %.preheader15.us.i.i.i, label %.preheader17.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph.us.i.i.i.preheader, %.lr.ph.us.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %.lr.ph.us.i.i.i ], [ 0, %.lr.ph.us.i.i.i.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.i.i.i ], [ 0, %.lr.ph.us.i.i.i.preheader ]
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i.i.i
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !36
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !59
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.i.i.i
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !59
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !36
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !59
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next.i.i.i
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !59
  %indvars.iv.next.i.i.i.1 = or disjoint i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.1
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !36
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !59
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next.i.i.i.1
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !59
  %indvars.iv.next.i.i.i.2 = or disjoint i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.2
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !36
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.eg
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !59
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next.i.i.i.2
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !59
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit16.us.i.i.i.loopexit65.unr-lcssa, label %.lr.ph.us.i.i.i, !llvm.loop !352

.lr.ph21.us.i.i.i:                                ; preds = %.lr.ph21.us.i.i.i.preheader64, %.lr.ph21.us.i.i.i
  %indvars.iv52.i.i.i = phi i64 [ %indvars.iv.next53.i.i.i, %.lr.ph21.us.i.i.i ], [ %indvars.iv52.i.i.i.ph, %.lr.ph21.us.i.i.i.preheader64 ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv52.i.i.i
  store i64 %i.af, ptr %i.ek, align 8, !tbaa !59
  %indvars.iv.next53.i.i.i = add nuw nsw i64 %indvars.iv52.i.i.i, 1 ; 2 uses
  %exitcond56.not.i.i.i = icmp eq i64 %indvars.iv.next53.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond56.not.i.i.i, label %.loopexit16.us.i.i.i, label %.lr.ph21.us.i.i.i, !llvm.loop !353

.loopexit16.us.i.i.i.loopexit65.unr-lcssa:        ; preds = %.lr.ph.us.i.i.i
  br i1 %lcmp.mod.not, label %.loopexit16.us.i.i.i, label %.lr.ph.us.i.i.i.epil.preheader

.lr.ph.us.i.i.i.epil.preheader:                   ; preds = %.loopexit16.us.i.i.i.loopexit65.unr-lcssa, %.lr.ph.us.i.i.i.preheader
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.us.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.3, %.loopexit16.us.i.i.i.loopexit65.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod67)
  br label %.lr.ph.us.i.i.i.epil

.lr.ph.us.i.i.i.epil:                             ; preds = %.lr.ph.us.i.i.i.epil, %.lr.ph.us.i.i.i.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.next.i.i.i.epil, %.lr.ph.us.i.i.i.epil ], [ %indvars.iv.i.i.i.epil.init, %.lr.ph.us.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.us.i.i.i.epil ], [ 0, %.lr.ph.us.i.i.i.epil.preheader ]
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i.i.i.epil
  %i.em = load i32, ptr %i.el, align 4, !tbaa !36
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !59
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.i.i.i.epil
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !59
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit16.us.i.i.i, label %.lr.ph.us.i.i.i.epil, !llvm.loop !354

.loopexit16.us.i.i.i:                             ; preds = %.loopexit16.us.i.i.i.loopexit65.unr-lcssa, %.lr.ph.us.i.i.i.epil, %.lr.ph21.us.i.i.i, %middle.block58, %.preheader17.us.i.i.i, %.preheader15.us.i.i.i
  %.3.us.i.i.i = phi i32 [ 0, %.preheader15.us.i.i.i ], [ %i.ao, %middle.block58 ], [ 0, %.preheader17.us.i.i.i ], [ %i.ao, %.lr.ph21.us.i.i.i ], [ %i.ao, %.lr.ph.us.i.i.i.epil ], [ %i.ao, %.loopexit16.us.i.i.i.loopexit65.unr-lcssa ] ; 3 uses
  %i.er = icmp slt i32 %.3.us.i.i.i, %i.ay
  br i1 %i.er, label %.lr.ph24.us.preheader.i.i.i, label %._crit_edge.us.i.i.i

.lr.ph24.us.preheader.i.i.i:                      ; preds = %.loopexit16.us.i.i.i
  %i.es = zext nneg i32 %.3.us.i.i.i to i64       ; 6 uses
  %i.et = add nuw nsw i64 %i.es, 1
  %i.eu = tail call i64 @llvm.umax.i64(i64 %i.et, i64 %i.bg)
  %i.ev = sub nsw i64 %i.eu, %i.es                ; 3 uses
  %min.iters.check39 = icmp ult i64 %i.ev, 14
  br i1 %min.iters.check39, label %.lr.ph24.us.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph24.us.preheader.i.i.i
  %i.ew = shl nuw nsw i64 %indvars.iv73.i.i.i, 3
  %i.ex = mul i64 %i.cq, %i.ew
  %i.ey = add i64 %i.co, %i.cl
  %i.ez = add i64 %i.ey, %i.ci
  %i.fa = add i64 %i.ez, %i.bf
  %i.fb = shl i64 %i.fa, 3
  %i.fc = add i64 %i.df, %i.dk
  %i.fd = add i64 %i.fc, %i.db
  %i.fe = add i64 %i.fd, %i.cx
  %i.ff = shl i64 %i.fe, 3
  %i.fg = add i64 %i.ex, %i.ak
  %2 = add i64 %i.fg, %i.fb
  %i.fh = add i64 %i.ff, %i.aa
  %3 = sub i64 %i.fh, %2
  %diff.check = icmp ugt i64 %3, -32
  br i1 %diff.check, label %.lr.ph24.us.i.i.i.preheader, label %vector.ph40

vector.ph40:                                      ; preds = %vector.memcheck
  %n.vec41 = and i64 %i.ev, -4                    ; 3 uses
  %i.fi = add nsw i64 %n.vec41, %i.es             ; 2 uses
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %vector.ph40
  %index43 = phi i64 [ 0, %vector.ph40 ], [ %index.next45, %vector.body42 ] ; 2 uses
  %i.fj = add nuw i64 %index43, %i.es             ; 2 uses
  %i.fk = sub nsw i64 %i.fj, %i.bf
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.fk ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %wide.load = load <2 x i64>, ptr %i.fl, align 8, !tbaa !59
  %wide.load44 = load <2 x i64>, ptr %i.fm, align 8, !tbaa !59
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.fj ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store <2 x i64> %wide.load, ptr %i.fn, align 8, !tbaa !59
  store <2 x i64> %wide.load44, ptr %i.fo, align 8, !tbaa !59
  %index.next45 = add nuw i64 %index43, 4         ; 2 uses
  %i.fp = icmp eq i64 %index.next45, %n.vec41
  br i1 %i.fp, label %middle.block46, label %vector.body42, !llvm.loop !355

middle.block46:                                   ; preds = %vector.body42
  %cmp.n47 = icmp eq i64 %i.ev, %n.vec41
  br i1 %cmp.n47, label %._crit_edge.us.loopexit.i.i.i, label %.lr.ph24.us.i.i.i.preheader

.lr.ph24.us.i.i.i.preheader:                      ; preds = %vector.memcheck, %.lr.ph24.us.preheader.i.i.i, %middle.block46
  %indvars.iv59.i.i.i.ph = phi i64 [ %i.es, %vector.memcheck ], [ %i.es, %.lr.ph24.us.preheader.i.i.i ], [ %i.fi, %middle.block46 ]
  br label %.lr.ph24.us.i.i.i

.lr.ph24.us.i.i.i:                                ; preds = %.lr.ph24.us.i.i.i.preheader, %.lr.ph24.us.i.i.i
  %indvars.iv59.i.i.i = phi i64 [ %indvars.iv.next60.i.i.i, %.lr.ph24.us.i.i.i ], [ %indvars.iv59.i.i.i.ph, %.lr.ph24.us.i.i.i.preheader ] ; 3 uses
  %i.fq = sub nsw i64 %indvars.iv59.i.i.i, %i.bf
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.fq
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !59
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv59.i.i.i
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !59
  %indvars.iv.next60.i.i.i = add nuw nsw i64 %indvars.iv59.i.i.i, 1 ; 3 uses
  %i.fu = icmp samesign ult i64 %indvars.iv.next60.i.i.i, %i.bg
  br i1 %i.fu, label %.lr.ph24.us.i.i.i, label %._crit_edge.us.loopexit.i.i.i, !llvm.loop !356

._crit_edge.us.loopexit.i.i.i:                    ; preds = %.lr.ph24.us.i.i.i, %middle.block46
  %indvars.iv.next60.i.i.i.lcssa = phi i64 [ %i.fi, %middle.block46 ], [ %indvars.iv.next60.i.i.i, %.lr.ph24.us.i.i.i ]
  %i.fv = trunc nuw nsw i64 %indvars.iv.next60.i.i.i.lcssa to i32
  br label %._crit_edge.us.i.i.i

._crit_edge.us.i.i.i:                             ; preds = %._crit_edge.us.loopexit.i.i.i, %.loopexit16.us.i.i.i
  %.4.lcssa.us.i.i.i = phi i32 [ %.3.us.i.i.i, %.loopexit16.us.i.i.i ], [ %i.fv, %._crit_edge.us.loopexit.i.i.i ] ; 6 uses
  %i.fw = icmp slt i32 %.4.lcssa.us.i.i.i, %i.k   ; 2 uses
  br i1 %i.aw, label %.preheader11.us.i.i.i, label %.preheader13.us.i.i.i

.lr.ph27.us.i.i.i:                                ; preds = %.lr.ph27.us.i.i.i.prol.loopexit, %.lr.ph27.us.i.i.i
  %indvars.iv62.i.i.i = phi i64 [ %indvars.iv.next63.i.i.i.3, %.lr.ph27.us.i.i.i ], [ %indvars.iv62.i.i.i.unr, %.lr.ph27.us.i.i.i.prol.loopexit ] ; 6 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv62.i.i.i
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !36
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.fz
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !59
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv62.i.i.i
  store i64 %i.gb, ptr %i.gc, align 8, !tbaa !59
  %indvars.iv.next63.i.i.i = add nuw nsw i64 %indvars.iv62.i.i.i, 1 ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next63.i.i.i
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !36
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.gf
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !59
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next63.i.i.i
  store i64 %i.gh, ptr %i.gi, align 8, !tbaa !59
  %indvars.iv.next63.i.i.i.1 = add nuw nsw i64 %indvars.iv62.i.i.i, 2 ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next63.i.i.i.1
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !36
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.gl
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !59
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next63.i.i.i.1
  store i64 %i.gn, ptr %i.go, align 8, !tbaa !59
  %indvars.iv.next63.i.i.i.2 = add nuw nsw i64 %indvars.iv62.i.i.i, 3 ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next63.i.i.i.2
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !36
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.gr
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !59
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next63.i.i.i.2
  store i64 %i.gt, ptr %i.gu, align 8, !tbaa !59
  %indvars.iv.next63.i.i.i.3 = add nuw nsw i64 %indvars.iv62.i.i.i, 4 ; 2 uses
  %i.gv = trunc nuw i64 %indvars.iv.next63.i.i.i.3 to i32
  %i.gw = icmp sgt i32 %i.k, %i.gv
  br i1 %i.gw, label %.lr.ph27.us.i.i.i, label %.loopexit.us.i.i.i, !llvm.loop !357

.lr.ph29.us.i.i.i:                                ; preds = %.lr.ph29.us.i.i.i.preheader, %.lr.ph29.us.i.i.i
  %indvars.iv65.i.i.i = phi i64 [ %indvars.iv.next66.i.i.i, %.lr.ph29.us.i.i.i ], [ %indvars.iv65.i.i.i.ph, %.lr.ph29.us.i.i.i.preheader ] ; 2 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv65.i.i.i
  store i64 %i.af, ptr %i.gx, align 8, !tbaa !59
  %indvars.iv.next66.i.i.i = add nuw nsw i64 %indvars.iv65.i.i.i, 1 ; 2 uses
  %i.gy = trunc nuw i64 %indvars.iv.next66.i.i.i to i32
  %i.gz = icmp sgt i32 %i.k, %i.gy
  br i1 %i.gz, label %.lr.ph29.us.i.i.i, label %.loopexit.us.i.i.i, !llvm.loop !358

.lr.ph31.us.i.i.i:                                ; preds = %.lr.ph31.us.i.i.i.preheader61, %.lr.ph31.us.i.i.i
  %indvars.iv68.i.i.i = phi i64 [ %indvars.iv.next69.i.i.i, %.lr.ph31.us.i.i.i ], [ %indvars.iv68.i.i.i.ph, %.lr.ph31.us.i.i.i.preheader61 ] ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv68.i.i.i
  store i64 %i.af, ptr %i.ha, align 8, !tbaa !59
  %indvars.iv.next69.i.i.i = add nuw nsw i64 %indvars.iv68.i.i.i, 1 ; 2 uses
  %exitcond72.not.i.i.i = icmp eq i64 %indvars.iv.next69.i.i.i, %wide.trip.count71.i.i.i
  br i1 %exitcond72.not.i.i.i, label %.loopexit.us.i.i.i, label %.lr.ph31.us.i.i.i, !llvm.loop !359

.loopexit.us.i.i.i:                               ; preds = %.lr.ph27.us.i.i.i.prol.loopexit, %.lr.ph27.us.i.i.i, %.lr.ph29.us.i.i.i, %.lr.ph31.us.i.i.i, %middle.block35, %middle.block, %.preheader13.us.i.i.i, %.preheader11.us.i.i.i, %.preheader.us.i.i.i
  %indvars.iv.next74.i.i.i = add nuw nsw i64 %indvars.iv73.i.i.i, 1 ; 2 uses
  %exitcond77.not.i.i.i = icmp eq i64 %indvars.iv.next74.i.i.i, %wide.trip.count76.i.i.i
  br i1 %exitcond77.not.i.i.i, label %._crit_edge35.us.i.i.i, label %bb.h, !llvm.loop !360

.preheader.us.i.i.i:                              ; preds = %bb.j
  br i1 %i.az, label %.lr.ph31.us.i.i.i.preheader, label %.loopexit.us.i.i.i

.lr.ph31.us.i.i.i.preheader:                      ; preds = %.preheader.us.i.i.i
  br i1 %min.iters.check, label %.lr.ph31.us.i.i.i.preheader61, label %vector.body

vector.body:                                      ; preds = %.lr.ph31.us.i.i.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph31.us.i.i.i.preheader ] ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %index ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.hb, align 8, !tbaa !59
  store <2 x i64> %broadcast.splat, ptr %i.hc, align 8, !tbaa !59
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hd = icmp eq i64 %index.next, %n.vec
  br i1 %i.hd, label %middle.block, label %vector.body, !llvm.loop !361

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.us.i.i.i, label %.lr.ph31.us.i.i.i.preheader61

.lr.ph31.us.i.i.i.preheader61:                    ; preds = %.lr.ph31.us.i.i.i.preheader, %middle.block
  %indvars.iv68.i.i.i.ph = phi i64 [ 0, %.lr.ph31.us.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph31.us.i.i.i

.preheader11.us.i.i.i:                            ; preds = %._crit_edge.us.i.i.i
  br i1 %i.fw, label %.lr.ph29.us.preheader.i.i.i, label %.loopexit.us.i.i.i

.lr.ph29.us.preheader.i.i.i:                      ; preds = %.preheader11.us.i.i.i
  %i.he = zext i32 %.4.lcssa.us.i.i.i to i64      ; 3 uses
  %i.hf = xor i32 %.4.lcssa.us.i.i.i, -1
  %i.hg = add i32 %i.k, %i.hf                     ; 2 uses
  %i.hh = zext i32 %i.hg to i64
  %i.hi = add nuw nsw i64 %i.hh, 1                ; 2 uses
  %min.iters.check27 = icmp ult i32 %i.hg, 3
  br i1 %min.iters.check27, label %.lr.ph29.us.i.i.i.preheader, label %vector.ph28

vector.ph28:                                      ; preds = %.lr.ph29.us.preheader.i.i.i
  %n.vec29 = and i64 %i.hi, 8589934588            ; 3 uses
  %i.hj = add nuw nsw i64 %n.vec29, %i.he
  %invariant.gep = getelementptr [8 x i8], ptr %i.cs, i64 %i.he
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %vector.ph28
  %index33 = phi i64 [ 0, %vector.ph28 ], [ %index.next34, %vector.body32 ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index33 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x i64> %broadcast.splat31, ptr %gep, align 8, !tbaa !59
  store <2 x i64> %broadcast.splat31, ptr %i.hk, align 8, !tbaa !59
  %index.next34 = add nuw i64 %index33, 4         ; 2 uses
  %i.hl = icmp eq i64 %index.next34, %n.vec29
  br i1 %i.hl, label %middle.block35, label %vector.body32, !llvm.loop !362

middle.block35:                                   ; preds = %vector.body32
  %cmp.n36 = icmp eq i64 %i.hi, %n.vec29
  br i1 %cmp.n36, label %.loopexit.us.i.i.i, label %.lr.ph29.us.i.i.i.preheader

.lr.ph29.us.i.i.i.preheader:                      ; preds = %.lr.ph29.us.preheader.i.i.i, %middle.block35
  %indvars.iv65.i.i.i.ph = phi i64 [ %i.he, %.lr.ph29.us.preheader.i.i.i ], [ %i.hj, %middle.block35 ]
  br label %.lr.ph29.us.i.i.i

.preheader13.us.i.i.i:                            ; preds = %._crit_edge.us.i.i.i
  br i1 %i.fw, label %.lr.ph27.us.preheader.i.i.i, label %.loopexit.us.i.i.i

.lr.ph27.us.preheader.i.i.i:                      ; preds = %.preheader13.us.i.i.i
  %i.hm = zext i32 %.4.lcssa.us.i.i.i to i64      ; 2 uses
  %i.hn = sub i32 %i.k, %.4.lcssa.us.i.i.i
  %xtraiter68 = and i32 %i.hn, 3                  ; 2 uses
  %lcmp.mod69.not = icmp eq i32 %xtraiter68, 0
  br i1 %lcmp.mod69.not, label %.lr.ph27.us.i.i.i.prol.loopexit, label %.lr.ph27.us.i.i.i.prol

.lr.ph27.us.i.i.i.prol:                           ; preds = %.lr.ph27.us.preheader.i.i.i, %.lr.ph27.us.i.i.i.prol
  %indvars.iv62.i.i.i.prol = phi i64 [ %indvars.iv.next63.i.i.i.prol, %.lr.ph27.us.i.i.i.prol ], [ %i.hm, %.lr.ph27.us.preheader.i.i.i ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph27.us.i.i.i.prol ], [ 0, %.lr.ph27.us.preheader.i.i.i ]
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv62.i.i.i.prol
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !36
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.hq
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !59
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv62.i.i.i.prol
  store i64 %i.hs, ptr %i.ht, align 8, !tbaa !59
  %indvars.iv.next63.i.i.i.prol = add nuw nsw i64 %indvars.iv62.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter68
  br i1 %prol.iter.cmp.not, label %.lr.ph27.us.i.i.i.prol.loopexit, label %.lr.ph27.us.i.i.i.prol, !llvm.loop !363

.lr.ph27.us.i.i.i.prol.loopexit:                  ; preds = %.lr.ph27.us.i.i.i.prol, %.lr.ph27.us.preheader.i.i.i
  %indvars.iv62.i.i.i.unr = phi i64 [ %i.hm, %.lr.ph27.us.preheader.i.i.i ], [ %indvars.iv.next63.i.i.i.prol, %.lr.ph27.us.i.i.i.prol ]
  %i.hu = sub i32 %.4.lcssa.us.i.i.i, %i.k
  %i.hv = icmp ugt i32 %i.hu, -4
end_hunk_1
