Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/gcm128?download=true
inline.NumInlined: 6
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@CRYPTO_gcm128_encrypt:bb.a

bb.f:                                             ; preds = %bb.e, %bb.b
  %.0160 = phi i32 [ 16, %bb.e ], [ %i.l, %bb.b ] ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !14
  %i.x = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.w) #8, !srcloc !58 ; 2 uses
  %i.y = and i32 %.0160, 15                       ; 2 uses
  %.not173 = icmp eq i32 %i.y, 0
  br i1 %.not173, label %bb.h, label %.preheader188

.preheader188:                                    ; preds = %bb.f
  %.not226 = icmp eq i64 %3, 0
  br i1 %.not226, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader188
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 400
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.0139193 = phi ptr [ %1, %.lr.ph ], [ %i.ab, %bb.g ] ; 2 uses
  %.0140192 = phi ptr [ %2, %.lr.ph ], [ %i.ah, %bb.g ] ; 2 uses
  %.0146191 = phi i64 [ %3, %.lr.ph ], [ %i.al, %bb.g ]
  %.0152190 = phi i32 [ %i.y, %.lr.ph ], [ %i.an, %bb.g ] ; 2 uses
  %.1161189 = phi i32 [ %.0160, %.lr.ph ], [ %i.ai, %bb.g ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0139193, i64 1 ; 2 uses
  %i.ac = load i8, ptr %.0139193, align 1, !tbaa !14
  %i.ad = zext nneg i32 %.0152190 to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !14
  %i.ag = xor i8 %i.af, %i.ac                     ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0140192, i64 1 ; 2 uses
  store i8 %i.ag, ptr %.0140192, align 1, !tbaa !14
  %i.ai = add i32 %.1161189, 1                    ; 3 uses
  %i.aj = zext i32 %.1161189 to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.aj
  store i8 %i.ag, ptr %i.ak, align 1, !tbaa !14
  %i.al = add nsw i64 %.0146191, -1               ; 3 uses
  %i.am = add nuw nsw i32 %.0152190, 1
  %i.an = and i32 %i.am, 15                       ; 3 uses
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = icmp ne i64 %i.al, 0
  %i.aq = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %i.aq, label %bb.g, label %._crit_edge, !llvm.loop !51

._crit_edge:                                      ; preds = %bb.g
  %i.ar = icmp eq i32 %i.an, 0
  br i1 %i.ar, label %.sink.split, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader188, %._crit_edge
  %.1161.lcssa251 = phi i32 [ %i.ai, %._crit_edge ], [ %.0160, %.preheader188 ]
  store i32 %.1161.lcssa251, ptr %i.k, align 8, !tbaa !21
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.as = icmp ugt i64 %3, 15
  %i.at = icmp ne i32 %.0160, 0
  %or.cond = select i1 %i.as, i1 %i.at, i1 false
  br i1 %or.cond, label %.sink.split, label %bb.i

.sink.split:                                      ; preds = %bb.h, %._crit_edge
  %.lcssa262.sink = phi i32 [ %i.ai, %._crit_edge ], [ %.0160, %bb.h ]
  %.1186.ph = phi ptr [ %i.ab, %._crit_edge ], [ %1, %bb.h ]
  %.1141185.ph = phi ptr [ %i.ah, %._crit_edge ], [ %2, %bb.h ]
  %.1147184.ph = phi i64 [ %i.al, %._crit_edge ], [ %3, %bb.h ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !25
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.az = zext i32 %.lcssa262.sink to i64
  tail call void %i.av(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.ay, i64 noundef %i.az) #7
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.h
  %.1186 = phi ptr [ %1, %bb.h ], [ %.1186.ph, %.sink.split ] ; 2 uses
  %.1141185 = phi ptr [ %2, %bb.h ], [ %.1141185.ph, %.sink.split ] ; 2 uses
  %.1147184 = phi i64 [ %3, %bb.h ], [ %.1147184.ph, %.sink.split ] ; 3 uses
  %.3163 = phi i32 [ %.0160, %bb.h ], [ 0, %.sink.split ] ; 10 uses
  %i.ba = icmp ugt i64 %.1147184, 3071
  br i1 %i.ba, label %.preheader187.lr.ph, label %._crit_edge207

.preheader187.lr.ph:                              ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %.preheader187

.preheader187:                                    ; preds = %.preheader187.lr.ph, %bb.k
  %.2206 = phi ptr [ %.1186, %.preheader187.lr.ph ], [ %i.br, %bb.k ]
  %.2142205 = phi ptr [ %.1141185, %.preheader187.lr.ph ], [ %i.bq, %bb.k ]
  %.2148204 = phi i64 [ %.1147184, %.preheader187.lr.ph ], [ %i.bv, %bb.k ]
  %.0156203 = phi i32 [ %i.x, %.preheader187.lr.ph ], [ %i.bg, %bb.k ]
  br label %bb.j

bb.j:                                             ; preds = %.preheader187, %bb.j
  %.3202 = phi ptr [ %.2206, %.preheader187 ], [ %i.br, %bb.j ] ; 3 uses
  %.3143201 = phi ptr [ %.2142205, %.preheader187 ], [ %i.bq, %bb.j ] ; 4 uses
  %.0155200 = phi i64 [ 3072, %.preheader187 ], [ %i.bs, %bb.j ]
  %.1157199 = phi i32 [ %.0156203, %.preheader187 ], [ %i.bg, %bb.j ]
  tail call void %i.e(ptr noundef nonnull %0, ptr noundef nonnull %i.bb, ptr noundef %i.g) #7
  %i.bg = add i32 %.1157199, 1                    ; 4 uses
  %i.bh = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bg) #8, !srcloc !59
  store i32 %i.bh, ptr %i.v, align 4, !tbaa !14
  %i.bi = load i64, ptr %.3202, align 1, !tbaa !30
  %i.bj = load i64, ptr %i.bb, align 8, !tbaa !14
  %i.bk = xor i64 %i.bj, %i.bi
  store i64 %i.bk, ptr %.3143201, align 1, !tbaa !30
  %i.bl = getelementptr inbounds nuw i8, ptr %.3202, i64 8
  %i.bm = load i64, ptr %i.bl, align 1, !tbaa !30
  %i.bn = load i64, ptr %i.bf, align 8, !tbaa !14
  %i.bo = xor i64 %i.bn, %i.bm
  %i.bp = getelementptr inbounds nuw i8, ptr %.3143201, i64 8
  store i64 %i.bo, ptr %i.bp, align 1, !tbaa !30
  %i.bq = getelementptr inbounds nuw i8, ptr %.3143201, i64 16 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.3202, i64 16 ; 3 uses
  %i.bs = add nsw i64 %.0155200, -16              ; 2 uses
  %.not177 = icmp eq i64 %i.bs, 0
  br i1 %.not177, label %bb.k, label %bb.j, !llvm.loop !52

bb.k:                                             ; preds = %bb.j
  %i.bt = load ptr, ptr %i.bc, align 8, !tbaa !25
  %i.bu = getelementptr inbounds i8, ptr %.3143201, i64 -3056
  tail call void %i.bt(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.be, ptr noundef nonnull %i.bu, i64 noundef 3072) #7
  %i.bv = add nsw i64 %.2148204, -3072            ; 3 uses
  %i.bw = icmp ugt i64 %i.bv, 3071
  br i1 %i.bw, label %.preheader187, label %._crit_edge207, !llvm.loop !53

._crit_edge207:                                   ; preds = %bb.k, %bb.i
  %.0156.lcssa = phi i32 [ %i.x, %bb.i ], [ %i.bg, %bb.k ] ; 2 uses
  %.2148.lcssa = phi i64 [ %.1147184, %bb.i ], [ %i.bv, %bb.k ] ; 3 uses
  %.2142.lcssa = phi ptr [ %.1141185, %bb.i ], [ %i.bq, %bb.k ] ; 2 uses
  %.2.lcssa = phi ptr [ %.1186, %bb.i ], [ %i.br, %bb.k ] ; 2 uses
  %i.bx = and i64 %.2148.lcssa, 4080              ; 3 uses
  %.not174 = icmp eq i64 %i.bx, 0
  br i1 %.not174, label %bb.m, label %.lr.ph217

.lr.ph217:                                        ; preds = %._crit_edge207
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph217, %bb.l
  %.4216 = phi ptr [ %.2.lcssa, %.lr.ph217 ], [ %i.cl, %bb.l ] ; 3 uses
  %.4144215 = phi ptr [ %.2142.lcssa, %.lr.ph217 ], [ %i.ck, %bb.l ] ; 3 uses
  %.3149214 = phi i64 [ %.2148.lcssa, %.lr.ph217 ], [ %i.cm, %bb.l ]
  %.2158213 = phi i32 [ %.0156.lcssa, %.lr.ph217 ], [ %i.ca, %bb.l ]
  tail call void %i.e(ptr noundef nonnull %0, ptr noundef nonnull %i.by, ptr noundef %i.g) #7
  %i.ca = add i32 %.2158213, 1                    ; 3 uses
  %i.cb = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ca) #8, !srcloc !60
  store i32 %i.cb, ptr %i.v, align 4, !tbaa !14
  %i.cc = load i64, ptr %.4216, align 1, !tbaa !30
  %i.cd = load i64, ptr %i.by, align 8, !tbaa !14
  %i.ce = xor i64 %i.cd, %i.cc
  store i64 %i.ce, ptr %.4144215, align 1, !tbaa !30
  %i.cf = getelementptr inbounds nuw i8, ptr %.4216, i64 8
  %i.cg = load i64, ptr %i.cf, align 1, !tbaa !30
  %i.ch = load i64, ptr %i.bz, align 8, !tbaa !14
  %i.ci = xor i64 %i.ch, %i.cg
  %i.cj = getelementptr inbounds nuw i8, ptr %.4144215, i64 8
  store i64 %i.ci, ptr %i.cj, align 1, !tbaa !30
  %i.ck = getelementptr inbounds nuw i8, ptr %.4144215, i64 16 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.4216, i64 16 ; 2 uses
  %i.cm = add nsw i64 %.3149214, -16              ; 3 uses
  %i.cn = icmp ugt i64 %i.cm, 15
  br i1 %i.cn, label %bb.l, label %._crit_edge218, !llvm.loop !54

._crit_edge218:                                   ; preds = %bb.l
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !25
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cs = sub nsw i64 0, %i.bx
  %i.ct = getelementptr inbounds i8, ptr %i.ck, i64 %i.cs
  tail call void %i.cp(ptr noundef nonnull %i.cq, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.ct, i64 noundef %i.bx) #7
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge218, %._crit_edge207
  %.3159 = phi i32 [ %i.ca, %._crit_edge218 ], [ %.0156.lcssa, %._crit_edge207 ]
  %.4150 = phi i64 [ %i.cm, %._crit_edge218 ], [ %.2148.lcssa, %._crit_edge207 ] ; 14 uses
  %.5145 = phi ptr [ %i.ck, %._crit_edge218 ], [ %.2142.lcssa, %._crit_edge207 ] ; 6 uses
  %.5 = phi ptr [ %i.cl, %._crit_edge218 ], [ %.2.lcssa, %._crit_edge207 ] ; 6 uses
  %.5145282 = ptrtoaddr ptr %.5145 to i64         ; 3 uses
  %.5284 = ptrtoaddr ptr %.5 to i64               ; 2 uses
  %.not175 = icmp eq i64 %.4150, 0
  br i1 %.not175, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.m
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  tail call void %i.e(ptr noundef nonnull %0, ptr noundef nonnull %i.cu, ptr noundef %i.g) #7
  %i.cv = add i32 %.3159, 1
  %i.cw = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.cv) #8, !srcloc !61
  store i32 %i.cw, ptr %i.v, align 4, !tbaa !14
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 5 uses
  %min.iters.check = icmp ult i64 %.4150, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cy = add i64 %.4150, -1                      ; 2 uses
  %i.cz = trunc i64 %i.cy to i32
  %i.da = xor i32 %.3163, -1
  %i.db = icmp ult i32 %i.da, %i.cz
  %i.dc = icmp ugt i64 %i.cy, 4294967295
  %i.dd = or i1 %i.db, %i.dc
  br i1 %i.dd, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.de = sub i64 %.5145282, %i.a
  %i.df = add i64 %i.de, -17
  %diff.check = icmp ult i64 %i.df, 15
  %i.dg = zext i32 %.3163 to i64                  ; 2 uses
  %i.dh = add i64 %i.a, %i.dg
  %i.di = sub i64 %i.dh, %.5145282
  %i.dj = add i64 %i.di, 399
  %diff.check283 = icmp ult i64 %i.dj, 15
  %conflict.rdx = or i1 %diff.check, %diff.check283
  %i.dk = sub i64 %.5284, %.5145282
  %diff.check285 = icmp ugt i64 %i.dk, -16
  %conflict.rdx286 = or i1 %conflict.rdx, %diff.check285
  %i.dl = add i64 %i.a, %i.dg
  %i.dm = sub i64 %i.dl, %.5284
  %i.dn = add i64 %i.dm, 399
  %diff.check287 = icmp ult i64 %i.dn, 15
  %conflict.rdx288 = or i1 %conflict.rdx286, %diff.check287
  br i1 %conflict.rdx288, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check289 = icmp ult i64 %.4150, 16
  br i1 %min.iters.check289, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.do = and i64 %.4150, 12
  %n.vec = and i64 %.4150, 8589934576             ; 4 uses
  %i.dp = and i64 %.4150, 15
  %i.dq = trunc i64 %n.vec to i32                 ; 2 uses
  %i.dr = add i32 %.3163, %i.dq                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ds = trunc i64 %index to i32
  %i.dt = add i32 %.3163, %i.ds
  %i.du = and i64 %index, 4294967280              ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.5, i64 %i.du
  %wide.load = load <16 x i8>, ptr %i.dv, align 1, !tbaa !14
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.du
  %wide.load290 = load <16 x i8>, ptr %i.dw, align 1, !tbaa !14
  %i.dx = xor <16 x i8> %wide.load290, %wide.load ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.5145, i64 %i.du
  store <16 x i8> %i.dx, ptr %i.dy, align 1, !tbaa !14
  %i.dz = zext i32 %i.dt to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dz
  store <16 x i8> %i.dx, ptr %i.ea, align 1, !tbaa !14
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.4150, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.do, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !31

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec293 = and i64 %.4150, 8589934588          ; 3 uses
  %i.ec = and i64 %.4150, 3
  %i.ed = trunc i64 %n.vec293 to i32              ; 2 uses
  %i.ee = add i32 %.3163, %i.ed                   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index294 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next297, %vec.epilog.vector.body ] ; 3 uses
  %i.ef = trunc i64 %index294 to i32
  %i.eg = add i32 %.3163, %i.ef
  %i.eh = and i64 %index294, 4294967292           ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.5, i64 %i.eh
  %wide.load295 = load <4 x i8>, ptr %i.ei, align 1, !tbaa !14
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.eh
  %wide.load296 = load <4 x i8>, ptr %i.ej, align 1, !tbaa !14
  %i.ek = xor <4 x i8> %wide.load296, %wide.load295 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.5145, i64 %i.eh
  store <4 x i8> %i.ek, ptr %i.el, align 1, !tbaa !14
  %i.em = zext i32 %i.eg to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.em
  store <4 x i8> %i.ek, ptr %i.en, align 1, !tbaa !14
  %index.next297 = add nuw i64 %index294, 4       ; 2 uses
  %i.eo = icmp eq i64 %index.next297, %n.vec293
  br i1 %i.eo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !56

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n298 = icmp eq i64 %.4150, %n.vec293
  br i1 %cmp.n298, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.5151225.ph = phi i64 [ %.4150, %iter.check ], [ %.4150, %vector.scevcheck ], [ %.4150, %vector.memcheck ], [ %i.dp, %vec.epilog.iter.check ], [ %i.ec, %vec.epilog.middle.block ] ; 4 uses
  %.2154224.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %i.dq, %vec.epilog.iter.check ], [ %i.ed, %vec.epilog.middle.block ] ; 3 uses
  %.4164223.ph = phi i32 [ %.3163, %iter.check ], [ %.3163, %vector.scevcheck ], [ %.3163, %vector.memcheck ], [ %i.dr, %vec.epilog.iter.check ], [ %i.ee, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.5151225.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ep = add nsw i64 %.5151225.ph, -1
  %i.eq = zext i32 %.2154224.ph to i64            ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.5, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !14
  %i.et = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.eq
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !14
  %i.ev = xor i8 %i.eu, %i.es                     ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.5145, i64 %i.eq
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !14
  %i.ex = add i32 %.4164223.ph, 1                 ; 2 uses
  %i.ey = zext i32 %.4164223.ph to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.ey
  store i8 %i.ev, ptr %i.ez, align 1, !tbaa !14
  %i.fa = add i32 %.2154224.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ex, %vec.epilog.scalar.ph.prol ]
  %.5151225.unr = phi i64 [ %.5151225.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ep, %vec.epilog.scalar.ph.prol ]
  %.2154224.unr = phi i32 [ %.2154224.ph, %vec.epilog.scalar.ph.preheader ], [ %i.fa, %vec.epilog.scalar.ph.prol ]
  %.4164223.unr = phi i32 [ %.4164223.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ex, %vec.epilog.scalar.ph.prol ]
  %i.fb = icmp eq i64 %.5151225.ph, 1
  br i1 %i.fb, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.5151225 = phi i64 [ %i.fn, %vec.epilog.scalar.ph ], [ %.5151225.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.2154224 = phi i32 [ %i.fy, %vec.epilog.scalar.ph ], [ %.2154224.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.4164223 = phi i32 [ %i.fv, %vec.epilog.scalar.ph ], [ %.4164223.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.fc = zext i32 %.2154224 to i64               ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.5, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !14
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.fc
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !14
  %i.fh = xor i8 %i.fg, %i.fe                     ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.5145, i64 %i.fc
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !14
  %i.fj = add i32 %.4164223, 1
  %i.fk = zext i32 %.4164223 to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.fk
  store i8 %i.fh, ptr %i.fl, align 1, !tbaa !14
  %i.fm = add i32 %.2154224, 1
  %i.fn = add i64 %.5151225, -2                   ; 2 uses
  %i.fo = zext i32 %i.fm to i64                   ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.5, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !14
  %i.fr = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.fo
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !14
  %i.ft = xor i8 %i.fs, %i.fq                     ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.5145, i64 %i.fo
  store i8 %i.ft, ptr %i.fu, align 1, !tbaa !14
  %i.fv = add i32 %.4164223, 2                    ; 2 uses
  %i.fw = zext i32 %i.fj to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.fw
  store i8 %i.ft, ptr %i.fx, align 1, !tbaa !14
  %i.fy = add i32 %.2154224, 2
  %.not176.1 = icmp eq i64 %i.fn, 0
  br i1 %.not176.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !57

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.m
  %.5165 = phi i32 [ %.3163, %bb.m ], [ %i.ee, %vec.epilog.middle.block ], [ %i.dr, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.fv, %vec.epilog.scalar.ph ]
  store i32 %.5165, ptr %i.k, align 8, !tbaa !21
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %.loopexit, %._crit_edge.thread, %bb.d
  %.0 = phi i32 [ 0, %._crit_edge.thread ], [ 0, %bb.d ], [ 0, %.loopexit ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @CRYPTO_gcm128_decrypt(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13   ; 3 uses
  %i.h = add i64 %i.c, %3                         ; 3 uses
  %i.i = icmp ugt i64 %i.h, 68719476704
  %i.j = icmp ult i64 %i.h, %3
  %or.cond176 = or i1 %i.i, %i.j
  br i1 %or.cond176, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.h, ptr %i.b, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !20
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@CRYPTO_gcm128_decrypt:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  store i32 0, ptr %i.m, align 4, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.0158 = phi i32 [ 16, %bb.e ], [ %i.l, %bb.b ] ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !14
  %i.x = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.w) #8, !srcloc !69 ; 2 uses
  %i.y = and i32 %.0158, 15                       ; 2 uses
  %.not171 = icmp eq i32 %i.y, 0
  br i1 %.not171, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.f
  %.not225 = icmp eq i64 %3, 0
  br i1 %.not225, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.0137190 = phi ptr [ %1, %.lr.ph ], [ %i.ab, %bb.g ] ; 2 uses
  %.0138189 = phi ptr [ %2, %.lr.ph ], [ %i.ak, %bb.g ] ; 2 uses
  %.0144188 = phi i64 [ %3, %.lr.ph ], [ %i.al, %bb.g ]
  %.0150187 = phi i32 [ %i.y, %.lr.ph ], [ %i.an, %bb.g ] ; 2 uses
  %.1159186 = phi i32 [ %.0158, %.lr.ph ], [ %i.ad, %bb.g ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0137190, i64 1 ; 2 uses
  %i.ac = load i8, ptr %.0137190, align 1, !tbaa !14 ; 2 uses
  %i.ad = add i32 %.1159186, 1                    ; 3 uses
  %i.ae = zext i32 %.1159186 to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  store i8 %i.ac, ptr %i.af, align 1, !tbaa !14
  %i.ag = zext nneg i32 %.0150187 to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !14
  %i.aj = xor i8 %i.ai, %i.ac
  %i.ak = getelementptr inbounds nuw i8, ptr %.0138189, i64 1 ; 2 uses
  store i8 %i.aj, ptr %.0138189, align 1, !tbaa !14
  %i.al = add nsw i64 %.0144188, -1               ; 3 uses
  %i.am = add nuw nsw i32 %.0150187, 1
  %i.an = and i32 %i.am, 15                       ; 3 uses
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = icmp ne i64 %i.al, 0
  %i.aq = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %i.aq, label %bb.g, label %._crit_edge, !llvm.loop !62

._crit_edge:                                      ; preds = %bb.g
  %i.ar = icmp eq i32 %i.an, 0
  br i1 %i.ar, label %.sink.split, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %.1159.lcssa250 = phi i32 [ %i.ad, %._crit_edge ], [ %.0158, %.preheader ]
  store i32 %.1159.lcssa250, ptr %i.k, align 8, !tbaa !21
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.as = icmp ugt i64 %3, 15
  %i.at = icmp ne i32 %.0158, 0
  %or.cond = select i1 %i.as, i1 %i.at, i1 false
  br i1 %or.cond, label %.sink.split, label %bb.i

.sink.split:                                      ; preds = %bb.h, %._crit_edge
  %.lcssa262.sink = phi i32 [ %i.ad, %._crit_edge ], [ %.0158, %bb.h ]
  %.1184.ph = phi ptr [ %i.ab, %._crit_edge ], [ %1, %bb.h ]
  %.1139183.ph = phi ptr [ %i.ak, %._crit_edge ], [ %2, %bb.h ]
  %.1145182.ph = phi i64 [ %i.al, %._crit_edge ], [ %3, %bb.h ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !25
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.az = zext i32 %.lcssa262.sink to i64
  tail call void %i.av(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.ay, i64 noundef %i.az) #7
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.h
  %.1184 = phi ptr [ %1, %bb.h ], [ %.1184.ph, %.sink.split ] ; 2 uses
  %.1139183 = phi ptr [ %2, %bb.h ], [ %.1139183.ph, %.sink.split ] ; 2 uses
  %.1145182 = phi i64 [ %3, %bb.h ], [ %.1145182.ph, %.sink.split ] ; 3 uses
  %.3161 = phi i32 [ %.0158, %bb.h ], [ 0, %.sink.split ] ; 10 uses
  %i.ba = icmp ugt i64 %.1145182, 3071
  br i1 %i.ba, label %.lr.ph205, label %._crit_edge206

.lr.ph205:                                        ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph205, %bb.l
  %.2203 = phi ptr [ %.1184, %.lr.ph205 ], [ %i.bs, %bb.l ] ; 2 uses
  %.2140202 = phi ptr [ %.1139183, %.lr.ph205 ], [ %i.br, %bb.l ]
  %.2146201 = phi i64 [ %.1145182, %.lr.ph205 ], [ %i.bu, %bb.l ]
  %.0154200 = phi i32 [ %i.x, %.lr.ph205 ], [ %i.bh, %bb.l ]
  %i.bg = load ptr, ptr %i.bb, align 8, !tbaa !25
  tail call void %i.bg(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.bd, ptr noundef %.2203, i64 noundef 3072) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.k
  %.3199 = phi ptr [ %.2203, %bb.j ], [ %i.bs, %bb.k ] ; 3 uses
  %.3141198 = phi ptr [ %.2140202, %bb.j ], [ %i.br, %bb.k ] ; 3 uses
  %.0153197 = phi i64 [ 3072, %bb.j ], [ %i.bt, %bb.k ]
  %.1155196 = phi i32 [ %.0154200, %bb.j ], [ %i.bh, %bb.k ]
  tail call void %i.e(ptr noundef nonnull %0, ptr noundef nonnull %i.be, ptr noundef %i.g) #7
  %i.bh = add i32 %.1155196, 1                    ; 4 uses
  %i.bi = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bh) #8, !srcloc !70
  store i32 %i.bi, ptr %i.v, align 4, !tbaa !14
  %i.bj = load i64, ptr %.3199, align 1, !tbaa !30
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !14
  %i.bl = xor i64 %i.bk, %i.bj
  store i64 %i.bl, ptr %.3141198, align 1, !tbaa !30
  %i.bm = getelementptr inbounds nuw i8, ptr %.3199, i64 8
  %i.bn = load i64, ptr %i.bm, align 1, !tbaa !30
  %i.bo = load i64, ptr %i.bf, align 8, !tbaa !14
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = getelementptr inbounds nuw i8, ptr %.3141198, i64 8
  store i64 %i.bp, ptr %i.bq, align 1, !tbaa !30
  %i.br = getelementptr inbounds nuw i8, ptr %.3141198, i64 16 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.3199, i64 16 ; 3 uses
  %i.bt = add nsw i64 %.0153197, -16              ; 2 uses
  %.not175 = icmp eq i64 %i.bt, 0
  br i1 %.not175, label %bb.l, label %bb.k, !llvm.loop !63

bb.l:                                             ; preds = %bb.k
  %i.bu = add nsw i64 %.2146201, -3072            ; 3 uses
  %i.bv = icmp ugt i64 %i.bu, 3071
  br i1 %i.bv, label %bb.j, label %._crit_edge206, !llvm.loop !64

._crit_edge206:                                   ; preds = %bb.l, %bb.i
  %.0154.lcssa = phi i32 [ %i.x, %bb.i ], [ %i.bh, %bb.l ] ; 2 uses
  %.2146.lcssa = phi i64 [ %.1145182, %bb.i ], [ %i.bu, %bb.l ] ; 3 uses
  %.2140.lcssa = phi ptr [ %.1139183, %bb.i ], [ %i.br, %bb.l ] ; 2 uses
  %.2.lcssa = phi ptr [ %.1184, %bb.i ], [ %i.bs, %bb.l ] ; 3 uses
  %i.bw = and i64 %.2146.lcssa, 4080              ; 2 uses
  %.not172 = icmp eq i64 %i.bw, 0
  br i1 %.not172, label %.loopexit185, label %.lr.ph217

.lr.ph217:                                        ; preds = %._crit_edge206
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !25
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void %i.by(ptr noundef nonnull %i.bz, ptr noundef nonnull %i.ca, ptr noundef %.2.lcssa, i64 noundef %i.bw) #7
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph217, %bb.m
  %.4215 = phi ptr [ %.2.lcssa, %.lr.ph217 ], [ %i.co, %bb.m ] ; 3 uses
  %.4142214 = phi ptr [ %.2140.lcssa, %.lr.ph217 ], [ %i.cn, %bb.m ] ; 3 uses
  %.3147213 = phi i64 [ %.2146.lcssa, %.lr.ph217 ], [ %i.cp, %bb.m ]
  %.2156212 = phi i32 [ %.0154.lcssa, %.lr.ph217 ], [ %i.cd, %bb.m ]
  tail call void %i.e(ptr noundef nonnull %0, ptr noundef nonnull %i.cb, ptr noundef %i.g) #7
  %i.cd = add i32 %.2156212, 1                    ; 3 uses
  %i.ce = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.cd) #8, !srcloc !71
  store i32 %i.ce, ptr %i.v, align 4, !tbaa !14
  %i.cf = load i64, ptr %.4215, align 1, !tbaa !30
  %i.cg = load i64, ptr %i.cb, align 8, !tbaa !14
  %i.ch = xor i64 %i.cg, %i.cf
  store i64 %i.ch, ptr %.4142214, align 1, !tbaa !30
  %i.ci = getelementptr inbounds nuw i8, ptr %.4215, i64 8
  %i.cj = load i64, ptr %i.ci, align 1, !tbaa !30
  %i.ck = load i64, ptr %i.cc, align 8, !tbaa !14
  %i.cl = xor i64 %i.ck, %i.cj
  %i.cm = getelementptr inbounds nuw i8, ptr %.4142214, i64 8
  store i64 %i.cl, ptr %i.cm, align 1, !tbaa !30
  %i.cn = getelementptr inbounds nuw i8, ptr %.4142214, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.4215, i64 16 ; 2 uses
  %i.cp = add nsw i64 %.3147213, -16              ; 3 uses
  %i.cq = icmp ugt i64 %i.cp, 15
  br i1 %i.cq, label %bb.m, label %.loopexit185, !llvm.loop !65

.loopexit185:                                     ; preds = %bb.m, %._crit_edge206
  %.3157 = phi i32 [ %.0154.lcssa, %._crit_edge206 ], [ %i.cd, %bb.m ]
  %.4148 = phi i64 [ %.2146.lcssa, %._crit_edge206 ], [ %i.cp, %bb.m ] ; 14 uses
  %.5143 = phi ptr [ %.2140.lcssa, %._crit_edge206 ], [ %i.cn, %bb.m ] ; 6 uses
  %.5 = phi ptr [ %.2.lcssa, %._crit_edge206 ], [ %i.co, %bb.m ] ; 6 uses
  %.5143281 = ptrtoaddr ptr %.5143 to i64         ; 3 uses
  %.5282 = ptrtoaddr ptr %.5 to i64               ; 2 uses
  %.not173 = icmp eq i64 %.4148, 0
  br i1 %.not173, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.loopexit185
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  tail call void %i.e(ptr noundef nonnull %0, ptr noundef nonnull %i.cr, ptr noundef %i.g) #7
  %i.cs = add i32 %.3157, 1
  %i.ct = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.cs) #8, !srcloc !72
  store i32 %i.ct, ptr %i.v, align 4, !tbaa !14
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 5 uses
  %min.iters.check = icmp ult i64 %.4148, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cv = add i64 %.4148, -1                      ; 2 uses
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = xor i32 %.3161, -1
  %i.cy = icmp ult i32 %i.cx, %i.cw
  %i.cz = icmp ugt i64 %i.cv, 4294967295
  %i.da = or i1 %i.cy, %i.cz
  br i1 %i.da, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.db = zext i32 %.3161 to i64                  ; 2 uses
  %i.dc = add i64 %i.a, %i.db
  %i.dd = sub i64 %.5143281, %i.dc
  %i.de = add i64 %i.dd, -401
  %diff.check = icmp ult i64 %i.de, 31
  %i.df = add i64 %i.a, %i.db
  %i.dg = sub i64 %i.df, %.5282
  %i.dh = add i64 %i.dg, 399
  %diff.check283 = icmp ult i64 %i.dh, 31
  %conflict.rdx = or i1 %diff.check, %diff.check283
  %i.di = sub i64 %.5282, %.5143281
  %diff.check286 = icmp ugt i64 %i.di, -32
  %conflict.rdx287 = or i1 %conflict.rdx, %diff.check286
  %i.dj = sub i64 %.5143281, %i.a
  %i.dk = add i64 %i.dj, -17
  %diff.check288 = icmp ult i64 %i.dk, 31
  %conflict.rdx289 = or i1 %conflict.rdx287, %diff.check288
  br i1 %conflict.rdx289, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check290 = icmp ult i64 %.4148, 32
  br i1 %min.iters.check290, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dl = and i64 %.4148, 28
  %n.vec = and i64 %.4148, 8589934560             ; 4 uses
  %i.dm = and i64 %.4148, 31
  %i.dn = trunc i64 %n.vec to i32                 ; 2 uses
  %i.do = add i32 %.3161, %i.dn                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dp = trunc i64 %index to i32
  %i.dq = add i32 %.3161, %i.dp
  %i.dr = and i64 %index, 4294967264              ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.5, i64 %i.dr ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %wide.load = load <16 x i8>, ptr %i.ds, align 1, !tbaa !14 ; 2 uses
  %wide.load291 = load <16 x i8>, ptr %i.dt, align 1, !tbaa !14 ; 2 uses
  %i.du = zext i32 %i.dq to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.du ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store <16 x i8> %wide.load, ptr %i.dv, align 1, !tbaa !14
  store <16 x i8> %wide.load291, ptr %i.dw, align 1, !tbaa !14
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.dr ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %wide.load292 = load <16 x i8>, ptr %i.dx, align 1, !tbaa !14
  %wide.load293 = load <16 x i8>, ptr %i.dy, align 1, !tbaa !14
  %i.dz = xor <16 x i8> %wide.load292, %wide.load
  %i.ea = xor <16 x i8> %wide.load293, %wide.load291
  %i.eb = getelementptr inbounds nuw i8, ptr %.5143, i64 %i.dr ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store <16 x i8> %i.dz, ptr %i.eb, align 1, !tbaa !14
  store <16 x i8> %i.ea, ptr %i.ec, align 1, !tbaa !14
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.4148, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dl, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec296 = and i64 %.4148, 8589934588          ; 3 uses
  %i.ee = and i64 %.4148, 3
  %i.ef = trunc i64 %n.vec296 to i32              ; 2 uses
  %i.eg = add i32 %.3161, %i.ef                   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index297 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next300, %vec.epilog.vector.body ] ; 3 uses
  %i.eh = trunc i64 %index297 to i32
  %i.ei = add i32 %.3161, %i.eh
  %i.ej = and i64 %index297, 4294967292           ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.5, i64 %i.ej
  %wide.load298 = load <4 x i8>, ptr %i.ek, align 1, !tbaa !14 ; 2 uses
  %i.el = zext i32 %i.ei to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.el
  store <4 x i8> %wide.load298, ptr %i.em, align 1, !tbaa !14
  %i.en = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.ej
  %wide.load299 = load <4 x i8>, ptr %i.en, align 1, !tbaa !14
  %i.eo = xor <4 x i8> %wide.load299, %wide.load298
  %i.ep = getelementptr inbounds nuw i8, ptr %.5143, i64 %i.ej
  store <4 x i8> %i.eo, ptr %i.ep, align 1, !tbaa !14
  %index.next300 = add nuw i64 %index297, 4       ; 2 uses
  %i.eq = icmp eq i64 %index.next300, %n.vec296
  br i1 %i.eq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !67

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n301 = icmp eq i64 %.4148, %n.vec296
  br i1 %cmp.n301, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.5149224.ph = phi i64 [ %.4148, %iter.check ], [ %.4148, %vector.scevcheck ], [ %.4148, %vector.memcheck ], [ %i.dm, %vec.epilog.iter.check ], [ %i.ee, %vec.epilog.middle.block ] ; 4 uses
  %.2152223.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %i.dn, %vec.epilog.iter.check ], [ %i.ef, %vec.epilog.middle.block ] ; 3 uses
  %.4162222.ph = phi i32 [ %.3161, %iter.check ], [ %.3161, %vector.scevcheck ], [ %.3161, %vector.memcheck ], [ %i.do, %vec.epilog.iter.check ], [ %i.eg, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.5149224.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.er = add nsw i64 %.5149224.ph, -1
  %i.es = zext i32 %.2152223.ph to i64            ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.5, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !14  ; 2 uses
  %i.ev = add i32 %.4162222.ph, 1                 ; 2 uses
  %i.ew = zext i32 %.4162222.ph to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ew
  store i8 %i.eu, ptr %i.ex, align 1, !tbaa !14
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.es
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !14
  %i.fa = xor i8 %i.ez, %i.eu
  %i.fb = getelementptr inbounds nuw i8, ptr %.5143, i64 %i.es
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !14
  %i.fc = add i32 %.2152223.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ev, %vec.epilog.scalar.ph.prol ]
  %.5149224.unr = phi i64 [ %.5149224.ph, %vec.epilog.scalar.ph.preheader ], [ %i.er, %vec.epilog.scalar.ph.prol ]
  %.2152223.unr = phi i32 [ %.2152223.ph, %vec.epilog.scalar.ph.preheader ], [ %i.fc, %vec.epilog.scalar.ph.prol ]
  %.4162222.unr = phi i32 [ %.4162222.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ev, %vec.epilog.scalar.ph.prol ]
  %i.fd = icmp eq i64 %.5149224.ph, 1
  br i1 %i.fd, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.5149224 = phi i64 [ %i.fp, %vec.epilog.scalar.ph ], [ %.5149224.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.2152223 = phi i32 [ %i.ga, %vec.epilog.scalar.ph ], [ %.2152223.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.4162222 = phi i32 [ %i.ft, %vec.epilog.scalar.ph ], [ %.4162222.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.fe = zext i32 %.2152223 to i64               ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.5, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !14  ; 2 uses
  %i.fh = add i32 %.4162222, 1
  %i.fi = zext i32 %.4162222 to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.fi
  store i8 %i.fg, ptr %i.fj, align 1, !tbaa !14
  %i.fk = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.fe
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !14
  %i.fm = xor i8 %i.fl, %i.fg
  %i.fn = getelementptr inbounds nuw i8, ptr %.5143, i64 %i.fe
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !14
  %i.fo = add i32 %.2152223, 1
  %i.fp = add i64 %.5149224, -2                   ; 2 uses
  %i.fq = zext i32 %i.fo to i64                   ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.5, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !14  ; 2 uses
  %i.ft = add i32 %.4162222, 2                    ; 2 uses
  %i.fu = zext i32 %i.fh to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.fu
  store i8 %i.fs, ptr %i.fv, align 1, !tbaa !14
  %i.fw = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.fq
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !14
  %i.fy = xor i8 %i.fx, %i.fs
  %i.fz = getelementptr inbounds nuw i8, ptr %.5143, i64 %i.fq
  store i8 %i.fy, ptr %i.fz, align 1, !tbaa !14
  %i.ga = add i32 %.2152223, 2
  %.not174.1 = icmp eq i64 %i.fp, 0
  br i1 %.not174.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !68

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.loopexit185
  %.5163 = phi i32 [ %.3161, %.loopexit185 ], [ %i.eg, %vec.epilog.middle.block ], [ %i.do, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ft, %vec.epilog.scalar.ph ]
  store i32 %.5163, ptr %i.k, align 8, !tbaa !21
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %.loopexit, %._crit_edge.thread, %bb.d
  %.0 = phi i32 [ 0, %._crit_edge.thread ], [ 0, %bb.d ], [ 0, %.loopexit ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @CRYPTO_gcm128_encrypt_ctr32(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 3 uses
  %i.f = add i64 %i.c, %3                         ; 3 uses
  %i.g = icmp ugt i64 %i.f, 68719476704
  %i.h = icmp ult i64 %i.f, %3
  %or.cond149 = or i1 %i.g, %i.h
  br i1 %or.cond149, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.f, ptr %i.b, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !20
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %3, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void %i.o(ptr noundef nonnull %i.p, ptr noundef nonnull %i.q) #7
  store i32 0, ptr %i.k, align 4, !tbaa !20
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  store i32 0, ptr %i.k, align 4, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.0135 = phi i32 [ 16, %bb.e ], [ %i.j, %bb.b ] ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !14
  %i.v = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.u) #8, !srcloc !78 ; 2 uses
  %i.w = and i32 %.0135, 15                       ; 2 uses
  %.not145 = icmp eq i32 %i.w, 0
  br i1 %.not145, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.f
  %.not181 = icmp eq i64 %3, 0
  br i1 %.not181, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 400
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.0121162 = phi ptr [ %1, %.lr.ph ], [ %i.z, %bb.g ] ; 2 uses
  %.0122161 = phi ptr [ %2, %.lr.ph ], [ %i.af, %bb.g ] ; 2 uses
  %.0126160 = phi i64 [ %3, %.lr.ph ], [ %i.aj, %bb.g ]
  %.0130159 = phi i32 [ %i.w, %.lr.ph ], [ %i.al, %bb.g ] ; 2 uses
  %.1136158 = phi i32 [ %.0135, %.lr.ph ], [ %i.ag, %bb.g ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0121162, i64 1 ; 2 uses
  %i.aa = load i8, ptr %.0121162, align 1, !tbaa !14
  %i.ab = zext nneg i32 %.0130159 to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !14
  %i.ae = xor i8 %i.ad, %i.aa                     ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0122161, i64 1 ; 2 uses
  store i8 %i.ae, ptr %.0122161, align 1, !tbaa !14
  %i.ag = add i32 %.1136158, 1                    ; 3 uses
  %i.ah = zext i32 %.1136158 to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ah
  store i8 %i.ae, ptr %i.ai, align 1, !tbaa !14
  %i.aj = add nsw i64 %.0126160, -1               ; 3 uses
  %i.ak = add nuw nsw i32 %.0130159, 1
  %i.al = and i32 %i.ak, 15                       ; 3 uses
  %i.am = icmp ne i32 %i.al, 0
  %i.an = icmp ne i64 %i.aj, 0
  %i.ao = select i1 %i.am, i1 %i.an, i1 false
  br i1 %i.ao, label %bb.g, label %._crit_edge, !llvm.loop !73

._crit_edge:                                      ; preds = %bb.g
  %i.ap = icmp eq i32 %i.al, 0
  br i1 %i.ap, label %.sink.split, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %.1136.lcssa201 = phi i32 [ %i.ag, %._crit_edge ], [ %.0135, %.preheader ]
  store i32 %.1136.lcssa201, ptr %i.i, align 8, !tbaa !21
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.aq = icmp ugt i64 %3, 15
  %i.ar = icmp ne i32 %.0135, 0
  %or.cond = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond, label %.sink.split, label %bb.i

.sink.split:                                      ; preds = %bb.h, %._crit_edge
  %.lcssa208.sink = phi i32 [ %i.ag, %._crit_edge ], [ %.0135, %bb.h ]
  %.1157.ph = phi ptr [ %i.z, %._crit_edge ], [ %1, %bb.h ]
  %.1123156.ph = phi ptr [ %i.af, %._crit_edge ], [ %2, %bb.h ]
  %.1127155.ph = phi i64 [ %i.aj, %._crit_edge ], [ %3, %bb.h ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !25
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ax = zext i32 %.lcssa208.sink to i64
  tail call void %i.at(ptr noundef nonnull %i.au, ptr noundef nonnull %i.av, ptr noundef nonnull %i.aw, i64 noundef %i.ax) #7
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.h
  %.1157 = phi ptr [ %1, %bb.h ], [ %.1157.ph, %.sink.split ] ; 2 uses
  %.1123156 = phi ptr [ %2, %bb.h ], [ %.1123156.ph, %.sink.split ] ; 2 uses
  %.1127155 = phi i64 [ %3, %bb.h ], [ %.1127155.ph, %.sink.split ] ; 3 uses
  %.3138 = phi i32 [ %.0135, %bb.h ], [ 0, %.sink.split ] ; 10 uses
  %i.ay = icmp ugt i64 %.1127155, 3071
  br i1 %i.ay, label %.lr.ph172, label %._crit_edge173

.lr.ph172:                                        ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph172, %bb.j
  %.2170 = phi ptr [ %.1157, %.lr.ph172 ], [ %i.bg, %bb.j ] ; 2 uses
  %.2124169 = phi ptr [ %.1123156, %.lr.ph172 ], [ %i.bf, %bb.j ] ; 3 uses
  %.2128168 = phi i64 [ %.1127155, %.lr.ph172 ], [ %i.bh, %bb.j ]
  %.0133167 = phi i32 [ %i.v, %.lr.ph172 ], [ %i.bc, %bb.j ]
  tail call void %4(ptr noundef %.2170, ptr noundef %.2124169, i64 noundef 192, ptr noundef %i.e, ptr noundef nonnull %0) #7
  %i.bc = add i32 %.0133167, 192                  ; 3 uses
  %i.bd = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bc) #8, !srcloc !79
  store i32 %i.bd, ptr %i.t, align 4, !tbaa !14
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !25
  tail call void %i.be(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, ptr noundef %.2124169, i64 noundef 3072) #7
  %i.bf = getelementptr inbounds nuw i8, ptr %.2124169, i64 3072 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.2170, i64 3072 ; 2 uses
  %i.bh = add nsw i64 %.2128168, -3072            ; 3 uses
  %i.bi = icmp ugt i64 %i.bh, 3071
  br i1 %i.bi, label %bb.j, label %._crit_edge173, !llvm.loop !74

._crit_edge173:                                   ; preds = %bb.j, %bb.i
  %.0133.lcssa = phi i32 [ %i.v, %bb.i ], [ %i.bc, %bb.j ] ; 2 uses
  %.2128.lcssa = phi i64 [ %.1127155, %bb.i ], [ %i.bh, %bb.j ] ; 4 uses
  %.2124.lcssa = phi ptr [ %.1123156, %bb.i ], [ %i.bf, %bb.j ] ; 5 uses
  %.2.lcssa = phi ptr [ %.1157, %bb.i ], [ %i.bg, %bb.j ] ; 4 uses
  %.2124.lcssa224 = ptrtoaddr ptr %.2124.lcssa to i64 ; 3 uses
  %.2.lcssa226 = ptrtoaddr ptr %.2.lcssa to i64   ; 2 uses
  %i.bj = and i64 %.2128.lcssa, 4080              ; 7 uses
  %.not146 = icmp eq i64 %i.bj, 0
  br i1 %.not146, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge173
  %i.bk = lshr i64 %.2128.lcssa, 4                ; 2 uses
  tail call void %4(ptr noundef %.2.lcssa, ptr noundef %.2124.lcssa, i64 noundef %i.bk, ptr noundef %i.e, ptr noundef nonnull %0) #7
  %i.bl = trunc nuw nsw i64 %i.bk to i32
  %i.bm = add i32 %.0133.lcssa, %i.bl             ; 2 uses
  %i.bn = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bm) #8, !srcloc !80
  store i32 %i.bn, ptr %i.t, align 4, !tbaa !14
  %i.bo = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %i.bj
  %i.bp = and i64 %.2128.lcssa, 15
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !25
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void %i.br(ptr noundef nonnull %i.bs, ptr noundef nonnull %i.bt, ptr noundef %.2124.lcssa, i64 noundef %i.bj) #7
  %i.bu = getelementptr inbounds nuw i8, ptr %.2124.lcssa, i64 %i.bj
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge173
  %.1134 = phi i32 [ %i.bm, %bb.k ], [ %.0133.lcssa, %._crit_edge173 ]
  %.3129 = phi i64 [ %i.bp, %bb.k ], [ %.2128.lcssa, %._crit_edge173 ] ; 14 uses
  %.3125 = phi ptr [ %i.bu, %bb.k ], [ %.2124.lcssa, %._crit_edge173 ] ; 5 uses
  %.3 = phi ptr [ %i.bo, %bb.k ], [ %.2.lcssa, %._crit_edge173 ] ; 5 uses
  %.not147 = icmp eq i64 %.3129, 0
  br i1 %.not147, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !12
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  tail call void %i.bw(ptr noundef nonnull %0, ptr noundef nonnull %i.bx, ptr noundef %i.e) #7
  %i.by = add i32 %.1134, 1
  %i.bz = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.by) #8, !srcloc !81
  store i32 %i.bz, ptr %i.t, align 4, !tbaa !14
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 5 uses
  %min.iters.check = icmp ult i64 %.3129, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cb = add i64 %.3129, -1                      ; 2 uses
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = xor i32 %.3138, -1
  %i.ce = icmp ult i32 %i.cd, %i.cc
  %i.cf = icmp ugt i64 %i.cb, 4294967295
  %i.cg = or i1 %i.ce, %i.cf
  br i1 %i.cg, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ch = add i64 %i.bj, %.2124.lcssa224
  %i.ci = sub i64 %i.ch, %i.a
  %i.cj = add i64 %i.ci, -17
  %diff.check = icmp ult i64 %i.cj, 15
  %i.ck = zext i32 %.3138 to i64                  ; 2 uses
  %i.cl = add i64 %i.a, %i.ck
  %i.cm = add i64 %i.bj, %.2124.lcssa224
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = add i64 %i.cn, 399
  %diff.check225 = icmp ult i64 %i.co, 15
  %conflict.rdx = or i1 %diff.check, %diff.check225
  %i.cp = sub i64 %.2.lcssa226, %.2124.lcssa224
  %diff.check227 = icmp ugt i64 %i.cp, -16
  %conflict.rdx228 = or i1 %conflict.rdx, %diff.check227
  %i.cq = add i64 %i.a, %i.ck
  %i.cr = add i64 %i.bj, %.2.lcssa226
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = add i64 %i.cs, 399
  %diff.check229 = icmp ult i64 %i.ct, 15
  %conflict.rdx230 = or i1 %conflict.rdx228, %diff.check229
  br i1 %conflict.rdx230, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check231 = icmp ult i64 %.3129, 16
  br i1 %min.iters.check231, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cu = and i64 %.3129, 12
  %n.vec = and i64 %.3129, 8589934576             ; 4 uses
  %i.cv = and i64 %.3129, 15
  %i.cw = trunc i64 %n.vec to i32                 ; 2 uses
  %i.cx = add i32 %.3138, %i.cw                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cy = trunc i64 %index to i32
  %i.cz = add i32 %.3138, %i.cy
  %i.da = and i64 %index, 4294967280              ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.3, i64 %i.da
  %wide.load = load <16 x i8>, ptr %i.db, align 1, !tbaa !14
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.da
  %wide.load232 = load <16 x i8>, ptr %i.dc, align 1, !tbaa !14
  %i.dd = xor <16 x i8> %wide.load232, %wide.load ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.3125, i64 %i.da
  store <16 x i8> %i.dd, ptr %i.de, align 1, !tbaa !14
  %i.df = zext i32 %i.cz to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.df
  store <16 x i8> %i.dd, ptr %i.dg, align 1, !tbaa !14
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.3129, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cu, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !31

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec235 = and i64 %.3129, 8589934588          ; 3 uses
  %i.di = and i64 %.3129, 3
  %i.dj = trunc i64 %n.vec235 to i32              ; 2 uses
  %i.dk = add i32 %.3138, %i.dj                   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index236 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next239, %vec.epilog.vector.body ] ; 3 uses
  %i.dl = trunc i64 %index236 to i32
  %i.dm = add i32 %.3138, %i.dl
  %i.dn = and i64 %index236, 4294967292           ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.3, i64 %i.dn
  %wide.load237 = load <4 x i8>, ptr %i.do, align 1, !tbaa !14
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.dn
  %wide.load238 = load <4 x i8>, ptr %i.dp, align 1, !tbaa !14
  %i.dq = xor <4 x i8> %wide.load238, %wide.load237 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.3125, i64 %i.dn
  store <4 x i8> %i.dq, ptr %i.dr, align 1, !tbaa !14
  %i.ds = zext i32 %i.dm to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ds
  store <4 x i8> %i.dq, ptr %i.dt, align 1, !tbaa !14
  %index.next239 = add nuw i64 %index236, 4       ; 2 uses
  %i.du = icmp eq i64 %index.next239, %n.vec235
  br i1 %i.du, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !76

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n240 = icmp eq i64 %.3129, %n.vec235
  br i1 %cmp.n240, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.4180.ph = phi i64 [ %.3129, %iter.check ], [ %.3129, %vector.scevcheck ], [ %.3129, %vector.memcheck ], [ %i.cv, %vec.epilog.iter.check ], [ %i.di, %vec.epilog.middle.block ] ; 4 uses
  %.2132179.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %i.cw, %vec.epilog.iter.check ], [ %i.dj, %vec.epilog.middle.block ] ; 3 uses
  %.4139178.ph = phi i32 [ %.3138, %iter.check ], [ %.3138, %vector.scevcheck ], [ %.3138, %vector.memcheck ], [ %i.cx, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.4180.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.dv = add nsw i64 %.4180.ph, -1
  %i.dw = zext i32 %.2132179.ph to i64            ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.3, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !14
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.dw
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !14
  %i.eb = xor i8 %i.ea, %i.dy                     ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.3125, i64 %i.dw
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !14
  %i.ed = add i32 %.4139178.ph, 1                 ; 2 uses
  %i.ee = zext i32 %.4139178.ph to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ee
  store i8 %i.eb, ptr %i.ef, align 1, !tbaa !14
  %i.eg = add i32 %.2132179.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ed, %vec.epilog.scalar.ph.prol ]
  %.4180.unr = phi i64 [ %.4180.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dv, %vec.epilog.scalar.ph.prol ]
  %.2132179.unr = phi i32 [ %.2132179.ph, %vec.epilog.scalar.ph.preheader ], [ %i.eg, %vec.epilog.scalar.ph.prol ]
  %.4139178.unr = phi i32 [ %.4139178.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ed, %vec.epilog.scalar.ph.prol ]
  %i.eh = icmp eq i64 %.4180.ph, 1
  br i1 %i.eh, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.4180 = phi i64 [ %i.et, %vec.epilog.scalar.ph ], [ %.4180.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.2132179 = phi i32 [ %i.fe, %vec.epilog.scalar.ph ], [ %.2132179.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.4139178 = phi i32 [ %i.fb, %vec.epilog.scalar.ph ], [ %.4139178.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.ei = zext i32 %.2132179 to i64               ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.3, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !14
  %i.el = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.ei
  %i.em = load i8, ptr %i.el, align 1, !tbaa !14
  %i.en = xor i8 %i.em, %i.ek                     ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.3125, i64 %i.ei
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !14
  %i.ep = add i32 %.4139178, 1
  %i.eq = zext i32 %.4139178 to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.eq
  store i8 %i.en, ptr %i.er, align 1, !tbaa !14
  %i.es = add i32 %.2132179, 1
  %i.et = add i64 %.4180, -2                      ; 2 uses
  %i.eu = zext i32 %i.es to i64                   ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.3, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !14
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.eu
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !14
  %i.ez = xor i8 %i.ey, %i.ew                     ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.3125, i64 %i.eu
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !14
  %i.fb = add i32 %.4139178, 2                    ; 2 uses
  %i.fc = zext i32 %i.ep to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.fc
  store i8 %i.ez, ptr %i.fd, align 1, !tbaa !14
  %i.fe = add i32 %.2132179, 2
  %.not148.1 = icmp eq i64 %i.et, 0
  br i1 %.not148.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !77

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.l
  %.5 = phi i32 [ %.3138, %bb.l ], [ %i.dk, %vec.epilog.middle.block ], [ %i.cx, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.fb, %vec.epilog.scalar.ph ]
  store i32 %.5, ptr %i.i, align 8, !tbaa !21
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %.loopexit, %._crit_edge.thread, %bb.d
  %.0 = phi i32 [ 0, %._crit_edge.thread ], [ 0, %bb.d ], [ 0, %.loopexit ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @CRYPTO_gcm128_decrypt_ctr32(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 3 uses
  %i.f = add i64 %i.c, %3                         ; 3 uses
  %i.g = icmp ugt i64 %i.f, 68719476704
  %i.h = icmp ult i64 %i.f, %3
  %or.cond149 = or i1 %i.g, %i.h
  br i1 %or.cond149, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.f, ptr %i.b, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !20
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %3, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void %i.o(ptr noundef nonnull %i.p, ptr noundef nonnull %i.q) #7
  store i32 0, ptr %i.k, align 4, !tbaa !20
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  store i32 0, ptr %i.k, align 4, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.0135 = phi i32 [ 16, %bb.e ], [ %i.j, %bb.b ] ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !14
  %i.v = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.u) #8, !srcloc !87 ; 2 uses
  %i.w = and i32 %.0135, 15                       ; 2 uses
  %.not145 = icmp eq i32 %i.w, 0
  br i1 %.not145, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.f
  %.not181 = icmp eq i64 %3, 0
  br i1 %.not181, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.0121162 = phi ptr [ %1, %.lr.ph ], [ %i.z, %bb.g ] ; 2 uses
  %.0122161 = phi ptr [ %2, %.lr.ph ], [ %i.ai, %bb.g ] ; 2 uses
  %.0126160 = phi i64 [ %3, %.lr.ph ], [ %i.aj, %bb.g ]
  %.0130159 = phi i32 [ %i.w, %.lr.ph ], [ %i.al, %bb.g ] ; 2 uses
  %.1136158 = phi i32 [ %.0135, %.lr.ph ], [ %i.ab, %bb.g ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0121162, i64 1 ; 2 uses
  %i.aa = load i8, ptr %.0121162, align 1, !tbaa !14 ; 2 uses
  %i.ab = add i32 %.1136158, 1                    ; 3 uses
  %i.ac = zext i32 %.1136158 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ac
  store i8 %i.aa, ptr %i.ad, align 1, !tbaa !14
  %i.ae = zext nneg i32 %.0130159 to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !14
  %i.ah = xor i8 %i.ag, %i.aa
  %i.ai = getelementptr inbounds nuw i8, ptr %.0122161, i64 1 ; 2 uses
  store i8 %i.ah, ptr %.0122161, align 1, !tbaa !14
  %i.aj = add nsw i64 %.0126160, -1               ; 3 uses
  %i.ak = add nuw nsw i32 %.0130159, 1
  %i.al = and i32 %i.ak, 15                       ; 3 uses
  %i.am = icmp ne i32 %i.al, 0
  %i.an = icmp ne i64 %i.aj, 0
  %i.ao = select i1 %i.am, i1 %i.an, i1 false
  br i1 %i.ao, label %bb.g, label %._crit_edge, !llvm.loop !82

._crit_edge:                                      ; preds = %bb.g
  %i.ap = icmp eq i32 %i.al, 0
  br i1 %i.ap, label %.sink.split, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %.1136.lcssa201 = phi i32 [ %i.ab, %._crit_edge ], [ %.0135, %.preheader ]
  store i32 %.1136.lcssa201, ptr %i.i, align 8, !tbaa !21
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.aq = icmp ugt i64 %3, 15
  %i.ar = icmp ne i32 %.0135, 0
  %or.cond = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond, label %.sink.split, label %bb.i

.sink.split:                                      ; preds = %bb.h, %._crit_edge
  %.lcssa209.sink = phi i32 [ %i.ab, %._crit_edge ], [ %.0135, %bb.h ]
  %.1157.ph = phi ptr [ %i.z, %._crit_edge ], [ %1, %bb.h ]
  %.1123156.ph = phi ptr [ %i.ai, %._crit_edge ], [ %2, %bb.h ]
  %.1127155.ph = phi i64 [ %i.aj, %._crit_edge ], [ %3, %bb.h ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !25
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ax = zext i32 %.lcssa209.sink to i64
  tail call void %i.at(ptr noundef nonnull %i.au, ptr noundef nonnull %i.av, ptr noundef nonnull %i.aw, i64 noundef %i.ax) #7
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.h
  %.1157 = phi ptr [ %1, %bb.h ], [ %.1157.ph, %.sink.split ] ; 2 uses
  %.1123156 = phi ptr [ %2, %bb.h ], [ %.1123156.ph, %.sink.split ] ; 2 uses
  %.1127155 = phi i64 [ %3, %bb.h ], [ %.1127155.ph, %.sink.split ] ; 3 uses
  %.3138 = phi i32 [ %.0135, %bb.h ], [ 0, %.sink.split ] ; 10 uses
  %i.ay = icmp ugt i64 %.1127155, 3071
  br i1 %i.ay, label %.lr.ph172, label %._crit_edge173

.lr.ph172:                                        ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph172, %bb.j
  %.2170 = phi ptr [ %.1157, %.lr.ph172 ], [ %i.bg, %bb.j ] ; 3 uses
  %.2124169 = phi ptr [ %.1123156, %.lr.ph172 ], [ %i.bf, %bb.j ] ; 2 uses
  %.2128168 = phi i64 [ %.1127155, %.lr.ph172 ], [ %i.bh, %bb.j ]
  %.0133167 = phi i32 [ %i.v, %.lr.ph172 ], [ %i.bd, %bb.j ]
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !25
  tail call void %i.bc(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, ptr noundef %.2170, i64 noundef 3072) #7
  tail call void %4(ptr noundef %.2170, ptr noundef %.2124169, i64 noundef 192, ptr noundef %i.e, ptr noundef nonnull %0) #7
  %i.bd = add i32 %.0133167, 192                  ; 3 uses
  %i.be = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bd) #8, !srcloc !88
  store i32 %i.be, ptr %i.t, align 4, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %.2124169, i64 3072 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.2170, i64 3072 ; 2 uses
  %i.bh = add nsw i64 %.2128168, -3072            ; 3 uses
  %i.bi = icmp ugt i64 %i.bh, 3071
  br i1 %i.bi, label %bb.j, label %._crit_edge173, !llvm.loop !83

._crit_edge173:                                   ; preds = %bb.j, %bb.i
  %.0133.lcssa = phi i32 [ %i.v, %bb.i ], [ %i.bd, %bb.j ] ; 2 uses
  %.2128.lcssa = phi i64 [ %.1127155, %bb.i ], [ %i.bh, %bb.j ] ; 4 uses
  %.2124.lcssa = phi ptr [ %.1123156, %bb.i ], [ %i.bf, %bb.j ] ; 4 uses
  %.2.lcssa = phi ptr [ %.1157, %bb.i ], [ %i.bg, %bb.j ] ; 5 uses
  %.2124.lcssa224 = ptrtoaddr ptr %.2124.lcssa to i64 ; 3 uses
  %.2.lcssa225 = ptrtoaddr ptr %.2.lcssa to i64   ; 2 uses
  %i.bj = and i64 %.2128.lcssa, 4080              ; 7 uses
  %.not146 = icmp eq i64 %i.bj, 0
  br i1 %.not146, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge173
  %i.bk = lshr i64 %.2128.lcssa, 4                ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !25
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void %i.bm(ptr noundef nonnull %i.bn, ptr noundef nonnull %i.bo, ptr noundef %.2.lcssa, i64 noundef %i.bj) #7
  tail call void %4(ptr noundef %.2.lcssa, ptr noundef %.2124.lcssa, i64 noundef %i.bk, ptr noundef %i.e, ptr noundef nonnull %0) #7
  %i.bp = trunc nuw nsw i64 %i.bk to i32
  %i.bq = add i32 %.0133.lcssa, %i.bp             ; 2 uses
  %i.br = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bq) #8, !srcloc !89
  store i32 %i.br, ptr %i.t, align 4, !tbaa !14
  %i.bs = getelementptr inbounds nuw i8, ptr %.2124.lcssa, i64 %i.bj
  %i.bt = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %i.bj
  %i.bu = and i64 %.2128.lcssa, 15
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge173
  %.1134 = phi i32 [ %i.bq, %bb.k ], [ %.0133.lcssa, %._crit_edge173 ]
  %.3129 = phi i64 [ %i.bu, %bb.k ], [ %.2128.lcssa, %._crit_edge173 ] ; 14 uses
  %.3125 = phi ptr [ %i.bs, %bb.k ], [ %.2124.lcssa, %._crit_edge173 ] ; 5 uses
  %.3 = phi ptr [ %i.bt, %bb.k ], [ %.2.lcssa, %._crit_edge173 ] ; 5 uses
  %.not147 = icmp eq i64 %.3129, 0
  br i1 %.not147, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !12
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  tail call void %i.bw(ptr noundef nonnull %0, ptr noundef nonnull %i.bx, ptr noundef %i.e) #7
  %i.by = add i32 %.1134, 1
  %i.bz = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.by) #8, !srcloc !90
  store i32 %i.bz, ptr %i.t, align 4, !tbaa !14
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 5 uses
  %min.iters.check = icmp ult i64 %.3129, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cb = add i64 %.3129, -1                      ; 2 uses
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = xor i32 %.3138, -1
  %i.ce = icmp ult i32 %i.cd, %i.cc
  %i.cf = icmp ugt i64 %i.cb, 4294967295
  %i.cg = or i1 %i.ce, %i.cf
  br i1 %i.cg, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ch = add i64 %i.bj, %.2124.lcssa224
  %i.ci = zext i32 %.3138 to i64                  ; 2 uses
  %i.cj = add i64 %i.a, %i.ci
  %i.ck = sub i64 %i.ch, %i.cj
  %i.cl = add i64 %i.ck, -401
  %diff.check = icmp ult i64 %i.cl, 31
  %i.cm = add i64 %i.a, %i.ci
  %i.cn = add i64 %i.bj, %.2.lcssa225
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = add i64 %i.co, 399
  %diff.check226 = icmp ult i64 %i.cp, 31
  %conflict.rdx = or i1 %diff.check, %diff.check226
  %i.cq = sub i64 %.2.lcssa225, %.2124.lcssa224
  %diff.check229 = icmp ugt i64 %i.cq, -32
  %conflict.rdx230 = or i1 %conflict.rdx, %diff.check229
  %i.cr = add i64 %i.bj, %.2124.lcssa224
  %i.cs = sub i64 %i.cr, %i.a
  %i.ct = add i64 %i.cs, -17
  %diff.check231 = icmp ult i64 %i.ct, 31
  %conflict.rdx232 = or i1 %conflict.rdx230, %diff.check231
  br i1 %conflict.rdx232, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check233 = icmp ult i64 %.3129, 32
  br i1 %min.iters.check233, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cu = and i64 %.3129, 28
  %n.vec = and i64 %.3129, 8589934560             ; 4 uses
  %i.cv = and i64 %.3129, 31
  %i.cw = trunc i64 %n.vec to i32                 ; 2 uses
  %i.cx = add i32 %.3138, %i.cw                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cy = trunc i64 %index to i32
  %i.cz = add i32 %.3138, %i.cy
  %i.da = and i64 %index, 4294967264              ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.3, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load = load <16 x i8>, ptr %i.db, align 1, !tbaa !14 ; 2 uses
  %wide.load234 = load <16 x i8>, ptr %i.dc, align 1, !tbaa !14 ; 2 uses
  %i.dd = zext i32 %i.cz to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.dd ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store <16 x i8> %wide.load, ptr %i.de, align 1, !tbaa !14
  store <16 x i8> %wide.load234, ptr %i.df, align 1, !tbaa !14
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.da ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load235 = load <16 x i8>, ptr %i.dg, align 1, !tbaa !14
  %wide.load236 = load <16 x i8>, ptr %i.dh, align 1, !tbaa !14
  %i.di = xor <16 x i8> %wide.load235, %wide.load
  %i.dj = xor <16 x i8> %wide.load236, %wide.load234
  %i.dk = getelementptr inbounds nuw i8, ptr %.3125, i64 %i.da ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store <16 x i8> %i.di, ptr %i.dk, align 1, !tbaa !14
  store <16 x i8> %i.dj, ptr %i.dl, align 1, !tbaa !14
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.3129, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cu, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec239 = and i64 %.3129, 8589934588          ; 3 uses
  %i.dn = and i64 %.3129, 3
  %i.do = trunc i64 %n.vec239 to i32              ; 2 uses
  %i.dp = add i32 %.3138, %i.do                   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index240 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next243, %vec.epilog.vector.body ] ; 3 uses
  %i.dq = trunc i64 %index240 to i32
  %i.dr = add i32 %.3138, %i.dq
  %i.ds = and i64 %index240, 4294967292           ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.3, i64 %i.ds
  %wide.load241 = load <4 x i8>, ptr %i.dt, align 1, !tbaa !14 ; 2 uses
  %i.du = zext i32 %i.dr to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.du
  store <4 x i8> %wide.load241, ptr %i.dv, align 1, !tbaa !14
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.ds
  %wide.load242 = load <4 x i8>, ptr %i.dw, align 1, !tbaa !14
  %i.dx = xor <4 x i8> %wide.load242, %wide.load241
  %i.dy = getelementptr inbounds nuw i8, ptr %.3125, i64 %i.ds
  store <4 x i8> %i.dx, ptr %i.dy, align 1, !tbaa !14
  %index.next243 = add nuw i64 %index240, 4       ; 2 uses
  %i.dz = icmp eq i64 %index.next243, %n.vec239
  br i1 %i.dz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !85

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n244 = icmp eq i64 %.3129, %n.vec239
  br i1 %cmp.n244, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.4180.ph = phi i64 [ %.3129, %iter.check ], [ %.3129, %vector.scevcheck ], [ %.3129, %vector.memcheck ], [ %i.cv, %vec.epilog.iter.check ], [ %i.dn, %vec.epilog.middle.block ] ; 4 uses
  %.2132179.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %i.cw, %vec.epilog.iter.check ], [ %i.do, %vec.epilog.middle.block ] ; 3 uses
  %.4139178.ph = phi i32 [ %.3138, %iter.check ], [ %.3138, %vector.scevcheck ], [ %.3138, %vector.memcheck ], [ %i.cx, %vec.epilog.iter.check ], [ %i.dp, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.4180.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ea = add nsw i64 %.4180.ph, -1
  %i.eb = zext i32 %.2132179.ph to i64            ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.3, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !14  ; 2 uses
  %i.ee = add i32 %.4139178.ph, 1                 ; 2 uses
  %i.ef = zext i32 %.4139178.ph to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ef
  store i8 %i.ed, ptr %i.eg, align 1, !tbaa !14
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.eb
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !14
  %i.ej = xor i8 %i.ei, %i.ed
  %i.ek = getelementptr inbounds nuw i8, ptr %.3125, i64 %i.eb
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !14
  %i.el = add i32 %.2132179.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ee, %vec.epilog.scalar.ph.prol ]
  %.4180.unr = phi i64 [ %.4180.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ea, %vec.epilog.scalar.ph.prol ]
  %.2132179.unr = phi i32 [ %.2132179.ph, %vec.epilog.scalar.ph.preheader ], [ %i.el, %vec.epilog.scalar.ph.prol ]
  %.4139178.unr = phi i32 [ %.4139178.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ee, %vec.epilog.scalar.ph.prol ]
  %i.em = icmp eq i64 %.4180.ph, 1
  br i1 %i.em, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.4180 = phi i64 [ %i.ey, %vec.epilog.scalar.ph ], [ %.4180.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.2132179 = phi i32 [ %i.fj, %vec.epilog.scalar.ph ], [ %.2132179.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.4139178 = phi i32 [ %i.fc, %vec.epilog.scalar.ph ], [ %.4139178.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.en = zext i32 %.2132179 to i64               ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.3, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !14  ; 2 uses
  %i.eq = add i32 %.4139178, 1
  %i.er = zext i32 %.4139178 to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.er
  store i8 %i.ep, ptr %i.es, align 1, !tbaa !14
  %i.et = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.en
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !14
  %i.ev = xor i8 %i.eu, %i.ep
  %i.ew = getelementptr inbounds nuw i8, ptr %.3125, i64 %i.en
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !14
  %i.ex = add i32 %.2132179, 1
  %i.ey = add i64 %.4180, -2                      ; 2 uses
  %i.ez = zext i32 %i.ex to i64                   ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.3, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !14  ; 2 uses
  %i.fc = add i32 %.4139178, 2                    ; 2 uses
  %i.fd = zext i32 %i.eq to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.fd
  store i8 %i.fb, ptr %i.fe, align 1, !tbaa !14
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.ez
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !14
  %i.fh = xor i8 %i.fg, %i.fb
  %i.fi = getelementptr inbounds nuw i8, ptr %.3125, i64 %i.ez
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !14
  %i.fj = add i32 %.2132179, 2
  %.not148.1 = icmp eq i64 %i.ey, 0
  br i1 %.not148.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !86

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.l
  %.5 = phi i32 [ %.3138, %bb.l ], [ %i.dp, %vec.epilog.middle.block ], [ %i.cx, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.fc, %vec.epilog.scalar.ph ]
  store i32 %.5, ptr %i.i, align 8, !tbaa !21
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %.loopexit, %._crit_edge.thread, %bb.d
  %.0 = phi i32 [ 0, %._crit_edge.thread ], [ 0, %bb.d ], [ 0, %.loopexit ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @CRYPTO_gcm128_finish(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14
  %i.c = shl i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14
  %i.f = shl i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.h = load i32, ptr %i.g, align 8, !tbaa !21   ; 4 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_1
