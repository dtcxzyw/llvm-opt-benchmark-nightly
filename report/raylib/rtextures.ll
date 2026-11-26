Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 114
begin_hunk_0_@stbi_write_png_to_mem:bb.a
.lr.ph.i.i114:                                    ; preds = %.lr.ph.i.i114, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i115 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i117.1, %.lr.ph.i.i114 ] ; 3 uses
  %.078.i.i116 = phi i32 [ -1, %.lr.ph.preheader.i.i.new ], [ %i.iy, %.lr.ph.i.i114 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i114 ]
  %i.ie = lshr i32 %.078.i.i116, 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.hx, i64 %indvars.iv.i.i115
  %i.ig = load i8, ptr %i.if, align 1
  %i.ih = zext i8 %i.ig to i32
  %i.ii = and i32 %.078.i.i116, 255
  %i.ij = xor i32 %i.ii, %i.ih
  %i.ik = zext nneg i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.ik
  %i.im = load i32, ptr %i.il, align 4
  %i.in = xor i32 %i.im, %i.ie                    ; 2 uses
  %i.io = lshr i32 %i.in, 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hx, i64 %indvars.iv.i.i115
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 1
  %i.ir = load i8, ptr %i.iq, align 1
  %i.is = zext i8 %i.ir to i32
  %i.it = and i32 %i.in, 255
  %i.iu = xor i32 %i.it, %i.is
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.iv
  %i.ix = load i32, ptr %i.iw, align 4
  %i.iy = xor i32 %i.ix, %i.io                    ; 3 uses
  %indvars.iv.next.i.i117.1 = add nuw nsw i64 %indvars.iv.i.i115, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i114

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i.i114
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i114.epil.preheader

.lr.ph.i.i114.epil.preheader:                     ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i115.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i117.1, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.078.i.i116.epil.init = phi i32 [ -1, %.lr.ph.preheader.i.i ], [ %i.iy, %._crit_edge.loopexit.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod320 = trunc i32 %i.di to i1
  tail call void @llvm.assume(i1 %lcmp.mod320)
  %i.iz = lshr i32 %.078.i.i116.epil.init, 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hx, i64 %indvars.iv.i.i115.epil.init
  %i.jb = load i8, ptr %i.ja, align 1
  %i.jc = zext i8 %i.jb to i32
  %i.jd = and i32 %.078.i.i116.epil.init, 255
  %i.je = xor i32 %i.jd, %i.jc
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.jf
  %i.jh = load i32, ptr %i.jg, align 4
  %i.ji = xor i32 %i.jh, %i.iz
  br label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i114.epil.preheader
  %.lcssa = phi i32 [ %i.iy, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.ji, %.lr.ph.i.i114.epil.preheader ]
  %i.jj = xor i32 %.lcssa, -1
  %i.jk = tail call i32 @llvm.bswap.i32(i32 %i.jj)
  %i.jl = bitcast i32 %i.jk to <4 x i8>
  br label %stbiw__wpcrc.exit119

stbiw__wpcrc.exit119:                             ; preds = %.lr.ph.i.i, %._crit_edge.loopexit.i.i
  %.07.lcssa.i.i = phi <4 x i8> [ zeroinitializer, %.lr.ph.i.i ], [ %i.jl, %._crit_edge.loopexit.i.i ]
  store <4 x i8> %.07.lcssa.i.i, ptr %i.ia, align 1
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store i32 0, ptr %i.jm, align 1
  store <8 x i8> <i8 73, i8 69, i8 78, i8 68, i8 -82, i8 66, i8 96, i8 -126>, ptr %i.jn, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge, %bb.a, %stbiw__wpcrc.exit119, %bb.d
  %.099 = phi ptr [ %i.dl, %stbiw__wpcrc.exit119 ], [ null, %._crit_edge ], [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  ret ptr %.099
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @stbiw__encode_png_line(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef nonnull writeonly captures(none) %7) unnamed_addr #15 {
bb.a:
  %i.a = ptrtoaddr ptr %7 to i64                  ; 14 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 7 uses
  %.not = icmp eq i32 %4, 0
  %i.c = select i1 %.not, ptr @stbiw__encode_png_line.firstmap, ptr @stbiw__encode_png_line.mapping
  %i.d = sext i32 %6 to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %i.g = load i32, ptr @stbi__flip_vertically_on_write, align 4
  %.not136 = icmp eq i32 %i.g, 0                  ; 2 uses
  %i.h = xor i32 %4, -1
  %i.i = add i32 %3, %i.h
  %i.j = select i1 %.not136, i32 %4, i32 %i.i
  %i.k = mul i32 %i.j, %1
  %i.l = sext i32 %i.k to i64                     ; 8 uses
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l ; 77 uses
  %i.n = sub nsw i32 0, %1
  %i.o = select i1 %.not136, i32 %1, i32 %i.n     ; 4 uses
  %i.p = icmp eq i32 %i.f, 0
  br i1 %i.p, label %bb.b, label %.preheader160

.preheader160:                                    ; preds = %bb.a
  %i.q = icmp sgt i32 %5, 0
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader160
  %i.r = sext i32 %i.o to i64                     ; 3 uses
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.s = mul nsw i32 %5, %2
  %i.t = sext i32 %i.s to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %7, ptr align 1 %i.m, i64 %i.t, i1 false)
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 11 uses
  switch i32 %i.f, label %bb.i [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.v = load i8, ptr %i.u, align 1
  br label %.sink.split

bb.d:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.x = load i8, ptr %i.w, align 1
  %i.y = sub nsw i64 %indvars.iv, %i.r
  %i.z = getelementptr inbounds i8, ptr %i.m, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = sub i8 %i.x, %i.aa
  br label %.sink.split

bb.e:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = sub nsw i64 %indvars.iv, %i.r
  %i.af = getelementptr inbounds i8, ptr %i.m, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = lshr i8 %i.ag, 1
  %i.ai = sub i8 %i.ad, %i.ah
  br label %.sink.split

bb.f:                                             ; preds = %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = sub nsw i64 %indvars.iv, %i.r
  %i.am = getelementptr inbounds i8, ptr %i.m, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = sub i8 %i.ak, %i.an
  br label %.sink.split

bb.g:                                             ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.aq = load i8, ptr %i.ap, align 1
  br label %.sink.split

bb.h:                                             ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.as = load i8, ptr %i.ar, align 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink = phi i8 [ %i.v, %bb.c ], [ %i.ab, %bb.d ], [ %i.ai, %bb.e ], [ %i.ao, %bb.f ], [ %i.aq, %bb.g ], [ %i.as, %bb.h ]
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv
  store i8 %.sink, ptr %i.at, align 1
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %.preheader160
  switch i32 %i.f, label %.loopexit [
    i32 1, label %.preheader
    i32 2, label %.preheader150
    i32 3, label %.preheader152
    i32 4, label %.preheader154
    i32 5, label %.preheader156
    i32 6, label %.preheader158
  ]

.preheader158:                                    ; preds = %._crit_edge
  %i.au = mul nsw i32 %5, %2                      ; 2 uses
  %i.av = icmp slt i32 %5, %i.au
  br i1 %i.av, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader158
  %i.aw = sext i32 %5 to i64                      ; 11 uses
  %wide.trip.count183 = sext i32 %i.au to i64     ; 4 uses
  %i.ax = sub nsw i64 %wide.trip.count183, %i.aw  ; 7 uses
  %min.iters.check = icmp ult i64 %i.ax, 8
  br i1 %min.iters.check, label %.lr.ph163.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ay = add i64 %i.b, %i.l                      ; 2 uses
  %8 = sub i64 %i.ay, %i.a
  %diff.check = icmp ugt i64 %8, -32
  %9 = add i64 %i.a, %i.aw
  %i.az = sub i64 %i.ay, %9
  %diff.check229 = icmp ugt i64 %i.az, -32
  %conflict.rdx = or i1 %diff.check, %diff.check229
  br i1 %conflict.rdx, label %.lr.ph163.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check230 = icmp ult i64 %i.ax, 32
  br i1 %min.iters.check230, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ba = and i64 %i.ax, 24
  %n.vec = and i64 %i.ax, -32                     ; 4 uses
  %i.bb = add nsw i64 %n.vec, %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = add i64 %index, %i.aw                   ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.m, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load = load <16 x i8>, ptr %i.bd, align 1
  %wide.load231 = load <16 x i8>, ptr %i.be, align 1
  %i.bf = getelementptr inbounds i8, ptr %i.m, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load232 = load <16 x i8>, ptr %i.bf, align 1
  %wide.load233 = load <16 x i8>, ptr %i.bg, align 1
  %i.bh = sub <16 x i8> %wide.load, %wide.load232
  %i.bi = sub <16 x i8> %wide.load231, %wide.load233
  %i.bj = getelementptr inbounds i8, ptr %7, i64 %i.bc ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store <16 x i8> %i.bh, ptr %i.bj, align 1
  store <16 x i8> %i.bi, ptr %i.bk, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check, label %.lr.ph163.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec234 = and i64 %i.ax, -8                   ; 3 uses
  %i.bm = add nsw i64 %n.vec234, %i.aw
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index235 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next238, %vec.epilog.vector.body ] ; 3 uses
  %i.bn = add i64 %index235, %i.aw                ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.m, i64 %i.bn
  %wide.load236 = load <8 x i8>, ptr %i.bo, align 1
  %i.bp = getelementptr inbounds i8, ptr %i.m, i64 %index235
  %wide.load237 = load <8 x i8>, ptr %i.bp, align 1
  %i.bq = sub <8 x i8> %wide.load236, %wide.load237
  %i.br = getelementptr inbounds i8, ptr %7, i64 %i.bn
  store <8 x i8> %i.bq, ptr %i.br, align 1
  %index.next238 = add nuw i64 %index235, 8       ; 2 uses
  %i.bs = icmp eq i64 %index.next238, %n.vec234
  br i1 %i.bs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !69

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n239 = icmp eq i64 %i.ax, %n.vec234
  br i1 %cmp.n239, label %.loopexit, label %.lr.ph163.preheader

.lr.ph163.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv180.ph = phi i64 [ %i.aw, %iter.check ], [ %i.aw, %vector.memcheck ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ] ; 7 uses
  %i.bt = sub nsw i64 %wide.trip.count183, %indvars.iv180.ph
  %xtraiter = and i64 %i.bt, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph163.prol.loopexit, label %.lr.ph163.prol

.lr.ph163.prol:                                   ; preds = %.lr.ph163.preheader
  %i.bu = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv180.ph
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = sub nsw i64 %indvars.iv180.ph, %i.aw
  %i.bx = getelementptr inbounds i8, ptr %i.m, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = sub i8 %i.bv, %i.by
  %i.ca = getelementptr inbounds i8, ptr %7, i64 %indvars.iv180.ph
  store i8 %i.bz, ptr %i.ca, align 1
  %indvars.iv.next181.prol = add nsw i64 %indvars.iv180.ph, 1
  br label %.lr.ph163.prol.loopexit

.lr.ph163.prol.loopexit:                          ; preds = %.lr.ph163.prol, %.lr.ph163.preheader
  %indvars.iv180.unr = phi i64 [ %indvars.iv180.ph, %.lr.ph163.preheader ], [ %indvars.iv.next181.prol, %.lr.ph163.prol ]
  %i.cb = add nsw i64 %wide.trip.count183, -1
  %i.cc = icmp eq i64 %indvars.iv180.ph, %i.cb
  br i1 %i.cc, label %.loopexit, label %.lr.ph163

.preheader156:                                    ; preds = %._crit_edge
  %i.cd = mul nsw i32 %5, %2                      ; 2 uses
  %i.ce = icmp slt i32 %5, %i.cd
  br i1 %i.ce, label %iter.check262, label %.loopexit

iter.check262:                                    ; preds = %.preheader156
  %i.cf = sext i32 %5 to i64                      ; 11 uses
  %wide.trip.count188 = sext i32 %i.cd to i64     ; 4 uses
  %i.cg = sub nsw i64 %wide.trip.count188, %i.cf  ; 7 uses
  %min.iters.check244 = icmp ult i64 %i.cg, 8
  br i1 %min.iters.check244, label %.lr.ph165.preheader, label %vector.memcheck245

vector.memcheck245:                               ; preds = %iter.check262
  %i.ch = add i64 %i.b, %i.l                      ; 2 uses
  %10 = sub i64 %i.ch, %i.a
  %diff.check246 = icmp ugt i64 %10, -32
  %11 = add i64 %i.a, %i.cf
  %i.ci = sub i64 %i.ch, %11
  %diff.check247 = icmp ugt i64 %i.ci, -32
  %conflict.rdx248 = or i1 %diff.check246, %diff.check247
  br i1 %conflict.rdx248, label %.lr.ph165.preheader, label %vector.main.loop.iter.check249

vector.main.loop.iter.check249:                   ; preds = %vector.memcheck245
  %min.iters.check250 = icmp ult i64 %i.cg, 32
  br i1 %min.iters.check250, label %vec.epilog.ph266, label %vector.ph251

vector.ph251:                                     ; preds = %vector.main.loop.iter.check249
  %i.cj = and i64 %i.cg, 24
  %n.vec252 = and i64 %i.cg, -32                  ; 4 uses
  %i.ck = add nsw i64 %n.vec252, %i.cf
  br label %vector.body253

vector.body253:                                   ; preds = %vector.ph251, %vector.body253
  %index254 = phi i64 [ 0, %vector.ph251 ], [ %index.next259, %vector.body253 ] ; 3 uses
  %i.cl = add i64 %index254, %i.cf                ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %i.m, i64 %i.cl ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %wide.load255 = load <16 x i8>, ptr %i.cm, align 1
  %wide.load256 = load <16 x i8>, ptr %i.cn, align 1
  %i.co = getelementptr inbounds i8, ptr %i.m, i64 %index254 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %wide.load257 = load <16 x i8>, ptr %i.co, align 1
  %wide.load258 = load <16 x i8>, ptr %i.cp, align 1
  %i.cq = lshr <16 x i8> %wide.load257, splat (i8 1)
  %i.cr = lshr <16 x i8> %wide.load258, splat (i8 1)
  %i.cs = sub <16 x i8> %wide.load255, %i.cq
  %i.ct = sub <16 x i8> %wide.load256, %i.cr
  %i.cu = getelementptr inbounds i8, ptr %7, i64 %i.cl ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store <16 x i8> %i.cs, ptr %i.cu, align 1
  store <16 x i8> %i.ct, ptr %i.cv, align 1
  %index.next259 = add nuw i64 %index254, 32      ; 2 uses
  %i.cw = icmp eq i64 %index.next259, %n.vec252
  br i1 %i.cw, label %middle.block260, label %vector.body253, !llvm.loop !70

middle.block260:                                  ; preds = %vector.body253
  %cmp.n261 = icmp eq i64 %i.cg, %n.vec252
  br i1 %cmp.n261, label %.loopexit, label %vec.epilog.iter.check263

vec.epilog.iter.check263:                         ; preds = %middle.block260
  %min.epilog.iters.check265 = icmp eq i64 %i.cj, 0
  br i1 %min.epilog.iters.check265, label %.lr.ph165.preheader, label %vec.epilog.ph266, !prof !17

vec.epilog.ph266:                                 ; preds = %vector.main.loop.iter.check249, %vec.epilog.iter.check263
  %vec.epilog.resume.val267 = phi i64 [ %n.vec252, %vec.epilog.iter.check263 ], [ 0, %vector.main.loop.iter.check249 ]
  %n.vec268 = and i64 %i.cg, -8                   ; 3 uses
  %i.cx = add nsw i64 %n.vec268, %i.cf
  br label %vec.epilog.vector.body269

vec.epilog.vector.body269:                        ; preds = %vec.epilog.vector.body269, %vec.epilog.ph266
  %index270 = phi i64 [ %vec.epilog.resume.val267, %vec.epilog.ph266 ], [ %index.next273, %vec.epilog.vector.body269 ] ; 3 uses
  %i.cy = add i64 %index270, %i.cf                ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.m, i64 %i.cy
  %wide.load271 = load <8 x i8>, ptr %i.cz, align 1
  %i.da = getelementptr inbounds i8, ptr %i.m, i64 %index270
  %wide.load272 = load <8 x i8>, ptr %i.da, align 1
  %i.db = lshr <8 x i8> %wide.load272, splat (i8 1)
  %i.dc = sub <8 x i8> %wide.load271, %i.db
  %i.dd = getelementptr inbounds i8, ptr %7, i64 %i.cy
  store <8 x i8> %i.dc, ptr %i.dd, align 1
  %index.next273 = add nuw i64 %index270, 8       ; 2 uses
  %i.de = icmp eq i64 %index.next273, %n.vec268
  br i1 %i.de, label %vec.epilog.middle.block274, label %vec.epilog.vector.body269, !llvm.loop !71

vec.epilog.middle.block274:                       ; preds = %vec.epilog.vector.body269
  %cmp.n275 = icmp eq i64 %i.cg, %n.vec268
  br i1 %cmp.n275, label %.loopexit, label %.lr.ph165.preheader

.lr.ph165.preheader:                              ; preds = %iter.check262, %vector.memcheck245, %vec.epilog.iter.check263, %vec.epilog.middle.block274
  %indvars.iv185.ph = phi i64 [ %i.cf, %iter.check262 ], [ %i.cf, %vector.memcheck245 ], [ %i.ck, %vec.epilog.iter.check263 ], [ %i.cx, %vec.epilog.middle.block274 ] ; 7 uses
  %i.df = sub nsw i64 %wide.trip.count188, %indvars.iv185.ph
  %xtraiter444 = and i64 %i.df, 1
  %lcmp.mod445.not = icmp eq i64 %xtraiter444, 0
  br i1 %lcmp.mod445.not, label %.lr.ph165.prol.loopexit, label %.lr.ph165.prol

.lr.ph165.prol:                                   ; preds = %.lr.ph165.preheader
  %i.dg = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv185.ph
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = sub nsw i64 %indvars.iv185.ph, %i.cf
  %i.dj = getelementptr inbounds i8, ptr %i.m, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = lshr i8 %i.dk, 1
  %i.dm = sub i8 %i.dh, %i.dl
  %i.dn = getelementptr inbounds i8, ptr %7, i64 %indvars.iv185.ph
  store i8 %i.dm, ptr %i.dn, align 1
  %indvars.iv.next186.prol = add nsw i64 %indvars.iv185.ph, 1
  br label %.lr.ph165.prol.loopexit

.lr.ph165.prol.loopexit:                          ; preds = %.lr.ph165.prol, %.lr.ph165.preheader
  %indvars.iv185.unr = phi i64 [ %indvars.iv185.ph, %.lr.ph165.preheader ], [ %indvars.iv.next186.prol, %.lr.ph165.prol ]
  %i.do = add nsw i64 %wide.trip.count188, -1
  %i.dp = icmp eq i64 %indvars.iv185.ph, %i.do
  br i1 %i.dp, label %.loopexit, label %.lr.ph165

.preheader154:                                    ; preds = %._crit_edge
  %i.dq = mul nsw i32 %5, %2                      ; 2 uses
  %i.dr = icmp slt i32 %5, %i.dq
  br i1 %i.dr, label %iter.check307, label %.loopexit

iter.check307:                                    ; preds = %.preheader154
  %i.ds = sext i32 %5 to i64                      ; 13 uses
  %i.dt = sext i32 %i.o to i64                    ; 4 uses
  %wide.trip.count193 = sext i32 %i.dq to i64     ; 2 uses
  %i.du = sub nsw i64 %wide.trip.count193, %i.ds  ; 7 uses
  %min.iters.check285 = icmp ult i64 %i.du, 4
  br i1 %min.iters.check285, label %.lr.ph167.preheader, label %vector.memcheck286

vector.memcheck286:                               ; preds = %iter.check307
  %i.dv = add i64 %i.b, %i.l                      ; 3 uses
  %i.dw = sub i64 %i.dv, %i.a
  %diff.check287 = icmp ugt i64 %i.dw, -16
  %i.dx = add i64 %i.a, %i.ds
  %i.dy = sub i64 %i.dv, %i.dx
  %diff.check288 = icmp ugt i64 %i.dy, -16
  %conflict.rdx289 = or i1 %diff.check287, %diff.check288
  %i.dz = add i64 %i.a, %i.dt                     ; 2 uses
  %i.ea = sub i64 %i.dv, %i.dz
  %diff.check290 = icmp ugt i64 %i.ea, -16
  %conflict.rdx291 = or i1 %conflict.rdx289, %diff.check290
  %12 = add i64 %i.dz, %i.ds
  %13 = add i64 %i.b, %i.l
  %i.eb = sub i64 %13, %12
  %diff.check292 = icmp ugt i64 %i.eb, -16
  %conflict.rdx293 = or i1 %conflict.rdx291, %diff.check292
  br i1 %conflict.rdx293, label %.lr.ph167.preheader, label %vector.main.loop.iter.check294

vector.main.loop.iter.check294:                   ; preds = %vector.memcheck286
  %min.iters.check295 = icmp ult i64 %i.du, 16
  br i1 %min.iters.check295, label %vec.epilog.ph311, label %vector.ph296

vector.ph296:                                     ; preds = %vector.main.loop.iter.check294
  %i.ec = and i64 %i.du, 12
  %n.vec297 = and i64 %i.du, -16                  ; 4 uses
  %i.ed = add nsw i64 %n.vec297, %i.ds
  br label %vector.body298

vector.body298:                                   ; preds = %vector.ph296, %vector.body298
  %index299 = phi i64 [ 0, %vector.ph296 ], [ %index.next304, %vector.body298 ] ; 3 uses
  %i.ee = add i64 %index299, %i.ds                ; 3 uses
  %i.ef = getelementptr inbounds i8, ptr %i.m, i64 %i.ee
  %wide.load300 = load <16 x i8>, ptr %i.ef, align 1
  %i.eg = getelementptr inbounds i8, ptr %i.m, i64 %index299
  %wide.load301 = load <16 x i8>, ptr %i.eg, align 1 ; 2 uses
  %i.eh = zext <16 x i8> %wide.load301 to <16 x i32> ; 2 uses
  %i.ei = sub nsw i64 %i.ee, %i.dt                ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %i.m, i64 %i.ei
  %wide.load302 = load <16 x i8>, ptr %i.ej, align 1 ; 2 uses
  %i.ek = zext <16 x i8> %wide.load302 to <16 x i32> ; 2 uses
  %i.el = sub nsw i64 %i.ei, %i.ds
  %i.em = getelementptr inbounds i8, ptr %i.m, i64 %i.el
  %wide.load303 = load <16 x i8>, ptr %i.em, align 1 ; 2 uses
  %i.en = zext <16 x i8> %wide.load303 to <16 x i32> ; 2 uses
  %i.eo = add nuw nsw <16 x i32> %i.ek, %i.eh
  %i.ep = sub nsw <16 x i32> %i.eo, %i.en         ; 3 uses
  %i.eq = sub nsw <16 x i32> %i.ep, %i.eh
  %i.er = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.eq, i1 true) ; 2 uses
  %i.es = sub nsw <16 x i32> %i.ep, %i.ek
  %i.et = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.es, i1 true) ; 2 uses
  %i.eu = sub nsw <16 x i32> %i.ep, %i.en
  %i.ev = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.eu, i1 true) ; 2 uses
  %i.ew = icmp samesign ugt <16 x i32> %i.er, %i.et
  %i.ex = icmp samesign ugt <16 x i32> %i.er, %i.ev
  %i.ey = select <16 x i1> %i.ew, <16 x i1> splat (i1 true), <16 x i1> %i.ex
  %i.ez = icmp samesign ugt <16 x i32> %i.et, %i.ev
  %i.fa = select <16 x i1> %i.ez, <16 x i8> %wide.load303, <16 x i8> %wide.load302
  %i.fb = select <16 x i1> %i.ey, <16 x i8> %i.fa, <16 x i8> %wide.load301
  %i.fc = sub <16 x i8> %wide.load300, %i.fb
  %i.fd = getelementptr inbounds i8, ptr %7, i64 %i.ee
  store <16 x i8> %i.fc, ptr %i.fd, align 1
  %index.next304 = add nuw i64 %index299, 16      ; 2 uses
  %i.fe = icmp eq i64 %index.next304, %n.vec297
  br i1 %i.fe, label %middle.block305, label %vector.body298, !llvm.loop !72

middle.block305:                                  ; preds = %vector.body298
  %cmp.n306 = icmp eq i64 %i.du, %n.vec297
  br i1 %cmp.n306, label %.loopexit, label %vec.epilog.iter.check308

vec.epilog.iter.check308:                         ; preds = %middle.block305
  %min.epilog.iters.check310 = icmp eq i64 %i.ec, 0
  br i1 %min.epilog.iters.check310, label %.lr.ph167.preheader, label %vec.epilog.ph311, !prof !13

vec.epilog.ph311:                                 ; preds = %vector.main.loop.iter.check294, %vec.epilog.iter.check308
  %vec.epilog.resume.val312 = phi i64 [ %n.vec297, %vec.epilog.iter.check308 ], [ 0, %vector.main.loop.iter.check294 ]
  %n.vec313 = and i64 %i.du, -4                   ; 3 uses
  %i.ff = add nsw i64 %n.vec313, %i.ds
  br label %vec.epilog.vector.body314

vec.epilog.vector.body314:                        ; preds = %vec.epilog.vector.body314, %vec.epilog.ph311
  %index315 = phi i64 [ %vec.epilog.resume.val312, %vec.epilog.ph311 ], [ %index.next320, %vec.epilog.vector.body314 ] ; 3 uses
  %i.fg = add i64 %index315, %i.ds                ; 3 uses
  %i.fh = getelementptr inbounds i8, ptr %i.m, i64 %i.fg
  %wide.load316 = load <4 x i8>, ptr %i.fh, align 1
  %i.fi = getelementptr inbounds i8, ptr %i.m, i64 %index315
  %wide.load317 = load <4 x i8>, ptr %i.fi, align 1 ; 2 uses
  %i.fj = zext <4 x i8> %wide.load317 to <4 x i32> ; 2 uses
  %i.fk = sub nsw i64 %i.fg, %i.dt                ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr %i.m, i64 %i.fk
  %wide.load318 = load <4 x i8>, ptr %i.fl, align 1 ; 2 uses
  %i.fm = zext <4 x i8> %wide.load318 to <4 x i32> ; 2 uses
  %i.fn = sub nsw i64 %i.fk, %i.ds
  %i.fo = getelementptr inbounds i8, ptr %i.m, i64 %i.fn
  %wide.load319 = load <4 x i8>, ptr %i.fo, align 1 ; 2 uses
  %i.fp = zext <4 x i8> %wide.load319 to <4 x i32> ; 2 uses
  %i.fq = add nuw nsw <4 x i32> %i.fm, %i.fj
  %i.fr = sub nsw <4 x i32> %i.fq, %i.fp          ; 3 uses
  %i.fs = sub nsw <4 x i32> %i.fr, %i.fj
  %i.ft = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.fs, i1 true) ; 2 uses
  %i.fu = sub nsw <4 x i32> %i.fr, %i.fm
  %i.fv = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.fu, i1 true) ; 2 uses
  %i.fw = sub nsw <4 x i32> %i.fr, %i.fp
  %i.fx = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.fw, i1 true) ; 2 uses
  %i.fy = icmp samesign ugt <4 x i32> %i.ft, %i.fv
  %i.fz = icmp samesign ugt <4 x i32> %i.ft, %i.fx
  %i.ga = select <4 x i1> %i.fy, <4 x i1> splat (i1 true), <4 x i1> %i.fz
  %i.gb = icmp samesign ugt <4 x i32> %i.fv, %i.fx
  %i.gc = select <4 x i1> %i.gb, <4 x i8> %wide.load319, <4 x i8> %wide.load318
  %i.gd = select <4 x i1> %i.ga, <4 x i8> %i.gc, <4 x i8> %wide.load317
  %i.ge = sub <4 x i8> %wide.load316, %i.gd
  %i.gf = getelementptr inbounds i8, ptr %7, i64 %i.fg
  store <4 x i8> %i.ge, ptr %i.gf, align 1
  %index.next320 = add nuw i64 %index315, 4       ; 2 uses
  %i.gg = icmp eq i64 %index.next320, %n.vec313
  br i1 %i.gg, label %vec.epilog.middle.block321, label %vec.epilog.vector.body314, !llvm.loop !73

vec.epilog.middle.block321:                       ; preds = %vec.epilog.vector.body314
  %cmp.n322 = icmp eq i64 %i.du, %n.vec313
  br i1 %cmp.n322, label %.loopexit, label %.lr.ph167.preheader

.lr.ph167.preheader:                              ; preds = %iter.check307, %vector.memcheck286, %vec.epilog.iter.check308, %vec.epilog.middle.block321
  %indvars.iv190.ph = phi i64 [ %i.ds, %iter.check307 ], [ %i.ds, %vector.memcheck286 ], [ %i.ed, %vec.epilog.iter.check308 ], [ %i.ff, %vec.epilog.middle.block321 ]
  br label %.lr.ph167

.preheader152:                                    ; preds = %._crit_edge
  %i.gh = mul nsw i32 %5, %2                      ; 2 uses
  %i.gi = icmp slt i32 %5, %i.gh
  br i1 %i.gi, label %iter.check349, label %.loopexit

iter.check349:                                    ; preds = %.preheader152
  %i.gj = sext i32 %5 to i64                      ; 11 uses
  %i.gk = sext i32 %i.o to i64                    ; 6 uses
  %wide.trip.count198 = sext i32 %i.gh to i64     ; 4 uses
  %i.gl = sub nsw i64 %wide.trip.count198, %i.gj  ; 7 uses
  %min.iters.check330 = icmp ult i64 %i.gl, 4
  br i1 %min.iters.check330, label %.lr.ph169.preheader, label %vector.memcheck331

vector.memcheck331:                               ; preds = %iter.check349
  %i.gm = add i64 %i.b, %i.l                      ; 3 uses
  %i.gn = sub i64 %i.gm, %i.a
  %diff.check332 = icmp ugt i64 %i.gn, -16
  %i.go = add i64 %i.a, %i.gj
  %i.gp = sub i64 %i.gm, %i.go
  %diff.check333 = icmp ugt i64 %i.gp, -16
  %conflict.rdx334 = or i1 %diff.check332, %diff.check333
  %14 = add i64 %i.a, %i.gk
  %i.gq = sub i64 %i.gm, %14
  %diff.check335 = icmp ugt i64 %i.gq, -16
  %conflict.rdx336 = or i1 %conflict.rdx334, %diff.check335
  br i1 %conflict.rdx336, label %.lr.ph169.preheader, label %vector.main.loop.iter.check337

vector.main.loop.iter.check337:                   ; preds = %vector.memcheck331
  %min.iters.check338 = icmp ult i64 %i.gl, 16
  br i1 %min.iters.check338, label %vec.epilog.ph353, label %vector.ph339

vector.ph339:                                     ; preds = %vector.main.loop.iter.check337
  %i.gr = and i64 %i.gl, 12
  %n.vec340 = and i64 %i.gl, -16                  ; 4 uses
  %i.gs = add nsw i64 %n.vec340, %i.gj
  br label %vector.body341

vector.body341:                                   ; preds = %vector.ph339, %vector.body341
  %index342 = phi i64 [ 0, %vector.ph339 ], [ %index.next346, %vector.body341 ] ; 3 uses
  %i.gt = add i64 %index342, %i.gj                ; 3 uses
  %i.gu = getelementptr inbounds i8, ptr %i.m, i64 %i.gt
  %wide.load343 = load <16 x i8>, ptr %i.gu, align 1
  %i.gv = getelementptr inbounds i8, ptr %i.m, i64 %index342
  %wide.load344 = load <16 x i8>, ptr %i.gv, align 1
  %i.gw = zext <16 x i8> %wide.load344 to <16 x i16>
  %i.gx = sub nsw i64 %i.gt, %i.gk
  %i.gy = getelementptr inbounds i8, ptr %i.m, i64 %i.gx
  %wide.load345 = load <16 x i8>, ptr %i.gy, align 1
  %i.gz = zext <16 x i8> %wide.load345 to <16 x i16>
  %i.ha = add nuw nsw <16 x i16> %i.gz, %i.gw
  %i.hb = lshr <16 x i16> %i.ha, splat (i16 1)
  %i.hc = trunc nuw <16 x i16> %i.hb to <16 x i8>
  %i.hd = sub <16 x i8> %wide.load343, %i.hc
  %i.he = getelementptr inbounds i8, ptr %7, i64 %i.gt
  store <16 x i8> %i.hd, ptr %i.he, align 1
  %index.next346 = add nuw i64 %index342, 16      ; 2 uses
  %i.hf = icmp eq i64 %index.next346, %n.vec340
  br i1 %i.hf, label %middle.block347, label %vector.body341, !llvm.loop !74

middle.block347:                                  ; preds = %vector.body341
  %cmp.n348 = icmp eq i64 %i.gl, %n.vec340
  br i1 %cmp.n348, label %.loopexit, label %vec.epilog.iter.check350

vec.epilog.iter.check350:                         ; preds = %middle.block347
  %min.epilog.iters.check352 = icmp eq i64 %i.gr, 0
  br i1 %min.epilog.iters.check352, label %.lr.ph169.preheader, label %vec.epilog.ph353, !prof !13

vec.epilog.ph353:                                 ; preds = %vector.main.loop.iter.check337, %vec.epilog.iter.check350
  %vec.epilog.resume.val354 = phi i64 [ %n.vec340, %vec.epilog.iter.check350 ], [ 0, %vector.main.loop.iter.check337 ]
  %n.vec355 = and i64 %i.gl, -4                   ; 3 uses
  %i.hg = add nsw i64 %n.vec355, %i.gj
  br label %vec.epilog.vector.body356

vec.epilog.vector.body356:                        ; preds = %vec.epilog.vector.body356, %vec.epilog.ph353
  %index357 = phi i64 [ %vec.epilog.resume.val354, %vec.epilog.ph353 ], [ %index.next361, %vec.epilog.vector.body356 ] ; 3 uses
  %i.hh = add i64 %index357, %i.gj                ; 3 uses
  %i.hi = getelementptr inbounds i8, ptr %i.m, i64 %i.hh
  %wide.load358 = load <4 x i8>, ptr %i.hi, align 1
  %i.hj = getelementptr inbounds i8, ptr %i.m, i64 %index357
  %wide.load359 = load <4 x i8>, ptr %i.hj, align 1
  %i.hk = zext <4 x i8> %wide.load359 to <4 x i16>
  %i.hl = sub nsw i64 %i.hh, %i.gk
  %i.hm = getelementptr inbounds i8, ptr %i.m, i64 %i.hl
  %wide.load360 = load <4 x i8>, ptr %i.hm, align 1
  %i.hn = zext <4 x i8> %wide.load360 to <4 x i16>
  %i.ho = add nuw nsw <4 x i16> %i.hn, %i.hk
  %i.hp = lshr <4 x i16> %i.ho, splat (i16 1)
  %i.hq = trunc nuw <4 x i16> %i.hp to <4 x i8>
  %i.hr = sub <4 x i8> %wide.load358, %i.hq
  %i.hs = getelementptr inbounds i8, ptr %7, i64 %i.hh
  store <4 x i8> %i.hr, ptr %i.hs, align 1
  %index.next361 = add nuw i64 %index357, 4       ; 2 uses
  %i.ht = icmp eq i64 %index.next361, %n.vec355
  br i1 %i.ht, label %vec.epilog.middle.block362, label %vec.epilog.vector.body356, !llvm.loop !75

vec.epilog.middle.block362:                       ; preds = %vec.epilog.vector.body356
  %cmp.n363 = icmp eq i64 %i.gl, %n.vec355
  br i1 %cmp.n363, label %.loopexit, label %.lr.ph169.preheader

.lr.ph169.preheader:                              ; preds = %iter.check349, %vector.memcheck331, %vec.epilog.iter.check350, %vec.epilog.middle.block362
  %indvars.iv195.ph = phi i64 [ %i.gj, %iter.check349 ], [ %i.gj, %vector.memcheck331 ], [ %i.gs, %vec.epilog.iter.check350 ], [ %i.hg, %vec.epilog.middle.block362 ] ; 8 uses
  %i.hu = sub nsw i64 %wide.trip.count198, %indvars.iv195.ph
  %xtraiter446 = and i64 %i.hu, 1
  %lcmp.mod447.not = icmp eq i64 %xtraiter446, 0
  br i1 %lcmp.mod447.not, label %.lr.ph169.prol.loopexit, label %.lr.ph169.prol

.lr.ph169.prol:                                   ; preds = %.lr.ph169.preheader
  %i.hv = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv195.ph
  %i.hw = load i8, ptr %i.hv, align 1
  %i.hx = sub nsw i64 %indvars.iv195.ph, %i.gj
  %i.hy = getelementptr inbounds i8, ptr %i.m, i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1
  %i.ia = zext i8 %i.hz to i16
  %i.ib = sub nsw i64 %indvars.iv195.ph, %i.gk
  %i.ic = getelementptr inbounds i8, ptr %i.m, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1
  %i.ie = zext i8 %i.id to i16
  %i.if = add nuw nsw i16 %i.ie, %i.ia
  %i.ig = lshr i16 %i.if, 1
  %i.ih = trunc nuw i16 %i.ig to i8
  %i.ii = sub i8 %i.hw, %i.ih
  %i.ij = getelementptr inbounds i8, ptr %7, i64 %indvars.iv195.ph
  store i8 %i.ii, ptr %i.ij, align 1
  %indvars.iv.next196.prol = add nsw i64 %indvars.iv195.ph, 1
  br label %.lr.ph169.prol.loopexit

.lr.ph169.prol.loopexit:                          ; preds = %.lr.ph169.prol, %.lr.ph169.preheader
  %indvars.iv195.unr = phi i64 [ %indvars.iv195.ph, %.lr.ph169.preheader ], [ %indvars.iv.next196.prol, %.lr.ph169.prol ]
  %i.ik = add nsw i64 %wide.trip.count198, -1
  %i.il = icmp eq i64 %indvars.iv195.ph, %i.ik
  br i1 %i.il, label %.loopexit, label %.lr.ph169

.preheader150:                                    ; preds = %._crit_edge
  %i.im = mul nsw i32 %5, %2                      ; 2 uses
  %i.in = icmp slt i32 %5, %i.im
  br i1 %i.in, label %iter.check387, label %.loopexit

iter.check387:                                    ; preds = %.preheader150
  %i.io = sext i32 %5 to i64                      ; 7 uses
  %i.ip = sext i32 %i.o to i64                    ; 6 uses
  %wide.trip.count203 = sext i32 %i.im to i64     ; 4 uses
  %i.iq = sub nsw i64 %wide.trip.count203, %i.io  ; 7 uses
  %min.iters.check369 = icmp ult i64 %i.iq, 8
  br i1 %min.iters.check369, label %.lr.ph171.preheader, label %vector.memcheck370

vector.memcheck370:                               ; preds = %iter.check387
  %i.ir = add i64 %i.b, %i.l                      ; 2 uses
  %15 = sub i64 %i.ir, %i.a
  %diff.check371 = icmp ugt i64 %15, -32
  %16 = add i64 %i.a, %i.ip
  %i.is = sub i64 %i.ir, %16
  %diff.check372 = icmp ugt i64 %i.is, -32
  %conflict.rdx373 = or i1 %diff.check371, %diff.check372
  br i1 %conflict.rdx373, label %.lr.ph171.preheader, label %vector.main.loop.iter.check374

vector.main.loop.iter.check374:                   ; preds = %vector.memcheck370
  %min.iters.check375 = icmp ult i64 %i.iq, 32
  br i1 %min.iters.check375, label %vec.epilog.ph391, label %vector.ph376

vector.ph376:                                     ; preds = %vector.main.loop.iter.check374
  %i.it = and i64 %i.iq, 24
  %n.vec377 = and i64 %i.iq, -32                  ; 4 uses
  %i.iu = add nsw i64 %n.vec377, %i.io
  br label %vector.body378

vector.body378:                                   ; preds = %vector.ph376, %vector.body378
  %index379 = phi i64 [ 0, %vector.ph376 ], [ %index.next384, %vector.body378 ] ; 2 uses
  %i.iv = add i64 %index379, %i.io                ; 3 uses
  %i.iw = getelementptr inbounds i8, ptr %i.m, i64 %i.iv ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %wide.load380 = load <16 x i8>, ptr %i.iw, align 1
  %wide.load381 = load <16 x i8>, ptr %i.ix, align 1
  %i.iy = sub nsw i64 %i.iv, %i.ip
  %i.iz = getelementptr inbounds i8, ptr %i.m, i64 %i.iy ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %wide.load382 = load <16 x i8>, ptr %i.iz, align 1
  %wide.load383 = load <16 x i8>, ptr %i.ja, align 1
  %i.jb = sub <16 x i8> %wide.load380, %wide.load382
  %i.jc = sub <16 x i8> %wide.load381, %wide.load383
  %i.jd = getelementptr inbounds i8, ptr %7, i64 %i.iv ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store <16 x i8> %i.jb, ptr %i.jd, align 1
  store <16 x i8> %i.jc, ptr %i.je, align 1
  %index.next384 = add nuw i64 %index379, 32      ; 2 uses
  %i.jf = icmp eq i64 %index.next384, %n.vec377
  br i1 %i.jf, label %middle.block385, label %vector.body378, !llvm.loop !76

middle.block385:                                  ; preds = %vector.body378
  %cmp.n386 = icmp eq i64 %i.iq, %n.vec377
  br i1 %cmp.n386, label %.loopexit, label %vec.epilog.iter.check388

vec.epilog.iter.check388:                         ; preds = %middle.block385
  %min.epilog.iters.check390 = icmp eq i64 %i.it, 0
  br i1 %min.epilog.iters.check390, label %.lr.ph171.preheader, label %vec.epilog.ph391, !prof !17

vec.epilog.ph391:                                 ; preds = %vector.main.loop.iter.check374, %vec.epilog.iter.check388
  %vec.epilog.resume.val392 = phi i64 [ %n.vec377, %vec.epilog.iter.check388 ], [ 0, %vector.main.loop.iter.check374 ]
  %n.vec393 = and i64 %i.iq, -8                   ; 3 uses
  %i.jg = add nsw i64 %n.vec393, %i.io
  br label %vec.epilog.vector.body394

vec.epilog.vector.body394:                        ; preds = %vec.epilog.vector.body394, %vec.epilog.ph391
  %index395 = phi i64 [ %vec.epilog.resume.val392, %vec.epilog.ph391 ], [ %index.next398, %vec.epilog.vector.body394 ] ; 2 uses
  %i.jh = add i64 %index395, %i.io                ; 3 uses
  %i.ji = getelementptr inbounds i8, ptr %i.m, i64 %i.jh
  %wide.load396 = load <8 x i8>, ptr %i.ji, align 1
  %i.jj = sub nsw i64 %i.jh, %i.ip
  %i.jk = getelementptr inbounds i8, ptr %i.m, i64 %i.jj
  %wide.load397 = load <8 x i8>, ptr %i.jk, align 1
  %i.jl = sub <8 x i8> %wide.load396, %wide.load397
  %i.jm = getelementptr inbounds i8, ptr %7, i64 %i.jh
  store <8 x i8> %i.jl, ptr %i.jm, align 1
  %index.next398 = add nuw i64 %index395, 8       ; 2 uses
  %i.jn = icmp eq i64 %index.next398, %n.vec393
  br i1 %i.jn, label %vec.epilog.middle.block399, label %vec.epilog.vector.body394, !llvm.loop !77

vec.epilog.middle.block399:                       ; preds = %vec.epilog.vector.body394
  %cmp.n400 = icmp eq i64 %i.iq, %n.vec393
  br i1 %cmp.n400, label %.loopexit, label %.lr.ph171.preheader

.lr.ph171.preheader:                              ; preds = %iter.check387, %vector.memcheck370, %vec.epilog.iter.check388, %vec.epilog.middle.block399
  %indvars.iv200.ph = phi i64 [ %i.io, %iter.check387 ], [ %i.io, %vector.memcheck370 ], [ %i.iu, %vec.epilog.iter.check388 ], [ %i.jg, %vec.epilog.middle.block399 ] ; 7 uses
  %i.jo = sub nsw i64 %wide.trip.count203, %indvars.iv200.ph
  %xtraiter448 = and i64 %i.jo, 1
  %lcmp.mod449.not = icmp eq i64 %xtraiter448, 0
  br i1 %lcmp.mod449.not, label %.lr.ph171.prol.loopexit, label %.lr.ph171.prol

.lr.ph171.prol:                                   ; preds = %.lr.ph171.preheader
  %i.jp = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv200.ph
  %i.jq = load i8, ptr %i.jp, align 1
  %i.jr = sub nsw i64 %indvars.iv200.ph, %i.ip
  %i.js = getelementptr inbounds i8, ptr %i.m, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1
  %i.ju = sub i8 %i.jq, %i.jt
  %i.jv = getelementptr inbounds i8, ptr %7, i64 %indvars.iv200.ph
  store i8 %i.ju, ptr %i.jv, align 1
  %indvars.iv.next201.prol = add nsw i64 %indvars.iv200.ph, 1
  br label %.lr.ph171.prol.loopexit

.lr.ph171.prol.loopexit:                          ; preds = %.lr.ph171.prol, %.lr.ph171.preheader
  %indvars.iv200.unr = phi i64 [ %indvars.iv200.ph, %.lr.ph171.preheader ], [ %indvars.iv.next201.prol, %.lr.ph171.prol ]
  %i.jw = add nsw i64 %wide.trip.count203, -1
  %i.jx = icmp eq i64 %indvars.iv200.ph, %i.jw
  br i1 %i.jx, label %.loopexit, label %.lr.ph171

.preheader:                                       ; preds = %._crit_edge
  %i.jy = mul nsw i32 %5, %2                      ; 2 uses
  %i.jz = icmp slt i32 %5, %i.jy
  br i1 %i.jz, label %iter.check424, label %.loopexit

iter.check424:                                    ; preds = %.preheader
  %i.ka = sext i32 %5 to i64                      ; 11 uses
  %wide.trip.count208 = sext i32 %i.jy to i64     ; 4 uses
  %i.kb = sub nsw i64 %wide.trip.count208, %i.ka  ; 7 uses
  %min.iters.check406 = icmp ult i64 %i.kb, 8
  br i1 %min.iters.check406, label %.lr.ph173.preheader, label %vector.memcheck407

vector.memcheck407:                               ; preds = %iter.check424
  %i.kc = add i64 %i.b, %i.l                      ; 2 uses
  %17 = sub i64 %i.kc, %i.a
  %diff.check408 = icmp ugt i64 %17, -32
  %18 = add i64 %i.a, %i.ka
  %i.kd = sub i64 %i.kc, %18
  %diff.check409 = icmp ugt i64 %i.kd, -32
  %conflict.rdx410 = or i1 %diff.check408, %diff.check409
  br i1 %conflict.rdx410, label %.lr.ph173.preheader, label %vector.main.loop.iter.check411

vector.main.loop.iter.check411:                   ; preds = %vector.memcheck407
  %min.iters.check412 = icmp ult i64 %i.kb, 32
  br i1 %min.iters.check412, label %vec.epilog.ph428, label %vector.ph413

vector.ph413:                                     ; preds = %vector.main.loop.iter.check411
  %i.ke = and i64 %i.kb, 24
  %n.vec414 = and i64 %i.kb, -32                  ; 4 uses
  %i.kf = add nsw i64 %n.vec414, %i.ka
  br label %vector.body415

vector.body415:                                   ; preds = %vector.ph413, %vector.body415
  %index416 = phi i64 [ 0, %vector.ph413 ], [ %index.next421, %vector.body415 ] ; 3 uses
  %i.kg = add i64 %index416, %i.ka                ; 2 uses
  %i.kh = getelementptr inbounds i8, ptr %i.m, i64 %i.kg ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %wide.load417 = load <16 x i8>, ptr %i.kh, align 1
  %wide.load418 = load <16 x i8>, ptr %i.ki, align 1
  %i.kj = getelementptr inbounds i8, ptr %i.m, i64 %index416 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %wide.load419 = load <16 x i8>, ptr %i.kj, align 1
  %wide.load420 = load <16 x i8>, ptr %i.kk, align 1
  %i.kl = sub <16 x i8> %wide.load417, %wide.load419
  %i.km = sub <16 x i8> %wide.load418, %wide.load420
  %i.kn = getelementptr inbounds i8, ptr %7, i64 %i.kg ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  store <16 x i8> %i.kl, ptr %i.kn, align 1
  store <16 x i8> %i.km, ptr %i.ko, align 1
  %index.next421 = add nuw i64 %index416, 32      ; 2 uses
  %i.kp = icmp eq i64 %index.next421, %n.vec414
  br i1 %i.kp, label %middle.block422, label %vector.body415, !llvm.loop !78

middle.block422:                                  ; preds = %vector.body415
  %cmp.n423 = icmp eq i64 %i.kb, %n.vec414
  br i1 %cmp.n423, label %.loopexit, label %vec.epilog.iter.check425

vec.epilog.iter.check425:                         ; preds = %middle.block422
  %min.epilog.iters.check427 = icmp eq i64 %i.ke, 0
  br i1 %min.epilog.iters.check427, label %.lr.ph173.preheader, label %vec.epilog.ph428, !prof !17

vec.epilog.ph428:                                 ; preds = %vector.main.loop.iter.check411, %vec.epilog.iter.check425
  %vec.epilog.resume.val429 = phi i64 [ %n.vec414, %vec.epilog.iter.check425 ], [ 0, %vector.main.loop.iter.check411 ]
  %n.vec430 = and i64 %i.kb, -8                   ; 3 uses
  %i.kq = add nsw i64 %n.vec430, %i.ka
  br label %vec.epilog.vector.body431

vec.epilog.vector.body431:                        ; preds = %vec.epilog.vector.body431, %vec.epilog.ph428
  %index432 = phi i64 [ %vec.epilog.resume.val429, %vec.epilog.ph428 ], [ %index.next435, %vec.epilog.vector.body431 ] ; 3 uses
  %i.kr = add i64 %index432, %i.ka                ; 2 uses
  %i.ks = getelementptr inbounds i8, ptr %i.m, i64 %i.kr
  %wide.load433 = load <8 x i8>, ptr %i.ks, align 1
  %i.kt = getelementptr inbounds i8, ptr %i.m, i64 %index432
  %wide.load434 = load <8 x i8>, ptr %i.kt, align 1
  %i.ku = sub <8 x i8> %wide.load433, %wide.load434
  %i.kv = getelementptr inbounds i8, ptr %7, i64 %i.kr
  store <8 x i8> %i.ku, ptr %i.kv, align 1
  %index.next435 = add nuw i64 %index432, 8       ; 2 uses
  %i.kw = icmp eq i64 %index.next435, %n.vec430
  br i1 %i.kw, label %vec.epilog.middle.block436, label %vec.epilog.vector.body431, !llvm.loop !79

vec.epilog.middle.block436:                       ; preds = %vec.epilog.vector.body431
  %cmp.n437 = icmp eq i64 %i.kb, %n.vec430
  br i1 %cmp.n437, label %.loopexit, label %.lr.ph173.preheader

.lr.ph173.preheader:                              ; preds = %iter.check424, %vector.memcheck407, %vec.epilog.iter.check425, %vec.epilog.middle.block436
  %indvars.iv205.ph = phi i64 [ %i.ka, %iter.check424 ], [ %i.ka, %vector.memcheck407 ], [ %i.kf, %vec.epilog.iter.check425 ], [ %i.kq, %vec.epilog.middle.block436 ] ; 7 uses
  %i.kx = sub nsw i64 %wide.trip.count208, %indvars.iv205.ph
  %xtraiter450 = and i64 %i.kx, 1
  %lcmp.mod451.not = icmp eq i64 %xtraiter450, 0
  br i1 %lcmp.mod451.not, label %.lr.ph173.prol.loopexit, label %.lr.ph173.prol

.lr.ph173.prol:                                   ; preds = %.lr.ph173.preheader
  %i.ky = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv205.ph
  %i.kz = load i8, ptr %i.ky, align 1
  %i.la = sub nsw i64 %indvars.iv205.ph, %i.ka
  %i.lb = getelementptr inbounds i8, ptr %i.m, i64 %i.la
  %i.lc = load i8, ptr %i.lb, align 1
  %i.ld = sub i8 %i.kz, %i.lc
  %i.le = getelementptr inbounds i8, ptr %7, i64 %indvars.iv205.ph
  store i8 %i.ld, ptr %i.le, align 1
  %indvars.iv.next206.prol = add nsw i64 %indvars.iv205.ph, 1
  br label %.lr.ph173.prol.loopexit

.lr.ph173.prol.loopexit:                          ; preds = %.lr.ph173.prol, %.lr.ph173.preheader
  %indvars.iv205.unr = phi i64 [ %indvars.iv205.ph, %.lr.ph173.preheader ], [ %indvars.iv.next206.prol, %.lr.ph173.prol ]
  %i.lf = add nsw i64 %wide.trip.count208, -1
  %i.lg = icmp eq i64 %indvars.iv205.ph, %i.lf
  br i1 %i.lg, label %.loopexit, label %.lr.ph173

.lr.ph173:                                        ; preds = %.lr.ph173.prol.loopexit, %.lr.ph173
  %indvars.iv205 = phi i64 [ %indvars.iv.next206.1, %.lr.ph173 ], [ %indvars.iv205.unr, %.lr.ph173.prol.loopexit ] ; 5 uses
  %i.lh = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv205
  %i.li = load i8, ptr %i.lh, align 1
  %i.lj = sub nsw i64 %indvars.iv205, %i.ka
  %i.lk = getelementptr inbounds i8, ptr %i.m, i64 %i.lj
  %i.ll = load i8, ptr %i.lk, align 1
  %i.lm = sub i8 %i.li, %i.ll
  %i.ln = getelementptr inbounds i8, ptr %7, i64 %indvars.iv205
  store i8 %i.lm, ptr %i.ln, align 1
  %indvars.iv.next206 = add nsw i64 %indvars.iv205, 1 ; 3 uses
  %i.lo = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv.next206
  %i.lp = load i8, ptr %i.lo, align 1
  %i.lq = sub nsw i64 %indvars.iv.next206, %i.ka
  %i.lr = getelementptr inbounds i8, ptr %i.m, i64 %i.lq
  %i.ls = load i8, ptr %i.lr, align 1
  %i.lt = sub i8 %i.lp, %i.ls
  %i.lu = getelementptr inbounds i8, ptr %7, i64 %indvars.iv.next206
  store i8 %i.lt, ptr %i.lu, align 1
  %indvars.iv.next206.1 = add nsw i64 %indvars.iv205, 2 ; 2 uses
  %exitcond209.not.1 = icmp eq i64 %indvars.iv.next206.1, %wide.trip.count208
  br i1 %exitcond209.not.1, label %.loopexit, label %.lr.ph173, !llvm.loop !80

.lr.ph171:                                        ; preds = %.lr.ph171.prol.loopexit, %.lr.ph171
  %indvars.iv200 = phi i64 [ %indvars.iv.next201.1, %.lr.ph171 ], [ %indvars.iv200.unr, %.lr.ph171.prol.loopexit ] ; 5 uses
  %i.lv = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv200
  %i.lw = load i8, ptr %i.lv, align 1
  %i.lx = sub nsw i64 %indvars.iv200, %i.ip
  %i.ly = getelementptr inbounds i8, ptr %i.m, i64 %i.lx
  %i.lz = load i8, ptr %i.ly, align 1
  %i.ma = sub i8 %i.lw, %i.lz
  %i.mb = getelementptr inbounds i8, ptr %7, i64 %indvars.iv200
  store i8 %i.ma, ptr %i.mb, align 1
  %indvars.iv.next201 = add nsw i64 %indvars.iv200, 1 ; 3 uses
  %i.mc = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv.next201
  %i.md = load i8, ptr %i.mc, align 1
  %i.me = sub nsw i64 %indvars.iv.next201, %i.ip
  %i.mf = getelementptr inbounds i8, ptr %i.m, i64 %i.me
  %i.mg = load i8, ptr %i.mf, align 1
  %i.mh = sub i8 %i.md, %i.mg
  %i.mi = getelementptr inbounds i8, ptr %7, i64 %indvars.iv.next201
  store i8 %i.mh, ptr %i.mi, align 1
  %indvars.iv.next201.1 = add nsw i64 %indvars.iv200, 2 ; 2 uses
  %exitcond204.not.1 = icmp eq i64 %indvars.iv.next201.1, %wide.trip.count203
  br i1 %exitcond204.not.1, label %.loopexit, label %.lr.ph171, !llvm.loop !81

.lr.ph169:                                        ; preds = %.lr.ph169.prol.loopexit, %.lr.ph169
  %indvars.iv195 = phi i64 [ %indvars.iv.next196.1, %.lr.ph169 ], [ %indvars.iv195.unr, %.lr.ph169.prol.loopexit ] ; 6 uses
  %i.mj = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv195
  %i.mk = load i8, ptr %i.mj, align 1
  %i.ml = sub nsw i64 %indvars.iv195, %i.gj
  %i.mm = getelementptr inbounds i8, ptr %i.m, i64 %i.ml
  %i.mn = load i8, ptr %i.mm, align 1
  %i.mo = zext i8 %i.mn to i16
  %i.mp = sub nsw i64 %indvars.iv195, %i.gk
  %i.mq = getelementptr inbounds i8, ptr %i.m, i64 %i.mp
  %i.mr = load i8, ptr %i.mq, align 1
  %i.ms = zext i8 %i.mr to i16
  %i.mt = add nuw nsw i16 %i.ms, %i.mo
  %i.mu = lshr i16 %i.mt, 1
  %i.mv = trunc nuw i16 %i.mu to i8
  %i.mw = sub i8 %i.mk, %i.mv
  %i.mx = getelementptr inbounds i8, ptr %7, i64 %indvars.iv195
  store i8 %i.mw, ptr %i.mx, align 1
  %indvars.iv.next196 = add nsw i64 %indvars.iv195, 1 ; 4 uses
  %i.my = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv.next196
  %i.mz = load i8, ptr %i.my, align 1
  %i.na = sub nsw i64 %indvars.iv.next196, %i.gj
  %i.nb = getelementptr inbounds i8, ptr %i.m, i64 %i.na
  %i.nc = load i8, ptr %i.nb, align 1
  %i.nd = zext i8 %i.nc to i16
  %i.ne = sub nsw i64 %indvars.iv.next196, %i.gk
  %i.nf = getelementptr inbounds i8, ptr %i.m, i64 %i.ne
  %i.ng = load i8, ptr %i.nf, align 1
  %i.nh = zext i8 %i.ng to i16
  %i.ni = add nuw nsw i16 %i.nh, %i.nd
  %i.nj = lshr i16 %i.ni, 1
  %i.nk = trunc nuw i16 %i.nj to i8
  %i.nl = sub i8 %i.mz, %i.nk
  %i.nm = getelementptr inbounds i8, ptr %7, i64 %indvars.iv.next196
  store i8 %i.nl, ptr %i.nm, align 1
  %indvars.iv.next196.1 = add nsw i64 %indvars.iv195, 2 ; 2 uses
  %exitcond199.not.1 = icmp eq i64 %indvars.iv.next196.1, %wide.trip.count198
  br i1 %exitcond199.not.1, label %.loopexit, label %.lr.ph169, !llvm.loop !82

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %.lr.ph167
  %indvars.iv190 = phi i64 [ %indvars.iv.next191, %.lr.ph167 ], [ %indvars.iv190.ph, %.lr.ph167.preheader ] ; 5 uses
  %i.nn = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv190
  %i.no = load i8, ptr %i.nn, align 1
  %i.np = sub nsw i64 %indvars.iv190, %i.ds
  %i.nq = getelementptr inbounds i8, ptr %i.m, i64 %i.np
  %i.nr = load i8, ptr %i.nq, align 1             ; 2 uses
  %i.ns = zext i8 %i.nr to i32                    ; 2 uses
  %i.nt = sub nsw i64 %indvars.iv190, %i.dt       ; 2 uses
  %i.nu = getelementptr inbounds i8, ptr %i.m, i64 %i.nt
  %i.nv = load i8, ptr %i.nu, align 1             ; 2 uses
  %i.nw = zext i8 %i.nv to i32                    ; 2 uses
  %i.nx = sub nsw i64 %i.nt, %i.ds
  %i.ny = getelementptr inbounds i8, ptr %i.m, i64 %i.nx
  %i.nz = load i8, ptr %i.ny, align 1             ; 2 uses
  %i.oa = zext i8 %i.nz to i32                    ; 2 uses
  %i.ob = add nuw nsw i32 %i.nw, %i.ns
  %i.oc = sub nsw i32 %i.ob, %i.oa                ; 3 uses
  %i.od = sub nsw i32 %i.oc, %i.ns
  %i.oe = tail call i32 @llvm.abs.i32(i32 %i.od, i1 true) ; 2 uses
  %i.of = sub nsw i32 %i.oc, %i.nw
  %i.og = tail call i32 @llvm.abs.i32(i32 %i.of, i1 true) ; 2 uses
  %i.oh = sub nsw i32 %i.oc, %i.oa
end_hunk_0
