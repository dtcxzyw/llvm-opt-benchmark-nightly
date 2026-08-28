Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/lstm_x86_fma?download=true
inline.NumInlined: 28
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK4ncnn12LSTM_x86_fma12forward_int8ERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
bb.nn:                                            ; preds = %bb.nk
  %i.avm = landingpad { ptr, i32 }
          catch ptr null
  %i.avn = extractvalue { ptr, i32 } %i.avm, 0
  call void @__clang_call_terminate(ptr %i.avn) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit115:                         ; preds = %bb.ni, %bb.nh, %bb.nk, %bb.nl, %bb.nm
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %i.avo = load ptr, ptr %i.h, align 8, !tbaa !11 ; 2 uses
  %.not.i346 = icmp eq ptr %i.avo, null
  br i1 %.not.i346, label %_ZN4ncnn3MatD2Ev.exit114, label %bb.no

bb.no:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit115
  %i.avp = atomicrmw add ptr %i.avo, i32 -1 acq_rel, align 4
  %i.avq = icmp eq i32 %i.avp, 1
  br i1 %i.avq, label %bb.np, label %_ZN4ncnn3MatD2Ev.exit114

bb.np:                                            ; preds = %bb.no
  %i.avr = load ptr, ptr %i.k, align 16, !tbaa !17 ; 3 uses
  %.not3.i347 = icmp eq ptr %i.avr, null
  %i.avs = load ptr, ptr %4, align 16, !tbaa !18  ; 3 uses
  br i1 %.not3.i347, label %bb.nr, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  %i.avt = load ptr, ptr %i.avr, align 8, !tbaa !9
  %i.avu = getelementptr inbounds nuw i8, ptr %i.avt, i64 24
  %i.avv = load ptr, ptr %i.avu, align 8
  invoke void %i.avv(ptr noundef nonnull align 8 dereferenceable(8) %i.avr, ptr noundef %i.avs)
          to label %_ZN4ncnn3MatD2Ev.exit114 unwind label %bb.nt, !inline_history !19

bb.nr:                                            ; preds = %bb.np
  %.not.i355 = icmp eq ptr %i.avs, null
  br i1 %.not.i355, label %_ZN4ncnn3MatD2Ev.exit114, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  call void @free(ptr noundef nonnull %i.avs) #9
  br label %_ZN4ncnn3MatD2Ev.exit114

bb.nt:                                            ; preds = %bb.nq
  %i.avw = landingpad { ptr, i32 }
          catch ptr null
  %i.avx = extractvalue { ptr, i32 } %i.avw, 0
  call void @__clang_call_terminate(ptr %i.avx) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit114:                         ; preds = %bb.no, %_ZN4ncnn3MatD2Ev.exit115, %bb.nq, %bb.nr, %bb.ns
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  resume { ptr, i32 } %.pn110.pn.pn
}

declare void @_ZNK4ncnn3Mat5cloneEPNS_9AllocatorE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv() local_unnamed_addr #1

declare void @_ZN4ncnn34lstm_transform_weight_int8_avxvnniERKNS_3MatES2_S2_S2_S2_RS0_S3_S3_iiiiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn20cpu_support_x86_avx2Ev() local_unnamed_addr #1

declare void @_ZN4ncnn31lstm_transform_weight_int8_avx2ERKNS_3MatES2_S2_S2_S2_RS0_S3_S3_iiiiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26lstm_transform_weight_int8ERKNS_3MatES2_S2_S2_S2_RS0_S3_S3_iiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !38     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !38
  %i.h = load i32, ptr %0, align 4, !tbaa !38     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !38
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !38
  %i.k = load i32, ptr %i.a, align 4, !tbaa !38   ; 2 uses
  %.not519 = icmp sgt i32 %i.k, %i.j
  br i1 %.not519, label %._crit_edge521, label %_ZNK4ncnn3Mat7channelEi.exit359.lr.ph

_ZNK4ncnn3Mat7channelEi.exit359.lr.ph:            ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ag = sext i32 %i.k to i64
  %.pre = load i32, ptr %11, align 4, !tbaa !38
  br label %_ZNK4ncnn3Mat7channelEi.exit359

_ZNK4ncnn3Mat7channelEi.exit359:                  ; preds = %_ZNK4ncnn3Mat7channelEi.exit359.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %i.ah = phi i32 [ %i.j, %_ZNK4ncnn3Mat7channelEi.exit359.lr.ph ], [ %i.qk, %_ZN4ncnn3MatD2Ev.exit ]
  %i.ai = phi i32 [ %.pre, %_ZNK4ncnn3Mat7channelEi.exit359.lr.ph ], [ %i.ql, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv559 = phi i64 [ %i.ag, %_ZNK4ncnn3Mat7channelEi.exit359.lr.ph ], [ %indvars.iv.next560, %_ZN4ncnn3MatD2Ev.exit ] ; 10 uses
  %i.aj = load ptr, ptr %3, align 8, !tbaa !18, !noalias !359
  %i.ak = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !359
  %i.al = mul i64 %i.ak, %indvars.iv559
  %i.am = load i64, ptr %i.n, align 8, !tbaa !53, !noalias !359 ; 2 uses
  %i.an = mul i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an ; 4 uses
  %i.ap = load ptr, ptr %4, align 8, !tbaa !18, !noalias !362
  %i.aq = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !362
  %i.ar = mul i64 %i.aq, %indvars.iv559
  %i.as = load i64, ptr %i.q, align 8, !tbaa !53, !noalias !362 ; 2 uses
  %i.at = mul i64 %i.ar, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.at ; 4 uses
  %i.av = load i32, ptr %i.r, align 4, !tbaa !62, !noalias !365
  %i.aw = load ptr, ptr %5, align 8, !tbaa !18, !noalias !365
  %i.ax = load i64, ptr %i.s, align 8, !tbaa !20, !noalias !365
  %i.ay = mul i64 %i.ax, %indvars.iv559
  %i.az = load i64, ptr %i.t, align 8, !tbaa !53, !noalias !365 ; 2 uses
  %i.ba = mul i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ba ; 4 uses
  %i.bc = sext i32 %i.av to i64
  %i.bd = load ptr, ptr %6, align 8, !tbaa !18
  %i.be = load i32, ptr %i.u, align 4, !tbaa !62
  %i.bf = sext i32 %i.be to i64
  %i.bg = mul nsw i64 %indvars.iv559, %i.bf
  %i.bh = load i64, ptr %i.v, align 8, !tbaa !53
  %i.bi = mul i64 %i.bg, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bi ; 4 uses
  %i.bk = load ptr, ptr %7, align 8, !tbaa !18
  %i.bl = load i32, ptr %i.w, align 4, !tbaa !62
  %i.bm = sext i32 %i.bl to i64
  %i.bn = mul nsw i64 %indvars.iv559, %i.bm
  %i.bo = load i64, ptr %i.x, align 8, !tbaa !53
  %i.bp = mul i64 %i.bn, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bp ; 4 uses
  %i.br = load ptr, ptr %8, align 8, !tbaa !18, !noalias !368
  %i.bs = load i64, ptr %i.z, align 8, !tbaa !20, !noalias !368
  %i.bt = mul i64 %i.bs, %indvars.iv559
  %i.bu = load i64, ptr %i.aa, align 8, !tbaa !53, !noalias !368 ; 2 uses
  %i.bv = mul i64 %i.bt, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bv
  %i.bx = load ptr, ptr %10, align 8, !tbaa !18, !noalias !371
  %i.by = load i64, ptr %i.ae, align 8, !tbaa !20, !noalias !371
  %i.bz = mul i64 %i.by, %indvars.iv559
  %i.ca = load i64, ptr %i.af, align 8, !tbaa !53, !noalias !371 ; 2 uses
  %i.cb = mul i64 %i.bz, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cb
  %i.cd = mul i64 %i.az, %i.bc                    ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.cd
  %i.cf = shl i64 %i.cd, 1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.cf
  %i.ch = mul i64 %i.cd, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ch
  %i.cj = icmp sgt i32 %i.ai, 0
  br i1 %i.cj, label %.lr.ph518, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph518:                                        ; preds = %_ZNK4ncnn3Mat7channelEi.exit359
  %i.ck = load i32, ptr %i.ad, align 4, !tbaa !62, !noalias !371
  %i.cl = sext i32 %i.ck to i64
  %i.cm = load ptr, ptr %9, align 8, !tbaa !18, !noalias !374
  %i.cn = load i64, ptr %i.ab, align 8, !tbaa !20, !noalias !374
  %i.co = mul i64 %i.cn, %indvars.iv559
  %i.cp = load i64, ptr %i.ac, align 8, !tbaa !53, !noalias !374
  %i.cq = mul i64 %i.co, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cq
  %i.cs = load i32, ptr %i.y, align 4, !tbaa !62, !noalias !368
  %i.ct = sext i32 %i.cs to i64
  %i.cu = load i32, ptr %i.o, align 4, !tbaa !62, !noalias !362
  %i.cv = sext i32 %i.cu to i64
  %i.cw = load i32, ptr %i.l, align 4, !tbaa !62, !noalias !359
  %i.cx = sext i32 %i.cw to i64
  %i.cy = mul i64 %i.am, %i.cx                    ; 4 uses
  %i.cz = mul i64 %i.as, %i.cv                    ; 4 uses
  %i.da = mul i64 %i.bu, %i.ct
  %i.db = mul i64 %i.ca, %i.cl
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph518, %._crit_edge
  %indvars.iv556 = phi i64 [ 0, %.lr.ph518 ], [ %indvars.iv.next557, %._crit_edge ] ; 14 uses
  %i.dc = phi i32 [ %i.ai, %.lr.ph518 ], [ %i.ox, %._crit_edge ] ; 3 uses
  %.0311516 = phi ptr [ %i.cr, %.lr.ph518 ], [ %i.do, %._crit_edge ] ; 5 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv556
  %i.de = load float, ptr %i.dd, align 4, !tbaa !56
  store float %i.de, ptr %.0311516, align 4, !tbaa !56
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv556
  %i.dg = load float, ptr %i.df, align 4, !tbaa !56
  %i.dh = getelementptr inbounds nuw i8, ptr %.0311516, i64 4
  store float %i.dg, ptr %i.dh, align 4, !tbaa !56
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv556
  %i.dj = load float, ptr %i.di, align 4, !tbaa !56
  %i.dk = getelementptr inbounds nuw i8, ptr %.0311516, i64 8
  store float %i.dj, ptr %i.dk, align 4, !tbaa !56
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv556
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !56
  %i.dn = getelementptr inbounds nuw i8, ptr %.0311516, i64 12
  store float %i.dm, ptr %i.dn, align 4, !tbaa !56
  %i.do = getelementptr inbounds nuw i8, ptr %.0311516, i64 16
  %i.dp = mul i64 %i.cy, %indvars.iv556
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.dp ; 8 uses
  %i.dr = trunc nuw nsw i64 %indvars.iv556 to i32 ; 4 uses
  %i.ds = add nsw i32 %i.dc, %i.dr
  %i.dt = sext i32 %i.ds to i64                   ; 2 uses
  %i.du = mul i64 %i.cy, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.du ; 8 uses
  %i.dw = shl nuw nsw i32 %i.dc, 1
  %14 = zext nneg i32 %i.dw to i64
  %15 = add nuw nsw i64 %indvars.iv556, %14       ; 2 uses
  %i.dx = mul i64 %i.cy, %15
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.dx ; 8 uses
  %i.dz = mul nuw nsw i32 %i.dc, 3
  %16 = zext nneg i32 %i.dz to i64
  %17 = add nuw nsw i64 %indvars.iv556, %16       ; 2 uses
  %i.ea = mul i64 %i.cy, %17
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ea ; 8 uses
  %i.ec = mul i64 %i.cz, %indvars.iv556
  %i.ed = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ec ; 8 uses
  %i.ee = mul i64 %i.cz, %i.dt
  %i.ef = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ee ; 8 uses
  %i.eg = mul i64 %i.cz, %15
  %i.eh = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.eg ; 8 uses
  %i.ei = mul i64 %i.cz, %17
  %i.ej = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ei ; 8 uses
  %i.ek = mul i64 %i.da, %indvars.iv556
  %i.el = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.ek ; 2 uses
  %i.em = mul i64 %i.db, %indvars.iv556
  %i.en = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.em ; 8 uses
  %i.eo = load i32, ptr %12, align 4, !tbaa !38   ; 2 uses
  %i.ep = icmp sgt i32 %i.eo, 7
  br i1 %i.ep, label %.lr.ph, label %.preheader480

.preheader480.loopexit:                           ; preds = %.lr.ph
  %i.eq = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader480

.preheader480:                                    ; preds = %.preheader480.loopexit, %bb.c
  %i.er = phi i32 [ %i.eo, %bb.c ], [ %i.fj, %.preheader480.loopexit ] ; 2 uses
  %.0302.lcssa = phi ptr [ %i.el, %bb.c ], [ %i.fh, %.preheader480.loopexit ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.c ], [ %i.eq, %.preheader480.loopexit ] ; 3 uses
  %i.es = or disjoint i32 %.0.lcssa, 3            ; 2 uses
  %i.et = icmp slt i32 %i.es, %i.er
  br i1 %i.et, label %.lr.ph486.preheader, label %.preheader479

.lr.ph486.preheader:                              ; preds = %.preheader480
  %i.eu = zext nneg i32 %.0.lcssa to i64
  %i.ev = zext nneg i32 %i.es to i64
  br label %.lr.ph486

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.c ] ; 5 uses
  %.0302481 = phi ptr [ %i.fh, %.lr.ph ], [ %i.el, %bb.c ] ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv
  %i.ex = load i64, ptr %i.ew, align 1, !tbaa !288
  store i64 %i.ex, ptr %.0302481, align 1, !tbaa !288
  %i.ey = getelementptr inbounds nuw i8, ptr %.0302481, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv
  %i.fa = load i64, ptr %i.ez, align 1, !tbaa !288
  store i64 %i.fa, ptr %i.ey, align 1, !tbaa !288
  %i.fb = getelementptr inbounds nuw i8, ptr %.0302481, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dy, i64 %indvars.iv
  %i.fd = load i64, ptr %i.fc, align 1, !tbaa !288
  store i64 %i.fd, ptr %i.fb, align 1, !tbaa !288
  %i.fe = getelementptr inbounds nuw i8, ptr %.0302481, i64 24
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eb, i64 %indvars.iv
  %i.fg = load i64, ptr %i.ff, align 1, !tbaa !288
  store i64 %i.fg, ptr %i.fe, align 1, !tbaa !288
  %i.fh = getelementptr inbounds nuw i8, ptr %.0302481, i64 32 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 3 uses
  %i.fi = or disjoint i64 %indvars.iv.next, 7
  %i.fj = load i32, ptr %12, align 4, !tbaa !38   ; 2 uses
  %i.fk = sext i32 %i.fj to i64
  %i.fl = icmp slt i64 %i.fi, %i.fk
  br i1 %i.fl, label %.lr.ph, label %.preheader480.loopexit, !llvm.loop !377

.preheader479.loopexit:                           ; preds = %.lr.ph486
  %i.fm = trunc nuw nsw i64 %indvars.iv.next536 to i32
  br label %.preheader479

.preheader479:                                    ; preds = %.preheader479.loopexit, %.preheader480
  %i.fn = phi i32 [ %i.er, %.preheader480 ], [ %i.hs, %.preheader479.loopexit ] ; 2 uses
  %.1303.lcssa = phi ptr [ %.0302.lcssa, %.preheader480 ], [ %i.hq, %.preheader479.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader480 ], [ %i.fm, %.preheader479.loopexit ] ; 3 uses
  %i.fo = or disjoint i32 %.1.lcssa, 1            ; 2 uses
  %i.fp = icmp slt i32 %i.fo, %i.fn
  br i1 %i.fp, label %.lr.ph491.preheader, label %.preheader478

.lr.ph491.preheader:                              ; preds = %.preheader479
  %i.fq = zext nneg i32 %.1.lcssa to i64
  %i.fr = zext nneg i32 %i.fo to i64
  br label %.lr.ph491

.lr.ph486:                                        ; preds = %.lr.ph486.preheader, %.lr.ph486
  %indvars.iv535 = phi i64 [ %i.eu, %.lr.ph486.preheader ], [ %indvars.iv.next536, %.lr.ph486 ] ; 7 uses
  %i.fs = phi i64 [ %i.ev, %.lr.ph486.preheader ], [ %i.hr, %.lr.ph486 ] ; 4 uses
  %.1303484 = phi ptr [ %.0302.lcssa, %.lr.ph486.preheader ], [ %i.hq, %.lr.ph486 ] ; 17 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv535
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !288
  store i8 %i.fu, ptr %.1303484, align 1, !tbaa !288
  %i.fv = or disjoint i64 %indvars.iv535, 1       ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !288
  %i.fy = getelementptr inbounds nuw i8, ptr %.1303484, i64 1
  store i8 %i.fx, ptr %i.fy, align 1, !tbaa !288
  %i.fz = or disjoint i64 %indvars.iv535, 2       ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !288
  %i.gc = getelementptr inbounds nuw i8, ptr %.1303484, i64 2
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !288
  %i.gd = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.fs
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !288
  %i.gf = getelementptr inbounds nuw i8, ptr %.1303484, i64 3
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !288
  %i.gg = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv535
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !288
  %i.gi = getelementptr inbounds nuw i8, ptr %.1303484, i64 4
  store i8 %i.gh, ptr %i.gi, align 1, !tbaa !288
  %i.gj = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.fv
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !288
  %i.gl = getelementptr inbounds nuw i8, ptr %.1303484, i64 5
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !288
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.fz
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !288
  %i.go = getelementptr inbounds nuw i8, ptr %.1303484, i64 6
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !288
  %i.gp = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.fs
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !288
  %i.gr = getelementptr inbounds nuw i8, ptr %.1303484, i64 7
  store i8 %i.gq, ptr %i.gr, align 1, !tbaa !288
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dy, i64 %indvars.iv535
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !288
  %i.gu = getelementptr inbounds nuw i8, ptr %.1303484, i64 8
  store i8 %i.gt, ptr %i.gu, align 1, !tbaa !288
  %i.gv = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.fv
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !288
  %i.gx = getelementptr inbounds nuw i8, ptr %.1303484, i64 9
  store i8 %i.gw, ptr %i.gx, align 1, !tbaa !288
  %i.gy = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.fz
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !288
  %i.ha = getelementptr inbounds nuw i8, ptr %.1303484, i64 10
  store i8 %i.gz, ptr %i.ha, align 1, !tbaa !288
  %i.hb = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.fs
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !288
  %i.hd = getelementptr inbounds nuw i8, ptr %.1303484, i64 11
  store i8 %i.hc, ptr %i.hd, align 1, !tbaa !288
  %i.he = getelementptr inbounds nuw i8, ptr %i.eb, i64 %indvars.iv535
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !288
  %i.hg = getelementptr inbounds nuw i8, ptr %.1303484, i64 12
  store i8 %i.hf, ptr %i.hg, align 1, !tbaa !288
  %i.hh = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.fv
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !288
  %i.hj = getelementptr inbounds nuw i8, ptr %.1303484, i64 13
  store i8 %i.hi, ptr %i.hj, align 1, !tbaa !288
  %i.hk = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.fz
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !288
  %i.hm = getelementptr inbounds nuw i8, ptr %.1303484, i64 14
  store i8 %i.hl, ptr %i.hm, align 1, !tbaa !288
  %i.hn = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.fs
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !288
  %i.hp = getelementptr inbounds nuw i8, ptr %.1303484, i64 15
  store i8 %i.ho, ptr %i.hp, align 1, !tbaa !288
  %i.hq = getelementptr inbounds nuw i8, ptr %.1303484, i64 16 ; 2 uses
  %indvars.iv.next536 = add nuw nsw i64 %indvars.iv535, 4 ; 3 uses
  %i.hr = or disjoint i64 %indvars.iv.next536, 3  ; 2 uses
  %i.hs = load i32, ptr %12, align 4, !tbaa !38   ; 2 uses
  %i.ht = trunc nuw i64 %i.hr to i32
  %i.hu = icmp sgt i32 %i.hs, %i.ht
  br i1 %i.hu, label %.lr.ph486, label %.preheader479.loopexit, !llvm.loop !378

.preheader478.loopexit:                           ; preds = %.lr.ph491
  %i.hv = trunc nuw i64 %indvars.iv.next539 to i32
  br label %.preheader478

.preheader478:                                    ; preds = %.preheader478.loopexit, %.preheader479
  %i.hw = phi i32 [ %i.fn, %.preheader479 ], [ %i.iz, %.preheader478.loopexit ]
  %.2304.lcssa = phi ptr [ %.1303.lcssa, %.preheader479 ], [ %i.ix, %.preheader478.loopexit ] ; 2 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader479 ], [ %i.hv, %.preheader478.loopexit ] ; 2 uses
  %i.hx = icmp slt i32 %.2.lcssa, %i.hw
  br i1 %i.hx, label %.lr.ph496.preheader, label %.preheader477

.lr.ph496.preheader:                              ; preds = %.preheader478
  %i.hy = zext i32 %.2.lcssa to i64
  br label %.lr.ph496

.lr.ph491:                                        ; preds = %.lr.ph491.preheader, %.lr.ph491
  %indvars.iv538 = phi i64 [ %i.fq, %.lr.ph491.preheader ], [ %indvars.iv.next539, %.lr.ph491 ] ; 5 uses
  %i.hz = phi i64 [ %i.fr, %.lr.ph491.preheader ], [ %i.iy, %.lr.ph491 ] ; 4 uses
  %.2304489 = phi ptr [ %.1303.lcssa, %.lr.ph491.preheader ], [ %i.ix, %.lr.ph491 ] ; 9 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv538
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !288
  store i8 %i.ib, ptr %.2304489, align 1, !tbaa !288
  %i.ic = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.hz
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !288
  %i.ie = getelementptr inbounds nuw i8, ptr %.2304489, i64 1
  store i8 %i.id, ptr %i.ie, align 1, !tbaa !288
  %i.if = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv538
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !288
  %i.ih = getelementptr inbounds nuw i8, ptr %.2304489, i64 2
  store i8 %i.ig, ptr %i.ih, align 1, !tbaa !288
  %i.ii = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.hz
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !288
  %i.ik = getelementptr inbounds nuw i8, ptr %.2304489, i64 3
  store i8 %i.ij, ptr %i.ik, align 1, !tbaa !288
  %i.il = getelementptr inbounds nuw i8, ptr %i.dy, i64 %indvars.iv538
  %i.im = load i8, ptr %i.il, align 1, !tbaa !288
  %i.in = getelementptr inbounds nuw i8, ptr %.2304489, i64 4
  store i8 %i.im, ptr %i.in, align 1, !tbaa !288
  %i.io = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.hz
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !288
  %i.iq = getelementptr inbounds nuw i8, ptr %.2304489, i64 5
  store i8 %i.ip, ptr %i.iq, align 1, !tbaa !288
  %i.ir = getelementptr inbounds nuw i8, ptr %i.eb, i64 %indvars.iv538
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !288
  %i.it = getelementptr inbounds nuw i8, ptr %.2304489, i64 6
end_hunk_0
