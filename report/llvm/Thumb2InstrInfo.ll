Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Thumb2InstrInfo?download=true
inline.NumInlined: 936
inline.NumDeleted: 485
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4llvm19rewriteT2FrameIndexERNS_12MachineInstrEjNS_8RegisterERiRKNS_16ARMBaseInstrInfoEPKNS_18TargetRegisterInfoE:bb.a
  %i.fl = add nsw i32 %spec.select, -21
  %or.cond17 = icmp ult i32 %i.fl, 3
  br i1 %or.cond17, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fm = add i32 %1, 1
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !213 ; 2 uses
  %i.fp = zext i32 %i.fm to i64                   ; 2 uses
  %i.fq = getelementptr inbounds nuw [32 x i8], ptr %i.fo, i64 %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !214
  %i.ft = load i32, ptr %3, align 4, !tbaa !274
  %i.fu = trunc i64 %i.fs to i32
  %i.fv = add i32 %i.ft, %i.fu                    ; 2 uses
  store i32 %i.fv, ptr %3, align 4, !tbaa !274
  %switch.selectcmp = icmp eq i32 %spec.select, 22
  %switch.select = select i1 %switch.selectcmp, i32 8, i32 7
  %switch.selectcmp260 = icmp eq i32 %spec.select, 21
  %switch.select261 = select i1 %switch.selectcmp260, i32 9, i32 %switch.select
  br label %.thread298

bb.af:                                            ; preds = %bb.ad
  %i.fw = icmp eq i32 %spec.select, 17
  br i1 %i.fw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fx = add i32 %1, 1
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !213 ; 2 uses
  %i.ga = zext i32 %i.fx to i64                   ; 2 uses
  %i.gb = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !214
  %i.ge = load i32, ptr %3, align 4, !tbaa !274
  %i.gf = trunc i64 %i.gd to i32
  %i.gg = add i32 %i.ge, %i.gf                    ; 2 uses
  store i32 %i.gg, ptr %3, align 4, !tbaa !274
  br label %.thread298

bb.ah:                                            ; preds = %bb.af
  %i.gh = icmp eq i32 %spec.select, 20
  tail call void @llvm.assume(i1 %i.gh)
  %i.gi = add i32 %1, 1
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !213 ; 2 uses
  %i.gl = zext i32 %i.gi to i64                   ; 2 uses
  %i.gm = getelementptr inbounds nuw [32 x i8], ptr %i.gk, i64 %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !214
  %i.gp = load i32, ptr %3, align 4, !tbaa !274
  %.tr = trunc i64 %i.go to i32
  %i.gq = shl i32 %.tr, 2
  %i.gr = add i32 %i.gq, %i.gp                    ; 2 uses
  store i32 %i.gr, ptr %3, align 4, !tbaa !274
  br label %.thread298

bb.ai:                                            ; preds = %bb.z, %bb.aa
  %i.gs = phi i32 [ %i.eh, %bb.z ], [ %i.ee, %bb.aa ]
  %.2243 = phi i32 [ %i.eg, %bb.z ], [ %i.ei, %bb.aa ] ; 3 uses
  %.1240 = phi i32 [ 8, %bb.z ], [ 12, %bb.aa ]   ; 2 uses
  %.4231 = phi i8 [ 1, %bb.z ], [ 0, %bb.aa ]     ; 2 uses
  %.not = icmp eq i32 %.2243, %i.b
  br i1 %.not, label %.thread298, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !233
  %i.gv = zext nneg i32 %.2243 to i64
  %i.gw = sub nsw i64 0, %i.gv
  %i.gx = getelementptr inbounds [32 x i8], ptr %i.gu, i64 %i.gw
  tail call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.gx) #18
  %.pre331 = load ptr, ptr %i.dw, align 8, !tbaa !213
  %.pre332 = load i32, ptr %3, align 4, !tbaa !274
  br label %.thread298

.thread298:                                       ; preds = %bb.ah, %bb.ag, %bb.ae, %bb.ac, %bb.ab, %bb.aj, %bb.ai
  %.pre-phi333 = phi i64 [ %i.gl, %bb.ah ], [ %i.ga, %bb.ag ], [ %i.fp, %bb.ae ], [ %i.fa, %bb.ac ], [ %i.em, %bb.ab ], [ %i.dy, %bb.aj ], [ %i.dy, %bb.ai ]
  %i.gy = phi i32 [ %i.gr, %bb.ah ], [ %i.gg, %bb.ag ], [ %i.fv, %bb.ae ], [ %storemerge, %bb.ac ], [ %storemerge253, %bb.ab ], [ %.pre332, %bb.aj ], [ %i.gs, %bb.ai ] ; 2 uses
  %i.gz = phi ptr [ %i.gk, %bb.ah ], [ %i.fz, %bb.ag ], [ %i.fo, %bb.ae ], [ %i.ez, %bb.ac ], [ %i.el, %bb.ab ], [ %.pre331, %bb.aj ], [ %i.dx, %bb.ai ]
  %.4231309 = phi i8 [ 0, %bb.ah ], [ 0, %bb.ag ], [ 0, %bb.ae ], [ %.3230, %bb.ac ], [ %.2229, %bb.ab ], [ %.4231, %bb.aj ], [ %.4231, %bb.ai ] ; 3 uses
  %.0238308 = phi i32 [ 4, %bb.ah ], [ 1, %bb.ag ], [ 1, %bb.ae ], [ 2, %bb.ac ], [ 4, %bb.ab ], [ 1, %bb.aj ], [ 1, %bb.ai ] ; 2 uses
  %.1240307 = phi i32 [ 8, %bb.ah ], [ 10, %bb.ag ], [ %switch.select261, %bb.ae ], [ 8, %bb.ac ], [ 8, %bb.ab ], [ %.1240, %bb.aj ], [ %.1240, %bb.ai ]
  %.2243306 = phi i32 [ %i.b, %bb.ah ], [ %i.b, %bb.ag ], [ %i.b, %bb.ae ], [ %i.b, %bb.ac ], [ %i.b, %bb.ab ], [ %.2243, %bb.aj ], [ %i.b, %bb.ai ]
  %.2226295305 = phi i32 [ 20, %bb.ah ], [ 17, %bb.ag ], [ %i.h, %bb.ae ], [ 19, %bb.ac ], [ 5, %bb.ab ], [ %.2226296, %bb.aj ], [ %.2226296, %bb.ai ] ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hb = getelementptr inbounds nuw [32 x i8], ptr %i.gz, i64 %.pre-phi333 ; 2 uses
  %i.hc = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0238308, i1 true)
  %i.hd = lshr i32 %i.gy, %i.hc                   ; 4 uses
  %i.he = shl nuw nsw i32 1, %.1240307            ; 3 uses
  %i.hf = add nsw i32 %i.he, -1                   ; 2 uses
  %i.hg = mul nuw nsw i32 %i.hf, %.0238308        ; 2 uses
  %.not254 = icmp ugt i32 %i.gy, %i.hg
  br i1 %.not254, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %.thread298
  %i.hh = icmp slt i32 %2, 0
  br i1 %i.hh, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hi = lshr i32 %2, 3                          ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.p, i64 18
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !245
  %i.hl = zext i16 %i.hk to i32
  %.not.i263 = icmp samesign ult i32 %i.hi, %i.hl
  br i1 %.not.i263, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit: ; preds = %bb.al
  %i.hm = and i32 %2, 7
  %i.hn = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !246
  %i.hp = zext i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.hp
  %i.hr = zext nneg i32 %i.hi to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !214
  %i.hu = zext i8 %i.ht to i32
  %i.hv = shl nuw nsw i32 1, %i.hm
  %i.hw = and i32 %i.hv, %i.hu
  %.not330 = icmp eq i32 %i.hw, 0
  br i1 %.not330, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread, label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.hx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !275
  %i.hz = tail call noundef ptr @_ZN4llvm19MachineRegisterInfo17constrainRegClassENS_8RegisterEPKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(520) %i.hy, i32 %2, ptr noundef %i.p, i32 noundef 0) #18 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit, %bb.am
  %i.ia = load ptr, ptr %i.ha, align 8, !tbaa !213
  %i.ib = zext i32 %1 to i64
  %i.ic = getelementptr inbounds nuw [32 x i8], ptr %i.ia, i64 %i.ib
  tail call void @_ZN4llvm14MachineOperand16ChangeToRegisterENS_8RegisterEbbbbbb(ptr noundef nonnull align 8 dereferenceable(32) %i.ic, i32 %2, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #18
  %i.id = trunc nuw i8 %.4231309 to i1
  br i1 %i.id, label %bb.ao, label %bb.av

bb.ao:                                            ; preds = %bb.an
  switch i32 %.2226295305, label %bb.aq [
    i32 19, label %bb.ap
    i32 5, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao
  %i.ie = or i32 %i.hd, %i.he
  br label %bb.av

bb.aq:                                            ; preds = %bb.ao
  %i.if = sub nsw i32 0, %i.hd
  br label %bb.av

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread: ; preds = %bb.al, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit, %.thread298
  %i.ig = and i32 %i.hd, %i.hf                    ; 4 uses
  %i.ih = trunc nuw i8 %.4231309 to i1
  br i1 %i.ih, label %bb.ar, label %.thread317

bb.ar:                                            ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread
  switch i32 %.2226295305, label %bb.at [
    i32 19, label %bb.as
    i32 5, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar, %bb.ar
  %i.ii = or i32 %i.ig, %i.he
  br label %.thread317

bb.at:                                            ; preds = %bb.ar
  %i.ij = sub nsw i32 0, %i.ig
  %i.ik = icmp eq i32 %i.ig, 0
  br i1 %i.ik, label %bb.au, label %.thread317

bb.au:                                            ; preds = %bb.at
  %i.il = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.im = tail call fastcc noundef i32 @_ZL20positiveOffsetOpcodej(i32 noundef %.2243306)
  %i.in = load ptr, ptr %i.il, align 8, !tbaa !233
  %i.io = zext nneg i32 %i.im to i64
  %i.ip = sub nsw i64 0, %i.io
  %i.iq = getelementptr inbounds [32 x i8], ptr %i.in, i64 %i.ip
  tail call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.iq) #18
  br label %.thread317

.thread317:                                       ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread, %bb.at, %bb.au, %bb.as
  %.1235 = phi i32 [ %i.ii, %bb.as ], [ 0, %bb.au ], [ %i.ij, %bb.at ], [ %i.ig, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread ]
  %i.ir = sext i32 %.1235 to i64
  tail call void @_ZN4llvm14MachineOperand17ChangeToImmediateElj(ptr noundef nonnull align 8 dereferenceable(32) %i.hb, i64 noundef %i.ir, i32 noundef 0) #18
  %i.is = xor i32 %i.hg, -1
  %i.it = load i32, ptr %3, align 4, !tbaa !274
  %i.iu = and i32 %i.it, %i.is
  store i32 %i.iu, ptr %3, align 4, !tbaa !274
  br label %bb.aw

bb.av:                                            ; preds = %bb.an, %bb.aq, %bb.ap
  %.0234 = phi i32 [ %i.ie, %bb.ap ], [ %i.if, %bb.aq ], [ %i.hd, %bb.an ]
  %i.iv = sext i32 %.0234 to i64
  tail call void @_ZN4llvm14MachineOperand17ChangeToImmediateElj(ptr noundef nonnull align 8 dereferenceable(32) %i.hb, i64 noundef %i.iv, i32 noundef 0) #18
  store i32 0, ptr %3, align 4, !tbaa !274
  br label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit267

bb.aw:                                            ; preds = %.thread317, %bb.u
  %.6233 = phi i8 [ %.0227, %bb.u ], [ %.4231309, %.thread317 ]
  %i.iw = trunc nuw i8 %.6233 to i1
  %i.ix = load i32, ptr %3, align 4, !tbaa !274   ; 2 uses
  %i.iy = sub nsw i32 0, %i.ix
  %i.iz = select i1 %i.iw, i32 %i.iy, i32 %i.ix   ; 2 uses
  store i32 %i.iz, ptr %3, align 4, !tbaa !274
  %i.ja = icmp eq i32 %i.iz, 0
  br i1 %i.ja, label %bb.ax, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit267

bb.ax:                                            ; preds = %bb.aw
  %i.jb = icmp slt i32 %2, 0
  br i1 %i.jb, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit267, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jc = lshr i32 %2, 3                          ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.p, i64 18
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !245
  %i.jf = zext i16 %i.je to i32
  %.not.i265 = icmp samesign ult i32 %i.jc, %i.jf
  br i1 %.not.i265, label %bb.az, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit267

bb.az:                                            ; preds = %bb.ay
  %i.jg = and i32 %2, 7
  %i.jh = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !246
  %i.jj = zext i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.jj
  %i.jl = zext nneg i32 %i.jc to i64
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !214
  %i.jo = zext i8 %i.jn to i32
  %i.jp = shl nuw nsw i32 1, %i.jg
  %i.jq = and i32 %i.jp, %i.jo
  %i.jr = icmp ne i32 %i.jq, 0
  br label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit267

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit267: ; preds = %bb.az, %bb.ay, %bb.av, %.thread313, %.thread, %bb.aw, %bb.ax, %bb.v
  %.6 = phi i1 [ false, %bb.v ], [ true, %.thread ], [ true, %bb.av ], [ false, %bb.aw ], [ true, %bb.ax ], [ %i.du, %.thread313 ], [ %i.jr, %bb.az ], [ false, %bb.ay ]
  ret i1 %.6
}

declare void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare void @_ZN4llvm14MachineOperand16ChangeToRegisterENS_8RegisterEbbbbbb(ptr noundef nonnull align 8 dereferenceable(32), i32, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN4llvm12MachineInstr13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #4

declare void @_ZN4llvm14MachineOperand17ChangeToImmediateElj(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN4llvm12MachineInstr10addOperandERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef range(i32 4150, 4381) i32 @_ZL20negativeOffsetOpcodej(i32 noundef range(i32 4055, 4053) %0) unnamed_addr #6 {
bb.a:
  switch i32 %0, label %bb.m [
    i32 4184, label %bb.n
    i32 4163, label %bb.b
    i32 4149, label %bb.c
    i32 4177, label %bb.d
    i32 4170, label %bb.e
    i32 4379, label %bb.f
    i32 4360, label %bb.g
    i32 4373, label %bb.h
    i32 4234, label %bb.i
    i32 4231, label %bb.j
    i32 4238, label %bb.k
    i32 4185, label %bb.l
    i32 4164, label %bb.l
    i32 4150, label %bb.l
    i32 4178, label %bb.l
    i32 4171, label %bb.l
    i32 4380, label %bb.l
    i32 4361, label %bb.l
    i32 4374, label %bb.l
    i32 4235, label %bb.l
    i32 4232, label %bb.l
    i32 4239, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  br label %bb.n

bb.j:                                             ; preds = %bb.a
  br label %bb.n

bb.k:                                             ; preds = %bb.a
  br label %bb.n

bb.l:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  unreachable

bb.n:                                             ; preds = %bb.a, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %0, %bb.l ], [ 4164, %bb.b ], [ 4150, %bb.c ], [ 4178, %bb.d ], [ 4171, %bb.e ], [ 4380, %bb.f ], [ 4361, %bb.g ], [ 4374, %bb.h ], [ 4235, %bb.i ], [ 4232, %bb.j ], [ 4239, %bb.k ], [ 4185, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef range(i32 4149, 4380) i32 @_ZL20positiveOffsetOpcodej(i32 noundef range(i32 4055, 4053) %0) unnamed_addr #6 {
bb.a:
  switch i32 %0, label %bb.m [
    i32 4185, label %bb.n
    i32 4164, label %bb.b
    i32 4150, label %bb.c
    i32 4178, label %bb.d
    i32 4171, label %bb.e
    i32 4380, label %bb.f
    i32 4361, label %bb.g
    i32 4374, label %bb.h
    i32 4235, label %bb.i
    i32 4232, label %bb.j
    i32 4239, label %bb.k
    i32 4184, label %bb.l
    i32 4163, label %bb.l
    i32 4149, label %bb.l
    i32 4177, label %bb.l
    i32 4170, label %bb.l
    i32 4379, label %bb.l
    i32 4360, label %bb.l
    i32 4373, label %bb.l
    i32 4234, label %bb.l
    i32 4231, label %bb.l
    i32 4238, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  br label %bb.n

bb.j:                                             ; preds = %bb.a
  br label %bb.n

bb.k:                                             ; preds = %bb.a
  br label %bb.n

bb.l:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  unreachable

bb.n:                                             ; preds = %bb.a, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %0, %bb.l ], [ 4163, %bb.b ], [ 4149, %bb.c ], [ 4177, %bb.d ], [ 4170, %bb.e ], [ 4379, %bb.f ], [ 4360, %bb.g ], [ 4373, %bb.h ], [ 4234, %bb.i ], [ 4231, %bb.j ], [ 4238, %bb.k ], [ 4184, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN4llvm26findFirstVPTPredOperandIdxERKNS_12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i16, ptr %i.c, align 4, !tbaa !279  ; 2 uses
  %.not11 = icmp eq i16 %i.d, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = load i32, ptr %i.b, align 8, !tbaa !280
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load i16, ptr %i.h, align 4, !tbaa !281
  %i.j = zext i16 %i.i to i64
  %i.k = getelementptr inbounds nuw [6 x i8], ptr %i.g, i64 %i.j
end_hunk_0
