Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/aes?download=true
inline.NumInlined: 97
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 70
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@wc_AesCbcDecrypt:bb.a
  %wide.load127 = load <2 x i64>, ptr %next.gep126, align 8, !tbaa !20, !alias.scope !61
  %wide.load128 = load <2 x i64>, ptr %i.bfm, align 8, !tbaa !20, !alias.scope !61
  %i.bfn = getelementptr i8, ptr %next.gep125, i64 16 ; 2 uses
  %wide.load129 = load <2 x i64>, ptr %next.gep125, align 8, !tbaa !20, !alias.scope !62, !noalias !61
  %wide.load130 = load <2 x i64>, ptr %i.bfn, align 8, !tbaa !20, !alias.scope !62, !noalias !61
  %i.bfo = xor <2 x i64> %wide.load129, %wide.load127
  %i.bfp = xor <2 x i64> %wide.load130, %wide.load128
  store <2 x i64> %i.bfo, ptr %next.gep125, align 8, !tbaa !20, !alias.scope !62, !noalias !61
  store <2 x i64> %i.bfp, ptr %i.bfn, align 8, !tbaa !20, !alias.scope !62, !noalias !61
  %index.next131 = add nuw i64 %index124, 4       ; 2 uses
  %i.bfq = icmp eq i64 %index.next131, %n.vec122
  br i1 %i.bfq, label %middle.block132, label %vector.body123, !llvm.loop !52

middle.block132:                                  ; preds = %vector.body123
  %cmp.n133 = icmp eq i64 %i.bfd, %n.vec122
  br i1 %cmp.n133, label %XorWords.exit.i, label %.lr.ph.i32.i.preheader135

.lr.ph.i32.i.preheader135:                        ; preds = %vector.memcheck111, %.lr.ph.i32.i.preheader, %middle.block132
  %.sroa.039.2.i.ph = phi ptr [ %.022.lcssa.i82, %vector.memcheck111 ], [ %.022.lcssa.i82, %.lr.ph.i32.i.preheader ], [ %i.bfj, %middle.block132 ]
  %.ph = phi ptr [ %.0.lcssa.i83, %vector.memcheck111 ], [ %.0.lcssa.i83, %.lr.ph.i32.i.preheader ], [ %i.bfk, %middle.block132 ]
  br label %.lr.ph.i32.i

.lr.ph.i32.i:                                     ; preds = %.lr.ph.i32.i.preheader135, %.lr.ph.i32.i
  %.sroa.039.2.i = phi ptr [ %i.bfu, %.lr.ph.i32.i ], [ %.sroa.039.2.i.ph, %.lr.ph.i32.i.preheader135 ] ; 3 uses
  %i.bfr = phi ptr [ %i.bfs, %.lr.ph.i32.i ], [ %.ph, %.lr.ph.i32.i.preheader135 ] ; 2 uses
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.bfr, i64 8 ; 3 uses
  %i.bft = load i64, ptr %i.bfr, align 8, !tbaa !20
  %i.bfu = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i, i64 8 ; 2 uses
  %i.bfv = load i64, ptr %.sroa.039.2.i, align 8, !tbaa !20
  %i.bfw = xor i64 %i.bfv, %i.bft
  store i64 %i.bfw, ptr %.sroa.039.2.i, align 8, !tbaa !20
  %i.bfx = icmp ult ptr %i.bfs, %i.bew
  br i1 %i.bfx, label %.lr.ph.i32.i, label %XorWords.exit.i, !llvm.loop !53

XorWords.exit.i:                                  ; preds = %.lr.ph.i32.i, %middle.block132, %._crit_edge.i
  %.025.lcssa.i81 = phi i32 [ %i.beo, %._crit_edge.i ], [ %.025.lcssa.i80, %middle.block132 ], [ %.025.lcssa.i80, %.lr.ph.i32.i ]
  %.123.i = phi ptr [ %i.bel, %._crit_edge.i ], [ %i.bfj, %middle.block132 ], [ %i.bfu, %.lr.ph.i32.i ]
  %.1.i = phi ptr [ %i.bej, %._crit_edge.i ], [ %i.bfk, %middle.block132 ], [ %i.bfs, %.lr.ph.i32.i ]
  %i.bfy = and i32 %.025.lcssa.i81, 7             ; 2 uses
  %.not51.i = icmp eq i32 %i.bfy, 0
  br i1 %.not51.i, label %xorbuf.exit, label %iter.check

iter.check:                                       ; preds = %XorWords.exit.i, %bb.n
  %.172.i = phi ptr [ %.1.i, %XorWords.exit.i ], [ %.ptr51, %bb.n ] ; 8 uses
  %.12371.i = phi ptr [ %.123.i, %XorWords.exit.i ], [ %.03058, %bb.n ] ; 9 uses
  %.12670.i = phi i32 [ %i.bfy, %XorWords.exit.i ], [ 16, %bb.n ] ; 8 uses
  %i.bfz = zext nneg i32 %.12670.i to i64         ; 5 uses
  %min.iters.check = icmp samesign ult i32 %.12670.i, 4
  br i1 %min.iters.check, label %.lr.ph56.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.12371.i, i64 1
  %i.bga = add nsw i32 %.12670.i, -1
  %i.bgb = zext i32 %i.bga to i64                 ; 2 uses
  %scevgep92 = getelementptr i8, ptr %scevgep, i64 %i.bgb
  %scevgep93 = getelementptr i8, ptr %.172.i, i64 1
  %scevgep94 = getelementptr i8, ptr %scevgep93, i64 %i.bgb
  %bound0 = icmp ult ptr %.12371.i, %scevgep94
  %bound1 = icmp ult ptr %.172.i, %scevgep92
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph56.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check95 = icmp samesign ult i32 %.12670.i, 16
  br i1 %min.iters.check95, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bgc = and i64 %i.bfz, 4
  %n.vec = and i64 %i.bfz, 16                     ; 5 uses
  %i.bgd = getelementptr i8, ptr %.172.i, i64 %n.vec
  %i.bge = getelementptr i8, ptr %.12371.i, i64 %n.vec
  %i.bgf = trunc nuw nsw i64 %n.vec to i32
  %i.bgg = sub nsw i32 %.12670.i, %i.bgf
  %wide.load = load <16 x i8>, ptr %.172.i, align 1, !tbaa !21, !alias.scope !63
  %wide.load97 = load <16 x i8>, ptr %.12371.i, align 1, !tbaa !21, !alias.scope !64, !noalias !63
  %i.bgh = xor <16 x i8> %wide.load97, %wide.load
  store <16 x i8> %i.bgh, ptr %.12371.i, align 1, !tbaa !21, !alias.scope !64, !noalias !63
  %cmp.n = icmp eq i64 %n.vec, %i.bfz
  br i1 %cmp.n, label %xorbuf.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  %min.epilog.iters.check.not.not = icmp eq i64 %i.bgc, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph56.i.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec100 = and i64 %i.bfz, 20                  ; 5 uses
  %i.bgi = getelementptr i8, ptr %.172.i, i64 %n.vec100
  %i.bgj = getelementptr i8, ptr %.12371.i, i64 %n.vec100
  %i.bgk = trunc nuw nsw i64 %n.vec100 to i32
  %i.bgl = sub nsw i32 %.12670.i, %i.bgk
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index101 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next106, %vec.epilog.vector.body ] ; 3 uses
  %next.gep102 = getelementptr i8, ptr %.172.i, i64 %index101
  %next.gep103 = getelementptr i8, ptr %.12371.i, i64 %index101 ; 2 uses
  %wide.load104 = load <4 x i8>, ptr %next.gep102, align 1, !tbaa !21, !alias.scope !63
  %wide.load105 = load <4 x i8>, ptr %next.gep103, align 1, !tbaa !21, !alias.scope !64, !noalias !63
  %i.bgm = xor <4 x i8> %wide.load105, %wide.load104
  store <4 x i8> %i.bgm, ptr %next.gep103, align 1, !tbaa !21, !alias.scope !64, !noalias !63
  %index.next106 = add nuw i64 %index101, 4       ; 2 uses
  %i.bgn = icmp eq i64 %index.next106, %n.vec100
  br i1 %i.bgn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !57

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n107 = icmp eq i64 %n.vec100, %i.bfz
  br i1 %cmp.n107, label %xorbuf.exit, label %.lr.ph56.i.preheader

.lr.ph56.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.254.i.ph = phi ptr [ %.172.i, %iter.check ], [ %.172.i, %vector.memcheck ], [ %i.bgd, %vec.epilog.iter.check ], [ %i.bgi, %vec.epilog.middle.block ] ; 2 uses
  %.22453.i.ph = phi ptr [ %.12371.i, %iter.check ], [ %.12371.i, %vector.memcheck ], [ %i.bge, %vec.epilog.iter.check ], [ %i.bgj, %vec.epilog.middle.block ] ; 2 uses
  %.22752.i.ph = phi i32 [ %.12670.i, %iter.check ], [ %.12670.i, %vector.memcheck ], [ %i.bgg, %vec.epilog.iter.check ], [ %i.bgl, %vec.epilog.middle.block ] ; 4 uses
  %i.bgo = add nsw i32 %.22752.i.ph, -1
  %xtraiter = and i32 %.22752.i.ph, 3             ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol

.lr.ph56.i.prol:                                  ; preds = %.lr.ph56.i.preheader, %.lr.ph56.i.prol
  %.254.i.prol = phi ptr [ %i.bgp, %.lr.ph56.i.prol ], [ %.254.i.ph, %.lr.ph56.i.preheader ] ; 2 uses
  %.22453.i.prol = phi ptr [ %i.bgr, %.lr.ph56.i.prol ], [ %.22453.i.ph, %.lr.ph56.i.preheader ] ; 3 uses
  %.22752.i.prol = phi i32 [ %i.bgu, %.lr.ph56.i.prol ], [ %.22752.i.ph, %.lr.ph56.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph56.i.prol ], [ 0, %.lr.ph56.i.preheader ]
  %i.bgp = getelementptr inbounds nuw i8, ptr %.254.i.prol, i64 1 ; 2 uses
  %i.bgq = load i8, ptr %.254.i.prol, align 1, !tbaa !21
  %i.bgr = getelementptr inbounds nuw i8, ptr %.22453.i.prol, i64 1 ; 2 uses
  %i.bgs = load i8, ptr %.22453.i.prol, align 1, !tbaa !21
  %i.bgt = xor i8 %i.bgs, %i.bgq
  store i8 %i.bgt, ptr %.22453.i.prol, align 1, !tbaa !21
  %i.bgu = add nsw i32 %.22752.i.prol, -1         ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol, !llvm.loop !58

.lr.ph56.i.prol.loopexit:                         ; preds = %.lr.ph56.i.prol, %.lr.ph56.i.preheader
  %.254.i.unr = phi ptr [ %.254.i.ph, %.lr.ph56.i.preheader ], [ %i.bgp, %.lr.ph56.i.prol ]
  %.22453.i.unr = phi ptr [ %.22453.i.ph, %.lr.ph56.i.preheader ], [ %i.bgr, %.lr.ph56.i.prol ]
  %.22752.i.unr = phi i32 [ %.22752.i.ph, %.lr.ph56.i.preheader ], [ %i.bgu, %.lr.ph56.i.prol ]
  %i.bgv = icmp ult i32 %i.bgo, 3
  br i1 %i.bgv, label %xorbuf.exit, label %.lr.ph56.i

.lr.ph56.i:                                       ; preds = %.lr.ph56.i.prol.loopexit, %.lr.ph56.i
  %.254.i = phi ptr [ %i.bhl, %.lr.ph56.i ], [ %.254.i.unr, %.lr.ph56.i.prol.loopexit ] ; 5 uses
  %.22453.i = phi ptr [ %i.bhn, %.lr.ph56.i ], [ %.22453.i.unr, %.lr.ph56.i.prol.loopexit ] ; 6 uses
  %.22752.i = phi i32 [ %i.bhq, %.lr.ph56.i ], [ %.22752.i.unr, %.lr.ph56.i.prol.loopexit ]
  %i.bgw = getelementptr inbounds nuw i8, ptr %.254.i, i64 1
  %i.bgx = load i8, ptr %.254.i, align 1, !tbaa !21
  %i.bgy = getelementptr inbounds nuw i8, ptr %.22453.i, i64 1 ; 2 uses
  %i.bgz = load i8, ptr %.22453.i, align 1, !tbaa !21
  %i.bha = xor i8 %i.bgz, %i.bgx
  store i8 %i.bha, ptr %.22453.i, align 1, !tbaa !21
  %i.bhb = getelementptr inbounds nuw i8, ptr %.254.i, i64 2
  %i.bhc = load i8, ptr %i.bgw, align 1, !tbaa !21
  %i.bhd = getelementptr inbounds nuw i8, ptr %.22453.i, i64 2 ; 2 uses
  %i.bhe = load i8, ptr %i.bgy, align 1, !tbaa !21
  %i.bhf = xor i8 %i.bhe, %i.bhc
  store i8 %i.bhf, ptr %i.bgy, align 1, !tbaa !21
  %i.bhg = getelementptr inbounds nuw i8, ptr %.254.i, i64 3
  %i.bhh = load i8, ptr %i.bhb, align 1, !tbaa !21
  %i.bhi = getelementptr inbounds nuw i8, ptr %.22453.i, i64 3 ; 2 uses
  %i.bhj = load i8, ptr %i.bhd, align 1, !tbaa !21
  %i.bhk = xor i8 %i.bhj, %i.bhh
  store i8 %i.bhk, ptr %i.bhd, align 1, !tbaa !21
  %i.bhl = getelementptr inbounds nuw i8, ptr %.254.i, i64 4
  %i.bhm = load i8, ptr %i.bhg, align 1, !tbaa !21
  %i.bhn = getelementptr inbounds nuw i8, ptr %.22453.i, i64 4
  %i.bho = load i8, ptr %i.bhi, align 1, !tbaa !21
  %i.bhp = xor i8 %i.bho, %i.bhm
  store i8 %i.bhp, ptr %i.bhi, align 1, !tbaa !21
  %i.bhq = add nsw i32 %.22752.i, -4              ; 2 uses
  %.not.i.3 = icmp eq i32 %i.bhq, 0
  br i1 %.not.i.3, label %xorbuf.exit, label %.lr.ph56.i, !llvm.loop !59

xorbuf.exit:                                      ; preds = %.lr.ph56.i.prol.loopexit, %.lr.ph56.i, %vector.ph, %vec.epilog.middle.block, %.lr.ph.i.i.preheader, %XorWords.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.ptr51, ptr noundef nonnull align 16 dereferenceable(16) %i.i, i64 16, i1 false)
  %i.bhr = getelementptr inbounds nuw i8, ptr %.03058, i64 16
  %i.bhs = getelementptr inbounds nuw i8, ptr %.02961, i64 16
  %.not37 = icmp eq i32 %i.bq, 0
  br i1 %.not37, label %AesDecrypt_preFetchOpt.exit, label %bb.e, !llvm.loop !60

AesDecrypt_preFetchOpt.exit:                      ; preds = %xorbuf.exit, %bb.e, %bb.c, %bb.b, %bb.a
  %.128 = phi i32 [ -173, %bb.c ], [ -173, %bb.a ], [ 0, %bb.b ], [ -226, %bb.e ], [ 0, %xorbuf.exit ]
  ret i32 %.128
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @GenerateM0(ptr noundef initializes((16, 32)) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.e, ptr noundef nonnull align 16 dereferenceable(16) %0, i64 16, i1 false)
  %.ptr460 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 20 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.ptr460, ptr noundef nonnull align 16 dereferenceable(16) %0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 95 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !21    ; 2 uses
  %1 = trunc i8 %i.g to i1
  %i.h = select i1 %1, i8 -31, i8 0
  store volatile i8 %i.h, ptr %i.c, align 1, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 81 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load i8, ptr %.ptr460, align 16, !tbaa !21
  %i.l = load <8 x i8>, ptr %.ptr460, align 16, !tbaa !21
  %i.m = lshr i8 %i.k, 1
  %i.n = load i8, ptr %i.j, align 8, !tbaa !21
  %i.o = load <8 x i8>, ptr %i.i, align 1, !tbaa !21
  %i.p = tail call <8 x i8> @llvm.fshl.v8i8(<8 x i8> %i.l, <8 x i8> %i.o, <8 x i8> splat (i8 7))
  store <8 x i8> %i.p, ptr %i.i, align 1, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 89 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !21    ; 2 uses
  %i.s = tail call i8 @llvm.fshl.i8(i8 %i.n, i8 %i.r, i8 7)
  store i8 %i.s, ptr %i.q, align 1, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 90 ; 2 uses
  %i.u = load i8, ptr %i.t, align 2, !tbaa !21    ; 2 uses
  %i.v = tail call i8 @llvm.fshl.i8(i8 %i.r, i8 %i.u, i8 7)
  store i8 %i.v, ptr %i.t, align 2, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 91 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !21    ; 2 uses
  %i.y = tail call i8 @llvm.fshl.i8(i8 %i.u, i8 %i.x, i8 7)
  store i8 %i.y, ptr %i.w, align 1, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !21   ; 2 uses
  %i.ab = tail call i8 @llvm.fshl.i8(i8 %i.x, i8 %i.aa, i8 7)
  store i8 %i.ab, ptr %i.z, align 4, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 93 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !21  ; 2 uses
  %i.ae = tail call i8 @llvm.fshl.i8(i8 %i.aa, i8 %i.ad, i8 7)
  store i8 %i.ae, ptr %i.ac, align 1, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 94 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !21  ; 2 uses
  %i.ah = tail call i8 @llvm.fshl.i8(i8 %i.ad, i8 %i.ag, i8 7)
  store i8 %i.ah, ptr %i.af, align 2, !tbaa !21
  %i.ai = tail call i8 @llvm.fshl.i8(i8 %i.ag, i8 %i.g, i8 7)
  store i8 %i.ai, ptr %i.f, align 1, !tbaa !21
  %.0..0..0..0..0..0..i = load volatile i8, ptr %i.c, align 1, !tbaa !21
  %i.aj = xor i8 %.0..0..0..0..0..0..i, %i.m
  store i8 %i.aj, ptr %.ptr460, align 16, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.ptr438.ptr = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 29 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.ptr438.ptr, ptr noundef nonnull align 16 dereferenceable(16) %.ptr460, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 63 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !21  ; 2 uses
  %2 = trunc i8 %i.al to i1
  %i.am = select i1 %2, i8 -31, i8 0
  store volatile i8 %i.am, ptr %i.b, align 1, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 49 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ap = load i8, ptr %.ptr438.ptr, align 16, !tbaa !21
  %i.aq = load <8 x i8>, ptr %.ptr438.ptr, align 16, !tbaa !21
  %i.ar = lshr i8 %i.ap, 1
  %i.as = load i8, ptr %i.ao, align 8, !tbaa !21
  %i.at = load <8 x i8>, ptr %i.an, align 1, !tbaa !21
  %i.au = tail call <8 x i8> @llvm.fshl.v8i8(<8 x i8> %i.aq, <8 x i8> %i.at, <8 x i8> splat (i8 7))
  store <8 x i8> %i.au, ptr %i.an, align 1, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !21  ; 2 uses
  %i.ax = tail call i8 @llvm.fshl.i8(i8 %i.as, i8 %i.aw, i8 7)
  store i8 %i.ax, ptr %i.av, align 1, !tbaa !21
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 58 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 2, !tbaa !21  ; 2 uses
  %i.ba = tail call i8 @llvm.fshl.i8(i8 %i.aw, i8 %i.az, i8 7)
  store i8 %i.ba, ptr %i.ay, align 2, !tbaa !21
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 59 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !21  ; 2 uses
  %i.bd = tail call i8 @llvm.fshl.i8(i8 %i.az, i8 %i.bc, i8 7)
  store i8 %i.bd, ptr %i.bb, align 1, !tbaa !21
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !21  ; 2 uses
  %i.bg = tail call i8 @llvm.fshl.i8(i8 %i.bc, i8 %i.bf, i8 7)
  store i8 %i.bg, ptr %i.be, align 4, !tbaa !21
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 61 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !21  ; 2 uses
  %i.bj = tail call i8 @llvm.fshl.i8(i8 %i.bf, i8 %i.bi, i8 7)
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !21
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !21  ; 2 uses
  %i.bm = tail call i8 @llvm.fshl.i8(i8 %i.bi, i8 %i.bl, i8 7)
  store i8 %i.bm, ptr %i.bk, align 2, !tbaa !21
  %i.bn = tail call i8 @llvm.fshl.i8(i8 %i.bl, i8 %i.al, i8 7)
  store i8 %i.bn, ptr %i.ak, align 1, !tbaa !21
  %.0..0..0..0..0..0..i62 = load volatile i8, ptr %i.b, align 1, !tbaa !21
  %i.bo = xor i8 %.0..0..0..0..0..0..i62, %i.ar
  store i8 %i.bo, ptr %.ptr438.ptr, align 16, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.ptr429.ptr.ptr = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 38 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.ptr429.ptr.ptr, ptr noundef nonnull align 16 dereferenceable(16) %.ptr438.ptr, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 47 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !21  ; 2 uses
  %3 = trunc i8 %i.bq to i1
  %i.br = select i1 %3, i8 -31, i8 0
  store volatile i8 %i.br, ptr %i.a, align 1, !tbaa !21
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bu = load i8, ptr %.ptr429.ptr.ptr, align 16, !tbaa !21
  %i.bv = load <8 x i8>, ptr %.ptr429.ptr.ptr, align 16, !tbaa !21
  %i.bw = lshr i8 %i.bu, 1
  %i.bx = load i8, ptr %i.bt, align 8, !tbaa !21
  %i.by = load <8 x i8>, ptr %i.bs, align 1, !tbaa !21
  %i.bz = tail call <8 x i8> @llvm.fshl.v8i8(<8 x i8> %i.bv, <8 x i8> %i.by, <8 x i8> splat (i8 7))
  store <8 x i8> %i.bz, ptr %i.bs, align 1, !tbaa !21
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 41 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !21  ; 2 uses
  %i.cc = tail call i8 @llvm.fshl.i8(i8 %i.bx, i8 %i.cb, i8 7)
  store i8 %i.cc, ptr %i.ca, align 1, !tbaa !21
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 2, !tbaa !21  ; 2 uses
  %i.cf = tail call i8 @llvm.fshl.i8(i8 %i.cb, i8 %i.ce, i8 7)
  store i8 %i.cf, ptr %i.cd, align 2, !tbaa !21
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 43 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !21  ; 2 uses
  %i.ci = tail call i8 @llvm.fshl.i8(i8 %i.ce, i8 %i.ch, i8 7)
  store i8 %i.ci, ptr %i.cg, align 1, !tbaa !21
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 4, !tbaa !21  ; 2 uses
  %i.cl = tail call i8 @llvm.fshl.i8(i8 %i.ch, i8 %i.ck, i8 7)
  store i8 %i.cl, ptr %i.cj, align 4, !tbaa !21
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 45 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !21  ; 2 uses
  %i.co = tail call i8 @llvm.fshl.i8(i8 %i.ck, i8 %i.cn, i8 7)
  store i8 %i.co, ptr %i.cm, align 1, !tbaa !21
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 46 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 2, !tbaa !21  ; 2 uses
  %i.cr = tail call i8 @llvm.fshl.i8(i8 %i.cn, i8 %i.cq, i8 7)
  store i8 %i.cr, ptr %i.cp, align 2, !tbaa !21
  %i.cs = tail call i8 @llvm.fshl.i8(i8 %i.cq, i8 %i.bq, i8 7)
  store i8 %i.cs, ptr %i.bp, align 1, !tbaa !21
  %.0..0..0..0..0..0..i63 = load volatile i8, ptr %i.a, align 1, !tbaa !21
  %i.ct = xor i8 %.0..0..0..0..0..0..i63, %i.bw
  store i8 %i.ct, ptr %.ptr429.ptr.ptr, align 16, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.ptr443.ptr = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 37 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.ptr443.ptr, ptr noundef nonnull align 16 dereferenceable(16) %.ptr438.ptr, i64 16, i1 false)
  %i.cu = ptrtoint ptr %.ptr443.ptr to i64        ; 6 uses
  %i.cv = ptrtoint ptr %.ptr429.ptr.ptr to i64    ; 6 uses
  %i.cw = or i64 %i.cv, %i.cu
  %i.cx = and i64 %i.cw, 7
  %or.cond.i = icmp eq i64 %i.cx, 0
  br i1 %or.cond.i, label %.lr.ph.i.i.preheader, label %bb.b

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.cy = load <2 x i64>, ptr %.ptr429.ptr.ptr, align 16, !tbaa !20
  %i.cz = load <2 x i64>, ptr %.ptr443.ptr, align 16, !tbaa !20
  %i.da = xor <2 x i64> %i.cz, %i.cy
  store <2 x i64> %i.da, ptr %.ptr443.ptr, align 16, !tbaa !20
  br label %xorbuf.exit

bb.b:                                             ; preds = %bb.a
  %i.db = xor i64 %i.cv, %i.cu
  %i.dc = and i64 %i.db, 7
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %._crit_edge.i.thread, label %vector.memcheck843

._crit_edge.i.thread:                             ; preds = %bb.b
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.df = ptrtoaddr ptr %i.de to i64              ; 2 uses
  %.0.lcssa.i637836 = ptrtoaddr ptr %.ptr429.ptr.ptr to i64 ; 4 uses
  %i.dg = add nuw i64 %.0.lcssa.i637836, 8
  %i.dh = tail call i64 @llvm.umax.i64(i64 %i.df, i64 %i.dg)
  %i.di = xor i64 %.0.lcssa.i637836, -1
  %i.dj = add i64 %i.dh, %i.di                    ; 2 uses
  %i.dk = lshr i64 %i.dj, 3
  %i.dl = add nuw nsw i64 %i.dk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dj, 136
  br i1 %min.iters.check, label %.lr.ph.i32.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %._crit_edge.i.thread
  %i.dm = add nuw i64 %.0.lcssa.i637836, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.df, i64 %i.dm)
  %i.dn = xor i64 %.0.lcssa.i637836, -1
  %i.do = add i64 %umax, %i.dn
  %i.dp = and i64 %i.do, -8
  %i.dq = add i64 %i.dp, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %.ptr443.ptr, i64 %i.dq
  %scevgep837 = getelementptr i8, ptr %.ptr429.ptr.ptr, i64 %i.dq
  %bound0 = icmp ult ptr %.ptr443.ptr, %scevgep837
  %bound1 = icmp ult ptr %.ptr429.ptr.ptr, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i32.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dl, 4611686018427387900     ; 3 uses
  %i.dr = shl i64 %n.vec, 3                       ; 2 uses
  %i.ds = getelementptr i8, ptr %.ptr443.ptr, i64 %i.dr
  %i.dt = getelementptr i8, ptr %.ptr429.ptr.ptr, i64 %i.dr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.du = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.ptr443.ptr, i64 %i.du ; 3 uses
  %next.gep838 = getelementptr i8, ptr %.ptr429.ptr.ptr, i64 %i.du ; 2 uses
  %i.dv = getelementptr i8, ptr %next.gep838, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep838, align 8, !tbaa !20, !alias.scope !154
  %wide.load839 = load <2 x i64>, ptr %i.dv, align 8, !tbaa !20, !alias.scope !154
  %i.dw = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load840 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !20, !alias.scope !155, !noalias !154
  %wide.load841 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !20, !alias.scope !155, !noalias !154
  %i.dx = xor <2 x i64> %wide.load840, %wide.load
  %i.dy = xor <2 x i64> %wide.load841, %wide.load839
  store <2 x i64> %i.dx, ptr %next.gep, align 8, !tbaa !20, !alias.scope !155, !noalias !154
  store <2 x i64> %i.dy, ptr %i.dw, align 8, !tbaa !20, !alias.scope !155, !noalias !154
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dl, %n.vec
  br i1 %cmp.n, label %xorbuf.exit, label %.lr.ph.i32.i.preheader

.lr.ph.i32.i.preheader:                           ; preds = %vector.memcheck, %._crit_edge.i.thread, %middle.block
  %.sroa.039.2.i.ph = phi ptr [ %.ptr443.ptr, %vector.memcheck ], [ %.ptr443.ptr, %._crit_edge.i.thread ], [ %i.ds, %middle.block ]
  %.ph1586 = phi ptr [ %.ptr429.ptr.ptr, %vector.memcheck ], [ %.ptr429.ptr.ptr, %._crit_edge.i.thread ], [ %i.dt, %middle.block ]
  br label %.lr.ph.i32.i

.lr.ph.i32.i:                                     ; preds = %.lr.ph.i32.i.preheader, %.lr.ph.i32.i
  %.sroa.039.2.i = phi ptr [ %i.ed, %.lr.ph.i32.i ], [ %.sroa.039.2.i.ph, %.lr.ph.i32.i.preheader ] ; 3 uses
  %i.ea = phi ptr [ %i.eb, %.lr.ph.i32.i ], [ %.ph1586, %.lr.ph.i32.i.preheader ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !20
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i, i64 8
  %i.ee = load i64, ptr %.sroa.039.2.i, align 8, !tbaa !20
  %i.ef = xor i64 %i.ee, %i.ec
  store i64 %i.ef, ptr %.sroa.039.2.i, align 8, !tbaa !20
  %i.eg = icmp ult ptr %i.eb, %i.de
  br i1 %i.eg, label %.lr.ph.i32.i, label %xorbuf.exit, !llvm.loop !69

vector.memcheck843:                               ; preds = %bb.b
  %scevgep844 = getelementptr i8, ptr %0, i64 80
  %scevgep845 = getelementptr i8, ptr %0, i64 48
  %bound0846 = icmp ult ptr %.ptr443.ptr, %scevgep845
  %bound1847 = icmp ult ptr %.ptr429.ptr.ptr, %scevgep844
  %found.conflict848 = and i1 %bound0846, %bound1847
  br i1 %found.conflict848, label %.lr.ph56.i, label %vector.body854

vector.body854:                                   ; preds = %vector.memcheck843
  %wide.load858 = load <16 x i8>, ptr %.ptr429.ptr.ptr, align 16, !tbaa !21, !alias.scope !156
  %wide.load859 = load <16 x i8>, ptr %.ptr443.ptr, align 16, !tbaa !21, !alias.scope !157, !noalias !156
  %i.eh = xor <16 x i8> %wide.load859, %wide.load858
  store <16 x i8> %i.eh, ptr %.ptr443.ptr, align 16, !tbaa !21, !alias.scope !157, !noalias !156
  br label %xorbuf.exit

.lr.ph56.i:                                       ; preds = %vector.memcheck843
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.ej = load i8, ptr %.ptr429.ptr.ptr, align 16, !tbaa !21
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 2 uses
  %i.el = load i8, ptr %.ptr443.ptr, align 16, !tbaa !21
  %i.em = xor i8 %i.el, %i.ej
  store i8 %i.em, ptr %.ptr443.ptr, align 16, !tbaa !21
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.eo = load i8, ptr %i.ei, align 1, !tbaa !21
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 66 ; 2 uses
  %i.eq = load i8, ptr %i.ek, align 1, !tbaa !21
  %i.er = xor i8 %i.eq, %i.eo
  store i8 %i.er, ptr %i.ek, align 1, !tbaa !21
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 35
  %i.et = load i8, ptr %i.en, align 2, !tbaa !21
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 67 ; 2 uses
  %i.ev = load i8, ptr %i.ep, align 2, !tbaa !21
  %i.ew = xor i8 %i.ev, %i.et
  store i8 %i.ew, ptr %i.ep, align 2, !tbaa !21
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ey = load i8, ptr %i.es, align 1, !tbaa !21
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.fa = load i8, ptr %i.eu, align 1, !tbaa !21
  %i.fb = xor i8 %i.fa, %i.ey
  store i8 %i.fb, ptr %i.eu, align 1, !tbaa !21
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.fd = load i8, ptr %i.ex, align 4, !tbaa !21
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 69 ; 2 uses
  %i.ff = load i8, ptr %i.ez, align 4, !tbaa !21
  %i.fg = xor i8 %i.ff, %i.fd
  store i8 %i.fg, ptr %i.ez, align 4, !tbaa !21
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.fi = load i8, ptr %i.fc, align 1, !tbaa !21
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 70 ; 2 uses
  %i.fk = load i8, ptr %i.fe, align 1, !tbaa !21
  %i.fl = xor i8 %i.fk, %i.fi
  store i8 %i.fl, ptr %i.fe, align 1, !tbaa !21
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.fn = load i8, ptr %i.fh, align 2, !tbaa !21
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 71 ; 2 uses
  %i.fp = load i8, ptr %i.fj, align 2, !tbaa !21
  %i.fq = xor i8 %i.fp, %i.fn
  store i8 %i.fq, ptr %i.fj, align 2, !tbaa !21
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fs = load i8, ptr %i.fm, align 1, !tbaa !21
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.fu = load i8, ptr %i.fo, align 1, !tbaa !21
  %i.fv = xor i8 %i.fu, %i.fs
  store i8 %i.fv, ptr %i.fo, align 1, !tbaa !21
end_hunk_0
