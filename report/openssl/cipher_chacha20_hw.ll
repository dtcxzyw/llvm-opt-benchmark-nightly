Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/cipher_chacha20_hw?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@chacha20_cipher:bb.a
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load124 = load <16 x i8>, ptr %gep, align 1, !tbaa !8
  %wide.load125 = load <16 x i8>, ptr %i.x, align 1, !tbaa !8
  %i.y = xor <16 x i8> %wide.load124, %wide.load
  %i.z = xor <16 x i8> %wide.load125, %wide.load123
  %i.aa = getelementptr i8, ptr %next.gep122, i64 16
  store <16 x i8> %i.y, ptr %next.gep122, align 1, !tbaa !8
  store <16 x i8> %i.z, ptr %i.aa, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.r, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec129 = and i64 %i.m, 124                   ; 6 uses
  %i.ac = add nuw nsw i64 %n.vec129, %i.j         ; 2 uses
  %i.ad = sub i64 %3, %n.vec129                   ; 2 uses
  %i.ae = getelementptr i8, ptr %2, i64 %n.vec129 ; 2 uses
  %i.af = getelementptr i8, ptr %1, i64 %n.vec129 ; 2 uses
  %invariant.gep183 = getelementptr i8, ptr %i.i, i64 %i.j
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index130 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next135, %vec.epilog.vector.body ] ; 4 uses
  %next.gep131 = getelementptr i8, ptr %2, i64 %index130
  %next.gep132 = getelementptr i8, ptr %1, i64 %index130
  %wide.load133 = load <4 x i8>, ptr %next.gep131, align 1, !tbaa !8
  %gep184 = getelementptr i8, ptr %invariant.gep183, i64 %index130
  %wide.load134 = load <4 x i8>, ptr %gep184, align 1, !tbaa !8
  %i.ag = xor <4 x i8> %wide.load134, %wide.load133
  store <4 x i8> %i.ag, ptr %next.gep132, align 1, !tbaa !8
  %index.next135 = add nuw i64 %index130, 4       ; 2 uses
  %i.ah = icmp eq i64 %index.next135, %n.vec129
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !19

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n136 = icmp eq i64 %i.m, %n.vec129
  br i1 %cmp.n136, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.j, %iter.check ], [ %i.j, %vector.memcheck ], [ %i.s, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  %.06683.ph = phi i64 [ %3, %iter.check ], [ %3, %vector.memcheck ], [ %i.t, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ]
  %.06882.ph = phi ptr [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.u, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  %.07181.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.v, %vec.epilog.iter.check ], [ %i.af, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.06683 = phi i64 [ %i.ao, %vec.epilog.scalar.ph ], [ %.06683.ph, %vec.epilog.scalar.ph.preheader ]
  %.06882 = phi ptr [ %i.ai, %vec.epilog.scalar.ph ], [ %.06882.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.07181 = phi ptr [ %i.an, %vec.epilog.scalar.ph ], [ %.07181.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.06882, i64 1 ; 2 uses
  %i.aj = load i8, ptr %.06882, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !8
  %i.am = xor i8 %i.al, %i.aj
  %i.an = getelementptr inbounds nuw i8, ptr %.07181, i64 1 ; 2 uses
  store i8 %i.am, ptr %.07181, align 1, !tbaa !8
  %i.ao = add i64 %.06683, -1                     ; 3 uses
  %i.ap = icmp ne i64 %i.ao, 0
  %i.aq = icmp samesign ult i64 %indvars.iv, 63
  %i.ar = and i1 %i.ap, %i.aq
  br i1 %i.ar, label %vec.epilog.scalar.ph, label %._crit_edge.loopexit, !llvm.loop !20

._crit_edge.loopexit:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa119 = phi ptr [ %i.ae, %vec.epilog.middle.block ], [ %i.u, %middle.block ], [ %i.ai, %vec.epilog.scalar.ph ]
  %indvars.iv.next.lcssa = phi i64 [ %i.ac, %vec.epilog.middle.block ], [ %i.s, %middle.block ], [ %indvars.iv.next, %vec.epilog.scalar.ph ]
  %.lcssa118 = phi ptr [ %i.af, %vec.epilog.middle.block ], [ %i.v, %middle.block ], [ %i.an, %vec.epilog.scalar.ph ]
  %.lcssa117 = phi i64 [ %i.ad, %vec.epilog.middle.block ], [ %i.t, %middle.block ], [ %i.ao, %vec.epilog.scalar.ph ]
  %i.as = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.071.lcssa = phi ptr [ %1, %.preheader ], [ %.lcssa118, %._crit_edge.loopexit ] ; 2 uses
  %.068.lcssa = phi ptr [ %2, %.preheader ], [ %.lcssa119, %._crit_edge.loopexit ] ; 2 uses
  %.066.lcssa = phi i64 [ %3, %.preheader ], [ %.lcssa117, %._crit_edge.loopexit ] ; 3 uses
  %.064.lcssa = phi i32 [ %i.e, %.preheader ], [ %i.as, %._crit_edge.loopexit ] ; 2 uses
  store i32 %.064.lcssa, ptr %i.d, align 8, !tbaa !16
  %i.at = icmp eq i64 %.066.lcssa, 0
  br i1 %i.at, label %bb.j, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.au = icmp eq i32 %.064.lcssa, 64
  br i1 %i.au, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.172 = phi ptr [ %.071.lcssa, %bb.c ], [ %.071.lcssa, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.169 = phi ptr [ %.068.lcssa, %bb.c ], [ %.068.lcssa, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.167 = phi i64 [ %.066.lcssa, %bb.c ], [ %.066.lcssa, %bb.b ], [ %3, %bb.a ] ; 7 uses
  %i.av = trunc i64 %.167 to i32
  %i.aw = and i32 %i.av, 63                       ; 2 uses
  %i.ax = and i64 %.167, -64                      ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 6 uses
  %.not7888 = icmp eq i64 %i.ax, 0
  br i1 %.not7888, label %._crit_edge95, label %.lr.ph94

.lr.ph94:                                         ; preds = %bb.d
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !17
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph94, %bb.g
  %.06392 = phi i32 [ %i.az, %.lr.ph94 ], [ %spec.select, %bb.g ]
  %.291 = phi i64 [ %i.ax, %.lr.ph94 ], [ %i.bj, %bb.g ] ; 2 uses
  %.27090 = phi ptr [ %.169, %.lr.ph94 ], [ %i.bk, %bb.g ] ; 2 uses
  %.27389 = phi ptr [ %.172, %.lr.ph94 ], [ %i.bl, %bb.g ] ; 2 uses
  %i.bc = lshr exact i64 %.291, 6
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 268435456) ; 3 uses
  %i.bd = trunc nuw nsw i64 %spec.store.select to i32
  %i.be = add i32 %.06392, %i.bd                  ; 2 uses
  %i.bf = zext i32 %i.be to i64                   ; 2 uses
  %i.bg = icmp samesign ugt i64 %spec.store.select, %i.bf ; 2 uses
  %spec.select = select i1 %i.bg, i32 0, i32 %i.be ; 3 uses
  %i.bh = select i1 %i.bg, i64 %i.bf, i64 0
  %spec.select80 = sub nuw nsw i64 %spec.store.select, %i.bh
  %i.bi = shl nuw nsw i64 %spec.select80, 6       ; 4 uses
  tail call void @ChaCha20_ctr32(ptr noundef %.27389, ptr noundef %.27090, i64 noundef %i.bi, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.ay) #6
  %i.bj = sub i64 %.291, %i.bi                    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.27090, i64 %i.bi ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.27389, i64 %i.bi ; 2 uses
  store i32 %spec.select, ptr %i.ay, align 8, !tbaa !17
  %i.bm = icmp eq i32 %spec.select, 0
  br i1 %i.bm, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bn = load i32, ptr %i.bb, align 4, !tbaa !17
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bb, align 4, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not78 = icmp eq i64 %i.bj, 0
  br i1 %.not78, label %._crit_edge95, label %bb.e, !llvm.loop !21

._crit_edge95:                                    ; preds = %bb.g, %bb.d
  %.273.lcssa = phi ptr [ %.172, %bb.d ], [ %i.bl, %bb.g ] ; 8 uses
  %.270.lcssa = phi ptr [ %.169, %bb.d ], [ %i.bk, %bb.g ] ; 8 uses
  %.273.lcssa142 = ptrtoaddr ptr %.273.lcssa to i64 ; 2 uses
  %.270.lcssa143 = ptrtoaddr ptr %.270.lcssa to i64
  %.not79 = icmp eq i32 %i.aw, 0
  br i1 %.not79, label %bb.j, label %bb.h

bb.h:                                             ; preds = %._crit_edge95
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bp, i8 0, i64 64, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @ChaCha20_ctr32(ptr noundef nonnull %i.bp, ptr noundef nonnull %i.bp, i64 noundef 64, ptr noundef nonnull %i.bq, ptr noundef nonnull %i.ay) #6
  %i.br = load i32, ptr %i.ay, align 8, !tbaa !17
  %i.bs = add i32 %i.br, 1                        ; 2 uses
  store i32 %i.bs, ptr %i.ay, align 8, !tbaa !17
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.i, label %iter.check160

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !17
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !17
  br label %iter.check160

iter.check160:                                    ; preds = %bb.i, %bb.h
  %wide.trip.count = and i64 %.167, 63            ; 6 uses
  %min.iters.check147 = icmp samesign ult i64 %wide.trip.count, 4
  br i1 %min.iters.check147, label %vec.epilog.scalar.ph161.preheader, label %vector.memcheck141

vector.memcheck141:                               ; preds = %iter.check160
  %i.bx = sub i64 %.270.lcssa143, %.273.lcssa142
  %diff.check144 = icmp ugt i64 %i.bx, -16
  %i.by = sub i64 %.273.lcssa142, %i.a
  %i.bz = add i64 %i.by, -241
  %diff.check145 = icmp ult i64 %i.bz, 15
  %conflict.rdx146 = or i1 %diff.check144, %diff.check145
  br i1 %conflict.rdx146, label %vec.epilog.scalar.ph161.preheader, label %vector.main.loop.iter.check148

vector.main.loop.iter.check148:                   ; preds = %vector.memcheck141
  %min.iters.check149 = icmp samesign ult i64 %wide.trip.count, 16
  br i1 %min.iters.check149, label %vec.epilog.ph164, label %vector.ph150

vector.ph150:                                     ; preds = %vector.main.loop.iter.check148
  %i.ca = and i64 %.167, 12
  %n.vec151 = and i64 %.167, 48                   ; 4 uses
  br label %vector.body152

vector.body152:                                   ; preds = %vector.body152, %vector.ph150
  %index153 = phi i64 [ 0, %vector.ph150 ], [ %index.next156, %vector.body152 ] ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 %index153
  %wide.load154 = load <16 x i8>, ptr %i.cb, align 1, !tbaa !8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bp, i64 %index153
  %wide.load155 = load <16 x i8>, ptr %i.cc, align 1, !tbaa !8
  %4 = xor <16 x i8> %wide.load155, %wide.load154
  %i.cd = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 %index153
  store <16 x i8> %4, ptr %i.cd, align 1, !tbaa !8
  %index.next156 = add nuw i64 %index153, 16      ; 2 uses
  %i.ce = icmp eq i64 %index.next156, %n.vec151
  br i1 %i.ce, label %middle.block157, label %vector.body152, !llvm.loop !22

middle.block157:                                  ; preds = %vector.body152
  %cmp.n158 = icmp eq i64 %wide.trip.count, %n.vec151
  br i1 %cmp.n158, label %.loopexit, label %vec.epilog.iter.check162

vec.epilog.iter.check162:                         ; preds = %middle.block157
  %min.epilog.iters.check163 = icmp eq i64 %i.ca, 0
  br i1 %min.epilog.iters.check163, label %vec.epilog.scalar.ph161.preheader, label %vec.epilog.ph164, !prof !30

vec.epilog.ph164:                                 ; preds = %vector.main.loop.iter.check148, %vec.epilog.iter.check162
  %vec.epilog.resume.val159 = phi i64 [ %n.vec151, %vec.epilog.iter.check162 ], [ 0, %vector.main.loop.iter.check148 ]
  %n.vec165 = and i64 %.167, 60                   ; 3 uses
  br label %vec.epilog.vector.body166

vec.epilog.vector.body166:                        ; preds = %vec.epilog.vector.body166, %vec.epilog.ph164
  %index167 = phi i64 [ %vec.epilog.resume.val159, %vec.epilog.ph164 ], [ %index.next170, %vec.epilog.vector.body166 ] ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 %index167
  %wide.load168 = load <4 x i8>, ptr %i.cf, align 1, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bp, i64 %index167
  %wide.load169 = load <4 x i8>, ptr %i.cg, align 1, !tbaa !8
  %i.ch = xor <4 x i8> %wide.load169, %wide.load168
  %i.ci = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 %index167
  store <4 x i8> %i.ch, ptr %i.ci, align 1, !tbaa !8
  %index.next170 = add nuw i64 %index167, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next170, %n.vec165
  br i1 %i.cj, label %vec.epilog.middle.block171, label %vec.epilog.vector.body166, !llvm.loop !23

vec.epilog.middle.block171:                       ; preds = %vec.epilog.vector.body166
  %cmp.n172 = icmp eq i64 %wide.trip.count, %n.vec165
  br i1 %cmp.n172, label %.loopexit, label %vec.epilog.scalar.ph161.preheader

vec.epilog.scalar.ph161.preheader:                ; preds = %vector.memcheck141, %iter.check160, %vec.epilog.iter.check162, %vec.epilog.middle.block171
  %indvars.iv105.ph = phi i64 [ 0, %iter.check160 ], [ 0, %vector.memcheck141 ], [ %n.vec151, %vec.epilog.iter.check162 ], [ %n.vec165, %vec.epilog.middle.block171 ] ; 3 uses
  %xtraiter = and i64 %.167, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph161.prol.loopexit, label %vec.epilog.scalar.ph161.prol

vec.epilog.scalar.ph161.prol:                     ; preds = %vec.epilog.scalar.ph161.preheader, %vec.epilog.scalar.ph161.prol
  %indvars.iv105.prol = phi i64 [ %indvars.iv.next106.prol, %vec.epilog.scalar.ph161.prol ], [ %indvars.iv105.ph, %vec.epilog.scalar.ph161.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph161.prol ], [ 0, %vec.epilog.scalar.ph161.preheader ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 %indvars.iv105.prol
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bp, i64 %indvars.iv105.prol
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !8
  %i.co = xor i8 %i.cn, %i.cl
  %i.cp = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 %indvars.iv105.prol
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !8
  %indvars.iv.next106.prol = add nuw nsw i64 %indvars.iv105.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph161.prol.loopexit, label %vec.epilog.scalar.ph161.prol, !llvm.loop !24

vec.epilog.scalar.ph161.prol.loopexit:            ; preds = %vec.epilog.scalar.ph161.prol, %vec.epilog.scalar.ph161.preheader
  %indvars.iv105.unr = phi i64 [ %indvars.iv105.ph, %vec.epilog.scalar.ph161.preheader ], [ %indvars.iv.next106.prol, %vec.epilog.scalar.ph161.prol ]
  %i.cq = sub nsw i64 %indvars.iv105.ph, %wide.trip.count
  %i.cr = icmp ugt i64 %i.cq, -4
  br i1 %i.cr, label %.loopexit, label %vec.epilog.scalar.ph161

vec.epilog.scalar.ph161:                          ; preds = %vec.epilog.scalar.ph161.prol.loopexit, %vec.epilog.scalar.ph161
  %indvars.iv105 = phi i64 [ %indvars.iv.next106.3, %vec.epilog.scalar.ph161 ], [ %indvars.iv105.unr, %vec.epilog.scalar.ph161.prol.loopexit ] ; 7 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 %indvars.iv105
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bp, i64 %indvars.iv105
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !8
  %i.cw = xor i8 %i.cv, %i.ct
  %i.cx = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 %indvars.iv105
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !8
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 %indvars.iv.next106
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !8
  %i.da = getelementptr inbounds nuw i8, ptr %i.bp, i64 %indvars.iv.next106
  %i.db = load i8, ptr %i.da, align 1, !tbaa !8
  %i.dc = xor i8 %i.db, %i.cz
  %i.dd = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 %indvars.iv.next106
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !8
  %indvars.iv.next106.1 = add nuw nsw i64 %indvars.iv105, 2 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 %indvars.iv.next106.1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bp, i64 %indvars.iv.next106.1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !8
  %i.di = xor i8 %i.dh, %i.df
  %i.dj = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 %indvars.iv.next106.1
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !8
  %indvars.iv.next106.2 = add nuw nsw i64 %indvars.iv105, 3 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 %indvars.iv.next106.2
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bp, i64 %indvars.iv.next106.2
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !8
  %i.do = xor i8 %i.dn, %i.dl
  %i.dp = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 %indvars.iv.next106.2
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !8
  %indvars.iv.next106.3 = add nuw nsw i64 %indvars.iv105, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next106.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph161, !llvm.loop !25

.loopexit:                                        ; preds = %vec.epilog.scalar.ph161.prol.loopexit, %vec.epilog.scalar.ph161, %vec.epilog.middle.block171, %middle.block157
  store i32 %i.aw, ptr %i.d, align 8, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge95, %.loopexit, %._crit_edge
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @chacha20_initiv(ptr nofree noundef captures(none) initializes((304, 308)) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 4
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load <4 x i32>, ptr %0, align 4
  store <4 x i32> %i.e, ptr %i.d, align 4, !tbaa !17
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 0, ptr %i.f, align 8, !tbaa !16
  ret i32 1
}

declare void @ChaCha20_ctr32(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"p1 omnipotent char", !9, i64 0}
!12 = !{!"p1 _ZTS17prov_cipher_hw_st", !9, i64 0}
!13 = !{!"p1 _ZTS15ossl_lib_ctx_st", !9, i64 0}
!14 = !{!"prov_cipher_ctx_st", !4, i64 0, !4, i64 16, !4, i64 32, !9, i64 48, !4, i64 56, !5, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !5, i64 104, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 112, !11, i64 120, !5, i64 128, !10, i64 136, !5, i64 144, !10, i64 152, !5, i64 160, !12, i64 168, !9, i64 176, !13, i64 184}
!15 = !{!"", !14, i64 0, !4, i64 192, !4, i64 224, !4, i64 240, !5, i64 304}
!16 = !{!15, !5, i64 304}
!17 = !{!5, !5, i64 0}
!18 = distinct !{!18, !26, !27, !28}
!19 = distinct !{!19, !26, !27, !28}
!20 = distinct !{!20, !26, !27}
!21 = distinct !{!21, !26}
!22 = distinct !{!22, !26, !27, !28}
!23 = distinct !{!23, !26, !27, !28}
!24 = distinct !{!24, !31}
!25 = distinct !{!25, !26, !27}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = !{!"branch_weights", i32 4, i32 28}
!30 = !{!"branch_weights", i32 4, i32 12}
!31 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
