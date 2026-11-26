Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/gcm128?download=true
inline.NumInlined: 6
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@CRYPTO_gcm128_encrypt:bb.a

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
  %.5289 = ptrtoaddr ptr %.5 to i64               ; 2 uses
  %.5145290 = ptrtoaddr ptr %.5145 to i64         ; 3 uses
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
  %4 = zext i32 %.3163 to i64
  %i.de = add i64 %i.a, %4
  %5 = add i64 %i.de, 400                         ; 2 uses
  %6 = sub i64 %.5145290, %5
  %diff.check = icmp ugt i64 %6, -16
  %7 = sub i64 %.5145290, %i.a
  %8 = add i64 %7, -17
  %diff.check291 = icmp ult i64 %8, 15
  %conflict.rdx = or i1 %diff.check, %diff.check291
  %i.df = sub i64 %.5289, %.5145290
  %diff.check292 = icmp ugt i64 %i.df, -16
  %conflict.rdx293 = or i1 %conflict.rdx, %diff.check292
  %i.dg = sub i64 %.5289, %5
  %diff.check294 = icmp ugt i64 %i.dg, -16
  %conflict.rdx295 = or i1 %conflict.rdx293, %diff.check294
  br i1 %conflict.rdx295, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check296 = icmp ult i64 %.4150, 16
  br i1 %min.iters.check296, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dh = and i64 %.4150, 12
  %n.vec = and i64 %.4150, 8589934576             ; 4 uses
  %i.di = and i64 %.4150, 15
  %i.dj = trunc i64 %n.vec to i32                 ; 2 uses
  %i.dk = add i32 %.3163, %i.dj                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dl = trunc i64 %index to i32
  %i.dm = add i32 %.3163, %i.dl
  %i.dn = and i64 %index, 4294967280              ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.5, i64 %i.dn
  %wide.load = load <16 x i8>, ptr %i.do, align 1, !tbaa !14
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.dn
  %wide.load297 = load <16 x i8>, ptr %i.dp, align 1, !tbaa !14
  %i.dq = xor <16 x i8> %wide.load297, %wide.load ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.5145, i64 %i.dn
  store <16 x i8> %i.dq, ptr %i.dr, align 1, !tbaa !14
  %i.ds = zext i32 %i.dm to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.ds
  store <16 x i8> %i.dq, ptr %i.dt, align 1, !tbaa !14
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.4150, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dh, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !31

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec298 = and i64 %.4150, 8589934588          ; 3 uses
  %i.dv = and i64 %.4150, 3
  %i.dw = trunc i64 %n.vec298 to i32              ; 2 uses
  %i.dx = add i32 %.3163, %i.dw                   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index299 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next302, %vec.epilog.vector.body ] ; 3 uses
  %i.dy = trunc i64 %index299 to i32
  %i.dz = add i32 %.3163, %i.dy
  %i.ea = and i64 %index299, 4294967292           ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.5, i64 %i.ea
  %wide.load300 = load <4 x i8>, ptr %i.eb, align 1, !tbaa !14
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ea
  %wide.load301 = load <4 x i8>, ptr %i.ec, align 1, !tbaa !14
  %i.ed = xor <4 x i8> %wide.load301, %wide.load300 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.5145, i64 %i.ea
  store <4 x i8> %i.ed, ptr %i.ee, align 1, !tbaa !14
  %i.ef = zext i32 %i.dz to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.ef
  store <4 x i8> %i.ed, ptr %i.eg, align 1, !tbaa !14
  %index.next302 = add nuw i64 %index299, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next302, %n.vec298
  br i1 %i.eh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !56

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n303 = icmp eq i64 %.4150, %n.vec298
  br i1 %cmp.n303, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.5151225.ph = phi i64 [ %.4150, %iter.check ], [ %.4150, %vector.scevcheck ], [ %.4150, %vector.memcheck ], [ %i.di, %vec.epilog.iter.check ], [ %i.dv, %vec.epilog.middle.block ] ; 4 uses
  %.2154224.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %i.dj, %vec.epilog.iter.check ], [ %i.dw, %vec.epilog.middle.block ] ; 3 uses
  %.4164223.ph = phi i32 [ %.3163, %iter.check ], [ %.3163, %vector.scevcheck ], [ %.3163, %vector.memcheck ], [ %i.dk, %vec.epilog.iter.check ], [ %i.dx, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.5151225.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ei = add nsw i64 %.5151225.ph, -1
  %i.ej = zext i32 %.2154224.ph to i64            ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.5, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !14
  %i.em = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ej
  %i.en = load i8, ptr %i.em, align 1, !tbaa !14
  %i.eo = xor i8 %i.en, %i.el                     ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.5145, i64 %i.ej
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !14
  %i.eq = add i32 %.4164223.ph, 1                 ; 2 uses
  %i.er = zext i32 %.4164223.ph to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.er
  store i8 %i.eo, ptr %i.es, align 1, !tbaa !14
  %i.et = add i32 %.2154224.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.eq, %vec.epilog.scalar.ph.prol ]
  %.5151225.unr = phi i64 [ %.5151225.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ei, %vec.epilog.scalar.ph.prol ]
  %.2154224.unr = phi i32 [ %.2154224.ph, %vec.epilog.scalar.ph.preheader ], [ %i.et, %vec.epilog.scalar.ph.prol ]
  %.4164223.unr = phi i32 [ %.4164223.ph, %vec.epilog.scalar.ph.preheader ], [ %i.eq, %vec.epilog.scalar.ph.prol ]
  %i.eu = icmp eq i64 %.5151225.ph, 1
  br i1 %i.eu, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.5151225 = phi i64 [ %i.fg, %vec.epilog.scalar.ph ], [ %.5151225.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.2154224 = phi i32 [ %i.fr, %vec.epilog.scalar.ph ], [ %.2154224.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.4164223 = phi i32 [ %i.fo, %vec.epilog.scalar.ph ], [ %.4164223.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.ev = zext i32 %.2154224 to i64               ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.5, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !14
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ev
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !14
  %i.fa = xor i8 %i.ez, %i.ex                     ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.5145, i64 %i.ev
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !14
  %i.fc = add i32 %.4164223, 1
  %i.fd = zext i32 %.4164223 to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.fd
  store i8 %i.fa, ptr %i.fe, align 1, !tbaa !14
  %i.ff = add i32 %.2154224, 1
  %i.fg = add i64 %.5151225, -2                   ; 2 uses
  %i.fh = zext i32 %i.ff to i64                   ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.5, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !14
  %i.fk = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.fh
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !14
  %i.fm = xor i8 %i.fl, %i.fj                     ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.5145, i64 %i.fh
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !14
  %i.fo = add i32 %.4164223, 2                    ; 2 uses
  %i.fp = zext i32 %i.fc to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.fp
  store i8 %i.fm, ptr %i.fq, align 1, !tbaa !14
  %i.fr = add i32 %.2154224, 2
  %.not176.1 = icmp eq i64 %i.fg, 0
  br i1 %.not176.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !57

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.m
  %.5165 = phi i32 [ %.3163, %bb.m ], [ %i.dx, %vec.epilog.middle.block ], [ %i.dk, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.fo, %vec.epilog.scalar.ph ]
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
  %i.o = icmp eq i64 %3, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void %i.q(ptr noundef nonnull %i.r, ptr noundef nonnull %i.s) #7
  store i32 0, ptr %i.m, align 4, !tbaa !20
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  store i32 0, ptr %i.m, align 4, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.0158 = phi i32 [ 16, %bb.e ], [ %i.l, %bb.b ] ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
end_hunk_0
begin_hunk_1_@CRYPTO_gcm128_encrypt_ctr32:bb.a
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
  %.2.lcssa231 = ptrtoaddr ptr %.2.lcssa to i64   ; 2 uses
  %.2124.lcssa232 = ptrtoaddr ptr %.2124.lcssa to i64 ; 3 uses
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
  %5 = zext i32 %.3138 to i64
  %6 = add i64 %i.a, %5
  %i.ch = add i64 %6, 400                         ; 2 uses
  %7 = add i64 %i.bj, %.2124.lcssa232
  %8 = sub i64 %7, %i.ch
  %diff.check = icmp ugt i64 %8, -16
  %i.ci = add i64 %i.bj, %.2124.lcssa232
  %9 = sub i64 %i.ci, %i.a
  %10 = add i64 %9, -17
  %diff.check233 = icmp ult i64 %10, 15
  %conflict.rdx = or i1 %diff.check, %diff.check233
  %i.cj = sub i64 %.2.lcssa231, %.2124.lcssa232
  %diff.check234 = icmp ugt i64 %i.cj, -16
  %conflict.rdx235 = or i1 %conflict.rdx, %diff.check234
  %i.ck = add i64 %i.bj, %.2.lcssa231
  %i.cl = sub i64 %i.ck, %i.ch
  %diff.check236 = icmp ugt i64 %i.cl, -16
  %conflict.rdx237 = or i1 %conflict.rdx235, %diff.check236
  br i1 %conflict.rdx237, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check238 = icmp ult i64 %.3129, 16
  br i1 %min.iters.check238, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cm = and i64 %.3129, 12
  %n.vec = and i64 %.3129, 8589934576             ; 4 uses
  %i.cn = and i64 %.3129, 15
  %i.co = trunc i64 %n.vec to i32                 ; 2 uses
  %i.cp = add i32 %.3138, %i.co                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cq = trunc i64 %index to i32
  %i.cr = add i32 %.3138, %i.cq
  %i.cs = and i64 %index, 4294967280              ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.3, i64 %i.cs
  %wide.load = load <16 x i8>, ptr %i.ct, align 1, !tbaa !14
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cs
  %wide.load239 = load <16 x i8>, ptr %i.cu, align 1, !tbaa !14
  %i.cv = xor <16 x i8> %wide.load239, %wide.load ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.3125, i64 %i.cs
  store <16 x i8> %i.cv, ptr %i.cw, align 1, !tbaa !14
  %i.cx = zext i32 %i.cr to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cx
  store <16 x i8> %i.cv, ptr %i.cy, align 1, !tbaa !14
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.3129, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cm, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !31

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec240 = and i64 %.3129, 8589934588          ; 3 uses
  %i.da = and i64 %.3129, 3
  %i.db = trunc i64 %n.vec240 to i32              ; 2 uses
  %i.dc = add i32 %.3138, %i.db                   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index241 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next244, %vec.epilog.vector.body ] ; 3 uses
  %i.dd = trunc i64 %index241 to i32
  %i.de = add i32 %.3138, %i.dd
  %i.df = and i64 %index241, 4294967292           ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.3, i64 %i.df
  %wide.load242 = load <4 x i8>, ptr %i.dg, align 1, !tbaa !14
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.df
  %wide.load243 = load <4 x i8>, ptr %i.dh, align 1, !tbaa !14
  %i.di = xor <4 x i8> %wide.load243, %wide.load242 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.3125, i64 %i.df
  store <4 x i8> %i.di, ptr %i.dj, align 1, !tbaa !14
  %i.dk = zext i32 %i.de to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.dk
  store <4 x i8> %i.di, ptr %i.dl, align 1, !tbaa !14
  %index.next244 = add nuw i64 %index241, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next244, %n.vec240
  br i1 %i.dm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !76

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n245 = icmp eq i64 %.3129, %n.vec240
  br i1 %cmp.n245, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.4180.ph = phi i64 [ %.3129, %iter.check ], [ %.3129, %vector.scevcheck ], [ %.3129, %vector.memcheck ], [ %i.cn, %vec.epilog.iter.check ], [ %i.da, %vec.epilog.middle.block ] ; 4 uses
  %.2132179.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %i.co, %vec.epilog.iter.check ], [ %i.db, %vec.epilog.middle.block ] ; 3 uses
  %.4139178.ph = phi i32 [ %.3138, %iter.check ], [ %.3138, %vector.scevcheck ], [ %.3138, %vector.memcheck ], [ %i.cp, %vec.epilog.iter.check ], [ %i.dc, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.4180.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.dn = add nsw i64 %.4180.ph, -1
  %i.do = zext i32 %.2132179.ph to i64            ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.3, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !14
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.do
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !14
  %i.dt = xor i8 %i.ds, %i.dq                     ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.3125, i64 %i.do
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !14
  %i.dv = add i32 %.4139178.ph, 1                 ; 2 uses
  %i.dw = zext i32 %.4139178.ph to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.dw
  store i8 %i.dt, ptr %i.dx, align 1, !tbaa !14
  %i.dy = add i32 %.2132179.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.dv, %vec.epilog.scalar.ph.prol ]
  %.4180.unr = phi i64 [ %.4180.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dn, %vec.epilog.scalar.ph.prol ]
  %.2132179.unr = phi i32 [ %.2132179.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dy, %vec.epilog.scalar.ph.prol ]
  %.4139178.unr = phi i32 [ %.4139178.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dv, %vec.epilog.scalar.ph.prol ]
  %i.dz = icmp eq i64 %.4180.ph, 1
  br i1 %i.dz, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.4180 = phi i64 [ %i.el, %vec.epilog.scalar.ph ], [ %.4180.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.2132179 = phi i32 [ %i.ew, %vec.epilog.scalar.ph ], [ %.2132179.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.4139178 = phi i32 [ %i.et, %vec.epilog.scalar.ph ], [ %.4139178.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.ea = zext i32 %.2132179 to i64               ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.3, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !14
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.ea
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !14
  %i.ef = xor i8 %i.ee, %i.ec                     ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.3125, i64 %i.ea
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !14
  %i.eh = add i32 %.4139178, 1
  %i.ei = zext i32 %.4139178 to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ei
  store i8 %i.ef, ptr %i.ej, align 1, !tbaa !14
  %i.ek = add i32 %.2132179, 1
  %i.el = add i64 %.4180, -2                      ; 2 uses
  %i.em = zext i32 %i.ek to i64                   ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.3, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !14
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.em
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !14
  %i.er = xor i8 %i.eq, %i.eo                     ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.3125, i64 %i.em
  store i8 %i.er, ptr %i.es, align 1, !tbaa !14
  %i.et = add i32 %.4139178, 2                    ; 2 uses
  %i.eu = zext i32 %i.eh to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.eu
  store i8 %i.er, ptr %i.ev, align 1, !tbaa !14
  %i.ew = add i32 %.2132179, 2
  %.not148.1 = icmp eq i64 %i.el, 0
  br i1 %.not148.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !77

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.l
  %.5 = phi i32 [ %.3138, %bb.l ], [ %i.dc, %vec.epilog.middle.block ], [ %i.cp, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.et, %vec.epilog.scalar.ph ]
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
end_hunk_1
