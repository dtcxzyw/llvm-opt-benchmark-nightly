Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImfFastHuf?download=true
inline.NumInlined: 163
inline.NumDeleted: 117
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN7Imf_3_414FastHufDecoder11buildTablesEPmS1_:bb.a
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !16 ; 2 uses
  %i.di = icmp eq i64 %i.dh, -1
  br i1 %i.di, label %bb.r, label %.critedge.thread.loopexit

bb.r:                                             ; preds = %bb.q
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !16 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, -1
  br i1 %i.dl, label %bb.s, label %.critedge.thread.loopexit

bb.s:                                             ; preds = %bb.r
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !16 ; 2 uses
  %i.do = icmp eq i64 %i.dn, -1
  br i1 %i.do, label %bb.t, label %.critedge.thread.loopexit

bb.t:                                             ; preds = %bb.s
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !16 ; 2 uses
  %i.dr = icmp eq i64 %i.dq, -1
  br i1 %i.dr, label %bb.u, label %.critedge.thread.loopexit

bb.u:                                             ; preds = %bb.t
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !16 ; 2 uses
  %i.du = icmp eq i64 %i.dt, -1
  %spec.select = select i1 %i.du, i64 %i.c, i64 %i.dt
  br label %.critedge.thread.loopexit

.critedge.thread.loopexit:                        ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %.preheader
  %i.dv = phi i64 [ %spec.select, %bb.u ], [ %i.br, %.preheader ], [ %i.cp, %bb.k ], [ %i.cs, %bb.l ], [ %i.cv, %bb.m ], [ %i.cy, %bb.n ], [ %i.db, %bb.o ], [ %i.de, %bb.p ], [ %i.dh, %bb.q ], [ %i.dk, %bb.r ], [ %i.dn, %bb.s ], [ %i.dq, %bb.t ]
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 21448
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !23
  ret void
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN7Imf_3_414FastHufDecoderD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(21456) dereferenceable(21456) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN7Imf_3_414FastHufDecoder7enabledEv() local_unnamed_addr #11 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7Imf_3_414FastHufDecoder6decodeEPKhiPti(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(21456) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %2, 128
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 56) #16 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull @.str.4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN7Iex_3_48InputExcE, ptr nonnull @_ZN7Iex_3_48InputExcD1Ev) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.e:                                             ; preds = %bb.a
  %i.d = add nsw i32 %2, -128                     ; 2 uses
  %i.e = icmp sgt i32 %4, 0
  br i1 %i.e, label %.lr.ph225, label %._crit_edge

.lr.ph225:                                        ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16
  %i.h = tail call i64 @llvm.bswap.i64(i64 %i.g)
  %i.i = load i64, ptr %1, align 8, !tbaa !16
  %i.j = tail call i64 @llvm.bswap.i64(i64 %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 21448
  %i.m = load i64, ptr %i.l, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 17352
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = load i64, ptr %i.r, align 8
  %i.t = load i8, ptr %i.p, align 1               ; 2 uses
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load i32, ptr %i.w, align 4
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load i32, ptr %0, align 8
  %i.ac = tail call i32 @llvm.umax.i32(i32 %i.u, i32 12)
  %umax = add nuw nsw i32 %i.ac, 1                ; 4 uses
  %i.ad = tail call i8 @llvm.umax.i8(i8 %i.t, i8 12)
  %i.ae = zext i8 %i.ad to i64
  %umax236 = add nuw nsw i64 %i.ae, 1             ; 2 uses
  %wide.trip.count = zext nneg i32 %umax to i64
  %exitcond271 = icmp eq i32 %umax, 13
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph225, %bb.at
  %.051224 = phi i32 [ 0, %.lr.ph225 ], [ %.152, %bb.at ] ; 5 uses
  %.053223 = phi i32 [ 64, %.lr.ph225 ], [ %.5, %bb.at ] ; 4 uses
  %.0139222 = phi i32 [ 64, %.lr.ph225 ], [ %.5141, %bb.at ] ; 6 uses
  %.0142221 = phi i64 [ %i.h, %.lr.ph225 ], [ %.5147, %bb.at ] ; 4 uses
  %.0154220 = phi i64 [ %i.j, %.lr.ph225 ], [ %.5159, %bb.at ] ; 5 uses
  %.0163219 = phi ptr [ %i.k, %.lr.ph225 ], [ %.5168, %bb.at ] ; 9 uses
  %.0181218 = phi i32 [ %i.d, %.lr.ph225 ], [ %.5186, %bb.at ] ; 9 uses
  %.not68 = icmp ugt i64 %i.m, %.0154220
  br i1 %.not68, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = lshr i64 %.0154220, 52                  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !17
  %i.ai = zext i8 %i.ah to i32
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.af
  br label %bb.v

bb.h:                                             ; preds = %bb.f
  %i.ak = icmp samesign ult i32 %.053223, 64
  br i1 %i.ak, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.al = sub nuw nsw i32 64, %.053223            ; 4 uses
  %i.am = zext nneg i32 %.053223 to i64
  %i.an = lshr i64 %.0142221, %i.am
  %i.ao = or i64 %i.an, %.0154220                 ; 2 uses
  %i.ap = icmp slt i32 %.0139222, %i.al
  br i1 %i.ap, label %bb.j, label %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit_crit_edge

._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit_crit_edge: ; preds = %bb.i
  %.pre248 = sub nsw i32 %.0139222, %i.al
  br label %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit

bb.j:                                             ; preds = %bb.i
  %i.aq = sub nsw i32 %i.al, %.0139222            ; 2 uses
  %i.ar = icmp sgt i32 %.0181218, 63
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = load i64, ptr %.0163219, align 8, !tbaa !16
  %i.at = tail call i64 @llvm.bswap.i64(i64 %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %.0163219, i64 8
  %i.av = add nsw i32 %.0181218, -64
  br label %.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.aw = icmp sgt i32 %.0181218, 0
  br i1 %i.aw, label %.lr.ph.i.preheader, label %.sink.split.i

.lr.ph.i.preheader:                               ; preds = %bb.l
  %i.ax = add nsw i32 %.0181218, -1
  %i.ay = lshr i32 %i.ax, 3
  %i.az = add nuw nsw i32 %i.ay, 1                ; 2 uses
  %xtraiter = and i32 %i.az, 3                    ; 3 uses
  %i.ba = icmp ult i32 %.0181218, 25
  br i1 %i.ba, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.az, 1073741820
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %i.bb = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bo, %.lr.ph.i ]
  %i.bc = phi ptr [ %.0163219, %.lr.ph.i.preheader.new ], [ %i.bp, %.lr.ph.i ] ; 5 uses
  %.038.i = phi i64 [ 56, %.lr.ph.i.preheader.new ], [ %i.bq, %.lr.ph.i ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !17
  %i.be = zext i8 %i.bd to i64
  %i.bf = shl i64 %i.be, %.038.i
  %i.bg = or i64 %i.bf, %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %5 = load i8, ptr %i.bh, align 1, !tbaa !17
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %8 = load i8, ptr %7, align 1, !tbaa !17
  %9 = zext i8 %8 to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 3
  %i.bj = add nsw i64 %.038.i, -24
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !17
  %i.bl = zext i8 %i.bk to i64
  %i.bm = shl nuw nsw i64 %6, 16
  %10 = shl nuw nsw i64 %9, 8
  %11 = or disjoint i64 %i.bm, %10
  %12 = or disjoint i64 %11, %i.bl
  %i.bn = shl i64 %12, %i.bj
  %i.bo = or i64 %i.bn, %i.bg                     ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 2 uses
  %i.bq = add nsw i64 %.038.i, -32                ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !66

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bo, %._crit_edge.i.loopexit.unr-lcssa ]
  %.epil.init285 = phi ptr [ %.0163219, %.lr.ph.i.preheader ], [ %i.bp, %._crit_edge.i.loopexit.unr-lcssa ]
  %.038.i.epil.init = phi i64 [ 56, %.lr.ph.i.preheader ], [ %i.bq, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod289 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod289)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %i.br = phi i64 [ %i.bw, %.lr.ph.i.epil ], [ %.epil.init, %.lr.ph.i.epil.preheader ]
  %i.bs = phi ptr [ %i.bx, %.lr.ph.i.epil ], [ %.epil.init285, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.038.i.epil = phi i64 [ %i.by, %.lr.ph.i.epil ], [ %.038.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !17
  %i.bu = zext i8 %i.bt to i64
  %i.bv = shl i64 %i.bu, %.038.i.epil
  %i.bw = or i64 %i.bv, %i.br                     ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.by = add nsw i64 %.038.i.epil, -8
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.loopexit, label %.lr.ph.i.epil, !llvm.loop !67

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i.epil, %._crit_edge.i.loopexit.unr-lcssa
  %.lcssa = phi i64 [ %i.bo, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.bw, %.lr.ph.i.epil ]
  %scevgep = getelementptr i8, ptr %.0163219, i64 1
  %i.bz = add nsw i32 %.0181218, -1
  %i.ca = lshr i32 %i.bz, 3
  %i.cb = zext nneg i32 %i.ca to i64
  %scevgep235 = getelementptr i8, ptr %scevgep, i64 %i.cb
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.l, %._crit_edge.i.loopexit, %bb.k
  %.8189 = phi i32 [ %i.av, %bb.k ], [ 0, %bb.l ], [ 0, %._crit_edge.i.loopexit ]
  %.8171 = phi ptr [ %i.au, %bb.k ], [ %.0163219, %bb.l ], [ %scevgep235, %._crit_edge.i.loopexit ]
  %i.cc = phi i64 [ %i.at, %bb.k ], [ 0, %bb.l ], [ %.lcssa, %._crit_edge.i.loopexit ] ; 2 uses
  %i.cd = sub nsw i32 64, %i.aq                   ; 2 uses
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = lshr i64 %i.cc, %i.ce
  %i.cg = or i64 %i.cf, %i.ao
  br label %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit

_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit: ; preds = %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit_crit_edge, %.sink.split.i
  %.pre-phi = phi i32 [ %.pre248, %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit_crit_edge ], [ %i.cd, %.sink.split.i ]
  %.6187 = phi i32 [ %.0181218, %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit_crit_edge ], [ %.8189, %.sink.split.i ]
  %.6169 = phi ptr [ %.0163219, %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit_crit_edge ], [ %.8171, %.sink.split.i ]
  %.6160 = phi i64 [ %i.ao, %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit_crit_edge ], [ %i.cg, %.sink.split.i ]
  %.6148 = phi i64 [ %.0142221, %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit_crit_edge ], [ %i.cc, %.sink.split.i ]
  %i.ch = phi i32 [ %.0139222, %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit_crit_edge ], [ 64, %.sink.split.i ]
  %.034.i = phi i32 [ %i.al, %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit_crit_edge ], [ %i.aq, %.sink.split.i ] ; 2 uses
  %.not.i = icmp sgt i32 %i.ch, %.034.i
  %i.ci = zext nneg i32 %.034.i to i64
  %i.cj = shl i64 %.6148, %i.ci
  %storemerge.i = select i1 %.not.i, i64 %i.cj, i64 0
  br label %bb.m

bb.m:                                             ; preds = %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit, %bb.h
  %.1182 = phi i32 [ %.6187, %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit ], [ %.0181218, %bb.h ]
  %.1164 = phi ptr [ %.6169, %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit ], [ %.0163219, %bb.h ]
  %.1155 = phi i64 [ %.6160, %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit ], [ %.0154220, %bb.h ] ; 4 uses
  %.1143 = phi i64 [ %storemerge.i, %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit ], [ %.0142221, %bb.h ]
  %.1 = phi i32 [ %.pre-phi, %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit ], [ %.0139222, %bb.h ]
  %i.ck = icmp ugt i64 %i.s, %.1155
  %.not329 = xor i1 %i.ck, true                   ; 3 uses
  %brmerge = select i1 %.not329, i1 true, i1 %exitcond271
  %.mux = select i1 %.not329, i32 13, i32 %umax
  %.mux330 = select i1 %.not329, i64 13, i64 %umax236
  br i1 %brmerge, label %.critedge, label %.lr.ph273

.lr.ph:                                           ; preds = %.lr.ph273
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %.critedge, label %.lr.ph273, !llvm.loop !68

.lr.ph273:                                        ; preds = %bb.m, %.lr.ph
  %indvars.iv272 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 13, %bb.m ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv272, 1 ; 5 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !16
  %i.cn = icmp ugt i64 %i.cm, %.1155
  br i1 %i.cn, label %.lr.ph, label %.critedge.loopexit.split.loop.exit, !llvm.loop !68

.critedge.loopexit.split.loop.exit:               ; preds = %.lr.ph273
  %indvars.le = trunc i64 %indvars.iv.next to i32
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.m, %.critedge.loopexit.split.loop.exit
  %.049.lcssa = phi i32 [ %.mux, %bb.m ], [ %indvars.le, %.critedge.loopexit.split.loop.exit ], [ %umax, %.lr.ph ] ; 3 uses
  %.lcssa200 = phi i64 [ %.mux330, %bb.m ], [ %indvars.iv.next, %.critedge.loopexit.split.loop.exit ], [ %umax236, %.lr.ph ]
  %i.co = icmp samesign ugt i32 %.049.lcssa, %i.u
  br i1 %i.co, label %bb.n, label %bb.q

bb.n:                                             ; preds = %.critedge
  %i.cp = tail call ptr @__cxa_allocate_exception(i64 56) #16 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.cp, ptr noundef nonnull @.str.5)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__cxa_throw(ptr nonnull %i.cp, ptr nonnull @_ZTIN7Iex_3_48InputExcE, ptr nonnull @_ZN7Iex_3_48InputExcD1Ev) #18
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.q:                                             ; preds = %.critedge
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.lcssa200
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !16
  %i.ct = sub nsw i32 64, %.049.lcssa
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = lshr i64 %.1155, %i.cu
  %i.cw = add i64 %i.cs, %i.cv                    ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.y
  br i1 %i.cx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.cw
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.cz = tail call ptr @__cxa_allocate_exception(i64 56) #16 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.cz, ptr noundef nonnull @.str.5)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @__cxa_throw(ptr nonnull %i.cz, ptr nonnull @_ZTIN7Iex_3_48InputExcE, ptr nonnull @_ZN7Iex_3_48InputExcD1Ev) #18
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.v:                                             ; preds = %bb.r, %bb.g
  %.2183 = phi i32 [ %.1182, %bb.r ], [ %.0181218, %bb.g ] ; 9 uses
  %.2165 = phi ptr [ %.1164, %bb.r ], [ %.0163219, %bb.g ] ; 9 uses
  %.2156 = phi i64 [ %.1155, %bb.r ], [ %.0154220, %bb.g ]
  %.2144 = phi i64 [ %.1143, %bb.r ], [ %.0142221, %bb.g ] ; 4 uses
  %.2 = phi i32 [ %.1, %bb.r ], [ %.0139222, %bb.g ] ; 6 uses
  %.255 = phi i32 [ 64, %bb.r ], [ %.053223, %bb.g ]
  %.150 = phi i32 [ %.049.lcssa, %bb.r ], [ %i.ai, %bb.g ] ; 2 uses
  %.048.in = phi ptr [ %i.cy, %bb.r ], [ %i.aj, %bb.g ]
  %.048 = load i32, ptr %.048.in, align 4, !tbaa !22 ; 2 uses
  %i.db = zext nneg i32 %.150 to i64
  %i.dc = shl i64 %.2156, %i.db                   ; 3 uses
  %i.dd = sub nsw i32 %.255, %.150                ; 5 uses
  %i.de = icmp eq i32 %.048, %i.ab
  br i1 %i.de, label %bb.w, label %bb.an

bb.w:                                             ; preds = %bb.v
  %i.df = icmp slt i32 %i.dd, 8
  br i1 %i.df, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.dg = sub nsw i32 64, %i.dd                   ; 4 uses
  %i.dh = zext nneg i32 %i.dd to i64
  %i.di = lshr i64 %.2144, %i.dh
  %i.dj = or i64 %i.di, %i.dc                     ; 2 uses
  %i.dk = icmp slt i32 %.2, %i.dg
  br i1 %i.dk, label %bb.y, label %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit88_crit_edge

._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit88_crit_edge: ; preds = %bb.x
  %.pre249 = sub nsw i32 %.2, %i.dg
  br label %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit88

bb.y:                                             ; preds = %bb.x
  %i.dl = sub nsw i32 %i.dg, %.2                  ; 2 uses
  %i.dm = icmp sgt i32 %.2183, 63
  br i1 %i.dm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dn = load i64, ptr %.2165, align 8, !tbaa !16
  %i.do = tail call i64 @llvm.bswap.i64(i64 %i.dn)
  %i.dp = getelementptr inbounds nuw i8, ptr %.2165, i64 8
  %i.dq = add nsw i32 %.2183, -64
  br label %.sink.split.i82

bb.aa:                                            ; preds = %bb.y
  %i.dr = icmp sgt i32 %.2183, 0
  br i1 %i.dr, label %.lr.ph.i85.preheader, label %.sink.split.i82

.lr.ph.i85.preheader:                             ; preds = %bb.aa
  %i.ds = add nsw i32 %.2183, -1
  %i.dt = lshr i32 %i.ds, 3
  %i.du = add nuw nsw i32 %i.dt, 1                ; 2 uses
  %xtraiter290 = and i32 %i.du, 3                 ; 3 uses
  %i.dv = icmp ult i32 %.2183, 25
  br i1 %i.dv, label %.lr.ph.i85.epil.preheader, label %.lr.ph.i85.preheader.new

.lr.ph.i85.preheader.new:                         ; preds = %.lr.ph.i85.preheader
  %unroll_iter301 = and i32 %i.du, 1073741820
  br label %.lr.ph.i85

.lr.ph.i85:                                       ; preds = %.lr.ph.i85, %.lr.ph.i85.preheader.new
  %i.dw = phi i64 [ 0, %.lr.ph.i85.preheader.new ], [ %i.ej, %.lr.ph.i85 ]
  %i.dx = phi ptr [ %.2165, %.lr.ph.i85.preheader.new ], [ %i.ek, %.lr.ph.i85 ] ; 5 uses
  %.038.i87 = phi i64 [ 56, %.lr.ph.i85.preheader.new ], [ %i.el, %.lr.ph.i85 ] ; 3 uses
  %niter302 = phi i32 [ 0, %.lr.ph.i85.preheader.new ], [ %niter302.next.3, %.lr.ph.i85 ]
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !17
  %i.dz = zext i8 %i.dy to i64
  %i.ea = shl i64 %i.dz, %.038.i87
  %i.eb = or i64 %i.ea, %i.dw
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  %13 = load i8, ptr %i.ec, align 1, !tbaa !17
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  %16 = load i8, ptr %15, align 1, !tbaa !17
  %17 = zext i8 %16 to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 3
  %i.ee = add nsw i64 %.038.i87, -24
  %i.ef = load i8, ptr %i.ed, align 1, !tbaa !17
  %i.eg = zext i8 %i.ef to i64
  %i.eh = shl nuw nsw i64 %14, 16
  %18 = shl nuw nsw i64 %17, 8
  %19 = or disjoint i64 %i.eh, %18
  %20 = or disjoint i64 %19, %i.eg
  %i.ei = shl i64 %20, %i.ee
  %i.ej = or i64 %i.ei, %i.eb                     ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dx, i64 4 ; 2 uses
  %i.el = add nsw i64 %.038.i87, -32              ; 2 uses
  %niter302.next.3 = add i32 %niter302, 4         ; 2 uses
  %niter302.ncmp.3.not = icmp eq i32 %niter302.next.3, %unroll_iter301
  br i1 %niter302.ncmp.3.not, label %._crit_edge.i79.loopexit.unr-lcssa, label %.lr.ph.i85, !llvm.loop !66

._crit_edge.i79.loopexit.unr-lcssa:               ; preds = %.lr.ph.i85
  %lcmp.mod298.not = icmp eq i32 %xtraiter290, 0
  br i1 %lcmp.mod298.not, label %._crit_edge.i79.loopexit, label %.lr.ph.i85.epil.preheader

.lr.ph.i85.epil.preheader:                        ; preds = %._crit_edge.i79.loopexit.unr-lcssa, %.lr.ph.i85.preheader
  %.epil.init293 = phi i64 [ 0, %.lr.ph.i85.preheader ], [ %i.ej, %._crit_edge.i79.loopexit.unr-lcssa ]
  %.epil.init295 = phi ptr [ %.2165, %.lr.ph.i85.preheader ], [ %i.ek, %._crit_edge.i79.loopexit.unr-lcssa ]
  %.038.i87.epil.init = phi i64 [ 56, %.lr.ph.i85.preheader ], [ %i.el, %._crit_edge.i79.loopexit.unr-lcssa ]
  %lcmp.mod300 = icmp ne i32 %xtraiter290, 0
  tail call void @llvm.assume(i1 %lcmp.mod300)
  br label %.lr.ph.i85.epil

.lr.ph.i85.epil:                                  ; preds = %.lr.ph.i85.epil, %.lr.ph.i85.epil.preheader
  %i.em = phi i64 [ %i.er, %.lr.ph.i85.epil ], [ %.epil.init293, %.lr.ph.i85.epil.preheader ]
  %i.en = phi ptr [ %i.es, %.lr.ph.i85.epil ], [ %.epil.init295, %.lr.ph.i85.epil.preheader ] ; 2 uses
  %.038.i87.epil = phi i64 [ %i.et, %.lr.ph.i85.epil ], [ %.038.i87.epil.init, %.lr.ph.i85.epil.preheader ] ; 2 uses
  %epil.iter291 = phi i32 [ %epil.iter291.next, %.lr.ph.i85.epil ], [ 0, %.lr.ph.i85.epil.preheader ]
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !17
  %i.ep = zext i8 %i.eo to i64
  %i.eq = shl i64 %i.ep, %.038.i87.epil
  %i.er = or i64 %i.eq, %i.em                     ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  %i.et = add nsw i64 %.038.i87.epil, -8
  %epil.iter291.next = add i32 %epil.iter291, 1   ; 2 uses
  %epil.iter291.cmp.not = icmp eq i32 %epil.iter291.next, %xtraiter290
  br i1 %epil.iter291.cmp.not, label %._crit_edge.i79.loopexit, label %.lr.ph.i85.epil, !llvm.loop !69

._crit_edge.i79.loopexit:                         ; preds = %.lr.ph.i85.epil, %._crit_edge.i79.loopexit.unr-lcssa
  %.lcssa282 = phi i64 [ %i.ej, %._crit_edge.i79.loopexit.unr-lcssa ], [ %i.er, %.lr.ph.i85.epil ]
  %scevgep238 = getelementptr i8, ptr %.2165, i64 1
  %i.eu = add nsw i32 %.2183, -1
  %i.ev = lshr i32 %i.eu, 3
  %i.ew = zext nneg i32 %i.ev to i64
  %scevgep239 = getelementptr i8, ptr %scevgep238, i64 %i.ew
  br label %.sink.split.i82

.sink.split.i82:                                  ; preds = %bb.aa, %._crit_edge.i79.loopexit, %bb.z
  %.11192 = phi i32 [ %i.dq, %bb.z ], [ 0, %bb.aa ], [ 0, %._crit_edge.i79.loopexit ]
  %.12175 = phi ptr [ %i.dp, %bb.z ], [ %.2165, %bb.aa ], [ %scevgep239, %._crit_edge.i79.loopexit ]
  %i.ex = phi i64 [ %i.do, %bb.z ], [ 0, %bb.aa ], [ %.lcssa282, %._crit_edge.i79.loopexit ] ; 2 uses
  %i.ey = sub nsw i32 64, %i.dl                   ; 2 uses
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = lshr i64 %i.ex, %i.ez
  %i.fb = or i64 %i.fa, %i.dj
  br label %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit88

_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit88: ; preds = %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit88_crit_edge, %.sink.split.i82
  %.pre-phi250 = phi i32 [ %.pre249, %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit88_crit_edge ], [ %i.ey, %.sink.split.i82 ]
  %.9190 = phi i32 [ %.2183, %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit88_crit_edge ], [ %.11192, %.sink.split.i82 ]
  %.10173 = phi ptr [ %.2165, %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit88_crit_edge ], [ %.12175, %.sink.split.i82 ]
  %.7161 = phi i64 [ %i.dj, %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit88_crit_edge ], [ %i.fb, %.sink.split.i82 ]
  %.10152 = phi i64 [ %.2144, %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit88_crit_edge ], [ %i.ex, %.sink.split.i82 ]
  %i.fc = phi i32 [ %.2, %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit88_crit_edge ], [ 64, %.sink.split.i82 ]
  %.034.i75 = phi i32 [ %i.dg, %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit88_crit_edge ], [ %i.dl, %.sink.split.i82 ] ; 2 uses
  %.not.i76 = icmp sgt i32 %i.fc, %.034.i75
  %i.fd = zext nneg i32 %.034.i75 to i64
  %i.fe = shl i64 %.10152, %i.fd
  %storemerge.i77 = select i1 %.not.i76, i64 %i.fe, i64 0
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit88, %bb.w
  %.3184 = phi i32 [ %.9190, %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit88 ], [ %.2183, %bb.w ]
  %.3166 = phi ptr [ %.10173, %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit88 ], [ %.2165, %bb.w ]
  %.3157 = phi i64 [ %.7161, %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit88 ], [ %i.dc, %bb.w ] ; 5 uses
  %.3145 = phi i64 [ %storemerge.i77, %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit88 ], [ %.2144, %bb.w ]
  %.3 = phi i32 [ %.pre-phi250, %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit88 ], [ %.2, %bb.w ]
  %.356 = phi i32 [ 64, %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit88 ], [ %i.dd, %bb.w ]
  %i.ff = lshr i64 %.3157, 56                     ; 7 uses
  %i.fg = icmp slt i32 %.051224, 1
  br i1 %i.fg, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.fh = tail call ptr @__cxa_allocate_exception(i64 56) #16 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.fh, ptr noundef nonnull @.str.6)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @__cxa_throw(ptr nonnull %i.fh, ptr nonnull @_ZTIN7Iex_3_48InputExcE, ptr nonnull @_ZN7Iex_3_48InputExcD1Ev) #18
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.af:                                            ; preds = %bb.ab
  %i.fj = trunc nuw nsw i64 %i.ff to i32
  %i.fk = add nuw nsw i32 %.051224, %i.fj         ; 2 uses
  %i.fl = icmp sgt i32 %i.fk, %4
  br i1 %i.fl, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.fm = tail call ptr @__cxa_allocate_exception(i64 56) #16 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.fm, ptr noundef nonnull @.str.7)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  tail call void @__cxa_throw(ptr nonnull %i.fm, ptr nonnull @_ZTIN7Iex_3_48InputExcE, ptr nonnull @_ZN7Iex_3_48InputExcD1Ev) #18
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.aj:                                            ; preds = %bb.af
  %i.fo = icmp eq i64 %i.ff, 0
  br i1 %i.fo, label %bb.ak, label %iter.check

iter.check:                                       ; preds = %bb.aj
  %i.fp = zext nneg i32 %.051224 to i64           ; 2 uses
  %i.fq = getelementptr [2 x i8], ptr %3, i64 %i.fp
  %i.fr = getelementptr i8, ptr %i.fq, i64 -2
  %.pre = load i16, ptr %i.fr, align 2, !tbaa !76 ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.fp ; 3 uses
  %min.iters.check = icmp ult i64 %.3157, 288230376151711744
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check274 = icmp ult i64 %.3157, 1152921504606846976
  br i1 %min.iters.check274, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.ff, 240                     ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.pre, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.fs, align 2, !tbaa !76
  store <8 x i16> %broadcast.splat, ptr %i.ft, align 2, !tbaa !76
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fu = icmp eq i64 %index.next, %n.vec
  br i1 %i.fu, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ff, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.fv = and i64 %.3157, 864691128455135232
  %min.epilog.iters.check = icmp eq i64 %i.fv, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !77

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec275 = and i64 %i.ff, 252                  ; 3 uses
  %broadcast.splatinsert276 = insertelement <4 x i16> poison, i16 %.pre, i64 0
  %broadcast.splat277 = shufflevector <4 x i16> %broadcast.splatinsert276, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index278 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next279, %vec.epilog.vector.body ] ; 2 uses
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %index278
  store <4 x i16> %broadcast.splat277, ptr %i.fw, align 2, !tbaa !76
  %index.next279 = add nuw i64 %index278, 4       ; 2 uses
  %i.fx = icmp eq i64 %index.next279, %n.vec275
  br i1 %i.fx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !71

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n280 = icmp eq i64 %i.ff, %n.vec275
  br i1 %cmp.n280, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv240.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec275, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

bb.ak:                                            ; preds = %bb.aj
  %i.fy = tail call ptr @__cxa_allocate_exception(i64 56) #16 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.fy, ptr noundef nonnull @.str.8)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak
  tail call void @__cxa_throw(ptr nonnull %i.fy, ptr nonnull @_ZTIN7Iex_3_48InputExcE, ptr nonnull @_ZN7Iex_3_48InputExcD1Ev) #18
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.ga = shl i64 %.3157, 8
  %i.gb = add nsw i32 %.356, -8
  br label %bb.ao

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv240 = phi i64 [ %indvars.iv.next241, %vec.epilog.scalar.ph ], [ %indvars.iv240.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %gep = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %indvars.iv240
  store i16 %.pre, ptr %gep, align 2, !tbaa !76
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 2 uses
  %exitcond245.not = icmp eq i64 %indvars.iv.next241, %i.ff
  br i1 %exitcond245.not, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !72

bb.an:                                            ; preds = %bb.v
  %i.gc = trunc i32 %.048 to i16
  %i.gd = sext i32 %.051224 to i64
  %i.ge = getelementptr inbounds [2 x i8], ptr %3, i64 %i.gd
  store i16 %i.gc, ptr %i.ge, align 2, !tbaa !76
  %i.gf = add nsw i32 %.051224, 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.loopexit
  %.4185 = phi i32 [ %.3184, %.loopexit ], [ %.2183, %bb.an ] ; 8 uses
  %.4167 = phi ptr [ %.3166, %.loopexit ], [ %.2165, %bb.an ] ; 8 uses
  %.4158 = phi i64 [ %i.ga, %.loopexit ], [ %i.dc, %bb.an ] ; 2 uses
  %.4146 = phi i64 [ %.3145, %.loopexit ], [ %.2144, %bb.an ] ; 3 uses
  %.4140 = phi i32 [ %.3, %.loopexit ], [ %.2, %bb.an ] ; 5 uses
  %.4 = phi i32 [ %i.gb, %.loopexit ], [ %i.dd, %bb.an ] ; 4 uses
  %.152 = phi i32 [ %i.fk, %.loopexit ], [ %i.gf, %bb.an ] ; 2 uses
  %i.gg = icmp slt i32 %.4, 12
  br i1 %i.gg, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.gh = sub nsw i32 64, %.4                     ; 4 uses
  %i.gi = zext nneg i32 %.4 to i64
  %i.gj = lshr i64 %.4146, %i.gi
  %i.gk = or i64 %i.gj, %.4158                    ; 2 uses
  %i.gl = icmp slt i32 %.4140, %i.gh
  br i1 %i.gl, label %bb.aq, label %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102_crit_edge

._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102_crit_edge: ; preds = %bb.ap
  %.pre251 = sub nsw i32 %.4140, %i.gh
  br label %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102

bb.aq:                                            ; preds = %bb.ap
  %i.gm = sub nsw i32 %i.gh, %.4140               ; 2 uses
  %i.gn = icmp sgt i32 %.4185, 63
  br i1 %i.gn, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.go = load i64, ptr %.4167, align 8, !tbaa !16
  %i.gp = tail call i64 @llvm.bswap.i64(i64 %i.go)
  %i.gq = getelementptr inbounds nuw i8, ptr %.4167, i64 8
  %i.gr = add nsw i32 %.4185, -64
  br label %.sink.split.i96

bb.as:                                            ; preds = %bb.aq
  %i.gs = icmp sgt i32 %.4185, 0
  br i1 %i.gs, label %.lr.ph.i99.preheader, label %.sink.split.i96

.lr.ph.i99.preheader:                             ; preds = %bb.as
  %i.gt = add nsw i32 %.4185, -1
  %i.gu = lshr i32 %i.gt, 3
  %i.gv = add nuw nsw i32 %i.gu, 1                ; 2 uses
  %xtraiter303 = and i32 %i.gv, 3                 ; 3 uses
  %i.gw = icmp ult i32 %.4185, 25
  br i1 %i.gw, label %.lr.ph.i99.epil.preheader, label %.lr.ph.i99.preheader.new

.lr.ph.i99.preheader.new:                         ; preds = %.lr.ph.i99.preheader
  %unroll_iter314 = and i32 %i.gv, 1073741820
  br label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %.lr.ph.i99, %.lr.ph.i99.preheader.new
  %i.gx = phi i64 [ 0, %.lr.ph.i99.preheader.new ], [ %i.hk, %.lr.ph.i99 ]
  %i.gy = phi ptr [ %.4167, %.lr.ph.i99.preheader.new ], [ %i.hl, %.lr.ph.i99 ] ; 5 uses
  %.038.i101 = phi i64 [ 56, %.lr.ph.i99.preheader.new ], [ %i.hm, %.lr.ph.i99 ] ; 3 uses
  %niter315 = phi i32 [ 0, %.lr.ph.i99.preheader.new ], [ %niter315.next.3, %.lr.ph.i99 ]
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !17
  %i.ha = zext i8 %i.gz to i64
  %i.hb = shl i64 %i.ha, %.038.i101
  %i.hc = or i64 %i.hb, %i.gx
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 1
  %21 = load i8, ptr %i.hd, align 1, !tbaa !17
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds nuw i8, ptr %i.gy, i64 2
  %24 = load i8, ptr %23, align 1, !tbaa !17
  %25 = zext i8 %24 to i64
  %i.he = getelementptr inbounds nuw i8, ptr %i.gy, i64 3
  %i.hf = add nsw i64 %.038.i101, -24
  %i.hg = load i8, ptr %i.he, align 1, !tbaa !17
  %i.hh = zext i8 %i.hg to i64
  %i.hi = shl nuw nsw i64 %22, 16
  %26 = shl nuw nsw i64 %25, 8
  %27 = or disjoint i64 %i.hi, %26
  %28 = or disjoint i64 %27, %i.hh
  %i.hj = shl i64 %28, %i.hf
  %i.hk = or i64 %i.hj, %i.hc                     ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gy, i64 4 ; 2 uses
  %i.hm = add nsw i64 %.038.i101, -32             ; 2 uses
  %niter315.next.3 = add i32 %niter315, 4         ; 2 uses
  %niter315.ncmp.3.not = icmp eq i32 %niter315.next.3, %unroll_iter314
  br i1 %niter315.ncmp.3.not, label %._crit_edge.i93.loopexit.unr-lcssa, label %.lr.ph.i99, !llvm.loop !66

._crit_edge.i93.loopexit.unr-lcssa:               ; preds = %.lr.ph.i99
  %lcmp.mod311.not = icmp eq i32 %xtraiter303, 0
  br i1 %lcmp.mod311.not, label %._crit_edge.i93.loopexit, label %.lr.ph.i99.epil.preheader

.lr.ph.i99.epil.preheader:                        ; preds = %._crit_edge.i93.loopexit.unr-lcssa, %.lr.ph.i99.preheader
  %.epil.init306 = phi i64 [ 0, %.lr.ph.i99.preheader ], [ %i.hk, %._crit_edge.i93.loopexit.unr-lcssa ]
  %.epil.init308 = phi ptr [ %.4167, %.lr.ph.i99.preheader ], [ %i.hl, %._crit_edge.i93.loopexit.unr-lcssa ]
  %.038.i101.epil.init = phi i64 [ 56, %.lr.ph.i99.preheader ], [ %i.hm, %._crit_edge.i93.loopexit.unr-lcssa ]
  %lcmp.mod313 = icmp ne i32 %xtraiter303, 0
  tail call void @llvm.assume(i1 %lcmp.mod313)
  br label %.lr.ph.i99.epil

.lr.ph.i99.epil:                                  ; preds = %.lr.ph.i99.epil, %.lr.ph.i99.epil.preheader
  %i.hn = phi i64 [ %i.hs, %.lr.ph.i99.epil ], [ %.epil.init306, %.lr.ph.i99.epil.preheader ]
  %i.ho = phi ptr [ %i.ht, %.lr.ph.i99.epil ], [ %.epil.init308, %.lr.ph.i99.epil.preheader ] ; 2 uses
  %.038.i101.epil = phi i64 [ %i.hu, %.lr.ph.i99.epil ], [ %.038.i101.epil.init, %.lr.ph.i99.epil.preheader ] ; 2 uses
  %epil.iter304 = phi i32 [ %epil.iter304.next, %.lr.ph.i99.epil ], [ 0, %.lr.ph.i99.epil.preheader ]
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !17
  %i.hq = zext i8 %i.hp to i64
  %i.hr = shl i64 %i.hq, %.038.i101.epil
  %i.hs = or i64 %i.hr, %i.hn                     ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 1
  %i.hu = add nsw i64 %.038.i101.epil, -8
  %epil.iter304.next = add i32 %epil.iter304, 1   ; 2 uses
  %epil.iter304.cmp.not = icmp eq i32 %epil.iter304.next, %xtraiter303
  br i1 %epil.iter304.cmp.not, label %._crit_edge.i93.loopexit, label %.lr.ph.i99.epil, !llvm.loop !73

._crit_edge.i93.loopexit:                         ; preds = %.lr.ph.i99.epil, %._crit_edge.i93.loopexit.unr-lcssa
  %.lcssa283 = phi i64 [ %i.hk, %._crit_edge.i93.loopexit.unr-lcssa ], [ %i.hs, %.lr.ph.i99.epil ]
  %scevgep246 = getelementptr i8, ptr %.4167, i64 1
  %i.hv = add nsw i32 %.4185, -1
  %i.hw = lshr i32 %i.hv, 3
  %i.hx = zext nneg i32 %i.hw to i64
  %scevgep247 = getelementptr i8, ptr %scevgep246, i64 %i.hx
  br label %.sink.split.i96

.sink.split.i96:                                  ; preds = %bb.as, %._crit_edge.i93.loopexit, %bb.ar
  %.14195 = phi i32 [ %i.gr, %bb.ar ], [ 0, %bb.as ], [ 0, %._crit_edge.i93.loopexit ]
  %.16179 = phi ptr [ %i.gq, %bb.ar ], [ %.4167, %bb.as ], [ %scevgep247, %._crit_edge.i93.loopexit ]
  %i.hy = phi i64 [ %i.gp, %bb.ar ], [ 0, %bb.as ], [ %.lcssa283, %._crit_edge.i93.loopexit ] ; 2 uses
  %i.hz = sub nsw i32 64, %i.gm                   ; 2 uses
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = lshr i64 %i.hy, %i.ia
  %i.ic = or i64 %i.ib, %i.gk
  br label %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102

_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102: ; preds = %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102_crit_edge, %.sink.split.i96
  %.pre-phi252 = phi i32 [ %.pre251, %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102_crit_edge ], [ %i.hz, %.sink.split.i96 ]
  %.12193 = phi i32 [ %.4185, %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102_crit_edge ], [ %.14195, %.sink.split.i96 ]
  %.14177 = phi ptr [ %.4167, %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102_crit_edge ], [ %.16179, %.sink.split.i96 ]
  %.8162 = phi i64 [ %i.gk, %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102_crit_edge ], [ %i.ic, %.sink.split.i96 ]
  %.14 = phi i64 [ %.4146, %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102_crit_edge ], [ %i.hy, %.sink.split.i96 ]
  %i.id = phi i32 [ %.4140, %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102_crit_edge ], [ 64, %.sink.split.i96 ]
  %.034.i89 = phi i32 [ %i.gh, %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102_crit_edge ], [ %i.gm, %.sink.split.i96 ] ; 2 uses
  %.not.i90 = icmp sgt i32 %i.id, %.034.i89
  %i.ie = zext nneg i32 %.034.i89 to i64
  %i.if = shl i64 %.14, %i.ie
  %storemerge.i91 = select i1 %.not.i90, i64 %i.if, i64 0
  br label %bb.at

bb.at:                                            ; preds = %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102, %bb.ao
  %.5186 = phi i32 [ %.12193, %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102 ], [ %.4185, %bb.ao ] ; 2 uses
  %.5168 = phi ptr [ %.14177, %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102 ], [ %.4167, %bb.ao ]
  %.5159 = phi i64 [ %.8162, %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102 ], [ %.4158, %bb.ao ]
  %.5147 = phi i64 [ %storemerge.i91, %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102 ], [ %.4146, %bb.ao ]
  %.5141 = phi i32 [ %.pre-phi252, %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102 ], [ %.4140, %bb.ao ]
  %.5 = phi i32 [ 64, %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102 ], [ %.4, %bb.ao ]
  %i.ig = icmp slt i32 %.152, %4
  br i1 %i.ig, label %bb.f, label %._crit_edge, !llvm.loop !74

._crit_edge:                                      ; preds = %bb.at, %bb.e
  %.0181.lcssa = phi i32 [ %i.d, %bb.e ], [ %.5186, %bb.at ]
  %.not = icmp eq i32 %.0181.lcssa, 0
  br i1 %.not, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %._crit_edge
  %i.ih = tail call ptr @__cxa_allocate_exception(i64 56) #16 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.ih, ptr noundef nonnull @.str.9)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  tail call void @__cxa_throw(ptr nonnull %i.ih, ptr nonnull @_ZTIN7Iex_3_48InputExcE, ptr nonnull @_ZN7Iex_3_48InputExcD1Ev) #18
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ax:                                            ; preds = %._crit_edge
  ret void

bb.ay:                                            ; preds = %bb.aw, %bb.ae, %bb.ai, %bb.am, %bb.u, %bb.p, %bb.d
  %.sink = phi ptr [ %i.ih, %bb.aw ], [ %i.fh, %bb.ae ], [ %i.fm, %bb.ai ], [ %i.fy, %bb.am ], [ %i.cz, %bb.u ], [ %i.cp, %bb.p ], [ %i.b, %bb.d ]
  %.pn73 = phi { ptr, i32 } [ %i.ii, %bb.aw ], [ %i.fi, %bb.ae ], [ %i.fn, %bb.ai ], [ %i.fz, %bb.am ], [ %i.da, %bb.u ], [ %i.cq, %bb.p ], [ %i.c, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #16
  resume { ptr, i32 } %.pn73
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorImNS_9allocatorImEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.10) #18
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef %0) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  invoke void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #16
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12length_error, i64 16), ptr %0, align 8, !tbaa !79
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

declare void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #16 ; 2 uses
  tail call void @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #16
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt20bad_array_new_length, ptr nonnull @_ZNSt20bad_array_new_lengthD1Ev) #18
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt20bad_array_new_lengthD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v24i64(<24 x i64>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v32i64(<32 x i64>) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
