Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ssl3_cbc?download=true
inline.NumInlined: 15
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ssl3_cbc_digest_record:bb.a
  %i.aw = icmp samesign ugt i64 %i.an, %i.av      ; 2 uses
  %i.ax = sub nsw i64 %i.an, %i.ah                ; 2 uses
  %i.ay = mul i64 %i.ax, %.0210
  %.0207 = select i1 %i.aw, i64 %i.ax, i64 0      ; 3 uses
  %.0204 = select i1 %i.aw, i64 %i.ay, i64 0      ; 4 uses
  br i1 %.not229, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.az = add i64 %i.ao, %.0210
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, i8 0, i64 %.0210, i1 false)
  %i.ba = icmp ult i64 %8, 129
  br i1 %i.ba, label %vector.ph, label %.critedge, !prof !17

vector.ph:                                        ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr align 1 %7, i64 %8, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.b, align 16, !tbaa !8
  %wide.load319 = load <16 x i8>, ptr %i.bb, align 16, !tbaa !8
  %i.bc = xor <16 x i8> %wide.load, splat (i8 54)
  %i.bd = xor <16 x i8> %wide.load319, splat (i8 54)
  store <16 x i8> %i.bc, ptr %i.b, align 16, !tbaa !8
  store <16 x i8> %i.bd, ptr %i.bb, align 16, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %wide.load.1 = load <16 x i8>, ptr %i.be, align 16, !tbaa !8
  %wide.load319.1 = load <16 x i8>, ptr %i.bf, align 16, !tbaa !8
  %i.bg = xor <16 x i8> %wide.load.1, splat (i8 54)
  %i.bh = xor <16 x i8> %wide.load319.1, splat (i8 54)
  store <16 x i8> %i.bg, ptr %i.be, align 16, !tbaa !8
  store <16 x i8> %i.bh, ptr %i.bf, align 16, !tbaa !8
  br i1 %i.z, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.ph
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %wide.load.2 = load <16 x i8>, ptr %i.bi, align 16, !tbaa !8
  %wide.load319.2 = load <16 x i8>, ptr %i.bj, align 16, !tbaa !8
  %i.bk = xor <16 x i8> %wide.load.2, splat (i8 54)
  %i.bl = xor <16 x i8> %wide.load319.2, splat (i8 54)
  store <16 x i8> %i.bk, ptr %i.bi, align 16, !tbaa !8
  store <16 x i8> %i.bl, ptr %i.bj, align 16, !tbaa !8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %wide.load.3 = load <16 x i8>, ptr %i.bm, align 16, !tbaa !8
  %wide.load319.3 = load <16 x i8>, ptr %i.bn, align 16, !tbaa !8
  %i.bo = xor <16 x i8> %wide.load.3, splat (i8 54)
  %i.bp = xor <16 x i8> %wide.load319.3, splat (i8 54)
  store <16 x i8> %i.bo, ptr %i.bm, align 16, !tbaa !8
  store <16 x i8> %i.bp, ptr %i.bn, align 16, !tbaa !8
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.ph
  call void %.0212(ptr noundef nonnull %10, ptr noundef nonnull %i.b) #6, !callees !20
  br label %bb.t

bb.t:                                             ; preds = %middle.block, %bb.r
  %.0203.in = phi i64 [ %i.ao, %bb.r ], [ %i.az, %middle.block ]
  %.0203 = shl i64 %.0203.in, 3                   ; 5 uses
  br i1 %.not.not, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bq = add nsw i64 %.0198, -4                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 0, i64 %i.bq, i1 false)
  %i.br = lshr i64 %.0203, 24
  %i.bs = trunc i64 %i.br to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bq
  store i8 %i.bs, ptr %i.bt, align 4, !tbaa !8
  %i.bu = lshr i64 %.0203, 16
  %i.bv = trunc i64 %i.bu to i8
  %i.bw = getelementptr i8, ptr %.0198.sroa.phi, i64 -3
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !8
  %i.bx = lshr i64 %.0203, 8
  %i.by = trunc i64 %i.bx to i8
  %i.bz = getelementptr i8, ptr %.0198.sroa.phi, i64 -2
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !8
  %i.ca = trunc i64 %.0203 to i8
  %i.cb = getelementptr i8, ptr %.0198.sroa.phi, i64 -1
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !8
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 0, i64 %.0198, i1 false)
  %i.cc = getelementptr i8, ptr %.0198.sroa.phi, i64 -8
  %i.cd = trunc i64 %.0203 to i32
  store i32 %i.cd, ptr %i.cc, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.not = icmp eq i64 %.0204, 0
  br i1 %.not, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %.not229, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not232 = icmp ugt i64 %i.ab, %.0210
  br i1 %.not232, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.ce = sub nuw i64 %i.ab, %.0210               ; 4 uses
  call void %.0212(ptr noundef nonnull %10, ptr noundef %3) #6, !callees !20
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 %.0210
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %i.cf, i64 %i.ce, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ce
  %i.ch = sub i64 %.0210, %i.ce
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cg, ptr align 1 %4, i64 %i.ch, i1 false)
  call void %.0212(ptr noundef nonnull %10, ptr noundef nonnull %i.c) #6, !callees !20
  %i.ci = lshr i64 %.0204, %.pre-phi
  %i.cj = add nsw i64 %i.ci, -1                   ; 2 uses
  %i.ck = icmp ugt i64 %i.cj, 1
  br i1 %i.ck, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.z
  %i.cl = sub i64 0, %i.ce
  %invariant.gep = getelementptr i8, ptr %4, i64 %i.cl
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %bb.aa
  %.1202284 = phi i64 [ 1, %.lr.ph ], [ %i.cn, %bb.aa ] ; 2 uses
  %i.cm = mul i64 %.1202284, %.0210
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.cm
  call void %.0212(ptr noundef nonnull %10, ptr noundef %gep) #6, !callees !20
  %i.cn = add nuw i64 %.1202284, 1                ; 2 uses
  %exitcond299.not = icmp eq i64 %i.cn, %i.cj
  br i1 %exitcond299.not, label %.loopexit, label %bb.aa, !llvm.loop !10

bb.ab:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(13) %i.c, ptr noundef nonnull align 1 dereferenceable(13) %3, i64 13, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  %i.cp = add nsw i64 %.0210, -13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.co, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 %i.cp, i1 false)
  call void %.0212(ptr noundef nonnull %10, ptr noundef nonnull %i.c) #6, !callees !20
  %i.cq = lshr i64 %.0204, %.pre-phi              ; 2 uses
  %i.cr = icmp samesign ugt i64 %i.cq, 1
  br i1 %i.cr, label %.lr.ph286, label %.loopexit

.lr.ph286:                                        ; preds = %bb.ab, %.lr.ph286
  %.2285 = phi i64 [ %i.cv, %.lr.ph286 ], [ 1, %bb.ab ] ; 2 uses
  %i.cs = mul i64 %.2285, %.0210
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 %i.cs
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -13
  call void %.0212(ptr noundef nonnull %10, ptr noundef nonnull %i.cu) #6, !callees !20
  %i.cv = add nuw nsw i64 %.2285, 1               ; 2 uses
  %exitcond300.not = icmp eq i64 %i.cv, %i.cq
  br i1 %exitcond300.not, label %.loopexit, label %.lr.ph286, !llvm.loop !11

.loopexit:                                        ; preds = %bb.aa, %.lr.ph286, %bb.z, %bb.ab, %bb.w
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.d, i8 0, i64 64, i1 false)
  %i.cw = add nsw i64 %.0207, %i.ah               ; 2 uses
  %.not233292 = icmp ugt i64 %.0207, %i.cw
  br i1 %.not233292, label %._crit_edge, label %.lr.ph295

.lr.ph295:                                        ; preds = %.loopexit
  %i.cx = sub nuw nsw i64 %.0210, %.0198          ; 2 uses
  %i.cy = and i64 %.0211, 28
  %n.vec = and i64 %.0211, 96                     ; 4 uses
  %cmp.n = icmp eq i64 %.0211, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.cy, 0
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph295, %.split291.us
  %.3294 = phi i64 [ %.0207, %.lr.ph295 ], [ %i.fh, %.split291.us ] ; 3 uses
  %.1205293 = phi i64 [ %.0204, %.lr.ph295 ], [ %i.dn, %.split291.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.cz = icmp eq i64 %.3294, %i.ar               ; 3 uses
  %i.da = icmp eq i64 %.3294, %i.at
  %.fr = freeze i1 %i.da                          ; 2 uses
  %i.db = sext i1 %.fr to i8                      ; 2 uses
  %i.dc = xor i8 %i.db, -1
  %i.dd = select i1 %i.cz, i8 -1, i8 %i.dc
  %i.de = zext i8 %i.db to i32                    ; 2 uses
  %i.df = xor i32 %i.de, -1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.aj
  %.0199288 = phi i64 [ 0, %bb.ac ], [ %i.ep, %bb.aj ] ; 6 uses
  %.2206287 = phi i64 [ %.1205293, %bb.ac ], [ %i.dn, %bb.aj ] ; 5 uses
  %i.dg = icmp ult i64 %.2206287, %.0208
  br i1 %i.dg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 %.2206287
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !8
  br label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %i.dj = icmp ult i64 %.2206287, %i.ai
  br i1 %i.dj, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dk = sub nuw i64 %.2206287, %.0208
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.ae
  %.0 = phi i8 [ %i.di, %bb.ae ], [ %i.dm, %bb.ag ], [ 0, %bb.af ]
  %i.dn = add i64 %.2206287, 1                    ; 2 uses
  %i.do = icmp samesign uge i64 %.0199288, %i.aq
  %i.dp = and i1 %i.cz, %i.do
  %i.dq = icmp samesign ugt i64 %.0199288, %i.aq
  %i.dr = and i1 %i.cz, %i.dq
  %i.ds = select i1 %i.dp, i32 255, i32 0         ; 2 uses
  %i.dt = zext i8 %.0 to i32
  %i.du = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.ds) #7, !srcloc !22
  %i.dv = and i32 %i.du, 128
  %i.dw = xor i32 %i.ds, -1
  %i.dx = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -256, 256) %i.dw) #7, !srcloc !22
  %i.dy = and i32 %i.dx, %i.dt
  %i.dz = or i32 %i.dy, %i.dv
  %i.ea = trunc nuw i32 %i.dz to i8
  %i.eb = select i1 %i.dr, i8 0, i8 %i.ea
  %i.ec = and i8 %i.eb, %i.dd                     ; 2 uses
  %.not234 = icmp samesign ult i64 %.0199288, %i.cx
  br i1 %.not234, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ed = sub nuw nsw i64 %.0199288, %i.cx
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !8
  %i.eg = zext i8 %i.ef to i32
  %i.eh = zext i8 %i.ec to i32
  %i.ei = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.de) #7, !srcloc !22
  %i.ej = and i32 %i.ei, %i.eg
  %i.ek = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -256, 256) %i.df) #7, !srcloc !22
  %i.el = and i32 %i.ek, %i.eh
  %i.em = or i32 %i.el, %i.ej
  %i.en = trunc nuw i32 %i.em to i8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.1 = phi i8 [ %i.en, %bb.ai ], [ %i.ec, %bb.ah ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.f, i64 %.0199288
  store i8 %.1, ptr %i.eo, align 1, !tbaa !8
  %i.ep = add nuw nsw i64 %.0199288, 1            ; 2 uses
  %exitcond301.not = icmp eq i64 %i.ep, %.0210
  br i1 %exitcond301.not, label %bb.ak, label %bb.ad, !llvm.loop !12

bb.ak:                                            ; preds = %bb.aj
  call void %.0212(ptr noundef nonnull %10, ptr noundef nonnull %i.f) #6, !callees !20
  call void %.0213(ptr noundef nonnull %10, ptr noundef nonnull %i.f) #6, !callees !23
  br i1 %.fr, label %vector.main.loop.iter.check, label %.split291.us

vector.main.loop.iter.check:                      ; preds = %bb.ak
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.body321

vector.body321:                                   ; preds = %vector.main.loop.iter.check, %vector.body321
  %index322 = phi i64 [ %index.next327, %vector.body321 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.f, i64 %index322 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %wide.load323 = load <16 x i8>, ptr %i.eq, align 16, !tbaa !8
  %wide.load324 = load <16 x i8>, ptr %i.er, align 16, !tbaa !8
  %i.es = getelementptr inbounds nuw i8, ptr %i.d, i64 %index322 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16 ; 2 uses
  %wide.load325 = load <16 x i8>, ptr %i.es, align 16, !tbaa !8
  %wide.load326 = load <16 x i8>, ptr %i.et, align 16, !tbaa !8
  %i.eu = or <16 x i8> %wide.load325, %wide.load323
  %i.ev = or <16 x i8> %wide.load326, %wide.load324
  store <16 x i8> %i.eu, ptr %i.es, align 16, !tbaa !8
  store <16 x i8> %i.ev, ptr %i.et, align 16, !tbaa !8
  %index.next327 = add nuw i64 %index322, 32      ; 2 uses
  %i.ew = icmp eq i64 %index.next327, %n.vec
  br i1 %i.ew, label %middle.block328, label %vector.body321, !llvm.loop !13

middle.block328:                                  ; preds = %vector.body321
  br i1 %cmp.n, label %.split291.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block328
  br i1 %min.epilog.iters.check, label %.split.us, label %vec.epilog.vector.body.preheader, !prof !26

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index329.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index329 = phi i64 [ %index.next332, %vec.epilog.vector.body ], [ %index329.ph, %vec.epilog.vector.body.preheader ] ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.f, i64 %index329
  %wide.load330 = load <4 x i8>, ptr %i.ex, align 4, !tbaa !8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.d, i64 %index329 ; 2 uses
  %wide.load331 = load <4 x i8>, ptr %i.ey, align 4, !tbaa !8
  %i.ez = or <4 x i8> %wide.load331, %wide.load330
  store <4 x i8> %i.ez, ptr %i.ey, align 4, !tbaa !8
  %index.next332 = add nuw i64 %index329, 4       ; 2 uses
  %i.fa = icmp eq i64 %index.next332, %.0211
  br i1 %i.fa, label %.split291.us, label %vec.epilog.vector.body, !llvm.loop !14

.split.us:                                        ; preds = %vec.epilog.iter.check, %.split.us
  %.1200289.us = phi i64 [ %i.fg, %.split.us ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.f, i64 %.1200289.us
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.d, i64 %.1200289.us ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !8
  %i.ff = or i8 %i.fe, %i.fc
  store i8 %i.ff, ptr %i.fd, align 1, !tbaa !8
  %i.fg = add nuw nsw i64 %.1200289.us, 1         ; 2 uses
  %exitcond302.not = icmp eq i64 %i.fg, %.0211
  br i1 %exitcond302.not, label %.split291.us, label %.split.us, !llvm.loop !15

.split291.us:                                     ; preds = %.split.us, %vec.epilog.vector.body, %middle.block328, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  %i.fh = add i64 %.3294, 1                       ; 2 uses
  %.not233 = icmp ugt i64 %i.fh, %i.cw
  br i1 %.not233, label %._crit_edge, label %bb.ac, !llvm.loop !16

._crit_edge:                                      ; preds = %.split291.us, %.loopexit
  %i.fi = call ptr @EVP_MD_CTX_new() #6           ; 9 uses
  %i.fj = icmp eq ptr %i.fi, null
  br i1 %i.fj, label %bb.at, label %bb.al

bb.al:                                            ; preds = %._crit_edge
  %i.fk = call i32 @EVP_DigestInit_ex(ptr noundef nonnull %i.fi, ptr noundef %0, ptr noundef null) #6
  %i.fl = icmp slt i32 %i.fk, 1
  br i1 %i.fl, label %bb.at, label %bb.am

bb.am:                                            ; preds = %bb.al
  br i1 %.not229, label %vector.body334, label %bb.an

vector.body334:                                   ; preds = %bb.am
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load336 = load <16 x i8>, ptr %i.b, align 16, !tbaa !8
  %wide.load337 = load <16 x i8>, ptr %i.fm, align 16, !tbaa !8
  %i.fn = xor <16 x i8> %wide.load336, splat (i8 106)
  %i.fo = xor <16 x i8> %wide.load337, splat (i8 106)
  store <16 x i8> %i.fn, ptr %i.b, align 16, !tbaa !8
  store <16 x i8> %i.fo, ptr %i.fm, align 16, !tbaa !8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %wide.load336.1 = load <16 x i8>, ptr %i.fp, align 16, !tbaa !8
  %wide.load337.1 = load <16 x i8>, ptr %i.fq, align 16, !tbaa !8
  %i.fr = xor <16 x i8> %wide.load336.1, splat (i8 106)
  %i.fs = xor <16 x i8> %wide.load337.1, splat (i8 106)
  store <16 x i8> %i.fr, ptr %i.fp, align 16, !tbaa !8
  store <16 x i8> %i.fs, ptr %i.fq, align 16, !tbaa !8
  br i1 %i.z, label %middle.block339, label %vector.body334.2

vector.body334.2:                                 ; preds = %vector.body334
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %wide.load336.2 = load <16 x i8>, ptr %i.ft, align 16, !tbaa !8
  %wide.load337.2 = load <16 x i8>, ptr %i.fu, align 16, !tbaa !8
  %i.fv = xor <16 x i8> %wide.load336.2, splat (i8 106)
  %i.fw = xor <16 x i8> %wide.load337.2, splat (i8 106)
  store <16 x i8> %i.fv, ptr %i.ft, align 16, !tbaa !8
  store <16 x i8> %i.fw, ptr %i.fu, align 16, !tbaa !8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %wide.load336.3 = load <16 x i8>, ptr %i.fx, align 16, !tbaa !8
  %wide.load337.3 = load <16 x i8>, ptr %i.fy, align 16, !tbaa !8
  %i.fz = xor <16 x i8> %wide.load336.3, splat (i8 106)
  %i.ga = xor <16 x i8> %wide.load337.3, splat (i8 106)
  store <16 x i8> %i.fz, ptr %i.fx, align 16, !tbaa !8
  store <16 x i8> %i.ga, ptr %i.fy, align 16, !tbaa !8
  br label %middle.block339

bb.an:                                            ; preds = %bb.am
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, i8 92, i64 %.0209, i1 false)
  %i.gb = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.fi, ptr noundef %7, i64 noundef %8) #6
  %i.gc = icmp slt i32 %i.gb, 1
  br i1 %i.gc, label %bb.at, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gd = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.fi, ptr noundef nonnull %i.b, i64 noundef %.0209) #6
  %i.ge = icmp slt i32 %i.gd, 1
  br i1 %i.ge, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gf = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.fi, ptr noundef nonnull %i.d, i64 noundef %.0211) #6
  %i.gg = icmp slt i32 %i.gf, 1
  br i1 %i.gg, label %bb.at, label %bb.ar

middle.block339:                                  ; preds = %vector.body334.2, %vector.body334
  %i.gh = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.fi, ptr noundef nonnull %i.b, i64 noundef %.0210) #6
  %i.gi = icmp slt i32 %i.gh, 1
  br i1 %i.gi, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %middle.block339
  %i.gj = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.fi, ptr noundef nonnull %i.d, i64 noundef %.0211) #6
  %i.gk = icmp slt i32 %i.gj, 1
  br i1 %i.gk, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.gl = call i32 @EVP_DigestFinal(ptr noundef nonnull %i.fi, ptr noundef %1, ptr noundef nonnull %i.e) #6
  %i.gm = icmp ne i32 %i.gl, 0
  %i.gn = icmp ne ptr %2, null
  %or.cond = and i1 %i.gn, %i.gm
  br i1 %or.cond, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.go = load i32, ptr %i.e, align 4, !tbaa !9
  %i.gp = zext i32 %i.go to i64
  store i64 %i.gp, ptr %2, align 8, !tbaa !19
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %middle.block339, %bb.aq, %bb.an, %bb.ao, %bb.ap, %bb.al, %._crit_edge
  %.0196 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.al ], [ 0, %bb.an ], [ 0, %bb.ao ], [ 0, %bb.ap ], [ 0, %bb.aq ], [ 0, %middle.block339 ], [ 1, %bb.as ], [ 1, %bb.ar ]
  call void @EVP_MD_CTX_free(ptr noundef %i.fi) #6
  br label %.critedge

.critedge:                                        ; preds = %bb.y, %bb.s, %bb.n, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c, %bb.a, %bb.at
  %.1215 = phi i32 [ 0, %bb.a ], [ %.0196, %bb.at ], [ 0, %bb.y ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.k ], [ 0, %bb.o ], [ 0, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
end_hunk_0
