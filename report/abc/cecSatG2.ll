Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cecSatG2?download=true
inline.NumInlined: 1272
inline.NumDeleted: 185
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 47
begin_hunk_0_@Cec4_ObjGetCnfVar:bb.a
  %i.ba = load ptr, ptr %0, align 8, !tbaa !88
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !91
  %i.bc = icmp slt i32 %i.bb, 2
  br i1 %i.bc, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.bd = load ptr, ptr %i.aw, align 8, !tbaa !90
  %i.be = call i32 @bmcg2_sat_solver_add_xor(ptr noundef %i.bd, i32 noundef %i.ay, i32 noundef %i.ak, i32 noundef %i.au, i32 noundef 0) #35 ; 0 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !88
  %.pre186 = load i32, ptr %.pre, align 8, !tbaa !91
  %i.bf = icmp sgt i32 %.pre186, 0
  br i1 %i.bf, label %.thread, label %bb.p

.thread:                                          ; preds = %bb.g, %bb.h
  %i.bg = shl nsw i32 %i.ak, 1                    ; 2 uses
  %i.bh = shl nsw i32 %i.au, 1                    ; 2 uses
  %spec.select = call i32 @llvm.smax.i32(i32 %i.bg, i32 %i.bh)
  %spec.select154 = call i32 @llvm.smin.i32(i32 %i.bg, i32 %i.bh)
  %i.bi = load ptr, ptr %i.aw, align 8, !tbaa !90
  call void @bmcg2_sat_solver_set_var_fanin_lit(ptr noundef %i.bi, i32 noundef %i.ay, i32 noundef %spec.select, i32 noundef %spec.select154) #35
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !52
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bj, align 8, !tbaa !52
  br label %bb.p

bb.i:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.val159 = load i64, ptr %i.g, align 4
  %i.bm = trunc i64 %.val159 to i32
  %i.bn = and i32 %i.bm, 536870911
  %i.bo = sub nsw i32 %1, %i.bn
  %i.bp = call i32 @Cec4_ObjGetCnfVar(ptr noundef nonnull %0, i32 noundef %i.bo) ; 3 uses
  %.val173 = load i64, ptr %i.g, align 4
  %i.bq = lshr i64 %.val173, 32
  %i.br = trunc nuw i64 %i.bq to i32
  %i.bs = and i32 %i.br, 536870911
  %i.bt = sub nsw i32 %1, %i.bs
  %i.bu = call i32 @Cec4_ObjGetCnfVar(ptr noundef nonnull %0, i32 noundef %i.bt) ; 3 uses
  %i.bv = load ptr, ptr %i.c, align 8, !tbaa !132
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !90
  %i.by = call i32 @bmcg2_sat_solver_addvar(ptr noundef %i.bx) #35 ; 4 uses
  %i.bz = call fastcc i32 @Cec4_ObjSetSatId(ptr noundef %i.bv, ptr noundef nonnull %i.g, i32 noundef %i.by) ; 0 uses
  %i.ca = load ptr, ptr %0, align 8, !tbaa !88
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !91
  %i.cc = icmp slt i32 %i.cb, 2
  br i1 %i.cc, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %.val176 = load i64, ptr %i.g, align 4          ; 6 uses
  %i.cd = and i64 %.val176, 2147483648
  %.not.i.i = icmp ne i64 %i.cd, 0
  %i.ce = and i64 %.val176, 536870911
  %i.cf = icmp eq i64 %i.ce, 536870911
  %narrow.i.not.i = or i1 %.not.i.i, %i.cf
  %.pre187 = trunc i64 %.val176 to i32            ; 3 uses
  br i1 %narrow.i.not.i, label %Gia_ObjIsXor.exit.thread, label %Gia_ObjIsXor.exit

Gia_ObjIsXor.exit:                                ; preds = %bb.j
  %i.cg = and i32 %.pre187, 536870911
  %i.ch = lshr i64 %.val176, 32
  %i.ci = trunc nuw i64 %i.ch to i32
  %i.cj = and i32 %i.ci, 536870911
  %.not = icmp samesign ult i32 %i.cg, %i.cj
  br i1 %.not, label %bb.k, label %Gia_ObjIsXor.exit.thread

bb.k:                                             ; preds = %Gia_ObjIsXor.exit
  %i.ck = load ptr, ptr %i.bw, align 8, !tbaa !90
  %i.cl = lshr i32 %.pre187, 29
  %i.cm = lshr i64 %.val176, 61
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = xor i32 %i.cl, %i.cn
  %i.cp = and i32 %i.co, 1
  %i.cq = call i32 @bmcg2_sat_solver_add_xor(ptr noundef %i.ck, i32 noundef %i.by, i32 noundef %i.bp, i32 noundef %i.bu, i32 noundef %i.cp) #35 ; 0 uses
  br label %bb.l

Gia_ObjIsXor.exit.thread:                         ; preds = %bb.j, %Gia_ObjIsXor.exit
  %i.cr = load ptr, ptr %i.bw, align 8, !tbaa !90
  %i.cs = lshr i32 %.pre187, 29
  %i.ct = and i32 %i.cs, 1
  %i.cu = lshr i64 %.val176, 61
  %i.cv = trunc nuw nsw i64 %i.cu to i32
  %i.cw = and i32 %i.cv, 1
  %i.cx = call i32 @bmcg2_sat_solver_add_and(ptr noundef %i.cr, i32 noundef %i.by, i32 noundef %i.bp, i32 noundef %i.bu, i32 noundef %i.ct, i32 noundef %i.cw, i32 noundef 0) #35 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %Gia_ObjIsXor.exit.thread, %bb.i
  %i.cy = load ptr, ptr %0, align 8, !tbaa !88
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !91
  %i.da = icmp sgt i32 %i.cz, 0
  br i1 %i.da, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %.val167 = load i64, ptr %i.g, align 4          ; 5 uses
  %i.db = trunc i64 %.val167 to i32               ; 2 uses
  %i.dc = lshr i32 %i.db, 29
  %i.dd = and i32 %i.dc, 1
  %i.de = shl nsw i32 %i.bp, 1
  %i.df = or disjoint i32 %i.dd, %i.de            ; 3 uses
  %i.dg = lshr i64 %.val167, 61
  %i.dh = trunc nuw nsw i64 %i.dg to i32
  %i.di = and i32 %i.dh, 1
  %i.dj = shl nsw i32 %i.bu, 1
  %i.dk = or disjoint i32 %i.di, %i.dj            ; 3 uses
  %i.dl = icmp sgt i32 %i.df, %i.dk
  %i.dm = zext i1 %i.dl to i32
  %i.dn = and i64 %.val167, 2147483648
  %.not.i.i178 = icmp ne i64 %i.dn, 0
  %i.do = and i64 %.val167, 536870911
  %i.dp = icmp eq i64 %i.do, 536870911
  %narrow.i.not.i179 = or i1 %.not.i.i178, %i.dp
  br i1 %narrow.i.not.i179, label %Gia_ObjIsXor.exit180, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dq = and i32 %i.db, 536870911
  %i.dr = lshr i64 %.val167, 32
  %i.ds = trunc nuw i64 %i.dr to i32
  %i.dt = and i32 %i.ds, 536870911
  %i.du = icmp samesign ult i32 %i.dq, %i.dt
  %i.dv = zext i1 %i.du to i32
  br label %Gia_ObjIsXor.exit180

Gia_ObjIsXor.exit180:                             ; preds = %bb.m, %bb.n
  %i.dw = phi i32 [ 0, %bb.m ], [ %i.dv, %bb.n ]
  %.not153 = icmp eq i32 %i.dw, %i.dm             ; 2 uses
  %spec.select155 = select i1 %.not153, i32 %i.df, i32 %i.dk
  %spec.select156 = select i1 %.not153, i32 %i.dk, i32 %i.df
  %i.dx = load ptr, ptr %i.bw, align 8, !tbaa !90
  call void @bmcg2_sat_solver_set_var_fanin_lit(ptr noundef %i.dx, i32 noundef %i.by, i32 noundef %spec.select155, i32 noundef %spec.select156) #35
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 244
  %.val174 = load i64, ptr %i.g, align 4          ; 4 uses
  %i.dz = and i64 %.val174, 2147483648
  %.not.i.i181 = icmp ne i64 %i.dz, 0
  %i.ea = and i64 %.val174, 536870911
  %i.eb = icmp eq i64 %i.ea, 536870911
  %narrow.i.not.i182 = or i1 %.not.i.i181, %i.eb
  br i1 %narrow.i.not.i182, label %Gia_ObjIsXor.exit183, label %bb.o

bb.o:                                             ; preds = %Gia_ObjIsXor.exit180
  %i.ec = trunc i64 %.val174 to i32
  %i.ed = and i32 %i.ec, 536870911
  %i.ee = lshr i64 %.val174, 32
  %i.ef = trunc nuw i64 %i.ee to i32
  %i.eg = and i32 %i.ef, 536870911
  %i.eh = icmp samesign ult i32 %i.ed, %i.eg
  %i.ei = zext i1 %i.eh to i64
  br label %Gia_ObjIsXor.exit183

Gia_ObjIsXor.exit183:                             ; preds = %Gia_ObjIsXor.exit180, %bb.o
  %i.ej = phi i64 [ 0, %Gia_ObjIsXor.exit180 ], [ %i.ei, %bb.o ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.ej ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !52
  %i.em = add nsw i32 %i.el, 1
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !52
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %Gia_ObjIsXor.exit183, %bb.h, %.thread
  %i.en = load ptr, ptr %i.c, align 8, !tbaa !132 ; 2 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 32
  %.val160 = load ptr, ptr %i.eo, align 8, !tbaa !108
  %i.ep = getelementptr i8, ptr %i.en, i64 424
  %.val161 = load ptr, ptr %i.ep, align 8, !tbaa !51
  %i.eq = ptrtoint ptr %.val160 to i64
  %i.er = sub i64 %i.i, %i.eq
  %i.es = sdiv exact i64 %i.er, 12
  %sext.i184 = shl i64 %i.es, 32
  %i.et = ashr exact i64 %sext.i184, 30
  %i.eu = getelementptr inbounds i8, ptr %.val161, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.p, %bb.c
  %.0146 = phi i32 [ %i.ev, %bb.p ], [ %i.q, %bb.c ], [ %i.l, %bb.a ]
  ret i32 %.0146
}

declare i32 @Gia_ObjRecognizeExor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @bmcg2_sat_solver_add_xor(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @bmcg2_sat_solver_set_var_fanin_lit(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @bmcg2_sat_solver_add_and(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 0, -1) i32 @Cec4_ManSimHashKey(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = shl i32 %1, 1                            ; 4 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !52
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  %i.d = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader20

.preheader20:                                     ; preds = %bb.a
  br i1 %i.d, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader20
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64   ; 5 uses
  %i.e = add i32 %i.a, -17
  %i.f = icmp ult i32 %i.e, -9
  br i1 %i.f, label %.lr.ph.preheader70, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 24           ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi41 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <4 x i32>, ptr %i.g, align 4, !tbaa !52
  %wide.load42 = load <4 x i32>, ptr %i.h, align 4, !tbaa !52
  %i.i = xor <4 x i32> %wide.load, splat (i32 -1)
  %i.j = xor <4 x i32> %wide.load42, splat (i32 -1)
  %i.k = and i64 %index, 8
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @Cec4_ManSimHashKey.s_Primes, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load43 = load <4 x i32>, ptr %i.l, align 16, !tbaa !52
  %wide.load44 = load <4 x i32>, ptr %i.m, align 16, !tbaa !52
  %i.n = mul <4 x i32> %wide.load43, %i.i
  %i.o = mul <4 x i32> %wide.load44, %i.j
  %i.p = xor <4 x i32> %i.n, %vec.phi             ; 2 uses
  %i.q = xor <4 x i32> %i.o, %vec.phi41           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !232

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <4 x i32> %i.q, %i.p
  %i.s = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader70

.lr.ph.preheader70:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.01822.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.s, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader70
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.ph
  %i.u = load i32, ptr %i.t, align 4, !tbaa !52
  %i.v = xor i32 %i.u, -1
  %i.w = and i64 %indvars.iv.ph, 8
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @Cec4_ManSimHashKey.s_Primes, i64 %i.w
  %i.y = load i32, ptr %i.x, align 16, !tbaa !52
  %i.z = mul i32 %i.y, %i.v
  %i.aa = xor i32 %i.z, %.01822.ph                ; 2 uses
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader70
  %.lcssa72.unr = phi i32 [ poison, %.lr.ph.preheader70 ], [ %i.aa, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader70 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.01822.unr = phi i32 [ %.01822.ph, %.lr.ph.preheader70 ], [ %i.aa, %.lr.ph.prol ]
  %i.ab = add nsw i64 %wide.trip.count, -1
  %i.ac = icmp eq i64 %indvars.iv.ph, %i.ab
  br i1 %i.ac, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %bb.a
  br i1 %i.d, label %.lr.ph26.preheader, label %.loopexit

.lr.ph26.preheader:                               ; preds = %.preheader
  %smax34 = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1)
  %wide.trip.count35 = zext nneg i32 %smax34 to i64 ; 5 uses
  %i.ad = add i32 %i.a, -17
  %i.ae = icmp ult i32 %i.ad, -9
  br i1 %i.ae, label %.lr.ph26.preheader67, label %vector.ph48

vector.ph48:                                      ; preds = %.lr.ph26.preheader
  %n.vec49 = and i64 %wide.trip.count35, 24       ; 3 uses
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph48
  %index51 = phi i64 [ 0, %vector.ph48 ], [ %index.next58, %vector.body50 ] ; 3 uses
  %vec.phi52 = phi <4 x i32> [ zeroinitializer, %vector.ph48 ], [ %i.am, %vector.body50 ]
  %vec.phi53 = phi <4 x i32> [ zeroinitializer, %vector.ph48 ], [ %i.an, %vector.body50 ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index51 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load54 = load <4 x i32>, ptr %i.af, align 4, !tbaa !52
  %wide.load55 = load <4 x i32>, ptr %i.ag, align 4, !tbaa !52
  %i.ah = and i64 %index51, 8
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @Cec4_ManSimHashKey.s_Primes, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load56 = load <4 x i32>, ptr %i.ai, align 16, !tbaa !52
  %wide.load57 = load <4 x i32>, ptr %i.aj, align 16, !tbaa !52
  %i.ak = mul <4 x i32> %wide.load56, %wide.load54
  %i.al = mul <4 x i32> %wide.load57, %wide.load55
  %i.am = xor <4 x i32> %i.ak, %vec.phi52         ; 2 uses
  %i.an = xor <4 x i32> %i.al, %vec.phi53         ; 2 uses
  %index.next58 = add nuw i64 %index51, 8         ; 2 uses
  %i.ao = icmp eq i64 %index.next58, %n.vec49
  br i1 %i.ao, label %middle.block59, label %vector.body50, !llvm.loop !233

middle.block59:                                   ; preds = %vector.body50
  %bin.rdx60 = xor <4 x i32> %i.an, %i.am
  %i.ap = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx60) ; 2 uses
  %cmp.n61 = icmp eq i64 %n.vec49, %wide.trip.count35
  br i1 %cmp.n61, label %.loopexit, label %.lr.ph26.preheader67

.lr.ph26.preheader67:                             ; preds = %.lr.ph26.preheader, %middle.block59
  %indvars.iv31.ph = phi i64 [ 0, %.lr.ph26.preheader ], [ %n.vec49, %middle.block59 ] ; 3 uses
  %.11924.ph = phi i32 [ 0, %.lr.ph26.preheader ], [ %i.ap, %middle.block59 ] ; 2 uses
  %xtraiter75 = and i64 %wide.trip.count35, 3     ; 2 uses
  %lcmp.mod76.not = icmp eq i64 %xtraiter75, 0
  br i1 %lcmp.mod76.not, label %.lr.ph26.prol.loopexit, label %.lr.ph26.prol

.lr.ph26.prol:                                    ; preds = %.lr.ph26.preheader67, %.lr.ph26.prol
  %indvars.iv31.prol = phi i64 [ %indvars.iv.next32.prol, %.lr.ph26.prol ], [ %indvars.iv31.ph, %.lr.ph26.preheader67 ] ; 3 uses
  %.11924.prol = phi i32 [ %i.aw, %.lr.ph26.prol ], [ %.11924.ph, %.lr.ph26.preheader67 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph26.prol ], [ 0, %.lr.ph26.preheader67 ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv31.prol
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !52
  %i.as = and i64 %indvars.iv31.prol, 15
  %i.at = getelementptr inbounds nuw [4 x i8], ptr @Cec4_ManSimHashKey.s_Primes, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !52
  %i.av = mul i32 %i.au, %i.ar
  %i.aw = xor i32 %i.av, %.11924.prol             ; 3 uses
  %indvars.iv.next32.prol = add nuw nsw i64 %indvars.iv31.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter75
  br i1 %prol.iter.cmp.not, label %.lr.ph26.prol.loopexit, label %.lr.ph26.prol, !llvm.loop !234

.lr.ph26.prol.loopexit:                           ; preds = %.lr.ph26.prol, %.lr.ph26.preheader67
  %.lcssa.unr = phi i32 [ poison, %.lr.ph26.preheader67 ], [ %i.aw, %.lr.ph26.prol ]
  %indvars.iv31.unr = phi i64 [ %indvars.iv31.ph, %.lr.ph26.preheader67 ], [ %indvars.iv.next32.prol, %.lr.ph26.prol ]
  %.11924.unr = phi i32 [ %.11924.ph, %.lr.ph26.preheader67 ], [ %i.aw, %.lr.ph26.prol ]
  %i.ax = sub nsw i64 %indvars.iv31.ph, %wide.trip.count35
  %i.ay = icmp ugt i64 %i.ax, -4
  br i1 %i.ay, label %.loopexit, label %.lr.ph26

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.01822 = phi i32 [ %i.bo, %.lr.ph ], [ %.01822.unr, %.lr.ph.prol.loopexit ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !52
  %i.bb = xor i32 %i.ba, -1
  %i.bc = and i64 %indvars.iv, 15
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr @Cec4_ManSimHashKey.s_Primes, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !52
  %i.bf = mul i32 %i.be, %i.bb
  %i.bg = xor i32 %i.bf, %.01822
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !52
  %i.bj = xor i32 %i.bi, -1
  %i.bk = and i64 %indvars.iv.next, 15
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr @Cec4_ManSimHashKey.s_Primes, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !52
  %i.bn = mul i32 %i.bm, %i.bj
  %i.bo = xor i32 %i.bn, %i.bg                    ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !235

.lr.ph26:                                         ; preds = %.lr.ph26.prol.loopexit, %.lr.ph26
  %indvars.iv31 = phi i64 [ %indvars.iv.next32.3, %.lr.ph26 ], [ %indvars.iv31.unr, %.lr.ph26.prol.loopexit ] ; 6 uses
  %.11924 = phi i32 [ %i.cq, %.lr.ph26 ], [ %.11924.unr, %.lr.ph26.prol.loopexit ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv31
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !52
  %i.br = and i64 %indvars.iv31, 15
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr @Cec4_ManSimHashKey.s_Primes, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !52
  %i.bu = mul i32 %i.bt, %i.bq
  %i.bv = xor i32 %i.bu, %.11924
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next32
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !52
  %i.by = and i64 %indvars.iv.next32, 15
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr @Cec4_ManSimHashKey.s_Primes, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !52
  %i.cb = mul i32 %i.ca, %i.bx
  %i.cc = xor i32 %i.cb, %i.bv
  %indvars.iv.next32.1 = add nuw nsw i64 %indvars.iv31, 2 ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next32.1
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !52
  %i.cf = and i64 %indvars.iv.next32.1, 15
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr @Cec4_ManSimHashKey.s_Primes, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !52
  %i.ci = mul i32 %i.ch, %i.ce
  %i.cj = xor i32 %i.ci, %i.cc
  %indvars.iv.next32.2 = add nuw nsw i64 %indvars.iv31, 3 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next32.2
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !52
  %i.cm = and i64 %indvars.iv.next32.2, 15
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr @Cec4_ManSimHashKey.s_Primes, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !52
  %i.cp = mul i32 %i.co, %i.cl
  %i.cq = xor i32 %i.cp, %i.cj                    ; 2 uses
  %indvars.iv.next32.3 = add nuw nsw i64 %indvars.iv31, 4 ; 2 uses
  %exitcond36.not.3 = icmp eq i64 %indvars.iv.next32.3, %wide.trip.count35
  br i1 %exitcond36.not.3, label %.loopexit, label %.lr.ph26, !llvm.loop !236

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph26.prol.loopexit, %.lr.ph26, %middle.block, %middle.block59, %.preheader20, %.preheader
  %.2 = phi i32 [ %i.cq, %.lr.ph26 ], [ 0, %.preheader ], [ 0, %.preheader20 ], [ %i.ap, %middle.block59 ], [ %i.s, %middle.block ], [ %.lcssa.unr, %.lr.ph26.prol.loopexit ], [ %.lcssa72.unr, %.lr.ph.prol.loopexit ], [ %i.bo, %.lr.ph ]
  %i.cr = urem i32 %.2, %2
  ret i32 %i.cr
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Cec4_RefineOneClassIter(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 200        ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 840        ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 856        ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 192        ; 2 uses
  %.val48.pre = load ptr, ptr %i.a, align 8, !tbaa !136
  br label %tailrecurse

tailrecurse:                                      ; preds = %._crit_edge, %bb.a
  %.val48 = phi ptr [ %.val48.pre, %bb.a ], [ %.val56, %._crit_edge ] ; 2 uses
  %.tr82 = phi i32 [ %1, %bb.a ], [ %.099.us, %._crit_edge ] ; 4 uses
  %.pn95 = sext i32 %.tr82 to i64
  %.0.in96 = getelementptr inbounds [4 x i8], ptr %.val48, i64 %.pn95
  %.097 = load i32, ptr %.0.in96, align 4, !tbaa !52 ; 2 uses
  %i.e = icmp sgt i32 %.097, 0
  br i1 %i.e, label %.lr.ph, label %Cec4_ObjSimEqual.exit.thread79

.lr.ph:                                           ; preds = %tailrecurse
  %.val51 = load i32, ptr %i.b, align 8, !tbaa !137
  %.val51.fr = freeze i32 %.val51                 ; 4 uses
  %.val52 = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.f = getelementptr i8, ptr %.val52, i64 8
  %.val52.val = load ptr, ptr %i.f, align 8, !tbaa !43 ; 2 uses
  %i.g = mul nsw i32 %.val51.fr, %.tr82
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %.val52.val, i64 %i.h ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !46
  %i.k = icmp sgt i32 %.val51.fr, 0
  %wide.trip.count.i = zext nneg i32 %.val51.fr to i64 ; 2 uses
  br i1 %i.k, label %.lr.ph.split.us, label %Cec4_ObjSimEqual.exit.thread79

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.loopexit85.us
  %.099.us = phi i32 [ %.0.us, %.loopexit85.us ], [ %.097, %.lr.ph ] ; 7 uses
  %.04198.us = phi i32 [ %.099.us, %.loopexit85.us ], [ %.tr82, %.lr.ph ] ; 2 uses
  %i.l = mul nuw nsw i32 %.val51.fr, %.099.us
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val52.val, i64 %i.m ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !46
  %i.p = xor i64 %i.o, %i.j
  %i.q = and i64 %i.p, 1
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.lr.ph8.i.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.split.us, %bb.b
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %bb.b ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.us
  %i.t = load i64, ptr %i.s, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.us
  %i.v = load i64, ptr %i.u, align 8, !tbaa !46
  %i.w = xor i64 %i.v, %i.t
  %.not.i.us = icmp eq i64 %i.w, -1
  br i1 %.not.i.us, label %bb.b, label %Cec4_ObjSimEqual.exit

bb.b:                                             ; preds = %.lr.ph.i.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %.loopexit85.us, label %.lr.ph.i.us, !llvm.loop !1

.lr.ph8.i.us:                                     ; preds = %.lr.ph.split.us, %bb.c
  %indvars.iv15.i.us = phi i64 [ %indvars.iv.next16.i.us, %bb.c ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv15.i.us
  %i.y = load i64, ptr %i.x, align 8, !tbaa !46
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv15.i.us
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !46
  %.not21.i.us = icmp eq i64 %i.y, %i.aa
  br i1 %.not21.i.us, label %bb.c, label %Cec4_ObjSimEqual.exit

end_hunk_0
begin_hunk_1_@Cec4_RefineOneClassIter:bb.a
  %.0.us = load i32, ptr %.0.in.us, align 4, !tbaa !52 ; 2 uses
  %i.ab = icmp sgt i32 %.0.us, 0
  br i1 %i.ab, label %.lr.ph.split.us, label %Cec4_ObjSimEqual.exit.thread79, !llvm.loop !237

Cec4_ObjSimEqual.exit:                            ; preds = %.lr.ph.i.us, %.lr.ph8.i.us
  %.val54 = load ptr, ptr %i.d, align 8, !tbaa !139
  %i.ac = zext nneg i32 %.099.us to i64           ; 4 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.val54, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = or i32 %i.ae, 268435455
  store i32 %i.af, ptr %i.ad, align 4
  %.val46 = load ptr, ptr %i.a, align 8, !tbaa !136 ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.val46, i64 %i.ac
  %.043123 = load i32, ptr %i.ag, align 4, !tbaa !52 ; 2 uses
  %i.ah = icmp sgt i32 %.043123, 0
  br i1 %i.ah, label %.lr.ph127, label %._crit_edge

.lr.ph127:                                        ; preds = %Cec4_ObjSimEqual.exit
  %i.ai = and i32 %.099.us, 268435455
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph127, %bb.g
  %.val45147 = phi ptr [ %.val46, %.lr.ph127 ], [ %.val45, %bb.g ] ; 2 uses
  %.043126 = phi i32 [ %.043123, %.lr.ph127 ], [ %.043, %bb.g ] ; 7 uses
  %.040125 = phi i32 [ %.099.us, %.lr.ph127 ], [ %.1, %bb.g ] ; 2 uses
  %.142124 = phi i32 [ %.04198.us, %.lr.ph127 ], [ %.2, %bb.g ] ; 2 uses
  %.val49 = load i32, ptr %i.b, align 8, !tbaa !137 ; 5 uses
  %.val50 = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.aj = getelementptr i8, ptr %.val50, i64 8
  %.val50.val = load ptr, ptr %i.aj, align 8, !tbaa !43 ; 2 uses
  %i.ak = mul nsw i32 %.val49, %.tr82
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %.val50.val, i64 %i.al ; 3 uses
  %i.an = mul nsw i32 %.val49, %.043126
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %.val50.val, i64 %i.ao ; 3 uses
  %i.aq = load i64, ptr %i.am, align 8, !tbaa !46
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !46
  %i.as = xor i64 %i.ar, %i.aq
  %i.at = and i64 %i.as, 1
  %i.au = icmp eq i64 %i.at, 0
  %i.av = icmp sgt i32 %.val49, 0                 ; 2 uses
  br i1 %i.au, label %.preheader.i68, label %.preheader1.i59

.preheader1.i59:                                  ; preds = %bb.d
  br i1 %i.av, label %.lr.ph.preheader.i61, label %.loopexit

.lr.ph.preheader.i61:                             ; preds = %.preheader1.i59
  %wide.trip.count.i62 = zext nneg i32 %.val49 to i64
  br label %.lr.ph.i63

.preheader.i68:                                   ; preds = %bb.d
  br i1 %i.av, label %.lr.ph8.preheader.i69, label %.loopexit

.lr.ph8.preheader.i69:                            ; preds = %.preheader.i68
  %wide.trip.count18.i70 = zext nneg i32 %.val49 to i64
  br label %.lr.ph8.i71

bb.e:                                             ; preds = %.lr.ph8.i71
  %indvars.iv.next16.i74 = add nuw nsw i64 %indvars.iv15.i72, 1 ; 2 uses
  %exitcond19.not.i75 = icmp eq i64 %indvars.iv.next16.i74, %wide.trip.count18.i70
  br i1 %exitcond19.not.i75, label %.loopexit, label %.lr.ph8.i71, !llvm.loop !2

.lr.ph8.i71:                                      ; preds = %bb.e, %.lr.ph8.preheader.i69
  %indvars.iv15.i72 = phi i64 [ 0, %.lr.ph8.preheader.i69 ], [ %indvars.iv.next16.i74, %bb.e ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv15.i72
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !46
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv15.i72
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !46
  %.not21.i73 = icmp eq i64 %i.ax, %i.az
  br i1 %.not21.i73, label %bb.e, label %Cec4_ObjSimEqual.exit76

bb.f:                                             ; preds = %.lr.ph.i63
  %indvars.iv.next.i66 = add nuw nsw i64 %indvars.iv.i64, 1 ; 2 uses
  %exitcond.not.i67 = icmp eq i64 %indvars.iv.next.i66, %wide.trip.count.i62
  br i1 %exitcond.not.i67, label %.loopexit, label %.lr.ph.i63, !llvm.loop !1

.lr.ph.i63:                                       ; preds = %bb.f, %.lr.ph.preheader.i61
  %indvars.iv.i64 = phi i64 [ 0, %.lr.ph.preheader.i61 ], [ %indvars.iv.next.i66, %bb.f ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i64
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !46
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i64
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !46
  %i.be = xor i64 %i.bd, %i.bb
  %.not.i65 = icmp eq i64 %i.be, -1
  br i1 %.not.i65, label %bb.f, label %Cec4_ObjSimEqual.exit76

.loopexit:                                        ; preds = %bb.f, %bb.e, %.preheader1.i59, %.preheader.i68
  %i.bf = sext i32 %.142124 to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %.val45147, i64 %i.bf
  store i32 %.043126, ptr %i.bg, align 4, !tbaa !52
  %.pre = zext nneg i32 %.043126 to i64
  br label %bb.g

Cec4_ObjSimEqual.exit76:                          ; preds = %.lr.ph.i63, %.lr.ph8.i71
  %.val53 = load ptr, ptr %i.d, align 8, !tbaa !139
  %i.bh = zext nneg i32 %.043126 to i64           ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.val53, i64 %i.bh ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = and i32 %i.bj, -268435456
  %i.bl = or disjoint i32 %i.bk, %i.ai
  store i32 %i.bl, ptr %i.bi, align 4
  %.val57 = load ptr, ptr %i.a, align 8, !tbaa !136 ; 2 uses
  %i.bm = zext nneg i32 %.040125 to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.val57, i64 %i.bm
  store i32 %.043126, ptr %i.bn, align 4, !tbaa !52
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %Cec4_ObjSimEqual.exit76
  %.pre-phi = phi i64 [ %.pre, %.loopexit ], [ %i.bh, %Cec4_ObjSimEqual.exit76 ]
  %.val45 = phi ptr [ %.val45147, %.loopexit ], [ %.val57, %Cec4_ObjSimEqual.exit76 ] ; 3 uses
  %.2 = phi i32 [ %.043126, %.loopexit ], [ %.142124, %Cec4_ObjSimEqual.exit76 ] ; 2 uses
  %.1 = phi i32 [ %.040125, %.loopexit ], [ %.043126, %Cec4_ObjSimEqual.exit76 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.val45, i64 %.pre-phi
  %.043 = load i32, ptr %i.bo, align 4, !tbaa !52 ; 2 uses
  %i.bp = icmp sgt i32 %.043, 0
  br i1 %i.bp, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !238

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre150 = zext nneg i32 %.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %Cec4_ObjSimEqual.exit
  %.pre-phi151 = phi i64 [ %.pre150, %._crit_edge.loopexit ], [ %i.ac, %Cec4_ObjSimEqual.exit ]
  %.val56 = phi ptr [ %.val45, %._crit_edge.loopexit ], [ %.val46, %Cec4_ObjSimEqual.exit ] ; 4 uses
  %.142.lcssa = phi i32 [ %.2, %._crit_edge.loopexit ], [ %.04198.us, %Cec4_ObjSimEqual.exit ]
  %i.bq = sext i32 %.142.lcssa to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %.val56, i64 %i.bq
  store i32 -1, ptr %i.br, align 4, !tbaa !52
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.val56, i64 %.pre-phi151
  store i32 -1, ptr %i.bs, align 4, !tbaa !52
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.val56, i64 %i.ac
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !52
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %tailrecurse, label %Cec4_ObjSimEqual.exit.thread79

Cec4_ObjSimEqual.exit.thread79:                   ; preds = %._crit_edge, %tailrecurse, %.lr.ph, %.loopexit85.us
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Cec4_RefineOneClass(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !50
  %i.d = getelementptr i8, ptr %2, i64 4
  %.val46 = load i32, ptr %i.d, align 4, !tbaa !50 ; 2 uses
  %i.e = icmp sgt i32 %.val46, 0
  br i1 %i.e, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %2, i64 8
  %i.g = getelementptr i8, ptr %0, i64 840
  %i.h = getelementptr i8, ptr %0, i64 856
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.l = zext nneg i32 %.val46 to i64
  br label %bb.b

.critedge.preheader:                              ; preds = %bb.m
  %.pre71 = load ptr, ptr %i.a, align 8, !tbaa !140 ; 3 uses
  %.phi.trans.insert72 = getelementptr i8, ptr %.pre71, i64 4
  %.val59.pre = load i32, ptr %.phi.trans.insert72, align 4, !tbaa !50
  %i.m = icmp sgt i32 %.val59.pre, 0
  br i1 %i.m, label %.lr.ph61, label %.critedge2

.lr.ph61:                                         ; preds = %.critedge.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %bb.n

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ %i.l, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %.val48 = load ptr, ptr %i.f, align 8, !tbaa !51
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.val48, i64 %indvars.iv.next
  %i.r = load i32, ptr %i.q, align 4, !tbaa !52   ; 3 uses
  %.val49 = load i32, ptr %i.g, align 8, !tbaa !137 ; 3 uses
  %.val50 = load ptr, ptr %i.h, align 8, !tbaa !138
  %i.s = getelementptr i8, ptr %.val50, i64 8
  %.val50.val = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.t = mul nsw i32 %.val49, %i.r
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %.val50.val, i64 %i.u ; 11 uses
  %i.w = load i32, ptr %i.i, align 8, !tbaa !141
  %i.x = shl i32 %.val49, 1                       ; 4 uses
  %i.y = load i32, ptr %i.v, align 4, !tbaa !52
  %i.z = and i32 %i.y, 1
  %.not.i = icmp eq i32 %i.z, 0
  %i.aa = icmp sgt i32 %.val49, 0                 ; 2 uses
  br i1 %.not.i, label %.preheader.i, label %.preheader20.i

.preheader20.i:                                   ; preds = %bb.b
  br i1 %i.aa, label %.lr.ph.preheader.i, label %Cec4_ManSimHashKey.exit

.lr.ph.preheader.i:                               ; preds = %.preheader20.i
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.x, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 5 uses
  %i.ab = add i32 %i.x, -17
  %i.ac = icmp ult i32 %i.ab, -9
  br i1 %i.ac, label %.lr.ph.i.preheader, label %vector.ph94

vector.ph94:                                      ; preds = %.lr.ph.preheader.i
  %n.vec95 = and i64 %wide.trip.count.i, 24       ; 3 uses
  br label %vector.body96

vector.body96:                                    ; preds = %vector.body96, %vector.ph94
  %index97 = phi i64 [ 0, %vector.ph94 ], [ %index.next104, %vector.body96 ] ; 3 uses
  %vec.phi98 = phi <4 x i32> [ zeroinitializer, %vector.ph94 ], [ %i.am, %vector.body96 ]
  %vec.phi99 = phi <4 x i32> [ zeroinitializer, %vector.ph94 ], [ %i.an, %vector.body96 ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index97 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %wide.load100 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !52
  %wide.load101 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !52
  %i.af = xor <4 x i32> %wide.load100, splat (i32 -1)
  %i.ag = xor <4 x i32> %wide.load101, splat (i32 -1)
  %i.ah = and i64 %index97, 8
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @Cec4_ManSimHashKey.s_Primes, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load102 = load <4 x i32>, ptr %i.ai, align 16, !tbaa !52
  %wide.load103 = load <4 x i32>, ptr %i.aj, align 16, !tbaa !52
  %i.ak = mul <4 x i32> %wide.load102, %i.af
  %i.al = mul <4 x i32> %wide.load103, %i.ag
  %i.am = xor <4 x i32> %i.ak, %vec.phi98         ; 2 uses
  %i.an = xor <4 x i32> %i.al, %vec.phi99         ; 2 uses
  %index.next104 = add nuw i64 %index97, 8        ; 2 uses
  %i.ao = icmp eq i64 %index.next104, %n.vec95
  br i1 %i.ao, label %middle.block105, label %vector.body96, !llvm.loop !239

middle.block105:                                  ; preds = %vector.body96
  %bin.rdx106 = xor <4 x i32> %i.an, %i.am
  %i.ap = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx106) ; 2 uses
  %cmp.n107 = icmp eq i64 %n.vec95, %wide.trip.count.i
  br i1 %cmp.n107, label %Cec4_ManSimHashKey.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block105
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec95, %middle.block105 ] ; 5 uses
  %.01822.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ap, %middle.block105 ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i.ph
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !52
  %i.as = xor i32 %i.ar, -1
  %i.at = and i64 %indvars.iv.i.ph, 8
  %i.au = getelementptr inbounds nuw [4 x i8], ptr @Cec4_ManSimHashKey.s_Primes, i64 %i.at
  %i.av = load i32, ptr %i.au, align 16, !tbaa !52
  %i.aw = mul i32 %i.av, %i.as
  %i.ax = xor i32 %i.aw, %.01822.i.ph             ; 2 uses
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa116.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.ax, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.01822.i.unr = phi i32 [ %.01822.i.ph, %.lr.ph.i.preheader ], [ %i.ax, %.lr.ph.i.prol ]
  %i.ay = add nsw i64 %wide.trip.count.i, -1
  %i.az = icmp eq i64 %indvars.iv.i.ph, %i.ay
  br i1 %i.az, label %Cec4_ManSimHashKey.exit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.b
  br i1 %i.aa, label %.lr.ph26.preheader.i, label %Cec4_ManSimHashKey.exit

.lr.ph26.preheader.i:                             ; preds = %.preheader.i
  %smax34.i = tail call i32 @llvm.smax.i32(i32 %i.x, i32 1)
  %wide.trip.count35.i = zext nneg i32 %smax34.i to i64 ; 5 uses
  %i.ba = add i32 %i.x, -17
  %i.bb = icmp ult i32 %i.ba, -9
  br i1 %i.bb, label %.lr.ph26.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph26.preheader.i
  %n.vec = and i64 %wide.trip.count35.i, 24       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bj, %vector.body ]
  %vec.phi87 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bk, %vector.body ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load = load <4 x i32>, ptr %i.bc, align 4, !tbaa !52
  %wide.load88 = load <4 x i32>, ptr %i.bd, align 4, !tbaa !52
  %i.be = and i64 %index, 8
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr @Cec4_ManSimHashKey.s_Primes, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load89 = load <4 x i32>, ptr %i.bf, align 16, !tbaa !52
  %wide.load90 = load <4 x i32>, ptr %i.bg, align 16, !tbaa !52
  %i.bh = mul <4 x i32> %wide.load89, %wide.load
  %i.bi = mul <4 x i32> %wide.load90, %wide.load88
  %i.bj = xor <4 x i32> %i.bh, %vec.phi           ; 2 uses
  %i.bk = xor <4 x i32> %i.bi, %vec.phi87         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !240

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <4 x i32> %i.bk, %i.bj
  %i.bm = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count35.i
  br i1 %cmp.n, label %Cec4_ManSimHashKey.exit, label %.lr.ph26.i.preheader

.lr.ph26.i.preheader:                             ; preds = %.lr.ph26.preheader.i, %middle.block
  %indvars.iv31.i.ph = phi i64 [ 0, %.lr.ph26.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.11924.i.ph = phi i32 [ 0, %.lr.ph26.preheader.i ], [ %i.bm, %middle.block ] ; 2 uses
  %xtraiter120 = and i64 %wide.trip.count35.i, 3  ; 2 uses
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %.lr.ph26.i.prol.loopexit, label %.lr.ph26.i.prol

.lr.ph26.i.prol:                                  ; preds = %.lr.ph26.i.preheader, %.lr.ph26.i.prol
  %indvars.iv31.i.prol = phi i64 [ %indvars.iv.next32.i.prol, %.lr.ph26.i.prol ], [ %indvars.iv31.i.ph, %.lr.ph26.i.preheader ] ; 3 uses
  %.11924.i.prol = phi i32 [ %i.bt, %.lr.ph26.i.prol ], [ %.11924.i.ph, %.lr.ph26.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph26.i.prol ], [ 0, %.lr.ph26.i.preheader ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv31.i.prol
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !52
  %i.bp = and i64 %indvars.iv31.i.prol, 15
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr @Cec4_ManSimHashKey.s_Primes, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !52
  %i.bs = mul i32 %i.br, %i.bo
  %i.bt = xor i32 %i.bs, %.11924.i.prol           ; 3 uses
  %indvars.iv.next32.i.prol = add nuw nsw i64 %indvars.iv31.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter120
  br i1 %prol.iter.cmp.not, label %.lr.ph26.i.prol.loopexit, label %.lr.ph26.i.prol, !llvm.loop !241

.lr.ph26.i.prol.loopexit:                         ; preds = %.lr.ph26.i.prol, %.lr.ph26.i.preheader
  %.lcssa119.unr = phi i32 [ poison, %.lr.ph26.i.preheader ], [ %i.bt, %.lr.ph26.i.prol ]
  %indvars.iv31.i.unr = phi i64 [ %indvars.iv31.i.ph, %.lr.ph26.i.preheader ], [ %indvars.iv.next32.i.prol, %.lr.ph26.i.prol ]
  %.11924.i.unr = phi i32 [ %.11924.i.ph, %.lr.ph26.i.preheader ], [ %i.bt, %.lr.ph26.i.prol ]
  %i.bu = sub nsw i64 %indvars.iv31.i.ph, %wide.trip.count35.i
  %i.bv = icmp ugt i64 %i.bu, -4
  br i1 %i.bv, label %Cec4_ManSimHashKey.exit, label %.lr.ph26.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.01822.i = phi i32 [ %i.cl, %.lr.ph.i ], [ %.01822.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !52
  %i.by = xor i32 %i.bx, -1
  %i.bz = and i64 %indvars.iv.i, 15
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr @Cec4_ManSimHashKey.s_Primes, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !52
  %i.cc = mul i32 %i.cb, %i.by
  %i.cd = xor i32 %i.cc, %.01822.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next.i
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !52
  %i.cg = xor i32 %i.cf, -1
  %i.ch = and i64 %indvars.iv.next.i, 15
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr @Cec4_ManSimHashKey.s_Primes, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !52
  %i.ck = mul i32 %i.cj, %i.cg
  %i.cl = xor i32 %i.ck, %i.cd                    ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %Cec4_ManSimHashKey.exit, label %.lr.ph.i, !llvm.loop !242

.lr.ph26.i:                                       ; preds = %.lr.ph26.i.prol.loopexit, %.lr.ph26.i
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i.3, %.lr.ph26.i ], [ %indvars.iv31.i.unr, %.lr.ph26.i.prol.loopexit ] ; 6 uses
  %.11924.i = phi i32 [ %i.dn, %.lr.ph26.i ], [ %.11924.i.unr, %.lr.ph26.i.prol.loopexit ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv31.i
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !52
  %i.co = and i64 %indvars.iv31.i, 15
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr @Cec4_ManSimHashKey.s_Primes, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !52
  %i.cr = mul i32 %i.cq, %i.cn
  %i.cs = xor i32 %i.cr, %.11924.i
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next32.i
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !52
  %i.cv = and i64 %indvars.iv.next32.i, 15
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr @Cec4_ManSimHashKey.s_Primes, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !52
  %i.cy = mul i32 %i.cx, %i.cu
  %i.cz = xor i32 %i.cy, %i.cs
  %indvars.iv.next32.i.1 = add nuw nsw i64 %indvars.iv31.i, 2 ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next32.i.1
  %i.db = load i32, ptr %i.da, align 4, !tbaa !52
  %i.dc = and i64 %indvars.iv.next32.i.1, 15
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr @Cec4_ManSimHashKey.s_Primes, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !52
  %i.df = mul i32 %i.de, %i.db
  %i.dg = xor i32 %i.df, %i.cz
  %indvars.iv.next32.i.2 = add nuw nsw i64 %indvars.iv31.i, 3 ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next32.i.2
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !52
  %i.dj = and i64 %indvars.iv.next32.i.2, 15
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr @Cec4_ManSimHashKey.s_Primes, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !52
  %i.dm = mul i32 %i.dl, %i.di
  %i.dn = xor i32 %i.dm, %i.dg                    ; 2 uses
  %indvars.iv.next32.i.3 = add nuw nsw i64 %indvars.iv31.i, 4 ; 2 uses
  %exitcond36.not.i.3 = icmp eq i64 %indvars.iv.next32.i.3, %wide.trip.count35.i
  br i1 %exitcond36.not.i.3, label %Cec4_ManSimHashKey.exit, label %.lr.ph26.i, !llvm.loop !243

Cec4_ManSimHashKey.exit:                          ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph26.i.prol.loopexit, %.lr.ph26.i, %middle.block105, %middle.block, %.preheader20.i, %.preheader.i
  %.2.i = phi i32 [ %i.dn, %.lr.ph26.i ], [ 0, %.preheader.i ], [ 0, %.preheader20.i ], [ %i.bm, %middle.block ], [ %i.ap, %middle.block105 ], [ %.lcssa119.unr, %.lr.ph26.i.prol.loopexit ], [ %.lcssa116.unr, %.lr.ph.i.prol.loopexit ], [ %i.cl, %.lr.ph.i ]
  %i.do = urem i32 %.2.i, %i.w                    ; 2 uses
  %i.dp = load ptr, ptr %i.j, align 8, !tbaa !122 ; 4 uses
  %i.dq = sext i32 %i.do to i64                   ; 3 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !52 ; 2 uses
  %i.dt = icmp eq i32 %i.ds, -1
  br i1 %i.dt, label %bb.c, label %bb.m

bb.c:                                             ; preds = %Cec4_ManSimHashKey.exit
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !140 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4 ; 3 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !50 ; 7 uses
  %i.dx = load i32, ptr %i.du, align 8, !tbaa !97
  %i.dy = icmp eq i32 %i.dw, %i.dx
  br i1 %i.dy, label %bb.d, label %Vec_IntPush.exit

bb.d:                                             ; preds = %bb.c
  %i.dz = icmp slt i32 %i.dw, 16
  br i1 %i.dz, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !51 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.eb, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ec = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.eb, i64 noundef 64) #38
  br label %Vec_IntGrow.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ed = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #34
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.g, %bb.f
  %i.ee = phi ptr [ %i.ec, %bb.f ], [ %i.ed, %bb.g ]
  store ptr %i.ee, ptr %i.ea, align 8, !tbaa !51
  br label %Vec_IntGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.ef = icmp samesign ult i32 %i.dw, 1073741823
  %i.eg = shl nuw nsw i32 %i.dw, 1
  %spec.select.i = select i1 %i.ef, i32 %i.eg, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.dw, %spec.select.i
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %i.eh = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !51 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ei, null
  %i.ej = zext nneg i32 %spec.select.i to i64
  %i.ek = shl nuw nsw i64 %i.ej, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.el = tail call ptr @realloc(ptr noundef nonnull %i.ei, i64 noundef %i.ek) #38
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.em = tail call noalias ptr @malloc(i64 noundef %i.ek) #34
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.en = phi ptr [ %i.el, %bb.j ], [ %i.em, %bb.k ]
  store ptr %i.en, ptr %i.eh, align 8, !tbaa !51
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.l, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.l ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.du, align 8, !tbaa !97
  %.pre = load i32, ptr %i.dv, align 4, !tbaa !50
  %.pre69.pre = load ptr, ptr %i.j, align 8, !tbaa !122
  br label %Vec_IntPush.exit
end_hunk_1
