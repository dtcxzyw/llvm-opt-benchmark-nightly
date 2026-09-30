Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaSim2?download=true
inline.NumInlined: 137
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Gia_ManSimSimulateEquiv:bb.a
.lr.ph.i70.i.preheader:                           ; preds = %.preheader1.i68.i
  br i1 %min.iters.check198, label %.lr.ph.i70.i.preheader281, label %vector.memcheck195

vector.memcheck195:                               ; preds = %.lr.ph.i70.i.preheader
  %i.jc = sub nsw i64 %i.iz, %i.it
  %i.jd = shl nsw i64 %i.jc, 2
  %i.je = add nsw i64 %i.jd, -1
  %diff.check196 = icmp ult i64 %i.je, 31
  br i1 %diff.check196, label %.lr.ph.i70.i.preheader281, label %vector.body201

vector.body201:                                   ; preds = %vector.memcheck195, %vector.body201
  %index202 = phi i64 [ %index.next205, %vector.body201 ], [ 0, %vector.memcheck195 ] ; 2 uses
  %i.jf = xor i64 %index202, -1
  %i.jg = add i64 %i.jf, %i.bf                    ; 2 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.jg ; 2 uses
  %i.ji = getelementptr inbounds i8, ptr %i.jh, i64 -12
  %i.jj = getelementptr inbounds i8, ptr %i.jh, i64 -28
  %wide.load203 = load <4 x i32>, ptr %i.ji, align 4, !tbaa !53
  %wide.load204 = load <4 x i32>, ptr %i.jj, align 4, !tbaa !53
  %i.jk = xor <4 x i32> %wide.load203, splat (i32 -1)
  %i.jl = xor <4 x i32> %wide.load204, splat (i32 -1)
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.jg ; 2 uses
  %i.jn = getelementptr inbounds i8, ptr %i.jm, i64 -12
  %i.jo = getelementptr inbounds i8, ptr %i.jm, i64 -28
  store <4 x i32> %i.jk, ptr %i.jn, align 4, !tbaa !53
  store <4 x i32> %i.jl, ptr %i.jo, align 4, !tbaa !53
  %index.next205 = add nuw i64 %index202, 8       ; 2 uses
  %i.jp = icmp eq i64 %index.next205, %n.vec200
  br i1 %i.jp, label %middle.block206, label %vector.body201, !llvm.loop !101

middle.block206:                                  ; preds = %vector.body201
  br i1 %cmp.n207, label %Gia_Sim2SimulateCo.exit.i, label %.lr.ph.i70.i.preheader281

.lr.ph.i70.i.preheader281:                        ; preds = %vector.memcheck195, %.lr.ph.i70.i.preheader, %middle.block206
  %indvars.iv.i71.i.ph = phi i64 [ %i.bf, %vector.memcheck195 ], [ %i.bf, %.lr.ph.i70.i.preheader ], [ %i.bv, %middle.block206 ]
  br label %.lr.ph.i70.i

.preheader.i73.i:                                 ; preds = %bb.m
  br i1 %i.bd, label %.lr.ph5.i.i.preheader, label %Gia_Sim2SimulateCo.exit.i

.lr.ph5.i.i.preheader:                            ; preds = %.preheader.i73.i
  br i1 %min.iters.check184, label %.lr.ph5.i.i.preheader280, label %vector.memcheck181

vector.memcheck181:                               ; preds = %.lr.ph5.i.i.preheader
  %i.jq = sub nsw i64 %i.iz, %i.it
  %i.jr = shl nsw i64 %i.jq, 2
  %i.js = add nsw i64 %i.jr, -1
  %diff.check182 = icmp ult i64 %i.js, 31
  br i1 %diff.check182, label %.lr.ph5.i.i.preheader280, label %vector.body187

vector.body187:                                   ; preds = %vector.memcheck181, %vector.body187
  %index188 = phi i64 [ %index.next191, %vector.body187 ], [ 0, %vector.memcheck181 ] ; 2 uses
  %i.jt = xor i64 %index188, -1
  %i.ju = add i64 %i.jt, %i.bf                    ; 2 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.ju ; 2 uses
  %i.jw = getelementptr inbounds i8, ptr %i.jv, i64 -12
  %i.jx = getelementptr inbounds i8, ptr %i.jv, i64 -28
  %wide.load189 = load <4 x i32>, ptr %i.jw, align 4, !tbaa !53
  %wide.load190 = load <4 x i32>, ptr %i.jx, align 4, !tbaa !53
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.ju ; 2 uses
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 -12
  %i.ka = getelementptr inbounds i8, ptr %i.jy, i64 -28
  store <4 x i32> %wide.load189, ptr %i.jz, align 4, !tbaa !53
  store <4 x i32> %wide.load190, ptr %i.ka, align 4, !tbaa !53
  %index.next191 = add nuw i64 %index188, 8       ; 2 uses
  %i.kb = icmp eq i64 %index.next191, %n.vec186
  br i1 %i.kb, label %middle.block192, label %vector.body187, !llvm.loop !102

middle.block192:                                  ; preds = %vector.body187
  br i1 %cmp.n193, label %Gia_Sim2SimulateCo.exit.i, label %.lr.ph5.i.i.preheader280

.lr.ph5.i.i.preheader280:                         ; preds = %vector.memcheck181, %.lr.ph5.i.i.preheader, %middle.block192
  %indvars.iv8.i.i.ph = phi i64 [ %i.bf, %vector.memcheck181 ], [ %i.bf, %.lr.ph5.i.i.preheader ], [ %i.bw, %middle.block192 ]
  br label %.lr.ph5.i.i

.lr.ph.i70.i:                                     ; preds = %.lr.ph.i70.i.preheader281, %.lr.ph.i70.i
  %indvars.iv.i71.i = phi i64 [ %indvars.iv.next.i72.i, %.lr.ph.i70.i ], [ %indvars.iv.i71.i.ph, %.lr.ph.i70.i.preheader281 ] ; 2 uses
  %indvars.iv.next.i72.i = add nsw i64 %indvars.iv.i71.i, -1 ; 3 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.next.i72.i
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !53
  %i.ke = xor i32 %i.kd, -1
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %indvars.iv.next.i72.i
  store i32 %i.ke, ptr %i.kf, align 4, !tbaa !53
  %i.kg = icmp samesign ugt i64 %indvars.iv.i71.i, 1
  br i1 %i.kg, label %.lr.ph.i70.i, label %Gia_Sim2SimulateCo.exit.i, !llvm.loop !103

.lr.ph5.i.i:                                      ; preds = %.lr.ph5.i.i.preheader280, %.lr.ph5.i.i
  %indvars.iv8.i.i = phi i64 [ %indvars.iv.next9.i.i, %.lr.ph5.i.i ], [ %indvars.iv8.i.i.ph, %.lr.ph5.i.i.preheader280 ] ; 2 uses
  %indvars.iv.next9.i.i = add nsw i64 %indvars.iv8.i.i, -1 ; 3 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.next9.i.i
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !53
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %indvars.iv.next9.i.i
  store i32 %i.ki, ptr %i.kj, align 4, !tbaa !53
  %i.kk = icmp samesign ugt i64 %indvars.iv8.i.i, 1
  br i1 %i.kk, label %.lr.ph5.i.i, label %Gia_Sim2SimulateCo.exit.i, !llvm.loop !104

Gia_Sim2SimulateCo.exit.i:                        ; preds = %.lr.ph.i70.i, %.lr.ph5.i.i, %middle.block206, %middle.block192, %.preheader.i73.i, %.preheader1.i68.i
  %indvars.iv.next102.i = add nuw nsw i64 %indvars.iv101.i, 1 ; 2 uses
  %.val36.i = load i32, ptr %i.ik, align 4, !tbaa !43
  %i.kl = sext i32 %.val36.i to i64
  %i.km = icmp slt i64 %indvars.iv.next102.i, %i.kl
  br i1 %i.km, label %bb.m, label %Gia_Sim2SimulateRound.exit, !llvm.loop !105

Gia_Sim2SimulateRound.exit:                       ; preds = %Gia_Sim2SimulateCo.exit.i, %.critedge2.i, %.lr.ph91.i
  %i.kn = load i32, ptr %i.bk, align 4, !tbaa !47
  %.not60 = icmp eq i32 %i.kn, 0
  br i1 %.not60, label %bb.s, label %bb.n

bb.n:                                             ; preds = %Gia_Sim2SimulateRound.exit
  %i.ko = add nuw nsw i32 %.1137, 1
  %i.kp = load i32, ptr %i.ay, align 4, !tbaa !117
  %i.kq = load i32, ptr %i.i, align 4, !tbaa !115
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.2, i32 noundef %i.ko, i32 noundef %i.kp, i32 noundef %i.kq)
  %i.kr = load ptr, ptr %i.bl, align 8, !tbaa !54
  %.not61 = icmp eq ptr %i.kr, null
  br i1 %.not61, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ks = load ptr, ptr %i.bm, align 8, !tbaa !55
  %.not62 = icmp eq ptr %i.ks, null
  br i1 %.not62, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.kt = call i32 @Gia_ManEquivCountLitsAll(ptr noundef nonnull %0) #19
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.3, i32 noundef %i.kt)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ku = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #19
  %i.kv = icmp slt i32 %i.ku, 0
  br i1 %i.kv, label %Abc_Clock.exit79, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.kw = load i64, ptr %4, align 8, !tbaa !113
  %i.kx = mul nsw i64 %i.kw, 1000000
  %i.ky = load i64, ptr %i.bn, align 8, !tbaa !114
  %i.kz = sdiv i64 %i.ky, 1000
  %i.la = add nsw i64 %i.kz, %i.kx
  %i.lb = sitofp i64 %i.la to double
  br label %Abc_Clock.exit79

Abc_Clock.exit79:                                 ; preds = %bb.q, %bb.r
  %.0.i78 = phi double [ %i.lb, %bb.r ], [ -1.000000e+00, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.lc = fsub double %.0.i78, %i.bo
  %i.ld = fdiv double %i.lc, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.4, double noundef %i.ld)
  br label %bb.s

bb.s:                                             ; preds = %Abc_Clock.exit79, %Gia_Sim2SimulateRound.exit
  %i.le = load i32, ptr %i.bp, align 4, !tbaa !120
  %.not63 = icmp eq i32 %i.le, 0
  br i1 %.not63, label %Gia_Sim2CheckPos.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val20.i = load i32, ptr %i.aa, align 8, !tbaa !58
  %.val21.i = load ptr, ptr %i.bj, align 8, !tbaa !119 ; 2 uses
  %i.lf = getelementptr i8, ptr %.val21.i, i64 4
  %.val21.val.i = load i32, ptr %i.lf, align 4, !tbaa !43
  %i.lg = sub nsw i32 %.val21.val.i, %.val20.i    ; 2 uses
  %i.lh = icmp sgt i32 %i.lg, 0
  br i1 %i.lh, label %.lr.ph.i81, label %Gia_Sim2CheckPos.exit.thread

.lr.ph.i81:                                       ; preds = %bb.t
  %.val18.i = load ptr, ptr %i.be, align 8, !tbaa !48 ; 2 uses
  %.not.i82 = icmp eq ptr %.val18.i, null
  br i1 %.not.i82, label %Gia_Sim2CheckPos.exit.thread, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i81
  %i.li = getelementptr i8, ptr %.val21.i, i64 8
  %.val19.val.i = load ptr, ptr %i.li, align 8, !tbaa !17
  %.val16.i = load ptr, ptr %i.bc, align 8, !tbaa !21
  br i1 %i.bd, label %.lr.ph.preheader.i.preheader.i, label %Gia_Sim2CheckPos.exit.thread

.lr.ph.preheader.i.preheader.i:                   ; preds = %.lr.ph.split.i
  %wide.trip.count.i = zext nneg i32 %i.lg to i64
  br label %.lr.ph.preheader.i.i84

.lr.ph.preheader.i.i84:                           ; preds = %Gia_Sim2InfoIsZero.exit.thread.loopexit.i, %.lr.ph.preheader.i.preheader.i
  %indvars.iv.i85 = phi i64 [ 0, %.lr.ph.preheader.i.preheader.i ], [ %indvars.iv.next.i90, %Gia_Sim2InfoIsZero.exit.thread.loopexit.i ] ; 3 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %.val19.val.i, i64 %indvars.iv.i85
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !53
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds [12 x i8], ptr %.val18.i, i64 %i.ll
  %i.ln = getelementptr i8, ptr %i.lm, i64 8
  %.val17.i = load i32, ptr %i.ln, align 4, !tbaa !50
  %i.lo = mul nsw i32 %.val17.i, %.val39.i
  %i.lp = sext i32 %i.lo to i64
  %i.lq = getelementptr inbounds [4 x i8], ptr %.val16.i, i64 %i.lp
  br label %.lr.ph.i.i86

.lr.ph.i.i86:                                     ; preds = %bb.az, %.lr.ph.preheader.i.i84
  %indvars.iv.i.i87 = phi i64 [ 0, %.lr.ph.preheader.i.i84 ], [ %indvars.iv.next.i.i89, %bb.az ] ; 3 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %indvars.iv.i.i87
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !53 ; 32 uses
  %.not.i.i88 = icmp eq i32 %i.ls, 0
  br i1 %.not.i.i88, label %bb.az, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i86
  %7 = trunc nuw nsw i64 %indvars.iv.i85 to i32   ; 3 uses
  %i.lt = trunc nuw nsw i64 %indvars.iv.i.i87 to i32
  %i.lu = shl nuw nsw i32 %i.lt, 5
  %i.lv = and i32 %i.ls, 1
  %.not.i.i.i = icmp eq i32 %i.lv, 0
  br i1 %.not.i.i.i, label %bb.v, label %bb.ba

bb.v:                                             ; preds = %bb.u
  %i.lw = and i32 %i.ls, 2
  %.not.1.i.i.i = icmp eq i32 %i.lw, 0
  br i1 %.not.1.i.i.i, label %bb.w, label %bb.ba

bb.w:                                             ; preds = %bb.v
  %i.lx = and i32 %i.ls, 4
  %.not.2.i.i.i = icmp eq i32 %i.lx, 0
  br i1 %.not.2.i.i.i, label %bb.x, label %bb.ba

bb.x:                                             ; preds = %bb.w
  %i.ly = and i32 %i.ls, 8
  %.not.3.i.i.i = icmp eq i32 %i.ly, 0
  br i1 %.not.3.i.i.i, label %bb.y, label %bb.ba

bb.y:                                             ; preds = %bb.x
  %i.lz = and i32 %i.ls, 16
  %.not.4.i.i.i = icmp eq i32 %i.lz, 0
  br i1 %.not.4.i.i.i, label %bb.z, label %bb.ba

bb.z:                                             ; preds = %bb.y
  %i.ma = and i32 %i.ls, 32
  %.not.5.i.i.i = icmp eq i32 %i.ma, 0
  br i1 %.not.5.i.i.i, label %bb.aa, label %bb.ba

bb.aa:                                            ; preds = %bb.z
  %i.mb = and i32 %i.ls, 64
  %.not.6.i.i.i = icmp eq i32 %i.mb, 0
  br i1 %.not.6.i.i.i, label %bb.ab, label %bb.ba

bb.ab:                                            ; preds = %bb.aa
  %i.mc = and i32 %i.ls, 128
  %.not.7.i.i.i = icmp eq i32 %i.mc, 0
  br i1 %.not.7.i.i.i, label %bb.ac, label %bb.ba

bb.ac:                                            ; preds = %bb.ab
  %i.md = and i32 %i.ls, 256
  %.not.8.i.i.i = icmp eq i32 %i.md, 0
  br i1 %.not.8.i.i.i, label %bb.ad, label %bb.ba

bb.ad:                                            ; preds = %bb.ac
  %i.me = and i32 %i.ls, 512
  %.not.9.i.i.i = icmp eq i32 %i.me, 0
  br i1 %.not.9.i.i.i, label %bb.ae, label %bb.ba

bb.ae:                                            ; preds = %bb.ad
  %i.mf = and i32 %i.ls, 1024
  %.not.10.i.i.i = icmp eq i32 %i.mf, 0
  br i1 %.not.10.i.i.i, label %bb.af, label %bb.ba

bb.af:                                            ; preds = %bb.ae
  %i.mg = and i32 %i.ls, 2048
  %.not.11.i.i.i = icmp eq i32 %i.mg, 0
  br i1 %.not.11.i.i.i, label %bb.ag, label %bb.ba

bb.ag:                                            ; preds = %bb.af
  %i.mh = and i32 %i.ls, 4096
  %.not.12.i.i.i = icmp eq i32 %i.mh, 0
  br i1 %.not.12.i.i.i, label %bb.ah, label %bb.ba

bb.ah:                                            ; preds = %bb.ag
  %i.mi = and i32 %i.ls, 8192
  %.not.13.i.i.i = icmp eq i32 %i.mi, 0
  br i1 %.not.13.i.i.i, label %bb.ai, label %bb.ba

bb.ai:                                            ; preds = %bb.ah
  %i.mj = and i32 %i.ls, 16384
  %.not.14.i.i.i = icmp eq i32 %i.mj, 0
  br i1 %.not.14.i.i.i, label %bb.aj, label %bb.ba

bb.aj:                                            ; preds = %bb.ai
  %i.mk = and i32 %i.ls, 32768
  %.not.15.i.i.i = icmp eq i32 %i.mk, 0
  br i1 %.not.15.i.i.i, label %bb.ak, label %bb.ba

bb.ak:                                            ; preds = %bb.aj
  %i.ml = and i32 %i.ls, 65536
  %.not.16.i.i.i = icmp eq i32 %i.ml, 0
  br i1 %.not.16.i.i.i, label %bb.al, label %bb.ba

bb.al:                                            ; preds = %bb.ak
  %i.mm = and i32 %i.ls, 131072
  %.not.17.i.i.i = icmp eq i32 %i.mm, 0
  br i1 %.not.17.i.i.i, label %bb.am, label %bb.ba

bb.am:                                            ; preds = %bb.al
  %i.mn = and i32 %i.ls, 262144
  %.not.18.i.i.i = icmp eq i32 %i.mn, 0
  br i1 %.not.18.i.i.i, label %bb.an, label %bb.ba

bb.an:                                            ; preds = %bb.am
  %i.mo = and i32 %i.ls, 524288
  %.not.19.i.i.i = icmp eq i32 %i.mo, 0
  br i1 %.not.19.i.i.i, label %bb.ao, label %bb.ba

bb.ao:                                            ; preds = %bb.an
  %i.mp = and i32 %i.ls, 1048576
  %.not.20.i.i.i = icmp eq i32 %i.mp, 0
  br i1 %.not.20.i.i.i, label %bb.ap, label %bb.ba

bb.ap:                                            ; preds = %bb.ao
  %i.mq = and i32 %i.ls, 2097152
  %.not.21.i.i.i = icmp eq i32 %i.mq, 0
  br i1 %.not.21.i.i.i, label %bb.aq, label %bb.ba

bb.aq:                                            ; preds = %bb.ap
  %i.mr = and i32 %i.ls, 4194304
  %.not.22.i.i.i = icmp eq i32 %i.mr, 0
  br i1 %.not.22.i.i.i, label %bb.ar, label %bb.ba

bb.ar:                                            ; preds = %bb.aq
  %i.ms = and i32 %i.ls, 8388608
  %.not.23.i.i.i = icmp eq i32 %i.ms, 0
  br i1 %.not.23.i.i.i, label %bb.as, label %bb.ba

bb.as:                                            ; preds = %bb.ar
  %i.mt = and i32 %i.ls, 16777216
  %.not.24.i.i.i = icmp eq i32 %i.mt, 0
  br i1 %.not.24.i.i.i, label %bb.at, label %bb.ba

bb.at:                                            ; preds = %bb.as
  %i.mu = and i32 %i.ls, 33554432
  %.not.25.i.i.i = icmp eq i32 %i.mu, 0
  br i1 %.not.25.i.i.i, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %bb.at
  %i.mv = and i32 %i.ls, 67108864
  %.not.26.i.i.i = icmp eq i32 %i.mv, 0
  br i1 %.not.26.i.i.i, label %bb.av, label %bb.ba

bb.av:                                            ; preds = %bb.au
  %i.mw = and i32 %i.ls, 134217728
  %.not.27.i.i.i = icmp eq i32 %i.mw, 0
  br i1 %.not.27.i.i.i, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %bb.av
  %i.mx = and i32 %i.ls, 268435456
  %.not.28.i.i.i = icmp eq i32 %i.mx, 0
  br i1 %.not.28.i.i.i, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.my = and i32 %i.ls, 536870912
  %.not.29.i.i.i = icmp eq i32 %i.my, 0
  br i1 %.not.29.i.i.i, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %8 = and i32 %i.ls, 1073741824
  %.not.30.i.i.i = icmp eq i32 %8, 0
  %spec.select.i.i.i = select i1 %.not.30.i.i.i, i32 31, i32 30
  br label %bb.ba

bb.az:                                            ; preds = %.lr.ph.i.i86
  %indvars.iv.next.i.i89 = add nuw nsw i64 %indvars.iv.i.i87, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i89, %i.bf
  br i1 %exitcond.not.i.i, label %Gia_Sim2InfoIsZero.exit.thread.loopexit.i, label %.lr.ph.i.i86, !llvm.loop !106

Gia_Sim2InfoIsZero.exit.thread.loopexit.i:        ; preds = %bb.az
  %indvars.iv.next.i90 = add nuw nsw i64 %indvars.iv.i85, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i90, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Gia_Sim2CheckPos.exit.thread, label %.lr.ph.preheader.i.i84, !llvm.loop !107

bb.ba:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %.06.i.i.i = phi i32 [ 0, %bb.u ], [ 16, %bb.ak ], [ 1, %bb.v ], [ 24, %bb.as ], [ 2, %bb.w ], [ 20, %bb.ao ], [ 3, %bb.x ], [ %spec.select.i.i.i, %bb.ay ], [ 4, %bb.y ], [ 17, %bb.al ], [ 5, %bb.z ], [ 29, %bb.ax ], [ 6, %bb.aa ], [ 23, %bb.ar ], [ 7, %bb.ab ], [ 28, %bb.aw ], [ 8, %bb.ac ], [ 18, %bb.am ], [ 9, %bb.ad ], [ 27, %bb.av ], [ 10, %bb.ae ], [ 21, %bb.ap ], [ 11, %bb.af ], [ 26, %bb.au ], [ 12, %bb.ag ], [ 19, %bb.an ], [ 13, %bb.ah ], [ 25, %bb.at ], [ 14, %bb.ai ], [ 22, %bb.aq ], [ 15, %bb.aj ]
  %9 = or disjoint i32 %.06.i.i.i, %i.lu
  call void @Gia_ManResetRandom(ptr noundef nonnull %1) #19
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %7, ptr %i.mz, align 4, !tbaa !121
  %i.na = call ptr @Gia_Sim2GenerateCounter(ptr noundef nonnull %0, i32 noundef %.1137, i32 noundef %7, i32 noundef %.val39.i, i32 noundef %9)
  store ptr %i.na, ptr %i.w, align 8, !tbaa !116
  %i.nb = load ptr, ptr %0, align 8, !tbaa !122
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.5, i32 noundef %7, ptr noundef %i.nb, i32 noundef %.1137)
  %i.nc = load ptr, ptr %i.w, align 8, !tbaa !116
  %i.nd = call i32 @Gia_ManVerifyCex(ptr noundef nonnull %0, ptr noundef %i.nc, i32 noundef 0) #19
  %.not67 = icmp eq i32 %i.nd, 0
  br i1 %.not67, label %bb.bb, label %.loopexit

bb.bb:                                            ; preds = %bb.ba
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.6)
  br label %.loopexit

Gia_Sim2CheckPos.exit.thread:                     ; preds = %Gia_Sim2InfoIsZero.exit.thread.loopexit.i, %bb.t, %.lr.ph.split.i, %.lr.ph.i81, %bb.s
  %i.ne = load ptr, ptr %i.bl, align 8, !tbaa !54
  %.not65 = icmp eq ptr %i.ne, null
  br i1 %.not65, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %Gia_Sim2CheckPos.exit.thread
  %i.nf = load ptr, ptr %i.bm, align 8, !tbaa !55
  %.not66 = icmp eq ptr %i.nf, null
  br i1 %.not66, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @Gia_Sim2InfoRefineEquivs(ptr noundef nonnull %i.y)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %Gia_Sim2CheckPos.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.ng = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #19
  %i.nh = icmp slt i32 %i.ng, 0
  br i1 %i.nh, label %Abc_Clock.exit92, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ni = load i64, ptr %3, align 8, !tbaa !113
  %i.nj = mul nsw i64 %i.ni, 1000000
  %i.nk = load i64, ptr %i.bq, align 8, !tbaa !114
  %i.nl = sdiv i64 %i.nk, 1000
  %i.nm = add nsw i64 %i.nl, %i.nj
  br label %Abc_Clock.exit92

Abc_Clock.exit92:                                 ; preds = %bb.be, %bb.bf
  %.0.i91 = phi i64 [ %i.nm, %bb.bf ], [ -1, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.nn = icmp sgt i64 %.0.i91, %i.v
  br i1 %i.nn, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %Abc_Clock.exit92
  %i.no = add nuw nsw i32 %.1137, 1
  br label %.loopexit

bb.bh:                                            ; preds = %Abc_Clock.exit92
  %i.np = load i32, ptr %i.ay, align 4, !tbaa !117 ; 5 uses
  %i.nq = add nsw i32 %i.np, -1
  %i.nr = icmp slt i32 %.1137, %i.nq
  br i1 %i.nr, label %bb.bi, label %Gia_Sim2InfoTransfer.exit

bb.bi:                                            ; preds = %bb.bh
  %.val2133.i = load i32, ptr %i.aa, align 8, !tbaa !58 ; 2 uses
  %i.ns = icmp sgt i32 %.val2133.i, 0
  br i1 %i.ns, label %.lr.ph.i94, label %Gia_Sim2InfoTransfer.exit

.lr.ph.i94:                                       ; preds = %bb.bi
  %.val31.i = load ptr, ptr %i.bj, align 8, !tbaa !119 ; 2 uses
  %i.nt = getelementptr i8, ptr %.val31.i, i64 4
  %.val28.i = load ptr, ptr %i.be, align 8, !tbaa !48 ; 3 uses
  %i.nu = getelementptr i8, ptr %.val31.i, i64 8
  %.val29.val.i = load ptr, ptr %i.nu, align 8, !tbaa !17
  %.not.i95 = icmp eq ptr %.val28.i, null
  br i1 %.not.i95, label %Gia_Sim2InfoTransfer.exit, label %.lr.ph.split.i96

.lr.ph.split.i96:                                 ; preds = %.lr.ph.i94
  %.val23.i = load ptr, ptr %i.bh, align 8, !tbaa !59 ; 2 uses
  %i.nv = getelementptr i8, ptr %.val23.i, i64 8
  %.val25.val.i = load ptr, ptr %i.nv, align 8, !tbaa !17
  %i.nw = getelementptr i8, ptr %.val23.i, i64 4
  %.val20.i97 = load ptr, ptr %i.bc, align 8, !tbaa !21 ; 2 uses
  br i1 %i.bd, label %.lr.ph.split.split.i, label %Gia_Sim2InfoTransfer.exit

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i96, %Gia_Sim2InfoCopy.exit.loopexit.i
  %.val2139.i = phi i32 [ %.val21.pre.i, %Gia_Sim2InfoCopy.exit.loopexit.i ], [ %.val2133.i, %.lr.ph.split.i96 ]
  %.035.i = phi i32 [ %i.pi, %Gia_Sim2InfoCopy.exit.loopexit.i ], [ 0, %.lr.ph.split.i96 ] ; 2 uses
  %.val31.val.i = load i32, ptr %i.nt, align 4, !tbaa !43
  %i.nx = sub i32 %.035.i, %.val2139.i            ; 2 uses
  %i.ny = add i32 %i.nx, %.val31.val.i
  %i.nz = sext i32 %i.ny to i64
  %i.oa = getelementptr inbounds [4 x i8], ptr %.val29.val.i, i64 %i.nz
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !53
  %i.oc = sext i32 %i.ob to i64
  %i.od = getelementptr inbounds [12 x i8], ptr %.val28.i, i64 %i.oc
  %.val23.val.i = load i32, ptr %i.nw, align 4, !tbaa !43
  %i.oe = add i32 %.val23.val.i, %i.nx
  %i.of = sext i32 %i.oe to i64
  %i.og = getelementptr inbounds [4 x i8], ptr %.val25.val.i, i64 %i.of
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !53
  %i.oi = sext i32 %i.oh to i64
  %i.oj = getelementptr inbounds [12 x i8], ptr %.val28.i, i64 %i.oi
  %i.ok = getelementptr i8, ptr %i.oj, i64 8
  %.val27.i = load i32, ptr %i.ok, align 4, !tbaa !50
  %i.ol = mul nsw i32 %.val27.i, %.val39.i
  %i.om = sext i32 %i.ol to i64                   ; 2 uses
  %i.on = getelementptr inbounds [4 x i8], ptr %.val20.i97, i64 %i.om ; 2 uses
  %i.oo = getelementptr i8, ptr %i.od, i64 8
  %.val26.i = load i32, ptr %i.oo, align 4, !tbaa !50
  %i.op = mul nsw i32 %.val26.i, %.val39.i
  %i.oq = sext i32 %i.op to i64                   ; 2 uses
  %i.or = getelementptr inbounds [4 x i8], ptr %.val20.i97, i64 %i.oq ; 2 uses
  br i1 %min.iters.check, label %.lr.ph.i.i100.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.split.i
  %i.os = sub nsw i64 %i.oq, %i.om
  %i.ot = shl nsw i64 %i.os, 2
  %i.ou = add nsw i64 %i.ot, -1
  %diff.check = icmp ult i64 %i.ou, 31
  br i1 %diff.check, label %.lr.ph.i.i100.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.ov = xor i64 %index, -1
  %i.ow = add i64 %i.ov, %i.bf                    ; 2 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %i.ow ; 2 uses
  %i.oy = getelementptr inbounds i8, ptr %i.ox, i64 -12
  %i.oz = getelementptr inbounds i8, ptr %i.ox, i64 -28
  %wide.load = load <4 x i32>, ptr %i.oy, align 4, !tbaa !53
  %wide.load180 = load <4 x i32>, ptr %i.oz, align 4, !tbaa !53
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.ow ; 2 uses
  %i.pb = getelementptr inbounds i8, ptr %i.pa, i64 -12
  %i.pc = getelementptr inbounds i8, ptr %i.pa, i64 -28
  store <4 x i32> %wide.load, ptr %i.pb, align 4, !tbaa !53
  store <4 x i32> %wide.load180, ptr %i.pc, align 4, !tbaa !53
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.pd = icmp eq i64 %index.next, %n.vec
  br i1 %i.pd, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %Gia_Sim2InfoCopy.exit.loopexit.i, label %.lr.ph.i.i100.preheader

.lr.ph.i.i100.preheader:                          ; preds = %vector.memcheck, %.lr.ph.split.split.i, %middle.block
  %indvars.iv.i.i101.ph = phi i64 [ %i.bf, %vector.memcheck ], [ %i.bf, %.lr.ph.split.split.i ], [ %i.bx, %middle.block ]
  br label %.lr.ph.i.i100

.lr.ph.i.i100:                                    ; preds = %.lr.ph.i.i100.preheader, %.lr.ph.i.i100
  %indvars.iv.i.i101 = phi i64 [ %indvars.iv.next.i.i102, %.lr.ph.i.i100 ], [ %indvars.iv.i.i101.ph, %.lr.ph.i.i100.preheader ] ; 2 uses
  %indvars.iv.next.i.i102 = add nsw i64 %indvars.iv.i.i101, -1 ; 3 uses
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %indvars.iv.next.i.i102
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !53
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %indvars.iv.next.i.i102
  store i32 %i.pf, ptr %i.pg, align 4, !tbaa !53
  %i.ph = icmp samesign ugt i64 %indvars.iv.i.i101, 1
  br i1 %i.ph, label %.lr.ph.i.i100, label %Gia_Sim2InfoCopy.exit.loopexit.i, !llvm.loop !109

Gia_Sim2InfoCopy.exit.loopexit.i:                 ; preds = %.lr.ph.i.i100, %middle.block
  %.val21.pre.i = load i32, ptr %i.aa, align 8, !tbaa !58 ; 2 uses
  %i.pi = add nuw nsw i32 %.035.i, 1              ; 2 uses
  %i.pj = icmp slt i32 %i.pi, %.val21.pre.i
  br i1 %i.pj, label %.lr.ph.split.split.i, label %Gia_Sim2InfoTransfer.exit.loopexit, !llvm.loop !110

Gia_Sim2InfoTransfer.exit.loopexit:               ; preds = %Gia_Sim2InfoCopy.exit.loopexit.i
  %.pre = load i32, ptr %i.ay, align 4, !tbaa !117
  br label %Gia_Sim2InfoTransfer.exit

Gia_Sim2InfoTransfer.exit:                        ; preds = %Gia_Sim2InfoTransfer.exit.loopexit, %.lr.ph.split.i96, %.lr.ph.i94, %bb.bi, %bb.bh
  %i.pk = phi i32 [ %.pre, %Gia_Sim2InfoTransfer.exit.loopexit ], [ %i.np, %.lr.ph.split.i96 ], [ %i.np, %.lr.ph.i94 ], [ %i.np, %bb.bi ], [ %i.np, %bb.bh ]
  %i.pl = add nuw nsw i32 %.1137, 1               ; 3 uses
  %i.pm = icmp slt i32 %i.pl, %i.pk
  br i1 %i.pm, label %bb.h, label %.loopexit, !llvm.loop !111

.loopexit:                                        ; preds = %Gia_Sim2InfoTransfer.exit, %.critedge, %bb.bb, %bb.ba, %bb.bg
  %.2 = phi i32 [ %.1137, %bb.bb ], [ %i.no, %bb.bg ], [ %.1137, %bb.ba ], [ 0, %.critedge ], [ %i.pl, %Gia_Sim2InfoTransfer.exit ]
  %.0 = phi i32 [ 1, %bb.bb ], [ 0, %bb.bg ], [ 1, %bb.ba ], [ 0, %.critedge ], [ 0, %Gia_Sim2InfoTransfer.exit ]
  call void @Gia_Sim2Delete(ptr noundef nonnull %i.y)
  %i.pn = load ptr, ptr %i.w, align 8, !tbaa !116
  %i.po = icmp eq ptr %i.pn, null
  br i1 %i.po, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.loopexit
  %i.pp = load i32, ptr %1, align 4, !tbaa !24
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.7, i32 noundef %.2, i32 noundef %i.pp)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.pq = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #19
  %i.pr = icmp slt i32 %i.pq, 0
  br i1 %i.pr, label %Abc_Clock.exit104, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ps = load i64, ptr %2, align 8, !tbaa !113
  %i.pt = mul nsw i64 %i.ps, 1000000
  %i.pu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.pv = load i64, ptr %i.pu, align 8, !tbaa !114
  %i.pw = sdiv i64 %i.pv, 1000
  %i.px = add nsw i64 %i.pw, %i.pt
  br label %Abc_Clock.exit104

Abc_Clock.exit104:                                ; preds = %bb.bk, %bb.bl
  %.0.i103 = phi i64 [ %i.px, %bb.bl ], [ -1, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.py = sub nsw i64 %.0.i103, %.0.i
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8)
  %i.pz = sitofp i64 %i.py to double
  %i.qa = fdiv double %i.pz, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.12, double noundef %i.qa)
  ret i32 %.0
end_hunk_0
