inline.NumInlined: 233
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 131
loop-unroll.NumUnrolled: 135
begin_hunk_0_@_ZN4ncnnL26transpose_pack_B_tile_bf16ERKNS_3MatERS0_iiii:bb.a
.lr.ph128.epil.preheader:                         ; preds = %.loopexit.loopexit288.unr-lcssa, %.lr.ph128.preheader
  %.0246126.epil.init = phi ptr [ %i.pi, %.lr.ph128.preheader ], [ %i.pu, %.loopexit.loopexit288.unr-lcssa ]
  %.22125.epil.init = phi ptr [ %.21143, %.lr.ph128.preheader ], [ %i.pt, %.loopexit.loopexit288.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod333)
  br label %.lr.ph128.epil

.lr.ph128.epil:                                   ; preds = %.lr.ph128.epil, %.lr.ph128.epil.preheader
  %.0246126.epil = phi ptr [ %i.rn, %.lr.ph128.epil ], [ %.0246126.epil.init, %.lr.ph128.epil.preheader ] ; 2 uses
  %.22125.epil = phi ptr [ %i.rm, %.lr.ph128.epil ], [ %.22125.epil.init, %.lr.ph128.epil.preheader ] ; 2 uses
  %epil.iter330 = phi i32 [ %epil.iter330.next, %.lr.ph128.epil ], [ 0, %.lr.ph128.epil.preheader ]
  %i.rl = load <2 x i64>, ptr %.0246126.epil, align 1, !tbaa !116
  store <2 x i64> %i.rl, ptr %.22125.epil, align 1, !tbaa !116
  %i.rm = getelementptr inbounds nuw i8, ptr %.22125.epil, i64 16 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %.0246126.epil, i64 %.idx280
  %epil.iter330.next = add i32 %epil.iter330, 1   ; 2 uses
  %epil.iter330.cmp.not = icmp eq i32 %epil.iter330.next, %xtraiter329
  br i1 %epil.iter330.cmp.not, label %.loopexit, label %.lr.ph128.epil, !llvm.loop !1174

.loopexit:                                        ; preds = %.loopexit.loopexit288.unr-lcssa, %.lr.ph128.epil, %.loopexit.loopexit287.unr-lcssa, %.lr.ph134.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph140.epil, %.loopexit37
  %.27 = phi ptr [ %.21143, %.loopexit37 ], [ %i.rg, %.lr.ph140.epil ], [ %i.rj, %.lr.ph134.epil ], [ %i.rd, %.loopexit.loopexit.unr-lcssa ], [ %i.qf, %.loopexit.loopexit287.unr-lcssa ], [ %i.pt, %.loopexit.loopexit288.unr-lcssa ], [ %i.rm, %.lr.ph128.epil ]
  %indvars.iv.next212 = add nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond214.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count
  br i1 %exitcond214.not, label %._crit_edge, label %bb.e, !llvm.loop !1175

._crit_edge:                                      ; preds = %.loopexit, %.preheader40
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

declare void @_ZN4ncnn24cast_bfloat16_to_float32ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL20gemm_AT_BT_x86_bf16sERKNS_3MatES2_S2_RS0_iiiiiffiiiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %17, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %18, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %19) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not162 = icmp sgt i32 %i.k, %i.j
  br i1 %.not162, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.0163 = phi i32 [ %i.k, %.lr.ph ], [ %i.at, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.t = load i32, ptr %3, align 4, !tbaa !45     ; 2 uses
  %i.u = sdiv i32 %.0163, %i.t
  %i.v = srem i32 %.0163, %i.t
  %i.w = load i32, ptr %4, align 4, !tbaa !45     ; 2 uses
  %i.x = mul nsw i32 %i.w, %i.u                   ; 3 uses
  %i.y = load i32, ptr %5, align 4, !tbaa !45     ; 2 uses
  %i.z = mul nsw i32 %i.y, %i.v                   ; 3 uses
  %i.aa = load i32, ptr %6, align 4, !tbaa !45
  %i.ab = sub nsw i32 %i.aa, %i.x
  %.sroa.speculated158 = call i32 @llvm.smin.i32(i32 %i.w, i32 %i.ab) ; 2 uses
  %i.ac = load i32, ptr %7, align 4, !tbaa !45
  %i.ad = sub nsw i32 %i.ac, %i.z
  %.sroa.speculated154 = call i32 @llvm.smin.i32(i32 %i.y, i32 %i.ad) ; 2 uses
  %i.ae = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc84 unwind label %bb.e

.noexc84:                                         ; preds = %bb.c
  %i.af = load ptr, ptr %8, align 8, !tbaa !18, !noalias !1176
  %i.ag = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !1176
  %i.ah = sext i32 %i.ae to i64
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = load i64, ptr %i.m, align 8, !tbaa !59, !noalias !1176
  %i.ak = mul i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %9, align 4, !tbaa !45    ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %_ZN4ncnn3MatD2Ev.exit58.preheader, label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit58.preheader:                ; preds = %.noexc84
  %.pre = load i32, ptr %10, align 4, !tbaa !45
  br label %_ZN4ncnn3MatD2Ev.exit58

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3MatD2Ev.exit58, %.noexc84
  %i.ao = load i32, ptr %15, align 4, !tbaa !45
  %i.ap = load float, ptr %16, align 4, !tbaa !68
  %i.aq = load float, ptr %17, align 4, !tbaa !68
  %i.ar = load i32, ptr %18, align 4, !tbaa !45
  %i.as = load i32, ptr %19, align 4, !tbaa !45
  call fastcc void @_ZN4ncnnL31unpack_output_tile_fp32_to_bf16ERKNS_3MatES2_RS0_iiiiiffii(ptr %i.al, ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(72) %14, i32 noundef %i.ao, i32 noundef %i.x, i32 noundef %.sroa.speculated158, i32 noundef %i.z, i32 noundef %.sroa.speculated154, float noundef nofpclass(nan inf) %i.ap, float noundef nofpclass(nan inf) %i.aq, i32 noundef %i.ar, i32 noundef %i.as)
  %i.at = add nsw i32 %.0163, 1
  %i.au = load i32, ptr %i.b, align 4, !tbaa !45
  %.not.not = icmp slt i32 %.0163, %i.au
  br i1 %.not.not, label %bb.c, label %._crit_edge

_ZN4ncnn3MatD2Ev.exit58:                          ; preds = %_ZN4ncnn3MatD2Ev.exit58.preheader, %_ZN4ncnn3MatD2Ev.exit58
  %i.av = phi i32 [ %i.cc, %_ZN4ncnn3MatD2Ev.exit58 ], [ %.pre, %_ZN4ncnn3MatD2Ev.exit58.preheader ] ; 2 uses
  %i.aw = phi i32 [ %i.ce, %_ZN4ncnn3MatD2Ev.exit58 ], [ %i.am, %_ZN4ncnn3MatD2Ev.exit58.preheader ]
  %.054161 = phi i32 [ %i.cd, %_ZN4ncnn3MatD2Ev.exit58 ], [ 0, %_ZN4ncnn3MatD2Ev.exit58.preheader ] ; 4 uses
  %i.ax = sub nsw i32 %i.aw, %.054161
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.av, i32 %i.ax)
  %i.ay = load i32, ptr %4, align 4, !tbaa !45
  %i.az = sdiv i32 %i.x, %i.ay
  %i.ba = load i32, ptr %i.n, align 4, !tbaa !88, !noalias !1179
  %i.bb = load ptr, ptr %11, align 8, !tbaa !18, !noalias !1179
  %i.bc = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !1179
  %i.bd = sext i32 %i.az to i64
  %i.be = mul i64 %i.bc, %i.bd
  %i.bf = load i64, ptr %i.p, align 8, !tbaa !59, !noalias !1179 ; 2 uses
  %i.bg = mul i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bg
  %i.bi = sext i32 %i.ba to i64
  %i.bj = sdiv i32 %.054161, %i.av
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = mul i64 %i.bf, %i.bi
  %i.bm = mul i64 %i.bl, %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bm
  %i.bo = load i32, ptr %5, align 4, !tbaa !45
  %i.bp = sdiv i32 %i.z, %i.bo
  %i.bq = load i32, ptr %i.q, align 4, !tbaa !88, !noalias !1182
  %i.br = load ptr, ptr %12, align 8, !tbaa !18, !noalias !1182
  %i.bs = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !1182
  %i.bt = sext i32 %i.bp to i64
  %i.bu = mul i64 %i.bs, %i.bt
  %i.bv = load i64, ptr %i.s, align 8, !tbaa !59, !noalias !1182 ; 2 uses
  %i.bw = mul i64 %i.bu, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bw
  %i.by = sext i32 %i.bq to i64
  %i.bz = mul i64 %i.bv, %i.by
  %i.ca = mul i64 %i.bz, %i.bk
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.ca
  call fastcc void @_ZN4ncnnL29gemm_transB_packed_tile_bf16sERKNS_3MatES2_RS0_iiiiii(ptr %i.bn, ptr %i.cb, ptr %i.al, i32 noundef %.sroa.speculated158, i32 noundef %.sroa.speculated154, i32 noundef %.054161, i32 noundef %.sroa.speculated)
  %i.cc = load i32, ptr %10, align 4, !tbaa !45   ; 2 uses
  %i.cd = add nsw i32 %i.cc, %.054161             ; 2 uses
  %i.ce = load i32, ptr %9, align 4, !tbaa !45    ; 2 uses
  %i.cf = icmp slt i32 %i.cd, %i.ce
  br i1 %i.cf, label %_ZN4ncnn3MatD2Ev.exit58, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1185

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.e:                                             ; preds = %bb.c
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #26
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL29gemm_transB_packed_tile_bf16sERKNS_3MatES2_RS0_iiiiii(ptr nofree readonly %.0.val, ptr nofree readonly %.0.val1, ptr nofree %.0.val3, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 {
bb.a:
  %i.a = icmp sgt i32 %0, 7
  br i1 %i.a, label %.preheader308.lr.ph, label %.preheader304

.preheader308.lr.ph:                              ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 7
  %.not594 = icmp eq i32 %2, 0                    ; 6 uses
  %i.c = icmp sgt i32 %3, 0                       ; 4 uses
  %i.d = shl nsw i32 %3, 3
  %i.e = sext i32 %i.d to i64
  %i.f = add i32 %3, -1
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %i.h = shl nuw nsw i64 %i.g, 4
  %i.i = and i32 %1, -8
  %i.j = shl nuw nsw i64 %i.g, 3
  %i.k = shl nuw nsw i64 %i.g, 2
  %i.l = add i32 %1, -1                           ; 2 uses
  %i.m = shl nuw nsw i64 %i.g, 1
  br label %.preheader308

.preheader308:                                    ; preds = %.preheader308.lr.ph, %._crit_edge400
  %.0454410 = phi ptr [ %.0.val, %.preheader308.lr.ph ], [ %i.gv, %._crit_edge400 ] ; 5 uses
  %.0456409 = phi ptr [ %.0.val3, %.preheader308.lr.ph ], [ %.4.lcssa, %._crit_edge400 ] ; 2 uses
  %.0460408 = phi i32 [ 0, %.preheader308.lr.ph ], [ %i.gw, %._crit_edge400 ]
  br i1 %i.b, label %.lr.ph331, label %.preheader307

.preheader304.loopexit:                           ; preds = %._crit_edge400
  %i.n = and i32 %0, 2147483640
  br label %.preheader304

.preheader304:                                    ; preds = %.preheader304.loopexit, %bb.a
  %.0460.lcssa = phi i32 [ 0, %bb.a ], [ %i.n, %.preheader304.loopexit ] ; 3 uses
  %.0456.lcssa = phi ptr [ %.0.val3, %bb.a ], [ %.4.lcssa, %.preheader304.loopexit ] ; 2 uses
  %.0454.lcssa = phi ptr [ %.0.val, %bb.a ], [ %i.gv, %.preheader304.loopexit ] ; 2 uses
  %i.o = or disjoint i32 %.0460.lcssa, 3
  %i.p = icmp slt i32 %i.o, %0
  br i1 %i.p, label %.preheader303.lr.ph, label %.preheader299

.preheader303.lr.ph:                              ; preds = %.preheader304
  %i.q = icmp sgt i32 %1, 7
  %.not590 = icmp eq i32 %2, 0                    ; 6 uses
  %i.r = icmp sgt i32 %3, 0                       ; 4 uses
  %i.s = shl nsw i32 %3, 2
  %i.t = sext i32 %i.s to i64
  %i.u = add i32 %3, -1
  %i.v = zext i32 %i.u to i64                     ; 4 uses
  %i.w = shl nuw nsw i64 %i.v, 4
  %i.x = and i32 %1, -8
  %i.y = shl nuw nsw i64 %i.v, 3
  %i.z = shl nuw nsw i64 %i.v, 2
  %i.aa = add i32 %1, -1                          ; 2 uses
  %i.ab = shl nuw nsw i64 %i.v, 1
  %xtraiter = and i32 %3, 1
  %i.ac = icmp eq i32 %3, 1
  %unroll_iter = and i32 %3, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod448 = trunc i32 %3 to i1
  br label %.preheader303

.preheader307:                                    ; preds = %._crit_edge, %.preheader308
  %.0472.lcssa = phi i32 [ 0, %.preheader308 ], [ %i.i, %._crit_edge ] ; 3 uses
  %.0464.lcssa = phi ptr [ %.0.val1, %.preheader308 ], [ %.1465.lcssa, %._crit_edge ] ; 2 uses
  %.1457.lcssa = phi ptr [ %.0456409, %.preheader308 ], [ %i.cj, %._crit_edge ] ; 2 uses
  %i.ad = or disjoint i32 %.0472.lcssa, 3
  %i.ae = icmp slt i32 %i.ad, %1
  br i1 %i.ae, label %.lr.ph353, label %.preheader306

.lr.ph331:                                        ; preds = %.preheader308, %._crit_edge
  %.1457330 = phi ptr [ %i.cj, %._crit_edge ], [ %.0456409, %.preheader308 ] ; 17 uses
  %.0464329 = phi ptr [ %.1465.lcssa, %._crit_edge ], [ %.0.val1, %.preheader308 ] ; 3 uses
  %.0472328 = phi i32 [ %i.ck, %._crit_edge ], [ 0, %.preheader308 ]
  br i1 %.not594, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph331
  %i.af = load <8 x float>, ptr %.1457330, align 32, !tbaa !116
  %i.ag = getelementptr inbounds nuw i8, ptr %.1457330, i64 32
  %i.ah = load <8 x float>, ptr %i.ag, align 32, !tbaa !116
  %i.ai = getelementptr inbounds nuw i8, ptr %.1457330, i64 64
  %i.aj = load <8 x float>, ptr %i.ai, align 32, !tbaa !116
  %i.ak = getelementptr inbounds nuw i8, ptr %.1457330, i64 96
  %i.al = load <8 x float>, ptr %i.ak, align 32, !tbaa !116
  %i.am = getelementptr inbounds nuw i8, ptr %.1457330, i64 128
  %i.an = load <8 x float>, ptr %i.am, align 32, !tbaa !116
  %i.ao = getelementptr inbounds nuw i8, ptr %.1457330, i64 160
  %i.ap = load <8 x float>, ptr %i.ao, align 32, !tbaa !116
  %i.aq = getelementptr inbounds nuw i8, ptr %.1457330, i64 192
  %i.ar = load <8 x float>, ptr %i.aq, align 32, !tbaa !116
  %i.as = getelementptr inbounds nuw i8, ptr %.1457330, i64 224
  %i.at = load <8 x float>, ptr %i.as, align 32, !tbaa !116
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph331
  %.0233 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph331 ], [ %i.at, %bb.b ] ; 2 uses
  %.0231 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph331 ], [ %i.ar, %bb.b ] ; 2 uses
  %.0229 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph331 ], [ %i.ap, %bb.b ] ; 2 uses
  %.0227 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph331 ], [ %i.an, %bb.b ] ; 2 uses
  %.0225 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph331 ], [ %i.al, %bb.b ] ; 2 uses
  %.0223 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph331 ], [ %i.aj, %bb.b ] ; 2 uses
  %.0221 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph331 ], [ %i.ah, %bb.b ] ; 2 uses
  %.0219 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph331 ], [ %i.af, %bb.b ] ; 2 uses
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.1465319 = phi ptr [ %i.bz, %.lr.ph ], [ %.0464329, %bb.c ] ; 2 uses
  %.0522318 = phi ptr [ %i.by, %.lr.ph ], [ %.0454410, %bb.c ] ; 2 uses
  %.0523317 = phi i32 [ %i.ca, %.lr.ph ], [ 0, %bb.c ]
  %.1220316 = phi <8 x float> [ %i.bj, %.lr.ph ], [ %.0219, %bb.c ]
  %.1222315 = phi <8 x float> [ %i.bl, %.lr.ph ], [ %.0221, %bb.c ]
  %.1224314 = phi <8 x float> [ %i.bn, %.lr.ph ], [ %.0223, %bb.c ]
  %.1226313 = phi <8 x float> [ %i.bp, %.lr.ph ], [ %.0225, %bb.c ]
  %.1228312 = phi <8 x float> [ %i.br, %.lr.ph ], [ %.0227, %bb.c ]
  %.1230311 = phi <8 x float> [ %i.bt, %.lr.ph ], [ %.0229, %bb.c ]
  %.1232310 = phi <8 x float> [ %i.bv, %.lr.ph ], [ %.0231, %bb.c ]
  %.1234309 = phi <8 x float> [ %i.bx, %.lr.ph ], [ %.0233, %bb.c ]
  %i.au = load <8 x i16>, ptr %.0522318, align 1, !tbaa !116 ; 2 uses
  %i.av = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.au, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aw = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.au, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ax = shufflevector <8 x i16> %i.av, <8 x i16> %i.aw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ay = bitcast <16 x i16> %i.ax to <8 x float> ; 5 uses
  %i.az = load <8 x i16>, ptr %.1465319, align 1, !tbaa !116 ; 2 uses
  %i.ba = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.az, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bb = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.az, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bc = shufflevector <8 x i16> %i.ba, <8 x i16> %i.bb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bd = bitcast <16 x i16> %i.bc to <8 x float> ; 4 uses
  %i.be = shufflevector <8 x float> %i.ay, <8 x float> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 4 uses
  %i.bf = shufflevector <8 x float> %i.bd, <8 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.bg = shufflevector <8 x float> %i.bd, <8 x float> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3> ; 3 uses
  %i.bh = shufflevector <8 x float> %i.bg, <8 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.bi = fmul fast <8 x float> %i.bd, %i.ay
  %i.bj = fadd fast <8 x float> %i.bi, %.1220316  ; 2 uses
  %i.bk = fmul fast <8 x float> %i.bf, %i.ay
  %i.bl = fadd fast <8 x float> %i.bk, %.1222315  ; 2 uses
  %i.bm = fmul fast <8 x float> %i.be, %i.bd
  %i.bn = fadd fast <8 x float> %i.bm, %.1224314  ; 2 uses
  %i.bo = fmul fast <8 x float> %i.bf, %i.be
  %i.bp = fadd fast <8 x float> %i.bo, %.1226313  ; 2 uses
  %i.bq = fmul fast <8 x float> %i.bg, %i.ay
  %i.br = fadd fast <8 x float> %i.bq, %.1228312  ; 2 uses
  %i.bs = fmul fast <8 x float> %i.bh, %i.ay
  %i.bt = fadd fast <8 x float> %i.bs, %.1230311  ; 2 uses
  %i.bu = fmul fast <8 x float> %i.bg, %i.be
  %i.bv = fadd fast <8 x float> %i.bu, %.1232310  ; 2 uses
  %i.bw = fmul fast <8 x float> %i.bh, %i.be
  %i.bx = fadd fast <8 x float> %i.bw, %.1234309  ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0522318, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %.1465319, i64 16
  %i.ca = add nuw nsw i32 %.0523317, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ca, %3
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1186

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.cb = getelementptr i8, ptr %.0464329, i64 %i.h
  %scevgep = getelementptr i8, ptr %i.cb, i64 16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.1234.lcssa = phi <8 x float> [ %.0233, %bb.c ], [ %i.bx, %._crit_edge.loopexit ]
  %.1232.lcssa = phi <8 x float> [ %.0231, %bb.c ], [ %i.bv, %._crit_edge.loopexit ]
  %.1230.lcssa = phi <8 x float> [ %.0229, %bb.c ], [ %i.bt, %._crit_edge.loopexit ]
  %.1228.lcssa = phi <8 x float> [ %.0227, %bb.c ], [ %i.br, %._crit_edge.loopexit ]
  %.1226.lcssa = phi <8 x float> [ %.0225, %bb.c ], [ %i.bp, %._crit_edge.loopexit ]
  %.1224.lcssa = phi <8 x float> [ %.0223, %bb.c ], [ %i.bn, %._crit_edge.loopexit ]
  %.1222.lcssa = phi <8 x float> [ %.0221, %bb.c ], [ %i.bl, %._crit_edge.loopexit ]
  %.1220.lcssa = phi <8 x float> [ %.0219, %bb.c ], [ %i.bj, %._crit_edge.loopexit ]
  %.1465.lcssa = phi ptr [ %.0464329, %bb.c ], [ %scevgep, %._crit_edge.loopexit ] ; 2 uses
  store <8 x float> %.1220.lcssa, ptr %.1457330, align 32, !tbaa !116
  %i.cc = getelementptr inbounds nuw i8, ptr %.1457330, i64 32
  store <8 x float> %.1222.lcssa, ptr %i.cc, align 32, !tbaa !116
  %i.cd = getelementptr inbounds nuw i8, ptr %.1457330, i64 64
  store <8 x float> %.1224.lcssa, ptr %i.cd, align 32, !tbaa !116
  %i.ce = getelementptr inbounds nuw i8, ptr %.1457330, i64 96
  store <8 x float> %.1226.lcssa, ptr %i.ce, align 32, !tbaa !116
  %i.cf = getelementptr inbounds nuw i8, ptr %.1457330, i64 128
  store <8 x float> %.1228.lcssa, ptr %i.cf, align 32, !tbaa !116
  %i.cg = getelementptr inbounds nuw i8, ptr %.1457330, i64 160
  store <8 x float> %.1230.lcssa, ptr %i.cg, align 32, !tbaa !116
  %i.ch = getelementptr inbounds nuw i8, ptr %.1457330, i64 192
  store <8 x float> %.1232.lcssa, ptr %i.ch, align 32, !tbaa !116
  %i.ci = getelementptr inbounds nuw i8, ptr %.1457330, i64 224
  store <8 x float> %.1234.lcssa, ptr %i.ci, align 32, !tbaa !116
  %i.cj = getelementptr inbounds nuw i8, ptr %.1457330, i64 256 ; 2 uses
  %i.ck = add nuw nsw i32 %.0472328, 8            ; 2 uses
  %i.cl = or disjoint i32 %i.ck, 7
  %i.cm = icmp slt i32 %i.cl, %1
  br i1 %i.cm, label %.lr.ph331, label %.preheader307, !llvm.loop !1187

.preheader306:                                    ; preds = %._crit_edge344, %.preheader307
  %.1473.lcssa = phi i32 [ %.0472.lcssa, %.preheader307 ], [ %i.fm, %._crit_edge344 ] ; 7 uses
  %.2466.lcssa = phi ptr [ %.0464.lcssa, %.preheader307 ], [ %.3467.lcssa, %._crit_edge344 ] ; 4 uses
  %.2458.lcssa = phi ptr [ %.1457.lcssa, %.preheader307 ], [ %i.fl, %._crit_edge344 ] ; 5 uses
  %i.cn = or disjoint i32 %.1473.lcssa, 1
  %i.co = icmp slt i32 %i.cn, %1
  br i1 %i.co, label %.lr.ph371, label %.preheader305

.lr.ph371:                                        ; preds = %.preheader306
  br i1 %i.c, label %.lr.ph371.split.us, label %.lr.ph371.split

.lr.ph371.split.us:                               ; preds = %.lr.ph371, %._crit_edge364.us
  %.3459370.us = phi ptr [ %i.do, %._crit_edge364.us ], [ %.2458.lcssa, %.lr.ph371 ] ; 5 uses
  %.4468369.us = phi ptr [ %scevgep910, %._crit_edge364.us ], [ %.2466.lcssa, %.lr.ph371 ] ; 2 uses
  %.2474368.us = phi i32 [ %i.dp, %._crit_edge364.us ], [ %.1473.lcssa, %.lr.ph371 ]
  br i1 %.not594, label %.lr.ph363.us.preheader, label %bb.d

bb.d:                                             ; preds = %.lr.ph371.split.us
  %i.cp = load <8 x float>, ptr %.3459370.us, align 32, !tbaa !116
  %i.cq = getelementptr inbounds nuw i8, ptr %.3459370.us, i64 32
  %i.cr = load <8 x float>, ptr %i.cq, align 32, !tbaa !116
  br label %.lr.ph363.us.preheader

.lr.ph363.us.preheader:                           ; preds = %bb.d, %.lr.ph371.split.us
  %.1244358.us.ph = phi <8 x float> [ zeroinitializer, %.lr.ph371.split.us ], [ %i.cp, %bb.d ]
  %.1246357.us.ph = phi <8 x float> [ zeroinitializer, %.lr.ph371.split.us ], [ %i.cr, %bb.d ]
  br label %.lr.ph363.us

.lr.ph363.us:                                     ; preds = %.lr.ph363.us.preheader, %.lr.ph363.us
  %.5469361.us = phi ptr [ %i.dk, %.lr.ph363.us ], [ %.4468369.us, %.lr.ph363.us.preheader ] ; 2 uses
  %.0574360.us = phi i32 [ %i.dl, %.lr.ph363.us ], [ 0, %.lr.ph363.us.preheader ]
  %.0575359.us = phi ptr [ %i.dj, %.lr.ph363.us ], [ %.0454410, %.lr.ph363.us.preheader ] ; 2 uses
  %.1244358.us = phi <8 x float> [ %i.dg, %.lr.ph363.us ], [ %.1244358.us.ph, %.lr.ph363.us.preheader ]
  %.1246357.us = phi <8 x float> [ %i.di, %.lr.ph363.us ], [ %.1246357.us.ph, %.lr.ph363.us.preheader ]
  %i.cs = load <8 x i16>, ptr %.0575359.us, align 1, !tbaa !116 ; 2 uses
  %i.ct = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cu = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.cs, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cv = shufflevector <8 x i16> %i.ct, <8 x i16> %i.cu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cw = bitcast <16 x i16> %i.cv to <8 x float> ; 2 uses
  %i.cx = load float, ptr %.5469361.us, align 1, !tbaa !116
  %i.cy = insertelement <4 x float> poison, float %i.cx, i64 0
  %i.cz = bitcast <4 x float> %i.cy to <8 x i16>  ; 2 uses
  %i.da = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 8, i32 3, i32 9>
  %i.db = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.cz, <8 x i32> <i32 4, i32 8, i32 5, i32 9, i32 6, i32 8, i32 7, i32 9>
  %i.dc = shufflevector <8 x i16> %i.da, <8 x i16> %i.db, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dd = bitcast <16 x i16> %i.dc to <8 x float> ; 2 uses
  %i.de = shufflevector <8 x float> %i.dd, <8 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.df = fmul fast <8 x float> %i.dd, %i.cw
  %i.dg = fadd fast <8 x float> %i.df, %.1244358.us ; 2 uses
  %i.dh = fmul fast <8 x float> %i.de, %i.cw
  %i.di = fadd fast <8 x float> %i.dh, %.1246357.us ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.0575359.us, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %.5469361.us, i64 4
  %i.dl = add nuw nsw i32 %.0574360.us, 1         ; 2 uses
  %exitcond911.not = icmp eq i32 %i.dl, %3
  br i1 %exitcond911.not, label %._crit_edge364.us, label %.lr.ph363.us, !llvm.loop !1188

._crit_edge364.us:                                ; preds = %.lr.ph363.us
  %i.dm = getelementptr i8, ptr %.4468369.us, i64 %i.k
  %scevgep910 = getelementptr i8, ptr %i.dm, i64 4 ; 2 uses
  store <8 x float> %i.dg, ptr %.3459370.us, align 32, !tbaa !116
  %i.dn = getelementptr inbounds nuw i8, ptr %.3459370.us, i64 32
  store <8 x float> %i.di, ptr %i.dn, align 32, !tbaa !116
  %i.do = getelementptr inbounds nuw i8, ptr %.3459370.us, i64 64 ; 2 uses
  %i.dp = add nuw nsw i32 %.2474368.us, 2         ; 3 uses
end_hunk_0
