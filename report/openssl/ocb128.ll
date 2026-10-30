Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ocb128?download=true
inline.NumInlined: 17
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@CRYPTO_ocb128_encrypt:bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %.387, i64 %i.bx
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !23
  %i.ce = or disjoint i64 %.08.i, 3               ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.391, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !23
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 %i.ce
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !23
  %i.cj = xor i8 %i.ci, %i.cg
  %i.ck = getelementptr inbounds nuw i8, ptr %.387, i64 %i.ce
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !23
  %i.cl = add nuw nsw i64 %.08.i, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %ocb_block_xor.exit.unr-lcssa, label %bb.h, !llvm.loop !1

ocb_block_xor.exit.unr-lcssa:                     ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ocb_block_xor.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %ocb_block_xor.exit.unr-lcssa, %bb.g
  %.08.i.epil.init = phi i64 [ 0, %bb.g ], [ %i.cl, %ocb_block_xor.exit.unr-lcssa ]
  %lcmp.mod124 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod124)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.08.i.epil = phi i64 [ %.08.i.epil.init, %.epil.preheader ], [ %i.cs, %bb.i ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.391, i64 %.08.i.epil
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !23
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 %.08.i.epil
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !23
  %i.cq = xor i8 %i.cp, %i.cn
  %i.cr = getelementptr inbounds nuw i8, ptr %.387, i64 %.08.i.epil
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !23
  %i.cs = add nuw nsw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %ocb_block_xor.exit, label %bb.i, !llvm.loop !32

ocb_block_xor.exit:                               ; preds = %bb.i, %ocb_block_xor.exit.unr-lcssa
  %i.ct = sub nuw nsw i64 16, %i.ba
  %i.cu = getelementptr i8, ptr %5, i64 %i.ba
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cu, i8 0, i64 %i.ct, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %5, ptr nonnull align 1 %.391, i64 %i.ba, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 %i.ba
  store i8 -128, ptr %i.cv, align 1, !tbaa !23
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.cx = load <2 x i64>, ptr %5, align 16, !tbaa !23
  %i.cy = load <2 x i64>, ptr %i.cw, align 8, !tbaa !23
  %i.cz = xor <2 x i64> %i.cy, %i.cx
  store <2 x i64> %i.cz, ptr %i.cw, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %bb.j

bb.j:                                             ; preds = %ocb_block_xor.exit, %.loopexit
  store i64 %i.d, ptr %i.b, align 8, !tbaa !26
  br label %.critedge

.critedge103:                                     ; preds = %ocb_ntz.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %.critedge

.critedge:                                        ; preds = %.preheader.preheader, %.critedge103, %bb.j
  %.3 = phi i32 [ 1, %bb.j ], [ 0, %.preheader.preheader ], [ 0, %.critedge103 ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CRYPTO_ocb128_decrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %union.OCB_BLOCK, align 16          ; 12 uses
  %5 = alloca %union.OCB_BLOCK, align 16          ; 12 uses
  %i.a = lshr i64 %3, 4                           ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !26   ; 3 uses
  %i.d = add i64 %i.c, %i.a                       ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %.not101 = icmp eq ptr %i.f, null
  br i1 %.not101, label %bb.d, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %i.g = lshr i64 %i.d, 1
  %i.h = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 false)
  %i.i = sub nuw nsw i64 64, %i.h
  %i.j = tail call fastcc ptr @ocb_lookup_l(ptr noundef nonnull %0, i64 noundef %i.i)
  %.not105 = icmp eq ptr %i.j, null
  br i1 %.not105, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.preheader.preheader
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = load i64, ptr %i.b, align 8, !tbaa !26
  %i.o = add i64 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void %i.k(ptr noundef %1, ptr noundef %2, i64 noundef %i.a, ptr noundef %i.m, i64 noundef %i.o, ptr noundef nonnull %i.p, ptr noundef %i.r, ptr noundef nonnull %i.s) #7
  %i.t = and i64 %3, -16                          ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %i.t
  br label %bb.h

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %.083112 = add i64 %i.c, 1                      ; 2 uses
  %.not102113 = icmp ugt i64 %.083112, %i.d
  br i1 %.not102113, label %.thread109, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  br label %bb.e

.thread109:                                       ; preds = %bb.f, %bb.d
  %.193.lcssa = phi ptr [ %1, %bb.d ], [ %i.ap, %bb.f ]
  %.188.lcssa = phi ptr [ %2, %bb.d ], [ %i.bb, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.083117 = phi i64 [ %.083112, %.lr.ph ], [ %.083, %bb.f ] ; 3 uses
  %.083.in116 = phi i64 [ %i.c, %.lr.ph ], [ %.083117, %bb.f ]
  %.188115 = phi ptr [ %2, %.lr.ph ], [ %i.bb, %bb.f ] ; 2 uses
  %.193114 = phi ptr [ %1, %.lr.ph ], [ %i.ap, %bb.f ] ; 2 uses
  %i.ac = and i64 %.083.in116, 1
  %.not5.i.not = icmp eq i64 %i.ac, 0
  br i1 %.not5.i.not, label %ocb_ntz.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.07.i = phi i32 [ %i.ae, %.lr.ph.i ], [ 0, %bb.e ]
  %.046.i = phi i64 [ %i.ad, %.lr.ph.i ], [ %.083117, %bb.e ] ; 2 uses
  %i.ad = lshr exact i64 %.046.i, 1
  %i.ae = add i32 %.07.i, 1                       ; 2 uses
  %i.af = and i64 %.046.i, 2
  %.not.i = icmp eq i64 %i.af, 0
  br i1 %.not.i, label %.lr.ph.i, label %ocb_ntz.exit.loopexit, !llvm.loop !0

ocb_ntz.exit.loopexit:                            ; preds = %.lr.ph.i
  %i.ag = zext i32 %i.ae to i64
  br label %ocb_ntz.exit

ocb_ntz.exit:                                     ; preds = %ocb_ntz.exit.loopexit, %bb.e
  %.0.lcssa.i = phi i64 [ 0, %bb.e ], [ %i.ag, %ocb_ntz.exit.loopexit ]
  %i.ah = call fastcc ptr @ocb_lookup_l(ptr noundef nonnull %0, i64 noundef %.0.lcssa.i) ; 3 uses
  %.not103 = icmp eq ptr %i.ah, null
  br i1 %.not103, label %bb.g, label %bb.f

bb.f:                                             ; preds = %ocb_ntz.exit
  %i.ai = load i64, ptr %i.w, align 8, !tbaa !23
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !23
  %i.ak = xor i64 %i.aj, %i.ai                    ; 2 uses
  store i64 %i.ak, ptr %i.w, align 8, !tbaa !23
  %i.al = load i64, ptr %i.x, align 8, !tbaa !23
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !23
  %i.ao = xor i64 %i.an, %i.al                    ; 2 uses
  store i64 %i.ao, ptr %i.x, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(16) %.193114, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.193114, i64 16 ; 2 uses
  %i.aq = load i64, ptr %4, align 16, !tbaa !23
  %i.ar = xor i64 %i.aq, %i.ak
  store i64 %i.ar, ptr %4, align 16, !tbaa !23
  %i.as = load i64, ptr %i.y, align 8, !tbaa !23
  %i.at = xor i64 %i.as, %i.ao
  store i64 %i.at, ptr %i.y, align 8, !tbaa !23
  %i.au = load ptr, ptr %i.z, align 8, !tbaa !19
  %i.av = load ptr, ptr %i.aa, align 8, !tbaa !22
  call void %i.au(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %i.av) #7
  %i.aw = load <2 x i64>, ptr %i.w, align 8, !tbaa !23
  %i.ax = load <2 x i64>, ptr %4, align 16, !tbaa !23
  %i.ay = xor <2 x i64> %i.ax, %i.aw              ; 2 uses
  store <2 x i64> %i.ay, ptr %4, align 16, !tbaa !23
  %i.az = load <2 x i64>, ptr %i.ab, align 8, !tbaa !23
  %i.ba = xor <2 x i64> %i.az, %i.ay
  store <2 x i64> %i.ba, ptr %i.ab, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.188115, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.188115, i64 16 ; 2 uses
  %.083 = add i64 %.083117, 1                     ; 2 uses
  %.not102 = icmp ugt i64 %.083, %i.d
  br i1 %.not102, label %.thread109, label %bb.e, !llvm.loop !33

bb.g:                                             ; preds = %ocb_ntz.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %.critedge

bb.h:                                             ; preds = %.thread109, %bb.c
  %.496 = phi ptr [ %i.u, %bb.c ], [ %.193.lcssa, %.thread109 ] ; 5 uses
  %.491 = phi ptr [ %i.v, %bb.c ], [ %.188.lcssa, %.thread109 ] ; 6 uses
  %i.bc = and i64 %3, 15                          ; 6 uses
  %.not106 = icmp eq i64 %i.bc, 0
  br i1 %.not106, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bf = load <2 x i64>, ptr %i.bd, align 8, !tbaa !23
  %i.bg = load <2 x i64>, ptr %i.be, align 8, !tbaa !23
  %i.bh = xor <2 x i64> %i.bg, %i.bf
  store <2 x i64> %i.bh, ptr %i.bd, align 8, !tbaa !23
  %i.bi = load ptr, ptr %0, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !21
  call void %i.bi(ptr noundef nonnull %i.bd, ptr noundef nonnull %5, ptr noundef %i.bk) #7
  %xtraiter = and i64 %3, 3                       ; 3 uses
  %i.bl = icmp samesign ult i64 %i.bc, 4
  br i1 %i.bl, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.i
  %unroll_iter = and i64 %3, 12
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.new
  %.08.i = phi i64 [ 0, %.new ], [ %i.cn, %bb.j ] ; 7 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.j ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.496, i64 %.08.i
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !23
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 %.08.i
  %i.bp = load i8, ptr %i.bo, align 4, !tbaa !23
  %i.bq = xor i8 %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %.491, i64 %.08.i
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !23
  %i.bs = or disjoint i64 %.08.i, 1               ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.496, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !23
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 %i.bs
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !23
  %i.bx = xor i8 %i.bw, %i.bu
  %i.by = getelementptr inbounds nuw i8, ptr %.491, i64 %i.bs
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !23
  %i.bz = or disjoint i64 %.08.i, 2               ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.496, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !23
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 %i.bz
  %i.cd = load i8, ptr %i.cc, align 2, !tbaa !23
  %i.ce = xor i8 %i.cd, %i.cb
  %i.cf = getelementptr inbounds nuw i8, ptr %.491, i64 %i.bz
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !23
  %i.cg = or disjoint i64 %.08.i, 3               ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.496, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !23
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 %i.cg
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !23
  %i.cl = xor i8 %i.ck, %i.ci
  %i.cm = getelementptr inbounds nuw i8, ptr %.491, i64 %i.cg
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !23
  %i.cn = add nuw nsw i64 %.08.i, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %ocb_block_xor.exit.unr-lcssa, label %bb.j, !llvm.loop !1

ocb_block_xor.exit.unr-lcssa:                     ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ocb_block_xor.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %ocb_block_xor.exit.unr-lcssa, %bb.i
  %.08.i.epil.init = phi i64 [ 0, %bb.i ], [ %i.cn, %ocb_block_xor.exit.unr-lcssa ]
  %lcmp.mod130 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod130)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %.08.i.epil = phi i64 [ %.08.i.epil.init, %.epil.preheader ], [ %i.cu, %bb.k ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.co = getelementptr inbounds nuw i8, ptr %.496, i64 %.08.i.epil
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !23
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 %.08.i.epil
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !23
  %i.cs = xor i8 %i.cr, %i.cp
  %i.ct = getelementptr inbounds nuw i8, ptr %.491, i64 %.08.i.epil
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !23
  %i.cu = add nuw nsw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %ocb_block_xor.exit, label %bb.k, !llvm.loop !34

ocb_block_xor.exit:                               ; preds = %bb.k, %ocb_block_xor.exit.unr-lcssa
  %6 = sub nuw nsw i64 16, %i.bc
  %7 = getelementptr i8, ptr %5, i64 %i.bc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %7, i8 0, i64 %6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %5, ptr nonnull align 1 %.491, i64 %i.bc, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 %i.bc
  store i8 -128, ptr %i.cv, align 1, !tbaa !23
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.cx = load <2 x i64>, ptr %5, align 16, !tbaa !23
  %i.cy = load <2 x i64>, ptr %i.cw, align 8, !tbaa !23
  %i.cz = xor <2 x i64> %i.cy, %i.cx
  store <2 x i64> %i.cz, ptr %i.cw, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %bb.l

bb.l:                                             ; preds = %ocb_block_xor.exit, %bb.h
  store i64 %i.d, ptr %i.b, align 8, !tbaa !26
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %.preheader.preheader, %bb.l
  %.4 = phi i32 [ 1, %bb.l ], [ 0, %.preheader.preheader ], [ 0, %bb.g ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define i32 @CRYPTO_ocb128_finish(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %union.OCB_BLOCK, align 16          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.a = add i64 %2, -17
  %or.cond.i = icmp ult i64 %i.a, -16
  br i1 %or.cond.i, label %ocb_finish.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load <2 x i64>, ptr %i.b, align 8, !tbaa !23
  %i.f = load <2 x i64>, ptr %i.c, align 8, !tbaa !23
  %i.g = xor <2 x i64> %i.f, %i.e
  %i.h = load <2 x i64>, ptr %i.d, align 8, !tbaa !23
  %i.i = xor <2 x i64> %i.g, %i.h
  store <2 x i64> %i.i, ptr %3, align 16, !tbaa !23
  %i.j = load ptr, ptr %0, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  call void %i.j(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef %i.l) #7, !inline_history !2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load <2 x i64>, ptr %3, align 16, !tbaa !23
  %i.o = load <2 x i64>, ptr %i.m, align 8, !tbaa !23
  %i.p = xor <2 x i64> %i.o, %i.n
  store <2 x i64> %i.p, ptr %3, align 16, !tbaa !23
  %i.q = call i32 @CRYPTO_memcmp(ptr noundef nonnull %3, ptr noundef %1, i64 noundef %2) #7
  br label %ocb_finish.exit

ocb_finish.exit:                                  ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.q, %bb.b ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @CRYPTO_ocb128_tag(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %union.OCB_BLOCK, align 16          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.a = add i64 %2, -17
  %or.cond.i = icmp ult i64 %i.a, -16
  br i1 %or.cond.i, label %ocb_finish.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load <2 x i64>, ptr %i.b, align 8, !tbaa !23
  %i.f = load <2 x i64>, ptr %i.c, align 8, !tbaa !23
  %i.g = xor <2 x i64> %i.f, %i.e
  %i.h = load <2 x i64>, ptr %i.d, align 8, !tbaa !23
  %i.i = xor <2 x i64> %i.g, %i.h
  store <2 x i64> %i.i, ptr %3, align 16, !tbaa !23
  %i.j = load ptr, ptr %0, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  call void %i.j(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef %i.l) #7, !inline_history !2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load <2 x i64>, ptr %3, align 16, !tbaa !23
  %i.o = load <2 x i64>, ptr %i.m, align 8, !tbaa !23
  %i.p = xor <2 x i64> %i.o, %i.n
  store <2 x i64> %i.p, ptr %3, align 16, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 16 %3, i64 %2, i1 false)
  br label %ocb_finish.exit

ocb_finish.exit:                                  ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ -1, %bb.a ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define void @CRYPTO_ocb128_cleanup(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16
  %i.e = shl i64 %i.d, 4
  tail call void @CRYPTO_clear_free(ptr noundef %i.b, i64 noundef %i.e, ptr noundef nonnull @.str, i32 noundef 558) #7
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %0, i64 noundef 176) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @CRYPTO_clear_free(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @CRYPTO_realloc_array(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CRYPTO_memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.fshl.v8i8(<8 x i8>, <8 x i8>, <8 x i8>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !25}
!1 = distinct !{!1, !25}
!2 = distinct !{null}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!"long long", !7, i64 0}
!14 = !{!"", !13, i64 0, !13, i64 8, !7, i64 16, !7, i64 32, !7, i64 48, !7, i64 64}
!15 = !{!"ocb128_context", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !12, i64 40, !12, i64 48, !7, i64 56, !7, i64 72, !11, i64 88, !14, i64 96}
!16 = !{!15, !12, i64 48}
!17 = !{!15, !11, i64 88}
!18 = !{!15, !11, i64 0}
!19 = !{!15, !11, i64 8}
!20 = !{!15, !11, i64 32}
!21 = !{!15, !11, i64 16}
!22 = !{!15, !11, i64 24}
!23 = !{!7, !7, i64 0}
!24 = !{!15, !12, i64 40}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!15, !13, i64 104}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = distinct !{!28, !25}
!29 = !{!15, !13, i64 96}
!30 = distinct !{!30, !25}
!31 = distinct !{!31, !25}
!32 = distinct !{!32, !27}
!33 = distinct !{!33, !25}
!34 = distinct !{!34, !27}
end_hunk_0
