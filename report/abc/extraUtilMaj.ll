Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/extraUtilMaj?download=true
inline.NumInlined: 110
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 33
begin_hunk_0_@Gem_FuncFindPlace:bb.a
  %i.ji = phi i32 [ %i.jc, %Abc_TtSwapAdjacent.exit64 ], [ %i.hp, %.thread136 ]
  %.fr = freeze i32 %i.ji                         ; 2 uses
  %i.jj = icmp ult i32 %.fr, 7
  %i.jk = add nsw i32 %.fr, -6                    ; 3 uses
  %i.jl = shl nuw i32 1, %i.jk
  br i1 %i.jj, label %.thread138, label %bb.q

bb.q:                                             ; preds = %.thread
  br i1 %i.o, label %Abc_TtSwapAdjacent.exit85, label %.preheader.lr.ph.i66

.thread138:                                       ; preds = %.thread
  br i1 %i.o, label %Abc_TtSwapAdjacent.exit85, label %.preheader.us.preheader.i67

.preheader.lr.ph.i66:                             ; preds = %bb.q
  %.not144 = icmp eq i32 %i.jk, 31
  %i.jm = shl i32 4, %i.jk
  %i.jn = sext i32 %i.jm to i64
  br i1 %.not144, label %Abc_TtSwapAdjacent.exit85, label %.preheader.us.preheader.i67

.preheader.us.preheader.i67:                      ; preds = %.lr.ph.i57, %.thread138, %.preheader.lr.ph.i66
  %i.jo = phi i64 [ %i.jn, %.preheader.lr.ph.i66 ], [ 4, %.thread138 ], [ 4, %.lr.ph.i57 ]
  %i.jp = phi i32 [ %i.jl, %.preheader.lr.ph.i66 ], [ 1, %.thread138 ], [ 1, %.lr.ph.i57 ] ; 3 uses
  %i.jq = shl nuw nsw i32 %i.jp, 1
  %i.jr = zext nneg i32 %i.jp to i64              ; 3 uses
  %i.js = zext nneg i32 %i.jq to i64
  %min.iters.check204 = icmp ult i32 %i.jp, 4
  %n.vec206 = and i64 %i.jr, 2147483644
  br label %.preheader.us.i68

.preheader.us.i68:                                ; preds = %._crit_edge.us.i77, %.preheader.us.preheader.i67
  %.061.us.i69 = phi ptr [ %i.ka, %._crit_edge.us.i77 ], [ %0, %.preheader.us.preheader.i67 ] ; 3 uses
  %invariant.gep.i70 = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i69, i64 %i.jr ; 2 uses
  %invariant.gep80.i71 = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i69, i64 %i.js ; 2 uses
  br i1 %min.iters.check204, label %scalar.ph203, label %vector.body207

vector.body207:                                   ; preds = %.preheader.us.i68, %vector.body207
  %index208 = phi i64 [ %index.next213, %vector.body207 ], [ 0, %.preheader.us.i68 ] ; 3 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i70, i64 %index208 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16 ; 2 uses
  %wide.load209 = load <2 x i64>, ptr %i.jt, align 8, !tbaa !53
  %wide.load210 = load <2 x i64>, ptr %i.ju, align 8, !tbaa !53
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i71, i64 %index208 ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16 ; 2 uses
  %wide.load211 = load <2 x i64>, ptr %i.jv, align 8, !tbaa !53
  %wide.load212 = load <2 x i64>, ptr %i.jw, align 8, !tbaa !53
  store <2 x i64> %wide.load211, ptr %i.jt, align 8, !tbaa !53
  store <2 x i64> %wide.load212, ptr %i.ju, align 8, !tbaa !53
  store <2 x i64> %wide.load209, ptr %i.jv, align 8, !tbaa !53
  store <2 x i64> %wide.load210, ptr %i.jw, align 8, !tbaa !53
  %index.next213 = add nuw i64 %index208, 4       ; 2 uses
  %i.jx = icmp eq i64 %index.next213, %n.vec206
  br i1 %i.jx, label %._crit_edge.us.i77, label %vector.body207, !llvm.loop !102

scalar.ph203:                                     ; preds = %.preheader.us.i68, %scalar.ph203
  %indvars.iv.i72 = phi i64 [ %indvars.iv.next.i75, %scalar.ph203 ], [ 0, %.preheader.us.i68 ] ; 3 uses
  %gep.i73 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i70, i64 %indvars.iv.i72 ; 2 uses
  %i.jy = load i64, ptr %gep.i73, align 8, !tbaa !53
  %gep81.i74 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i71, i64 %indvars.iv.i72 ; 2 uses
  %i.jz = load i64, ptr %gep81.i74, align 8, !tbaa !53
  store i64 %i.jz, ptr %gep.i73, align 8, !tbaa !53
  store i64 %i.jy, ptr %gep81.i74, align 8, !tbaa !53
  %indvars.iv.next.i75 = add nuw nsw i64 %indvars.iv.i72, 1 ; 2 uses
  %exitcond.not.i76 = icmp eq i64 %indvars.iv.next.i75, %i.jr
  br i1 %exitcond.not.i76, label %._crit_edge.us.i77, label %scalar.ph203, !llvm.loop !103

._crit_edge.us.i77:                               ; preds = %vector.body207, %scalar.ph203
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i69, i64 %i.jo ; 2 uses
  %i.kb = icmp ult ptr %i.ka, %i.ao
  br i1 %i.kb, label %.preheader.us.i68, label %Abc_TtSwapAdjacent.exit85, !llvm.loop !7

Abc_TtSwapAdjacent.exit85:                        ; preds = %._crit_edge.us.i77, %scalar.ph165, %.lr.ph.i78, %middle.block180, %bb.m, %.thread138, %bb.o, %.preheader.lr.ph.i66, %bb.q, %Abc_TtSwapAdjacent.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.kc = icmp sgt i64 %indvars.iv.next, %i.ba
  br i1 %i.kc, label %.lr.ph, label %._crit_edge, !llvm.loop !104

._crit_edge:                                      ; preds = %Abc_TtSwapAdjacent.exit85, %bb.g
  %i.kd = tail call i32 @memcmp(ptr noundef %3, ptr noundef %0, i64 noundef %.idx65.i) #27
  %i.ke = icmp sgt i32 %i.kd, -1                  ; 2 uses
  %brmerge = or i1 %i.o, %i.ke
  %.0.mux = select i1 %i.ke, i32 %.0108, i32 %i.av
  br i1 %brmerge, label %Abc_TtCopy.exit92, label %.lr.ph.i88.preheader

.lr.ph.i88.preheader:                             ; preds = %._crit_edge
  br i1 %or.cond284, label %.lr.ph.i88.preheader292, label %vector.body157

vector.body157:                                   ; preds = %.lr.ph.i88.preheader, %vector.body157
  %index158 = phi i64 [ %index.next161, %vector.body157 ], [ 0, %.lr.ph.i88.preheader ] ; 3 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index158 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %wide.load159 = load <2 x i64>, ptr %i.kf, align 8, !tbaa !53
  %wide.load160 = load <2 x i64>, ptr %i.kg, align 8, !tbaa !53
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index158 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  store <2 x i64> %wide.load159, ptr %i.kh, align 8, !tbaa !53
  store <2 x i64> %wide.load160, ptr %i.ki, align 8, !tbaa !53
  %index.next161 = add nuw i64 %index158, 4       ; 2 uses
  %i.kj = icmp eq i64 %index.next161, %n.vec156
  br i1 %i.kj, label %middle.block162, label %vector.body157, !llvm.loop !105

middle.block162:                                  ; preds = %vector.body157
  br i1 %cmp.n163, label %Abc_TtCopy.exit92, label %.lr.ph.i88.preheader292

.lr.ph.i88.preheader292:                          ; preds = %.lr.ph.i88.preheader, %middle.block162
  %indvars.iv.i89.ph = phi i64 [ 0, %.lr.ph.i88.preheader ], [ %n.vec156, %middle.block162 ] ; 3 uses
  br i1 %lcmp.mod302.not, label %.lr.ph.i88.prol.loopexit, label %.lr.ph.i88.prol

.lr.ph.i88.prol:                                  ; preds = %.lr.ph.i88.preheader292, %.lr.ph.i88.prol
  %indvars.iv.i89.prol = phi i64 [ %indvars.iv.next.i90.prol, %.lr.ph.i88.prol ], [ %indvars.iv.i89.ph, %.lr.ph.i88.preheader292 ] ; 3 uses
  %prol.iter303 = phi i64 [ %prol.iter303.next, %.lr.ph.i88.prol ], [ 0, %.lr.ph.i88.preheader292 ]
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i89.prol
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !53
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i89.prol
  store i64 %i.kl, ptr %i.km, align 8, !tbaa !53
  %indvars.iv.next.i90.prol = add nuw nsw i64 %indvars.iv.i89.prol, 1 ; 2 uses
  %prol.iter303.next = add i64 %prol.iter303, 1   ; 2 uses
  %prol.iter303.cmp.not = icmp eq i64 %prol.iter303.next, %xtraiter301
  br i1 %prol.iter303.cmp.not, label %.lr.ph.i88.prol.loopexit, label %.lr.ph.i88.prol, !llvm.loop !106

.lr.ph.i88.prol.loopexit:                         ; preds = %.lr.ph.i88.prol, %.lr.ph.i88.preheader292
  %indvars.iv.i89.unr = phi i64 [ %indvars.iv.i89.ph, %.lr.ph.i88.preheader292 ], [ %indvars.iv.next.i90.prol, %.lr.ph.i88.prol ]
  %i.kn = sub nsw i64 %indvars.iv.i89.ph, %wide.trip.count73.i
  %i.ko = icmp ugt i64 %i.kn, -4
  br i1 %i.ko, label %Abc_TtCopy.exit92, label %.lr.ph.i88

.lr.ph.i88:                                       ; preds = %.lr.ph.i88.prol.loopexit, %.lr.ph.i88
  %indvars.iv.i89 = phi i64 [ %indvars.iv.next.i90.3, %.lr.ph.i88 ], [ %indvars.iv.i89.unr, %.lr.ph.i88.prol.loopexit ] ; 6 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i89
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !53
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i89
  store i64 %i.kq, ptr %i.kr, align 8, !tbaa !53
  %indvars.iv.next.i90 = add nuw nsw i64 %indvars.iv.i89, 1 ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i90
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !53
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i90
  store i64 %i.kt, ptr %i.ku, align 8, !tbaa !53
  %indvars.iv.next.i90.1 = add nuw nsw i64 %indvars.iv.i89, 2 ; 2 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i90.1
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !53
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i90.1
  store i64 %i.kw, ptr %i.kx, align 8, !tbaa !53
  %indvars.iv.next.i90.2 = add nuw nsw i64 %indvars.iv.i89, 3 ; 2 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i90.2
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !53
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i90.2
  store i64 %i.kz, ptr %i.la, align 8, !tbaa !53
  %indvars.iv.next.i90.3 = add nuw nsw i64 %indvars.iv.i89, 4 ; 2 uses
  %exitcond.not.i91.3 = icmp eq i64 %indvars.iv.next.i90.3, %wide.trip.count73.i
  br i1 %exitcond.not.i91.3, label %Abc_TtCopy.exit92, label %.lr.ph.i88, !llvm.loop !107

Abc_TtCopy.exit92:                                ; preds = %.lr.ph.i88.prol.loopexit, %.lr.ph.i88, %middle.block162, %._crit_edge
  %.1 = phi i32 [ %.0.mux, %._crit_edge ], [ %i.av, %middle.block162 ], [ %i.av, %.lr.ph.i88 ], [ %i.av, %.lr.ph.i88.prol.loopexit ] ; 2 uses
  %i.lb = icmp sgt i64 %indvars.iv118, 1
  br i1 %i.lb, label %bb.e, label %._crit_edge111, !llvm.loop !108

._crit_edge111:                                   ; preds = %Abc_TtCopy.exit92, %Abc_TtCopy.exit
  %.0.lcssa = phi i32 [ %i.n, %Abc_TtCopy.exit ], [ %.1, %Abc_TtCopy.exit92 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define void @Gem_FuncExpand(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !33
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.g ; 6 uses
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.i ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !56
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !37
  %i.q = ashr i32 %1, %i.p
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !51   ; 2 uses
  %i.u = ptrtoaddr ptr %i.t to i64
  %i.v = load i32, ptr %i.l, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !38
  %i.y = and i32 %i.x, %1
  %i.z = mul i32 %i.y, %i.v
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.aa ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !49 ; 2 uses
  %i.ae = load i32, ptr %0, align 8, !tbaa !30
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.af ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !51 ; 47 uses
  %i.ai = ptrtoaddr ptr %i.ah to i64              ; 9 uses
  %i.aj = getelementptr i8, ptr %i.ag, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !51 ; 14 uses
  %i.al = ptrtoaddr ptr %i.ak to i64              ; 3 uses
  %i.am = getelementptr i8, ptr %i.ag, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !51 ; 14 uses
  %i.ao = ptrtoaddr ptr %i.an to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !31 ; 4 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.preheader.i, label %Abc_TtCopy.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.aq to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.aq, 14
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.as = shl nsw i64 %i.aa, 3
  %i.at = add i64 %i.as, %i.u
  %i.au = sub i64 %i.at, %i.ai
  %diff.check = icmp ugt i64 %i.au, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load = load <2 x i64>, ptr %i.av, align 8, !tbaa !53
  %wide.load152 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !53
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x i64> %wide.load, ptr %i.ax, align 8, !tbaa !53
  store <2 x i64> %wide.load152, ptr %i.ay, align 8, !tbaa !53
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %Abc_TtCopy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i.prol
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !53
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i.prol
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !53
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !114

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.bd = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %Abc_TtCopy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !53
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !53
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !53
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !53
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.1
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !53
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i.1
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !53
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.2
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !53
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i.2
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !53
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %Abc_TtCopy.exit, label %.lr.ph.i, !llvm.loop !115

Abc_TtCopy.exit:                                  ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %i.br = load i32, ptr %i.j, align 4             ; 2 uses
  %i.bs = and i32 %i.br, 15
  %i.bt = add nsw i32 %i.bs, -1
  %i.bu = icmp slt i32 %2, %i.bt
  br i1 %i.bu, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %Abc_TtCopy.exit
  %i.bv = sext i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %Abc_TtSwapAdjacent.exit
  %indvars.iv = phi i64 [ %i.bv, %.lr.ph.preheader ], [ %indvars.iv.next, %Abc_TtSwapAdjacent.exit ] ; 7 uses
  %i.bw = load i32, ptr %i.ap, align 4, !tbaa !31 ; 5 uses
  %i.bx = icmp slt i64 %indvars.iv, 5
  br i1 %i.bx, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.by = icmp sgt i32 %i.bw, 0
  br i1 %i.by, label %.lr.ph64.i, label %Abc_TtSwapAdjacent.exit

.lr.ph64.i:                                       ; preds = %bb.b
  %i.bz = trunc nsw i64 %indvars.iv to i32
  %i.ca = shl nuw nsw i32 1, %i.bz
  %i.cb = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %indvars.iv ; 3 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !53 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !53 ; 2 uses
  %i.cf = zext nneg i32 %i.ca to i64              ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !53 ; 2 uses
  %wide.trip.count73.i = zext nneg i32 %i.bw to i64 ; 3 uses
  %min.iters.check154 = icmp ult i32 %i.bw, 4
  br i1 %min.iters.check154, label %scalar.ph153.preheader, label %vector.ph155

vector.ph155:                                     ; preds = %.lr.ph64.i
  %n.vec156 = and i64 %wide.trip.count73.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cc, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert157 = insertelement <2 x i64> poison, i64 %i.ce, i64 0
  %broadcast.splat158 = shufflevector <2 x i64> %broadcast.splatinsert157, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert159 = insertelement <2 x i64> poison, i64 %i.cf, i64 0
  %broadcast.splat160 = shufflevector <2 x i64> %broadcast.splatinsert159, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert161 = insertelement <2 x i64> poison, i64 %i.ch, i64 0
  %broadcast.splat162 = shufflevector <2 x i64> %broadcast.splatinsert161, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph155
  %index164 = phi i64 [ 0, %vector.ph155 ], [ %index.next167, %vector.body163 ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index164 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  %wide.load165 = load <2 x i64>, ptr %i.ci, align 8, !tbaa !53 ; 3 uses
  %wide.load166 = load <2 x i64>, ptr %i.cj, align 8, !tbaa !53 ; 3 uses
  %i.ck = and <2 x i64> %wide.load165, %broadcast.splat
  %i.cl = and <2 x i64> %wide.load166, %broadcast.splat
  %i.cm = and <2 x i64> %wide.load165, %broadcast.splat158
  %i.cn = and <2 x i64> %wide.load166, %broadcast.splat158
  %i.co = shl <2 x i64> %i.cm, %broadcast.splat160
  %i.cp = shl <2 x i64> %i.cn, %broadcast.splat160
  %i.cq = or <2 x i64> %i.co, %i.ck
  %i.cr = or <2 x i64> %i.cp, %i.cl
  %i.cs = and <2 x i64> %wide.load165, %broadcast.splat162
  %i.ct = and <2 x i64> %wide.load166, %broadcast.splat162
  %i.cu = lshr <2 x i64> %i.cs, %broadcast.splat160
  %i.cv = lshr <2 x i64> %i.ct, %broadcast.splat160
  %i.cw = or <2 x i64> %i.cq, %i.cu
  %i.cx = or <2 x i64> %i.cr, %i.cv
  store <2 x i64> %i.cw, ptr %i.ci, align 8, !tbaa !53
  store <2 x i64> %i.cx, ptr %i.cj, align 8, !tbaa !53
  %index.next167 = add nuw i64 %index164, 4       ; 2 uses
  %i.cy = icmp eq i64 %index.next167, %n.vec156
  br i1 %i.cy, label %middle.block168, label %vector.body163, !llvm.loop !116

middle.block168:                                  ; preds = %vector.body163
  %cmp.n169 = icmp eq i64 %n.vec156, %wide.trip.count73.i
  br i1 %cmp.n169, label %Abc_TtSwapAdjacent.exit, label %scalar.ph153.preheader

scalar.ph153.preheader:                           ; preds = %.lr.ph64.i, %middle.block168
  %indvars.iv70.i.ph = phi i64 [ 0, %.lr.ph64.i ], [ %n.vec156, %middle.block168 ]
  br label %scalar.ph153

scalar.ph153:                                     ; preds = %scalar.ph153.preheader, %scalar.ph153
  %indvars.iv70.i = phi i64 [ %indvars.iv.next71.i, %scalar.ph153 ], [ %indvars.iv70.i.ph, %scalar.ph153.preheader ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv70.i ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !53 ; 3 uses
  %i.db = and i64 %i.da, %i.cc
  %i.dc = and i64 %i.da, %i.ce
  %i.dd = shl i64 %i.dc, %i.cf
  %i.de = or i64 %i.dd, %i.db
  %i.df = and i64 %i.da, %i.ch
  %i.dg = lshr i64 %i.df, %i.cf
  %i.dh = or i64 %i.de, %i.dg
  store i64 %i.dh, ptr %i.cz, align 8, !tbaa !53
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1 ; 2 uses
  %exitcond74.not.i = icmp eq i64 %indvars.iv.next71.i, %wide.trip.count73.i
  br i1 %exitcond74.not.i, label %Abc_TtSwapAdjacent.exit, label %scalar.ph153, !llvm.loop !117

bb.c:                                             ; preds = %.lr.ph
  %i.di = icmp eq i64 %indvars.iv, 5
  %i.dj = sext i32 %i.bw to i64
  %.idx65.i = shl nsw i64 %i.dj, 3
  %i.dk = getelementptr inbounds i8, ptr %i.ah, i64 %.idx65.i ; 2 uses
  %i.dl = icmp sgt i32 %i.bw, 0                   ; 2 uses
  br i1 %i.di, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %i.dl, label %.lr.ph.i71, label %Abc_TtSwapAdjacent.exit

end_hunk_0
begin_hunk_1_@Gem_FuncExpand:bb.a

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.061.us.i = phi ptr [ %i.ei, %._crit_edge.us.i ], [ %i.ah, %.preheader.us.preheader.i ] ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.dz ; 2 uses
  %invariant.gep80.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.ea ; 2 uses
  br i1 %min.iters.check172, label %scalar.ph171, label %vector.body175

vector.body175:                                   ; preds = %.preheader.us.i, %vector.body175
  %index176 = phi i64 [ %index.next181, %vector.body175 ], [ 0, %.preheader.us.i ] ; 3 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %index176 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  %wide.load177 = load <2 x i64>, ptr %i.eb, align 8, !tbaa !53
  %wide.load178 = load <2 x i64>, ptr %i.ec, align 8, !tbaa !53
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %index176 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 2 uses
  %wide.load179 = load <2 x i64>, ptr %i.ed, align 8, !tbaa !53
  %wide.load180 = load <2 x i64>, ptr %i.ee, align 8, !tbaa !53
  store <2 x i64> %wide.load179, ptr %i.eb, align 8, !tbaa !53
  store <2 x i64> %wide.load180, ptr %i.ec, align 8, !tbaa !53
  store <2 x i64> %wide.load177, ptr %i.ed, align 8, !tbaa !53
  store <2 x i64> %wide.load178, ptr %i.ee, align 8, !tbaa !53
  %index.next181 = add nuw i64 %index176, 4       ; 2 uses
  %i.ef = icmp eq i64 %index.next181, %n.vec174
  br i1 %i.ef, label %._crit_edge.us.i, label %vector.body175, !llvm.loop !118

scalar.ph171:                                     ; preds = %.preheader.us.i, %scalar.ph171
  %indvars.iv.i68 = phi i64 [ %indvars.iv.next.i69, %scalar.ph171 ], [ 0, %.preheader.us.i ] ; 3 uses
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i68 ; 2 uses
  %i.eg = load i64, ptr %gep.i, align 8, !tbaa !53
  %gep81.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.i68 ; 2 uses
  %i.eh = load i64, ptr %gep81.i, align 8, !tbaa !53
  store i64 %i.eh, ptr %gep.i, align 8, !tbaa !53
  store i64 %i.eg, ptr %gep81.i, align 8, !tbaa !53
  %indvars.iv.next.i69 = add nuw nsw i64 %indvars.iv.i68, 1 ; 2 uses
  %exitcond.not.i70 = icmp eq i64 %indvars.iv.next.i69, %i.dz
  br i1 %exitcond.not.i70, label %._crit_edge.us.i, label %scalar.ph171, !llvm.loop !119

._crit_edge.us.i:                                 ; preds = %vector.body175, %scalar.ph171
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.dx ; 2 uses
  %i.ej = icmp ult ptr %i.ei, %i.dk
  br i1 %i.ej, label %.preheader.us.i, label %Abc_TtSwapAdjacent.exit, !llvm.loop !7

Abc_TtSwapAdjacent.exit:                          ; preds = %._crit_edge.us.i, %.lr.ph.i71, %scalar.ph153, %middle.block168, %bb.b, %bb.d, %bb.e
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.ek = load i32, ptr %i.j, align 4             ; 2 uses
  %i.el = and i32 %i.ek, 15
  %i.em = add nsw i32 %i.el, -1
  %i.en = sext i32 %i.em to i64
  %i.eo = icmp slt i64 %indvars.iv.next, %i.en
  br i1 %i.eo, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !120

._crit_edge.loopexit:                             ; preds = %Abc_TtSwapAdjacent.exit
  %i.ep = trunc nsw i64 %indvars.iv.next to i32
  %.pre = load i32, ptr %i.ap, align 4, !tbaa !31
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %Abc_TtCopy.exit
  %i.eq = phi i32 [ %i.br, %Abc_TtCopy.exit ], [ %i.ek, %._crit_edge.loopexit ] ; 2 uses
  %i.er = phi i32 [ %i.aq, %Abc_TtCopy.exit ], [ %.pre, %._crit_edge.loopexit ] ; 9 uses
  %.0.lcssa = phi i32 [ %2, %Abc_TtCopy.exit ], [ %i.ep, %._crit_edge.loopexit ] ; 8 uses
  %i.es = icmp eq i32 %i.er, 1
  br i1 %i.es, label %Abc_TtCofactor0p.exit.thread115, label %bb.f

Abc_TtCofactor0p.exit.thread115:                  ; preds = %._crit_edge
  %i.et = load i64, ptr %i.ah, align 8, !tbaa !53
  %i.eu = sext i32 %.0.lcssa to i64               ; 2 uses
  %i.ev = getelementptr inbounds [8 x i8], ptr @s_Truths6Neg, i64 %i.eu
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !53
  %i.ex = and i64 %i.ew, %i.et                    ; 2 uses
  %i.ey = shl nuw i32 1, %.0.lcssa
  %i.ez = zext nneg i32 %i.ey to i64              ; 2 uses
  %i.fa = shl i64 %i.ex, %i.ez
  %i.fb = or i64 %i.fa, %i.ex
  store i64 %i.fb, ptr %i.ak, align 8, !tbaa !53
  %i.fc = load i64, ptr %i.ah, align 8, !tbaa !53
  %i.fd = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.eu
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !53
  %i.ff = and i64 %i.fe, %i.fc                    ; 2 uses
  %i.fg = lshr i64 %i.ff, %i.ez
  %i.fh = or i64 %i.fg, %i.ff
  store i64 %i.fh, ptr %i.an, align 8, !tbaa !53
  br label %Abc_TtCofactor1p.exit.thread

bb.f:                                             ; preds = %._crit_edge
  %i.fi = icmp slt i32 %.0.lcssa, 6
  br i1 %i.fi, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fj = icmp sgt i32 %i.er, 0
  br i1 %i.fj, label %.lr.ph.i82, label %Abc_TtMux.exit

.lr.ph.i82:                                       ; preds = %bb.g
  %i.fk = shl nuw nsw i32 1, %.0.lcssa
  %i.fl = sext i32 %.0.lcssa to i64               ; 2 uses
  %i.fm = getelementptr inbounds [8 x i8], ptr @s_Truths6Neg, i64 %i.fl
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !53 ; 4 uses
  %i.fo = zext nneg i32 %i.fk to i64              ; 8 uses
  %wide.trip.count59.i = zext nneg i32 %i.er to i64 ; 10 uses
  %min.iters.check223 = icmp ult i32 %i.er, 6
  %i.fp = sub i64 %i.ai, %i.al
  %diff.check221 = icmp ugt i64 %i.fp, -32
  %or.cond = select i1 %min.iters.check223, i1 true, i1 %diff.check221
  br i1 %or.cond, label %scalar.ph222.preheader, label %vector.ph224

vector.ph224:                                     ; preds = %.lr.ph.i82
  %n.vec225 = and i64 %wide.trip.count59.i, 2147483644 ; 3 uses
  %broadcast.splatinsert226 = insertelement <2 x i64> poison, i64 %i.fn, i64 0
  %broadcast.splat227 = shufflevector <2 x i64> %broadcast.splatinsert226, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert228 = insertelement <2 x i64> poison, i64 %i.fo, i64 0
  %broadcast.splat229 = shufflevector <2 x i64> %broadcast.splatinsert228, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body230

vector.body230:                                   ; preds = %vector.body230, %vector.ph224
  %index231 = phi i64 [ 0, %vector.ph224 ], [ %index.next234, %vector.body230 ] ; 3 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index231 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %wide.load232 = load <2 x i64>, ptr %i.fq, align 8, !tbaa !53
  %wide.load233 = load <2 x i64>, ptr %i.fr, align 8, !tbaa !53
  %i.fs = and <2 x i64> %wide.load232, %broadcast.splat227 ; 2 uses
  %i.ft = and <2 x i64> %wide.load233, %broadcast.splat227 ; 2 uses
  %i.fu = shl <2 x i64> %i.fs, %broadcast.splat229
  %i.fv = shl <2 x i64> %i.ft, %broadcast.splat229
  %i.fw = or <2 x i64> %i.fu, %i.fs
  %i.fx = or <2 x i64> %i.fv, %i.ft
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index231 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store <2 x i64> %i.fw, ptr %i.fy, align 8, !tbaa !53
  store <2 x i64> %i.fx, ptr %i.fz, align 8, !tbaa !53
  %index.next234 = add nuw i64 %index231, 4       ; 2 uses
  %i.ga = icmp eq i64 %index.next234, %n.vec225
  br i1 %i.ga, label %middle.block235, label %vector.body230, !llvm.loop !121

middle.block235:                                  ; preds = %vector.body230
  %cmp.n236 = icmp eq i64 %n.vec225, %wide.trip.count59.i
  br i1 %cmp.n236, label %.lr.ph.i94, label %scalar.ph222.preheader

scalar.ph222.preheader:                           ; preds = %.lr.ph.i82, %middle.block235
  %indvars.iv56.i.ph = phi i64 [ 0, %.lr.ph.i82 ], [ %n.vec225, %middle.block235 ] ; 5 uses
  %xtraiter337 = and i64 %wide.trip.count59.i, 1
  %lcmp.mod338.not = icmp eq i64 %xtraiter337, 0
  br i1 %lcmp.mod338.not, label %scalar.ph222.prol.loopexit, label %scalar.ph222.prol

scalar.ph222.prol:                                ; preds = %scalar.ph222.preheader
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv56.i.ph
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !53
  %i.gd = and i64 %i.gc, %i.fn                    ; 2 uses
  %i.ge = shl i64 %i.gd, %i.fo
  %i.gf = or i64 %i.ge, %i.gd
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv56.i.ph
  store i64 %i.gf, ptr %i.gg, align 8, !tbaa !53
  %indvars.iv.next57.i.prol = or disjoint i64 %indvars.iv56.i.ph, 1
  br label %scalar.ph222.prol.loopexit

scalar.ph222.prol.loopexit:                       ; preds = %scalar.ph222.prol, %scalar.ph222.preheader
  %indvars.iv56.i.unr = phi i64 [ %indvars.iv56.i.ph, %scalar.ph222.preheader ], [ %indvars.iv.next57.i.prol, %scalar.ph222.prol ]
  %i.gh = add nsw i64 %wide.trip.count59.i, -1
  %i.gi = icmp eq i64 %indvars.iv56.i.ph, %i.gh
  br i1 %i.gi, label %.lr.ph.i94, label %scalar.ph222

scalar.ph222:                                     ; preds = %scalar.ph222.prol.loopexit, %scalar.ph222
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i.1, %scalar.ph222 ], [ %indvars.iv56.i.unr, %scalar.ph222.prol.loopexit ] ; 4 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv56.i
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !53
  %i.gl = and i64 %i.gk, %i.fn                    ; 2 uses
  %i.gm = shl i64 %i.gl, %i.fo
  %i.gn = or i64 %i.gm, %i.gl
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv56.i
  store i64 %i.gn, ptr %i.go, align 8, !tbaa !53
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next57.i
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !53
  %i.gr = and i64 %i.gq, %i.fn                    ; 2 uses
  %i.gs = shl i64 %i.gr, %i.fo
  %i.gt = or i64 %i.gs, %i.gr
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next57.i
  store i64 %i.gt, ptr %i.gu, align 8, !tbaa !53
  %indvars.iv.next57.i.1 = add nuw nsw i64 %indvars.iv56.i, 2 ; 2 uses
  %exitcond60.not.i.1 = icmp eq i64 %indvars.iv.next57.i.1, %wide.trip.count59.i
  br i1 %exitcond60.not.i.1, label %.lr.ph.i94, label %scalar.ph222, !llvm.loop !122

bb.h:                                             ; preds = %bb.f
  %i.gv = sext i32 %i.er to i64
  %.idx.i = shl nsw i64 %i.gv, 3
  %i.gw = getelementptr inbounds i8, ptr %i.ah, i64 %.idx.i
  %i.gx = add nsw i32 %.0.lcssa, -6               ; 3 uses
  %i.gy = shl nuw i32 1, %i.gx                    ; 6 uses
  %i.gz = icmp sgt i32 %i.er, 0
  br i1 %i.gz, label %.preheader.lr.ph.i72, label %Abc_TtMux.exit

.preheader.lr.ph.i72:                             ; preds = %bb.h
  %.not.i = icmp eq i32 %i.gx, 31
  %i.ha = shl i32 2, %i.gx
  %i.hb = sext i32 %i.ha to i64                   ; 4 uses
  br i1 %.not.i, label %Abc_TtCofactor1p.exit.thread, label %.preheader.us.preheader.i73

.preheader.us.preheader.i73:                      ; preds = %.preheader.lr.ph.i72
  %i.hc = sext i32 %i.gy to i64                   ; 7 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.gy, i32 1) ; 2 uses
  %wide.trip.count.i74 = zext nneg i32 %smax.i to i64 ; 6 uses
  %i.hd = shl nsw i64 %i.hc, 3                    ; 2 uses
  %3 = add i64 %i.hd, %i.al
  %min.iters.check191 = icmp slt i32 %i.gy, 8
  %diff.check186 = icmp ult i64 %i.hd, 32
  %i.he = sub i64 %i.ai, %i.al
  %diff.check187 = icmp ugt i64 %i.he, -32
  %conflict.rdx = or i1 %diff.check186, %diff.check187
  %i.hf = sub i64 %i.ai, %3
  %diff.check188 = icmp ugt i64 %i.hf, -32
  %conflict.rdx189 = or i1 %conflict.rdx, %diff.check188
  %n.vec193 = and i64 %wide.trip.count.i74, 2147483644
  %xtraiter328 = and i64 %wide.trip.count.i74, 3  ; 3 uses
  %i.hg = icmp slt i32 %i.gy, 4
  %unroll_iter = and i64 %wide.trip.count.i74, 2147483644
  %lcmp.mod329.not = icmp eq i64 %xtraiter328, 0
  %lcmp.mod330 = icmp ne i64 %xtraiter328, 0
  br label %.preheader.us.i75

.preheader.us.i75:                                ; preds = %._crit_edge.us.i81, %.preheader.us.preheader.i73
  %.04251.us.i = phi ptr [ %i.ie, %._crit_edge.us.i81 ], [ %i.ak, %.preheader.us.preheader.i73 ] ; 8 uses
  %.04350.us.i = phi ptr [ %i.id, %._crit_edge.us.i81 ], [ %i.ah, %.preheader.us.preheader.i73 ] ; 7 uses
  %invariant.gep.i76 = getelementptr [8 x i8], ptr %.04251.us.i, i64 %i.hc ; 6 uses
  %brmerge = select i1 %min.iters.check191, i1 true, i1 %conflict.rdx189
  br i1 %brmerge, label %scalar.ph190.preheader, label %vector.body194

scalar.ph190.preheader:                           ; preds = %.preheader.us.i75
  br i1 %i.hg, label %scalar.ph190.epil.preheader, label %scalar.ph190

vector.body194:                                   ; preds = %.preheader.us.i75, %vector.body194
  %index195 = phi i64 [ %index.next198, %vector.body194 ], [ 0, %.preheader.us.i75 ] ; 4 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %index195 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %wide.load196 = load <2 x i64>, ptr %i.hh, align 8, !tbaa !53 ; 2 uses
  %wide.load197 = load <2 x i64>, ptr %i.hi, align 8, !tbaa !53 ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %index195 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  store <2 x i64> %wide.load196, ptr %i.hj, align 8, !tbaa !53
  store <2 x i64> %wide.load197, ptr %i.hk, align 8, !tbaa !53
  %i.hl = getelementptr [8 x i8], ptr %invariant.gep.i76, i64 %index195 ; 2 uses
  %i.hm = getelementptr i8, ptr %i.hl, i64 16
  store <2 x i64> %wide.load196, ptr %i.hl, align 8, !tbaa !53
  store <2 x i64> %wide.load197, ptr %i.hm, align 8, !tbaa !53
  %index.next198 = add nuw i64 %index195, 4       ; 2 uses
  %i.hn = icmp eq i64 %index.next198, %n.vec193
  br i1 %i.hn, label %._crit_edge.us.i81, label %vector.body194, !llvm.loop !123

scalar.ph190:                                     ; preds = %scalar.ph190.preheader, %scalar.ph190
  %indvars.iv.i77 = phi i64 [ %indvars.iv.next.i79.3, %scalar.ph190 ], [ 0, %scalar.ph190.preheader ] ; 7 uses
  %niter = phi i64 [ %niter.next.3, %scalar.ph190 ], [ 0, %scalar.ph190.preheader ]
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.i77
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !53 ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.i77
  store i64 %i.hp, ptr %i.hq, align 8, !tbaa !53
  %gep.i78 = getelementptr [8 x i8], ptr %invariant.gep.i76, i64 %indvars.iv.i77
  store i64 %i.hp, ptr %gep.i78, align 8, !tbaa !53
  %indvars.iv.next.i79 = or disjoint i64 %indvars.iv.i77, 1 ; 3 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.next.i79
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !53 ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.next.i79
  store i64 %i.hs, ptr %i.ht, align 8, !tbaa !53
  %gep.i78.1 = getelementptr [8 x i8], ptr %invariant.gep.i76, i64 %indvars.iv.next.i79
  store i64 %i.hs, ptr %gep.i78.1, align 8, !tbaa !53
  %indvars.iv.next.i79.1 = or disjoint i64 %indvars.iv.i77, 2 ; 3 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.next.i79.1
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !53 ; 2 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.next.i79.1
  store i64 %i.hv, ptr %i.hw, align 8, !tbaa !53
  %gep.i78.2 = getelementptr [8 x i8], ptr %invariant.gep.i76, i64 %indvars.iv.next.i79.1
  store i64 %i.hv, ptr %gep.i78.2, align 8, !tbaa !53
  %indvars.iv.next.i79.2 = or disjoint i64 %indvars.iv.i77, 3 ; 3 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.next.i79.2
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !53 ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.next.i79.2
  store i64 %i.hy, ptr %i.hz, align 8, !tbaa !53
  %gep.i78.3 = getelementptr [8 x i8], ptr %invariant.gep.i76, i64 %indvars.iv.next.i79.2
  store i64 %i.hy, ptr %gep.i78.3, align 8, !tbaa !53
  %indvars.iv.next.i79.3 = add nuw nsw i64 %indvars.iv.i77, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i81.loopexit.unr-lcssa, label %scalar.ph190, !llvm.loop !124

._crit_edge.us.i81.loopexit.unr-lcssa:            ; preds = %scalar.ph190
  br i1 %lcmp.mod329.not, label %._crit_edge.us.i81, label %scalar.ph190.epil.preheader

scalar.ph190.epil.preheader:                      ; preds = %._crit_edge.us.i81.loopexit.unr-lcssa, %scalar.ph190.preheader
  %indvars.iv.i77.epil.init = phi i64 [ 0, %scalar.ph190.preheader ], [ %indvars.iv.next.i79.3, %._crit_edge.us.i81.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod330)
  br label %scalar.ph190.epil

scalar.ph190.epil:                                ; preds = %scalar.ph190.epil, %scalar.ph190.epil.preheader
  %indvars.iv.i77.epil = phi i64 [ %indvars.iv.next.i79.epil, %scalar.ph190.epil ], [ %indvars.iv.i77.epil.init, %scalar.ph190.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %scalar.ph190.epil ], [ 0, %scalar.ph190.epil.preheader ]
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.i77.epil
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !53 ; 2 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.i77.epil
  store i64 %i.ib, ptr %i.ic, align 8, !tbaa !53
  %gep.i78.epil = getelementptr [8 x i8], ptr %invariant.gep.i76, i64 %indvars.iv.i77.epil
  store i64 %i.ib, ptr %gep.i78.epil, align 8, !tbaa !53
  %indvars.iv.next.i79.epil = add nuw nsw i64 %indvars.iv.i77.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter328
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i81, label %scalar.ph190.epil, !llvm.loop !125

._crit_edge.us.i81:                               ; preds = %vector.body194, %._crit_edge.us.i81.loopexit.unr-lcssa, %scalar.ph190.epil
  %i.id = getelementptr inbounds [8 x i8], ptr %.04350.us.i, i64 %i.hb ; 2 uses
  %i.ie = getelementptr inbounds [8 x i8], ptr %.04251.us.i, i64 %i.hb
  %i.if = icmp ult ptr %i.id, %i.gw
  br i1 %i.if, label %.preheader.us.i75, label %.preheader.us.preheader.i86, !llvm.loop !1

.lr.ph.i94:                                       ; preds = %scalar.ph222.prol.loopexit, %scalar.ph222, %middle.block235
  %i.ig = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.fl
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !53 ; 4 uses
  %min.iters.check241 = icmp ult i32 %i.er, 6
  %i.ii = sub i64 %i.ai, %i.ao
  %diff.check239 = icmp ugt i64 %i.ii, -32
  %or.cond320 = select i1 %min.iters.check241, i1 true, i1 %diff.check239
  br i1 %or.cond320, label %scalar.ph240.preheader, label %vector.ph242

vector.ph242:                                     ; preds = %.lr.ph.i94
  %n.vec243 = and i64 %wide.trip.count59.i, 2147483644 ; 3 uses
  %broadcast.splatinsert244 = insertelement <2 x i64> poison, i64 %i.ih, i64 0
  %broadcast.splat245 = shufflevector <2 x i64> %broadcast.splatinsert244, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert246 = insertelement <2 x i64> poison, i64 %i.fo, i64 0
  %broadcast.splat247 = shufflevector <2 x i64> %broadcast.splatinsert246, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body248

vector.body248:                                   ; preds = %vector.body248, %vector.ph242
  %index249 = phi i64 [ 0, %vector.ph242 ], [ %index.next252, %vector.body248 ] ; 3 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index249 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %wide.load250 = load <2 x i64>, ptr %i.ij, align 8, !tbaa !53
  %wide.load251 = load <2 x i64>, ptr %i.ik, align 8, !tbaa !53
  %i.il = and <2 x i64> %wide.load250, %broadcast.splat245 ; 2 uses
  %i.im = and <2 x i64> %wide.load251, %broadcast.splat245 ; 2 uses
  %i.in = lshr <2 x i64> %i.il, %broadcast.splat247
  %i.io = lshr <2 x i64> %i.im, %broadcast.splat247
  %i.ip = or <2 x i64> %i.in, %i.il
  %i.iq = or <2 x i64> %i.io, %i.im
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index249 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  store <2 x i64> %i.ip, ptr %i.ir, align 8, !tbaa !53
  store <2 x i64> %i.iq, ptr %i.is, align 8, !tbaa !53
  %index.next252 = add nuw i64 %index249, 4       ; 2 uses
  %i.it = icmp eq i64 %index.next252, %n.vec243
  br i1 %i.it, label %middle.block253, label %vector.body248, !llvm.loop !126

middle.block253:                                  ; preds = %vector.body248
  %cmp.n254 = icmp eq i64 %n.vec243, %wide.trip.count59.i
  br i1 %cmp.n254, label %Abc_TtCofactor1p.exit.thread, label %scalar.ph240.preheader

scalar.ph240.preheader:                           ; preds = %.lr.ph.i94, %middle.block253
  %indvars.iv58.i.ph = phi i64 [ 0, %.lr.ph.i94 ], [ %n.vec243, %middle.block253 ] ; 5 uses
  %xtraiter340 = and i64 %wide.trip.count59.i, 1
  %lcmp.mod341.not = icmp eq i64 %xtraiter340, 0
  br i1 %lcmp.mod341.not, label %scalar.ph240.prol.loopexit, label %scalar.ph240.prol

scalar.ph240.prol:                                ; preds = %scalar.ph240.preheader
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv58.i.ph
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !53
  %i.iw = and i64 %i.iv, %i.ih                    ; 2 uses
  %i.ix = lshr i64 %i.iw, %i.fo
  %i.iy = or i64 %i.ix, %i.iw
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv58.i.ph
  store i64 %i.iy, ptr %i.iz, align 8, !tbaa !53
  %indvars.iv.next59.i.prol = or disjoint i64 %indvars.iv58.i.ph, 1
  br label %scalar.ph240.prol.loopexit

scalar.ph240.prol.loopexit:                       ; preds = %scalar.ph240.prol, %scalar.ph240.preheader
  %indvars.iv58.i.unr = phi i64 [ %indvars.iv58.i.ph, %scalar.ph240.preheader ], [ %indvars.iv.next59.i.prol, %scalar.ph240.prol ]
  %i.ja = add nsw i64 %wide.trip.count59.i, -1
  %i.jb = icmp eq i64 %indvars.iv58.i.ph, %i.ja
  br i1 %i.jb, label %Abc_TtCofactor1p.exit.thread, label %scalar.ph240

scalar.ph240:                                     ; preds = %scalar.ph240.prol.loopexit, %scalar.ph240
  %indvars.iv58.i = phi i64 [ %indvars.iv.next59.i.1, %scalar.ph240 ], [ %indvars.iv58.i.unr, %scalar.ph240.prol.loopexit ] ; 4 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv58.i
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !53
  %i.je = and i64 %i.jd, %i.ih                    ; 2 uses
  %i.jf = lshr i64 %i.je, %i.fo
  %i.jg = or i64 %i.jf, %i.je
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv58.i
  store i64 %i.jg, ptr %i.jh, align 8, !tbaa !53
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next59.i
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !53
  %i.jk = and i64 %i.jj, %i.ih                    ; 2 uses
  %i.jl = lshr i64 %i.jk, %i.fo
  %i.jm = or i64 %i.jl, %i.jk
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next59.i
  store i64 %i.jm, ptr %i.jn, align 8, !tbaa !53
  %indvars.iv.next59.i.1 = add nuw nsw i64 %indvars.iv58.i, 2 ; 2 uses
  %exitcond62.not.i.1 = icmp eq i64 %indvars.iv.next59.i.1, %wide.trip.count59.i
  br i1 %exitcond62.not.i.1, label %Abc_TtCofactor1p.exit.thread, label %scalar.ph240, !llvm.loop !127

.preheader.us.preheader.i86:                      ; preds = %._crit_edge.us.i81
  %i.jo = zext nneg i32 %i.er to i64              ; 2 uses
  %.idx.i83 = shl nuw nsw i64 %i.jo, 3
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i83
  %i.jq = shl nsw i64 %i.hc, 3                    ; 2 uses
  %i.jr = sub i64 %i.ao, %i.ai                    ; 2 uses
  %min.iters.check209 = icmp slt i32 %i.gy, 8
  %diff.check203 = icmp ult i64 %i.jq, 32
  %i.js = sub i64 %i.jq, %i.jr
  %diff.check204 = icmp ugt i64 %i.js, -32
  %conflict.rdx205 = or i1 %diff.check203, %diff.check204
  %i.jt = add i64 %i.jr, -1
  %diff.check206 = icmp ult i64 %i.jt, 31
  %conflict.rdx207 = or i1 %conflict.rdx205, %diff.check206
end_hunk_1
begin_hunk_2_@Gem_FuncCheckMajority:bb.a
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.p = load i32, ptr %i.g, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !38
  %i.s = and i32 %i.r, %1
  %i.t = mul nsw i32 %i.s, %i.p
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.u ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.w = load i32, ptr %i.e, align 4              ; 3 uses
  %i.x = and i32 %i.w, 15                         ; 5 uses
  %.not40.i = icmp eq i32 %i.x, 0
  br i1 %.not40.i, label %Abc_TtIsFullySymmetric.exit.thread19, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %bb.a
  %xtraiter = and i32 %i.w, 3                     ; 3 uses
  %i.y = icmp samesign ult i32 %i.x, 4
  %unroll_iter = and i32 %i.w, 12
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod23 = icmp ne i32 %xtraiter, 0
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %bb.d
  %.02439.us.i = phi i32 [ %.2.us.i, %bb.d ], [ 0, %.lr.ph.us.i.preheader ] ; 3 uses
  %.02538.us.i = phi i32 [ %.227.us.i, %bb.d ], [ 0, %.lr.ph.us.i.preheader ] ; 3 uses
  %.02937.us.i = phi i32 [ %i.ax, %bb.d ], [ 0, %.lr.ph.us.i.preheader ] ; 8 uses
  %i.z = lshr i32 %.02937.us.i, 6
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !53
  br i1 %i.y, label %.epil.preheader, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %.02336.us.i = phi i32 [ %i.ar, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %.02835.us.i = phi i32 [ %i.as, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ] ; 5 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.ad = lshr i32 %.02937.us.i, %.02835.us.i
  %i.ae = and i32 %i.ad, 1
  %i.af = add nuw nsw i32 %i.ae, %.02336.us.i
  %i.ag = or disjoint i32 %.02835.us.i, 1
  %i.ah = lshr i32 %.02937.us.i, %i.ag
  %i.ai = and i32 %i.ah, 1
  %i.aj = add nuw nsw i32 %i.ai, %i.af
  %i.ak = or disjoint i32 %.02835.us.i, 2
  %i.al = lshr i32 %.02937.us.i, %i.ak
  %i.am = and i32 %i.al, 1
  %i.an = add nuw nsw i32 %i.am, %i.aj
  %i.ao = or disjoint i32 %.02835.us.i, 3
  %i.ap = lshr i32 %.02937.us.i, %i.ao
  %i.aq = and i32 %i.ap, 1
  %i.ar = add nuw nsw i32 %i.aq, %i.an            ; 3 uses
  %i.as = add nuw nsw i32 %.02835.us.i, 4         ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !153

bb.b:                                             ; preds = %._crit_edge.us.i
  %i.at = lshr i32 %.02538.us.i, %.lcssa
  %i.au = and i32 %i.at, 1
  %.not34.us.i = icmp eq i32 %i.bh, %i.au
  br i1 %.not34.us.i, label %bb.d, label %Abc_TtIsFullySymmetric.exit.thread

bb.c:                                             ; preds = %._crit_edge.us.i
  %i.av = or i32 %i.bi, %.02439.us.i
  %.not33.us.i = icmp eq i32 %i.bh, 0
  %i.aw = select i1 %.not33.us.i, i32 0, i32 %i.bi
  %spec.select.us.i = or i32 %i.aw, %.02538.us.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.227.us.i = phi i32 [ %spec.select.us.i, %bb.c ], [ %.02538.us.i, %bb.b ] ; 3 uses
  %.2.us.i = phi i32 [ %i.av, %bb.c ], [ %.02439.us.i, %bb.b ]
  %i.ax = add nuw nsw i32 %.02937.us.i, 1         ; 2 uses
  %.029.highbits.us.i = lshr i32 %i.ax, %i.x
  %i.ay = icmp eq i32 %.029.highbits.us.i, 0
  br i1 %i.ay, label %.lr.ph.us.i, label %Abc_TtIsFullySymmetric.exit, !llvm.loop !154

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %.02336.us.i.epil.init = phi i32 [ 0, %.lr.ph.us.i ], [ %i.ar, %._crit_edge.us.i.unr-lcssa ]
  %.02835.us.i.epil.init = phi i32 [ 0, %.lr.ph.us.i ], [ %i.as, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.02336.us.i.epil = phi i32 [ %.02336.us.i.epil.init, %.epil.preheader ], [ %i.bb, %bb.e ]
  %.02835.us.i.epil = phi i32 [ %.02835.us.i.epil.init, %.epil.preheader ], [ %i.bc, %bb.e ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.az = lshr i32 %.02937.us.i, %.02835.us.i.epil
  %i.ba = and i32 %i.az, 1
  %i.bb = add nuw nsw i32 %i.ba, %.02336.us.i.epil ; 2 uses
  %i.bc = add nuw nsw i32 %.02835.us.i.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i, label %bb.e, !llvm.loop !155

._crit_edge.us.i:                                 ; preds = %bb.e, %._crit_edge.us.i.unr-lcssa
  %.lcssa = phi i32 [ %i.ar, %._crit_edge.us.i.unr-lcssa ], [ %i.bb, %bb.e ] ; 2 uses
  %i.bd = and i32 %.02937.us.i, 63
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = lshr i64 %i.ac, %i.be
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = and i32 %i.bg, 1                        ; 2 uses
  %i.bi = shl nuw i32 1, %.lcssa                  ; 3 uses
  %i.bj = and i32 %i.bi, %.02439.us.i
  %.not.us.i = icmp eq i32 %i.bj, 0
  br i1 %.not.us.i, label %bb.c, label %bb.b

Abc_TtIsFullySymmetric.exit.thread19:             ; preds = %bb.a
  %i.bk = load i64, ptr %i.v, align 8, !tbaa !53
  %.not33.i = trunc i64 %i.bk to i32
  %i.bl = and i32 %.not33.i, 1
  store i32 %i.bl, ptr %i.a, align 4, !tbaa !24
  br label %bb.f

Abc_TtIsFullySymmetric.exit:                      ; preds = %bb.d
  store i32 %.227.us.i, ptr %i.a, align 4, !tbaa !24
  %.not = icmp eq i32 %.227.us.i, -1
  br i1 %.not, label %Abc_TtIsFullySymmetric.exit.thread, label %bb.f

bb.f:                                             ; preds = %Abc_TtIsFullySymmetric.exit.thread19, %Abc_TtIsFullySymmetric.exit
  %i.bm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.x) ; 0 uses
  %i.bn = load ptr, ptr @stdout, align 8, !tbaa !29
  %i.bo = load i32, ptr %i.e, align 4
  %i.bp = and i32 %i.bo, 15
  %i.bq = add nuw nsw i32 %i.bp, 1
  call void @Extra_PrintBinary2(ptr noundef %i.bn, ptr noundef nonnull %i.a, i32 noundef %i.bq) #22
  %i.br = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9) ; 0 uses
  %i.bs = load i32, ptr %i.e, align 4             ; 2 uses
  %i.bt = and i32 %i.bs, 15
  %i.bu = and i32 %i.bs, 1
  %.not16 = icmp eq i32 %i.bu, 0
  br i1 %.not16, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = add nuw nsw i32 %i.x, 1
  %i.bw = lshr i32 %i.bv, 1                       ; 2 uses
  %i.bx = sub nuw nsw i32 64, %i.bw
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = lshr i64 -1, %i.by
  %i.ca = trunc nuw nsw i64 %i.bz to i32
  %i.cb = load i32, ptr %i.a, align 4, !tbaa !24
  %i.cc = shl nuw nsw i32 %i.ca, %i.bw
  %i.cd = icmp eq i32 %i.cb, %i.cc
  br i1 %i.cd, label %.critedge, label %bb.h

.critedge:                                        ; preds = %bb.g
  %i.ce = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.bt) ; 0 uses
  br label %Abc_TtIsFullySymmetric.exit.thread

bb.h:                                             ; preds = %bb.g, %bb.f
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %Abc_TtIsFullySymmetric.exit.thread

Abc_TtIsFullySymmetric.exit.thread:               ; preds = %bb.b, %Abc_TtIsFullySymmetric.exit, %bb.h, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @Gem_FuncReduce(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !33
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.g ; 6 uses
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.i ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !56
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !37
  %i.q = ashr i32 %1, %i.p
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !51   ; 2 uses
  %i.u = ptrtoaddr ptr %i.t to i64
  %i.v = load i32, ptr %i.l, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !38
  %i.y = and i32 %i.x, %1
  %i.z = mul i32 %i.y, %i.v
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.aa ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !49 ; 2 uses
  %i.ae = load i32, ptr %0, align 8, !tbaa !30
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.af ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !51 ; 45 uses
  %i.ai = ptrtoaddr ptr %i.ah to i64              ; 9 uses
  %i.aj = getelementptr i8, ptr %i.ag, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !51 ; 18 uses
  %i.al = ptrtoaddr ptr %i.ak to i64              ; 4 uses
  %i.am = getelementptr i8, ptr %i.ag, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !51 ; 18 uses
  %i.ao = ptrtoaddr ptr %i.an to i64              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !31 ; 3 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.preheader.i, label %Abc_TtCopy.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.aq to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.aq, 14
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.as = shl nsw i64 %i.aa, 3
  %i.at = add i64 %i.as, %i.u
  %i.au = sub i64 %i.at, %i.ai
  %diff.check = icmp ugt i64 %i.au, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load = load <2 x i64>, ptr %i.av, align 8, !tbaa !53
  %wide.load240 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !53
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x i64> %wide.load, ptr %i.ax, align 8, !tbaa !53
  store <2 x i64> %wide.load240, ptr %i.ay, align 8, !tbaa !53
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %Abc_TtCopy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i.prol
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !53
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i.prol
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !53
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !157

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.bd = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %Abc_TtCopy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !53
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !53
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !53
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !53
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.1
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !53
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i.1
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !53
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.2
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !53
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i.2
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !53
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %Abc_TtCopy.exit, label %.lr.ph.i, !llvm.loop !158

Abc_TtCopy.exit:                                  ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %i.br = load i32, ptr %i.j, align 4
  %i.bs = and i32 %i.br, 15                       ; 2 uses
  %i.bt = add nsw i32 %i.bs, -1
  %i.bu = icmp slt i32 %3, %i.bt
  br i1 %i.bu, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %Abc_TtCopy.exit
  %i.bv = sext i32 %3 to i64
  br label %.lr.ph

.preheader:                                       ; preds = %Abc_TtSwapAdjacent.exit, %Abc_TtCopy.exit
  %.pre-phi = phi i32 [ %i.bs, %Abc_TtCopy.exit ], [ %i.eo, %Abc_TtSwapAdjacent.exit ]
  %i.bw = add nsw i32 %.pre-phi, -2
  %i.bx = icmp slt i32 %2, %i.bw
  br i1 %i.bx, label %.lr.ph200.preheader, label %._crit_edge

.lr.ph200.preheader:                              ; preds = %.preheader
  %i.by = sext i32 %2 to i64
  br label %.lr.ph200

.lr.ph:                                           ; preds = %.lr.ph.preheader, %Abc_TtSwapAdjacent.exit
  %indvars.iv = phi i64 [ %i.bv, %.lr.ph.preheader ], [ %indvars.iv.next, %Abc_TtSwapAdjacent.exit ] ; 7 uses
  %i.bz = load i32, ptr %i.ap, align 4, !tbaa !31 ; 5 uses
  %i.ca = icmp slt i64 %indvars.iv, 5
  br i1 %i.ca, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.cb = icmp sgt i32 %i.bz, 0
  br i1 %i.cb, label %.lr.ph64.i, label %Abc_TtSwapAdjacent.exit

.lr.ph64.i:                                       ; preds = %bb.b
  %i.cc = trunc nsw i64 %indvars.iv to i32
  %i.cd = shl nuw nsw i32 1, %i.cc
  %i.ce = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %indvars.iv ; 3 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !53 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !53 ; 2 uses
  %i.ci = zext nneg i32 %i.cd to i64              ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !53 ; 2 uses
  %wide.trip.count73.i = zext nneg i32 %i.bz to i64 ; 3 uses
  %min.iters.check242 = icmp ult i32 %i.bz, 4
  br i1 %min.iters.check242, label %scalar.ph241.preheader, label %vector.ph243

vector.ph243:                                     ; preds = %.lr.ph64.i
  %n.vec244 = and i64 %wide.trip.count73.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cf, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert245 = insertelement <2 x i64> poison, i64 %i.ch, i64 0
  %broadcast.splat246 = shufflevector <2 x i64> %broadcast.splatinsert245, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert247 = insertelement <2 x i64> poison, i64 %i.ci, i64 0
  %broadcast.splat248 = shufflevector <2 x i64> %broadcast.splatinsert247, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert249 = insertelement <2 x i64> poison, i64 %i.ck, i64 0
  %broadcast.splat250 = shufflevector <2 x i64> %broadcast.splatinsert249, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body251

vector.body251:                                   ; preds = %vector.body251, %vector.ph243
  %index252 = phi i64 [ 0, %vector.ph243 ], [ %index.next255, %vector.body251 ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index252 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %wide.load253 = load <2 x i64>, ptr %i.cl, align 8, !tbaa !53 ; 3 uses
  %wide.load254 = load <2 x i64>, ptr %i.cm, align 8, !tbaa !53 ; 3 uses
  %i.cn = and <2 x i64> %wide.load253, %broadcast.splat
  %i.co = and <2 x i64> %wide.load254, %broadcast.splat
  %i.cp = and <2 x i64> %wide.load253, %broadcast.splat246
  %i.cq = and <2 x i64> %wide.load254, %broadcast.splat246
  %i.cr = shl <2 x i64> %i.cp, %broadcast.splat248
  %i.cs = shl <2 x i64> %i.cq, %broadcast.splat248
  %i.ct = or <2 x i64> %i.cr, %i.cn
  %i.cu = or <2 x i64> %i.cs, %i.co
  %i.cv = and <2 x i64> %wide.load253, %broadcast.splat250
  %i.cw = and <2 x i64> %wide.load254, %broadcast.splat250
  %i.cx = lshr <2 x i64> %i.cv, %broadcast.splat248
  %i.cy = lshr <2 x i64> %i.cw, %broadcast.splat248
  %i.cz = or <2 x i64> %i.ct, %i.cx
  %i.da = or <2 x i64> %i.cu, %i.cy
  store <2 x i64> %i.cz, ptr %i.cl, align 8, !tbaa !53
  store <2 x i64> %i.da, ptr %i.cm, align 8, !tbaa !53
  %index.next255 = add nuw i64 %index252, 4       ; 2 uses
  %i.db = icmp eq i64 %index.next255, %n.vec244
  br i1 %i.db, label %middle.block256, label %vector.body251, !llvm.loop !159

middle.block256:                                  ; preds = %vector.body251
  %cmp.n257 = icmp eq i64 %n.vec244, %wide.trip.count73.i
  br i1 %cmp.n257, label %Abc_TtSwapAdjacent.exit, label %scalar.ph241.preheader

scalar.ph241.preheader:                           ; preds = %.lr.ph64.i, %middle.block256
  %indvars.iv70.i.ph = phi i64 [ 0, %.lr.ph64.i ], [ %n.vec244, %middle.block256 ]
  br label %scalar.ph241

scalar.ph241:                                     ; preds = %scalar.ph241.preheader, %scalar.ph241
  %indvars.iv70.i = phi i64 [ %indvars.iv.next71.i, %scalar.ph241 ], [ %indvars.iv70.i.ph, %scalar.ph241.preheader ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv70.i ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !53 ; 3 uses
  %i.de = and i64 %i.dd, %i.cf
  %i.df = and i64 %i.dd, %i.ch
  %i.dg = shl i64 %i.df, %i.ci
  %i.dh = or i64 %i.dg, %i.de
  %i.di = and i64 %i.dd, %i.ck
  %i.dj = lshr i64 %i.di, %i.ci
  %i.dk = or i64 %i.dh, %i.dj
  store i64 %i.dk, ptr %i.dc, align 8, !tbaa !53
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1 ; 2 uses
  %exitcond74.not.i = icmp eq i64 %indvars.iv.next71.i, %wide.trip.count73.i
  br i1 %exitcond74.not.i, label %Abc_TtSwapAdjacent.exit, label %scalar.ph241, !llvm.loop !160

bb.c:                                             ; preds = %.lr.ph
end_hunk_2
begin_hunk_3_@Gem_FuncReduce:bb.a
  %wide.load302 = load <2 x i64>, ptr %i.ha, align 8, !tbaa !53
  store <2 x i64> %wide.load301, ptr %i.gx, align 8, !tbaa !53
  store <2 x i64> %wide.load302, ptr %i.gy, align 8, !tbaa !53
  store <2 x i64> %wide.load299, ptr %i.gz, align 8, !tbaa !53
  store <2 x i64> %wide.load300, ptr %i.ha, align 8, !tbaa !53
  %index.next303 = add nuw i64 %index298, 4       ; 2 uses
  %i.hb = icmp eq i64 %index.next303, %n.vec296
  br i1 %i.hb, label %._crit_edge.us.i95, label %vector.body297, !llvm.loop !166

scalar.ph293:                                     ; preds = %.preheader.us.i86, %scalar.ph293
  %indvars.iv.i90 = phi i64 [ %indvars.iv.next.i93, %scalar.ph293 ], [ 0, %.preheader.us.i86 ] ; 3 uses
  %gep.i91 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i88, i64 %indvars.iv.i90 ; 2 uses
  %i.hc = load i64, ptr %gep.i91, align 8, !tbaa !53
  %gep81.i92 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i89, i64 %indvars.iv.i90 ; 2 uses
  %i.hd = load i64, ptr %gep81.i92, align 8, !tbaa !53
  store i64 %i.hd, ptr %gep.i91, align 8, !tbaa !53
  store i64 %i.hc, ptr %gep81.i92, align 8, !tbaa !53
  %indvars.iv.next.i93 = add nuw nsw i64 %indvars.iv.i90, 1 ; 2 uses
  %exitcond.not.i94 = icmp eq i64 %indvars.iv.next.i93, %i.gv
  br i1 %exitcond.not.i94, label %._crit_edge.us.i95, label %scalar.ph293, !llvm.loop !167

._crit_edge.us.i95:                               ; preds = %vector.body297, %scalar.ph293
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i87, i64 %i.gt ; 2 uses
  %i.hf = icmp ult ptr %i.he, %i.gg
  br i1 %i.hf, label %.preheader.us.i86, label %Abc_TtSwapAdjacent.exit103, !llvm.loop !7

Abc_TtSwapAdjacent.exit103:                       ; preds = %._crit_edge.us.i95, %.lr.ph.i96, %scalar.ph273, %middle.block290, %bb.f, %bb.h, %bb.i
  %indvars.iv.next208 = add nsw i64 %indvars.iv207, 1 ; 3 uses
  %i.hg = load i32, ptr %i.j, align 4
  %i.hh = and i32 %i.hg, 15
  %i.hi = add nsw i32 %i.hh, -2
  %i.hj = sext i32 %i.hi to i64
  %i.hk = icmp slt i64 %indvars.iv.next208, %i.hj
  br i1 %i.hk, label %.lr.ph200, label %._crit_edge.loopexit, !llvm.loop !168

._crit_edge.loopexit:                             ; preds = %Abc_TtSwapAdjacent.exit103
  %i.hl = trunc nsw i64 %indvars.iv.next208 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.1.lcssa = phi i32 [ %2, %.preheader ], [ %i.hl, %._crit_edge.loopexit ] ; 11 uses
  %i.hm = load i32, ptr %i.ap, align 4, !tbaa !31 ; 15 uses
  %i.hn = add nsw i32 %.1.lcssa, 1                ; 4 uses
  %i.ho = icmp eq i32 %i.hm, 1
  br i1 %i.ho, label %Abc_TtCofactor0p.exit.thread174, label %bb.j

Abc_TtCofactor0p.exit.thread174:                  ; preds = %._crit_edge
  %i.hp = load i64, ptr %i.ah, align 8, !tbaa !53
  %i.hq = sext i32 %i.hn to i64                   ; 2 uses
  %i.hr = getelementptr inbounds [8 x i8], ptr @s_Truths6Neg, i64 %i.hq
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !53
  %i.ht = and i64 %i.hs, %i.hp                    ; 2 uses
  %i.hu = shl nuw i32 1, %i.hn
  %i.hv = zext nneg i32 %i.hu to i64              ; 2 uses
  %i.hw = shl i64 %i.ht, %i.hv
  %i.hx = or i64 %i.hw, %i.ht
  store i64 %i.hx, ptr %i.ak, align 8, !tbaa !53
  %i.hy = load i64, ptr %i.ah, align 8, !tbaa !53
  %i.hz = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.hq
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !53
  %i.ib = and i64 %i.ia, %i.hy                    ; 2 uses
  %i.ic = lshr i64 %i.ib, %i.hv
  %i.id = or i64 %i.ic, %i.ib
  store i64 %i.id, ptr %i.an, align 8, !tbaa !53
  %i.ie = load i64, ptr %i.ak, align 8, !tbaa !53
  %i.if = sext i32 %.1.lcssa to i64               ; 2 uses
  %i.ig = getelementptr inbounds [8 x i8], ptr @s_Truths6Neg, i64 %i.if
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !53
  %i.ii = and i64 %i.ih, %i.ie                    ; 2 uses
  %i.ij = shl nuw i32 1, %.1.lcssa
  %i.ik = zext nneg i32 %i.ij to i64              ; 2 uses
  %i.il = shl i64 %i.ii, %i.ik
  %i.im = or i64 %i.il, %i.ii
  store i64 %i.im, ptr %i.ak, align 8, !tbaa !53
  %i.in = load i64, ptr %i.an, align 8, !tbaa !53
  %i.io = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.if
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !53
  %i.iq = and i64 %i.ip, %i.in                    ; 2 uses
  %i.ir = lshr i64 %i.iq, %i.ik
  %i.is = or i64 %i.ir, %i.iq
  store i64 %i.is, ptr %i.an, align 8, !tbaa !53
  br label %Abc_TtCofactor1.exit.thread

bb.j:                                             ; preds = %._crit_edge
  %i.it = icmp slt i32 %.1.lcssa, 5
  br i1 %i.it, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.iu = icmp sgt i32 %i.hm, 0
  br i1 %i.iu, label %.lr.ph.i114, label %Abc_TtMux.exit

.lr.ph.i114:                                      ; preds = %bb.k
  %i.iv = shl nuw nsw i32 1, %i.hn
  %i.iw = sext i32 %i.hn to i64                   ; 2 uses
  %i.ix = getelementptr inbounds [8 x i8], ptr @s_Truths6Neg, i64 %i.iw
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !53 ; 4 uses
  %i.iz = zext nneg i32 %i.iv to i64              ; 8 uses
  %wide.trip.count59.i = zext nneg i32 %i.hm to i64 ; 10 uses
  %min.iters.check373 = icmp ult i32 %i.hm, 6
  %i.ja = sub i64 %i.ai, %i.al
  %diff.check371 = icmp ugt i64 %i.ja, -32
  %or.cond = select i1 %min.iters.check373, i1 true, i1 %diff.check371
  br i1 %or.cond, label %scalar.ph372.preheader, label %vector.ph374

vector.ph374:                                     ; preds = %.lr.ph.i114
  %n.vec375 = and i64 %wide.trip.count59.i, 2147483644 ; 3 uses
  %broadcast.splatinsert376 = insertelement <2 x i64> poison, i64 %i.iy, i64 0
  %broadcast.splat377 = shufflevector <2 x i64> %broadcast.splatinsert376, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert378 = insertelement <2 x i64> poison, i64 %i.iz, i64 0
  %broadcast.splat379 = shufflevector <2 x i64> %broadcast.splatinsert378, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body380

vector.body380:                                   ; preds = %vector.body380, %vector.ph374
  %index381 = phi i64 [ 0, %vector.ph374 ], [ %index.next384, %vector.body380 ] ; 3 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index381 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %wide.load382 = load <2 x i64>, ptr %i.jb, align 8, !tbaa !53
  %wide.load383 = load <2 x i64>, ptr %i.jc, align 8, !tbaa !53
  %i.jd = and <2 x i64> %wide.load382, %broadcast.splat377 ; 2 uses
  %i.je = and <2 x i64> %wide.load383, %broadcast.splat377 ; 2 uses
  %i.jf = shl <2 x i64> %i.jd, %broadcast.splat379
  %i.jg = shl <2 x i64> %i.je, %broadcast.splat379
  %i.jh = or <2 x i64> %i.jf, %i.jd
  %i.ji = or <2 x i64> %i.jg, %i.je
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index381 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  store <2 x i64> %i.jh, ptr %i.jj, align 8, !tbaa !53
  store <2 x i64> %i.ji, ptr %i.jk, align 8, !tbaa !53
  %index.next384 = add nuw i64 %index381, 4       ; 2 uses
  %i.jl = icmp eq i64 %index.next384, %n.vec375
  br i1 %i.jl, label %middle.block385, label %vector.body380, !llvm.loop !169

middle.block385:                                  ; preds = %vector.body380
  %cmp.n386 = icmp eq i64 %n.vec375, %wide.trip.count59.i
  br i1 %cmp.n386, label %.lr.ph.i126, label %scalar.ph372.preheader

scalar.ph372.preheader:                           ; preds = %.lr.ph.i114, %middle.block385
  %indvars.iv56.i.ph = phi i64 [ 0, %.lr.ph.i114 ], [ %n.vec375, %middle.block385 ] ; 5 uses
  %xtraiter495 = and i64 %wide.trip.count59.i, 1
  %lcmp.mod496.not = icmp eq i64 %xtraiter495, 0
  br i1 %lcmp.mod496.not, label %scalar.ph372.prol.loopexit, label %scalar.ph372.prol

scalar.ph372.prol:                                ; preds = %scalar.ph372.preheader
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv56.i.ph
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !53
  %i.jo = and i64 %i.jn, %i.iy                    ; 2 uses
  %i.jp = shl i64 %i.jo, %i.iz
  %i.jq = or i64 %i.jp, %i.jo
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv56.i.ph
  store i64 %i.jq, ptr %i.jr, align 8, !tbaa !53
  %indvars.iv.next57.i.prol = or disjoint i64 %indvars.iv56.i.ph, 1
  br label %scalar.ph372.prol.loopexit

scalar.ph372.prol.loopexit:                       ; preds = %scalar.ph372.prol, %scalar.ph372.preheader
  %indvars.iv56.i.unr = phi i64 [ %indvars.iv56.i.ph, %scalar.ph372.preheader ], [ %indvars.iv.next57.i.prol, %scalar.ph372.prol ]
  %i.js = add nsw i64 %wide.trip.count59.i, -1
  %i.jt = icmp eq i64 %indvars.iv56.i.ph, %i.js
  br i1 %i.jt, label %.lr.ph.i126, label %scalar.ph372

scalar.ph372:                                     ; preds = %scalar.ph372.prol.loopexit, %scalar.ph372
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i.1, %scalar.ph372 ], [ %indvars.iv56.i.unr, %scalar.ph372.prol.loopexit ] ; 4 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv56.i
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !53
  %i.jw = and i64 %i.jv, %i.iy                    ; 2 uses
  %i.jx = shl i64 %i.jw, %i.iz
  %i.jy = or i64 %i.jx, %i.jw
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv56.i
  store i64 %i.jy, ptr %i.jz, align 8, !tbaa !53
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next57.i
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !53
  %i.kc = and i64 %i.kb, %i.iy                    ; 2 uses
  %i.kd = shl i64 %i.kc, %i.iz
  %i.ke = or i64 %i.kd, %i.kc
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next57.i
  store i64 %i.ke, ptr %i.kf, align 8, !tbaa !53
  %indvars.iv.next57.i.1 = add nuw nsw i64 %indvars.iv56.i, 2 ; 2 uses
  %exitcond60.not.i.1 = icmp eq i64 %indvars.iv.next57.i.1, %wide.trip.count59.i
  br i1 %exitcond60.not.i.1, label %.lr.ph.i126, label %scalar.ph372, !llvm.loop !170

bb.l:                                             ; preds = %bb.j
  %i.kg = sext i32 %i.hm to i64
  %.idx.i = shl nsw i64 %i.kg, 3
  %i.kh = getelementptr inbounds i8, ptr %i.ah, i64 %.idx.i
  %i.ki = add nsw i32 %.1.lcssa, -5               ; 3 uses
  %i.kj = shl nuw i32 1, %i.ki                    ; 6 uses
  %i.kk = icmp sgt i32 %i.hm, 0
  br i1 %i.kk, label %.preheader.lr.ph.i104, label %Abc_TtCofactor1p.exit.thread

.preheader.lr.ph.i104:                            ; preds = %bb.l
  %.not.i = icmp eq i32 %i.ki, 31
  %i.kl = shl i32 2, %i.ki
  %i.km = sext i32 %i.kl to i64                   ; 4 uses
  br i1 %.not.i, label %.preheader.us.preheader.i130, label %.preheader.us.preheader.i105

.preheader.us.preheader.i105:                     ; preds = %.preheader.lr.ph.i104
  %i.kn = sext i32 %i.kj to i64                   ; 7 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.kj, i32 1) ; 2 uses
  %wide.trip.count.i106 = zext nneg i32 %smax.i to i64 ; 6 uses
  %i.ko = shl nsw i64 %i.kn, 3                    ; 2 uses
  %4 = add i64 %i.ko, %i.al
  %min.iters.check313 = icmp slt i32 %i.kj, 8
  %diff.check308 = icmp ult i64 %i.ko, 32
  %i.kp = sub i64 %i.ai, %i.al
  %diff.check309 = icmp ugt i64 %i.kp, -32
  %conflict.rdx = or i1 %diff.check308, %diff.check309
  %i.kq = sub i64 %i.ai, %4
  %diff.check310 = icmp ugt i64 %i.kq, -32
  %conflict.rdx311 = or i1 %conflict.rdx, %diff.check310
  %n.vec315 = and i64 %wide.trip.count.i106, 2147483644
  %xtraiter486 = and i64 %wide.trip.count.i106, 3 ; 3 uses
  %i.kr = icmp slt i32 %i.kj, 4
  %unroll_iter = and i64 %wide.trip.count.i106, 2147483644
  %lcmp.mod487.not = icmp eq i64 %xtraiter486, 0
  %lcmp.mod488 = icmp ne i64 %xtraiter486, 0
  br label %.preheader.us.i107

.preheader.us.i107:                               ; preds = %._crit_edge.us.i113, %.preheader.us.preheader.i105
  %.04251.us.i = phi ptr [ %i.lp, %._crit_edge.us.i113 ], [ %i.ak, %.preheader.us.preheader.i105 ] ; 8 uses
  %.04350.us.i = phi ptr [ %i.lo, %._crit_edge.us.i113 ], [ %i.ah, %.preheader.us.preheader.i105 ] ; 7 uses
  %invariant.gep.i108 = getelementptr [8 x i8], ptr %.04251.us.i, i64 %i.kn ; 6 uses
  %brmerge = select i1 %min.iters.check313, i1 true, i1 %conflict.rdx311
  br i1 %brmerge, label %scalar.ph312.preheader, label %vector.body316

scalar.ph312.preheader:                           ; preds = %.preheader.us.i107
  br i1 %i.kr, label %scalar.ph312.epil.preheader, label %scalar.ph312

vector.body316:                                   ; preds = %.preheader.us.i107, %vector.body316
  %index317 = phi i64 [ %index.next320, %vector.body316 ], [ 0, %.preheader.us.i107 ] ; 4 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %index317 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %wide.load318 = load <2 x i64>, ptr %i.ks, align 8, !tbaa !53 ; 2 uses
  %wide.load319 = load <2 x i64>, ptr %i.kt, align 8, !tbaa !53 ; 2 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %index317 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  store <2 x i64> %wide.load318, ptr %i.ku, align 8, !tbaa !53
  store <2 x i64> %wide.load319, ptr %i.kv, align 8, !tbaa !53
  %i.kw = getelementptr [8 x i8], ptr %invariant.gep.i108, i64 %index317 ; 2 uses
  %i.kx = getelementptr i8, ptr %i.kw, i64 16
  store <2 x i64> %wide.load318, ptr %i.kw, align 8, !tbaa !53
  store <2 x i64> %wide.load319, ptr %i.kx, align 8, !tbaa !53
  %index.next320 = add nuw i64 %index317, 4       ; 2 uses
  %i.ky = icmp eq i64 %index.next320, %n.vec315
  br i1 %i.ky, label %._crit_edge.us.i113, label %vector.body316, !llvm.loop !171

scalar.ph312:                                     ; preds = %scalar.ph312.preheader, %scalar.ph312
  %indvars.iv.i109 = phi i64 [ %indvars.iv.next.i111.3, %scalar.ph312 ], [ 0, %scalar.ph312.preheader ] ; 7 uses
  %niter = phi i64 [ %niter.next.3, %scalar.ph312 ], [ 0, %scalar.ph312.preheader ]
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.i109
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !53 ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.i109
  store i64 %i.la, ptr %i.lb, align 8, !tbaa !53
  %gep.i110 = getelementptr [8 x i8], ptr %invariant.gep.i108, i64 %indvars.iv.i109
  store i64 %i.la, ptr %gep.i110, align 8, !tbaa !53
  %indvars.iv.next.i111 = or disjoint i64 %indvars.iv.i109, 1 ; 3 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.next.i111
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !53 ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.next.i111
  store i64 %i.ld, ptr %i.le, align 8, !tbaa !53
  %gep.i110.1 = getelementptr [8 x i8], ptr %invariant.gep.i108, i64 %indvars.iv.next.i111
  store i64 %i.ld, ptr %gep.i110.1, align 8, !tbaa !53
  %indvars.iv.next.i111.1 = or disjoint i64 %indvars.iv.i109, 2 ; 3 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.next.i111.1
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !53 ; 2 uses
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.next.i111.1
  store i64 %i.lg, ptr %i.lh, align 8, !tbaa !53
  %gep.i110.2 = getelementptr [8 x i8], ptr %invariant.gep.i108, i64 %indvars.iv.next.i111.1
  store i64 %i.lg, ptr %gep.i110.2, align 8, !tbaa !53
  %indvars.iv.next.i111.2 = or disjoint i64 %indvars.iv.i109, 3 ; 3 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.next.i111.2
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !53 ; 2 uses
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.next.i111.2
  store i64 %i.lj, ptr %i.lk, align 8, !tbaa !53
  %gep.i110.3 = getelementptr [8 x i8], ptr %invariant.gep.i108, i64 %indvars.iv.next.i111.2
  store i64 %i.lj, ptr %gep.i110.3, align 8, !tbaa !53
  %indvars.iv.next.i111.3 = add nuw nsw i64 %indvars.iv.i109, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i113.loopexit.unr-lcssa, label %scalar.ph312, !llvm.loop !172

._crit_edge.us.i113.loopexit.unr-lcssa:           ; preds = %scalar.ph312
  br i1 %lcmp.mod487.not, label %._crit_edge.us.i113, label %scalar.ph312.epil.preheader

scalar.ph312.epil.preheader:                      ; preds = %._crit_edge.us.i113.loopexit.unr-lcssa, %scalar.ph312.preheader
  %indvars.iv.i109.epil.init = phi i64 [ 0, %scalar.ph312.preheader ], [ %indvars.iv.next.i111.3, %._crit_edge.us.i113.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod488)
  br label %scalar.ph312.epil

scalar.ph312.epil:                                ; preds = %scalar.ph312.epil, %scalar.ph312.epil.preheader
  %indvars.iv.i109.epil = phi i64 [ %indvars.iv.next.i111.epil, %scalar.ph312.epil ], [ %indvars.iv.i109.epil.init, %scalar.ph312.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %scalar.ph312.epil ], [ 0, %scalar.ph312.epil.preheader ]
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.i109.epil
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !53 ; 2 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.i109.epil
  store i64 %i.lm, ptr %i.ln, align 8, !tbaa !53
  %gep.i110.epil = getelementptr [8 x i8], ptr %invariant.gep.i108, i64 %indvars.iv.i109.epil
  store i64 %i.lm, ptr %gep.i110.epil, align 8, !tbaa !53
  %indvars.iv.next.i111.epil = add nuw nsw i64 %indvars.iv.i109.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter486
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i113, label %scalar.ph312.epil, !llvm.loop !173

._crit_edge.us.i113:                              ; preds = %vector.body316, %._crit_edge.us.i113.loopexit.unr-lcssa, %scalar.ph312.epil
  %i.lo = getelementptr inbounds [8 x i8], ptr %.04350.us.i, i64 %i.km ; 2 uses
  %i.lp = getelementptr inbounds [8 x i8], ptr %.04251.us.i, i64 %i.km
  %i.lq = icmp ult ptr %i.lo, %i.kh
  br i1 %i.lq, label %.preheader.us.i107, label %.preheader.us.preheader.i118, !llvm.loop !1

.lr.ph.i126:                                      ; preds = %scalar.ph372.prol.loopexit, %scalar.ph372, %middle.block385
  %i.lr = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.iw
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !53 ; 4 uses
  %min.iters.check391 = icmp ult i32 %i.hm, 6
  %i.lt = sub i64 %i.ai, %i.ao
  %diff.check389 = icmp ugt i64 %i.lt, -32
  %or.cond474 = select i1 %min.iters.check391, i1 true, i1 %diff.check389
  br i1 %or.cond474, label %scalar.ph390.preheader, label %vector.ph392

vector.ph392:                                     ; preds = %.lr.ph.i126
  %n.vec393 = and i64 %wide.trip.count59.i, 2147483644 ; 3 uses
  %broadcast.splatinsert394 = insertelement <2 x i64> poison, i64 %i.ls, i64 0
  %broadcast.splat395 = shufflevector <2 x i64> %broadcast.splatinsert394, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert396 = insertelement <2 x i64> poison, i64 %i.iz, i64 0
  %broadcast.splat397 = shufflevector <2 x i64> %broadcast.splatinsert396, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body398

vector.body398:                                   ; preds = %vector.body398, %vector.ph392
  %index399 = phi i64 [ 0, %vector.ph392 ], [ %index.next402, %vector.body398 ] ; 3 uses
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index399 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %wide.load400 = load <2 x i64>, ptr %i.lu, align 8, !tbaa !53
  %wide.load401 = load <2 x i64>, ptr %i.lv, align 8, !tbaa !53
  %i.lw = and <2 x i64> %wide.load400, %broadcast.splat395 ; 2 uses
  %i.lx = and <2 x i64> %wide.load401, %broadcast.splat395 ; 2 uses
  %i.ly = lshr <2 x i64> %i.lw, %broadcast.splat397
  %i.lz = lshr <2 x i64> %i.lx, %broadcast.splat397
  %i.ma = or <2 x i64> %i.ly, %i.lw
  %i.mb = or <2 x i64> %i.lz, %i.lx
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index399 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  store <2 x i64> %i.ma, ptr %i.mc, align 8, !tbaa !53
  store <2 x i64> %i.mb, ptr %i.md, align 8, !tbaa !53
  %index.next402 = add nuw i64 %index399, 4       ; 2 uses
  %i.me = icmp eq i64 %index.next402, %n.vec393
  br i1 %i.me, label %middle.block403, label %vector.body398, !llvm.loop !174

middle.block403:                                  ; preds = %vector.body398
  %cmp.n404 = icmp eq i64 %n.vec393, %wide.trip.count59.i
  br i1 %cmp.n404, label %.lr.ph.i140, label %scalar.ph390.preheader

scalar.ph390.preheader:                           ; preds = %.lr.ph.i126, %middle.block403
  %indvars.iv58.i.ph = phi i64 [ 0, %.lr.ph.i126 ], [ %n.vec393, %middle.block403 ] ; 5 uses
  %xtraiter498 = and i64 %wide.trip.count59.i, 1
  %lcmp.mod499.not = icmp eq i64 %xtraiter498, 0
  br i1 %lcmp.mod499.not, label %scalar.ph390.prol.loopexit, label %scalar.ph390.prol

scalar.ph390.prol:                                ; preds = %scalar.ph390.preheader
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv58.i.ph
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !53
  %i.mh = and i64 %i.mg, %i.ls                    ; 2 uses
  %i.mi = lshr i64 %i.mh, %i.iz
  %i.mj = or i64 %i.mi, %i.mh
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv58.i.ph
  store i64 %i.mj, ptr %i.mk, align 8, !tbaa !53
  %indvars.iv.next59.i.prol = or disjoint i64 %indvars.iv58.i.ph, 1
  br label %scalar.ph390.prol.loopexit

scalar.ph390.prol.loopexit:                       ; preds = %scalar.ph390.prol, %scalar.ph390.preheader
  %indvars.iv58.i.unr = phi i64 [ %indvars.iv58.i.ph, %scalar.ph390.preheader ], [ %indvars.iv.next59.i.prol, %scalar.ph390.prol ]
  %i.ml = add nsw i64 %wide.trip.count59.i, -1
  %i.mm = icmp eq i64 %indvars.iv58.i.ph, %i.ml
  br i1 %i.mm, label %.lr.ph.i140, label %scalar.ph390

scalar.ph390:                                     ; preds = %scalar.ph390.prol.loopexit, %scalar.ph390
  %indvars.iv58.i = phi i64 [ %indvars.iv.next59.i.1, %scalar.ph390 ], [ %indvars.iv58.i.unr, %scalar.ph390.prol.loopexit ] ; 4 uses
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv58.i
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !53
  %i.mp = and i64 %i.mo, %i.ls                    ; 2 uses
  %i.mq = lshr i64 %i.mp, %i.iz
  %i.mr = or i64 %i.mq, %i.mp
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv58.i
  store i64 %i.mr, ptr %i.ms, align 8, !tbaa !53
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next59.i
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !53
  %i.mv = and i64 %i.mu, %i.ls                    ; 2 uses
  %i.mw = lshr i64 %i.mv, %i.iz
  %i.mx = or i64 %i.mw, %i.mv
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next59.i
  store i64 %i.mx, ptr %i.my, align 8, !tbaa !53
  %indvars.iv.next59.i.1 = add nuw nsw i64 %indvars.iv58.i, 2 ; 2 uses
  %exitcond62.not.i.1 = icmp eq i64 %indvars.iv.next59.i.1, %wide.trip.count59.i
  br i1 %exitcond62.not.i.1, label %.lr.ph.i140, label %scalar.ph390, !llvm.loop !175

.preheader.us.preheader.i118:                     ; preds = %._crit_edge.us.i113
  %i.mz = zext nneg i32 %i.hm to i64
  %.idx.i115 = shl nuw nsw i64 %i.mz, 3
  %i.na = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i115
  %i.nb = shl nsw i64 %i.kn, 3                    ; 2 uses
  %i.nc = sub i64 %i.ao, %i.ai                    ; 2 uses
  %min.iters.check331 = icmp slt i32 %i.kj, 8
  %diff.check325 = icmp ult i64 %i.nb, 32
  %i.nd = sub i64 %i.nb, %i.nc
  %diff.check326 = icmp ugt i64 %i.nd, -32
  %conflict.rdx327 = or i1 %diff.check325, %diff.check326
  %i.ne = add i64 %i.nc, -1
  %diff.check328 = icmp ult i64 %i.ne, 31
  %conflict.rdx329 = or i1 %conflict.rdx327, %diff.check328
end_hunk_3
