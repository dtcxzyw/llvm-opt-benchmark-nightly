Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/IRDLVerifiers?download=true
begin_hunk_0_@_ZN4mlir4irdl16RegionConstraint6verifyERNS_6RegionERNS0_18ConstraintVerifierE:bb.a
  %.not.i.i71 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i71, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit90, label %bb.am

bb.am:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA17_KcEEOS0_OT_.exit70
  %i.ey = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  store i32 5, ptr %7, align 8, !tbaa !35
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fa = zext i32 %i.ew to i64
  store i64 %i.fa, ptr %i.ez, align 8, !tbaa !59
  %i.fb = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 15 uses
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !15 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %18, i64 36 ; 5 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !16
  %.not.i.i.i.i.i72 = icmp ult i32 %i.fc, %i.fe
  br i1 %.not.i.i.i.i.i72, label %bb.ao, label %bb.an, !prof !40

bb.an:                                            ; preds = %bb.am
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ey, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZNO4mlir18InFlightDiagnosticlsIjEEOS0_OT_.exit74

bb.ao:                                            ; preds = %bb.am
  %i.ff = zext i32 %i.fc to i64
  %i.fg = load ptr, ptr %i.ey, align 8, !tbaa !13
  %i.fh = getelementptr inbounds nuw [24 x i8], ptr %i.fg, i64 %i.ff
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fh, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.fi = load i32, ptr %i.fb, align 8, !tbaa !15
  %i.fj = add i32 %i.fi, 1
  store i32 %i.fj, ptr %i.fb, align 8, !tbaa !15
  br label %_ZNO4mlir18InFlightDiagnosticlsIjEEOS0_OT_.exit74

_ZNO4mlir18InFlightDiagnosticlsIjEEOS0_OT_.exit74: ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %.pr139 = load ptr, ptr %18, align 8, !tbaa !27
  %.not.i.i75 = icmp eq ptr %.pr139, null
  br i1 %.not.i.i75, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit90, label %bb.ap

bb.ap:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIjEEOS0_OT_.exit74
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  store i32 3, ptr %6, align 8, !tbaa !35
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.12, ptr %i.fk, align 8, !tbaa !38
  %.sroa.2.0..sroa_idx.i.i.i.i.i76 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 9, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i76, align 8, !tbaa !11
  %i.fl = load i32, ptr %i.fb, align 8, !tbaa !15 ; 2 uses
  %i.fm = load i32, ptr %i.fd, align 4, !tbaa !16
  %.not.i.i.i.i.i77 = icmp ult i32 %i.fl, %i.fm
  br i1 %.not.i.i.i.i.i77, label %bb.ar, label %bb.aq, !prof !40

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ey, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA10_KcEEOS0_OT_.exit79

bb.ar:                                            ; preds = %bb.ap
  %i.fn = zext i32 %i.fl to i64
  %i.fo = load ptr, ptr %i.ey, align 8, !tbaa !13
  %i.fp = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %i.fn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fp, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.fq = load i32, ptr %i.fb, align 8, !tbaa !15
  %i.fr = add i32 %i.fq, 1
  store i32 %i.fr, ptr %i.fb, align 8, !tbaa !15
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA10_KcEEOS0_OT_.exit79

_ZNO4mlir18InFlightDiagnosticlsIRA10_KcEEOS0_OT_.exit79: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %.pr141 = load ptr, ptr %18, align 8, !tbaa !27
  %.not.i.i80 = icmp eq ptr %.pr141, null
  br i1 %.not.i.i80, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit90, label %bb.as

bb.as:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA10_KcEEOS0_OT_.exit79
  %i.fs = load i32, ptr %i.dv, align 8, !tbaa !15
  %i.ft = zext i32 %i.fs to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store i32 5, ptr %5, align 8, !tbaa !35
  %i.fu = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ft, ptr %i.fu, align 8, !tbaa !59
  %i.fv = load i32, ptr %i.fb, align 8, !tbaa !15 ; 2 uses
  %i.fw = load i32, ptr %i.fd, align 4, !tbaa !16
  %.not.i.i.i.i.i81 = icmp ult i32 %i.fv, %i.fw
  br i1 %.not.i.i.i.i.i81, label %bb.au, label %bb.at, !prof !40

bb.at:                                            ; preds = %bb.as
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ey, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit83

bb.au:                                            ; preds = %bb.as
  %i.fx = zext i32 %i.fv to i64
  %i.fy = load ptr, ptr %i.ey, align 8, !tbaa !13
  %i.fz = getelementptr inbounds nuw [24 x i8], ptr %i.fy, i64 %i.fx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fz, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.ga = load i32, ptr %i.fb, align 8, !tbaa !15
  %i.gb = add i32 %i.ga, 1
  store i32 %i.gb, ptr %i.fb, align 8, !tbaa !15
  br label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit83

_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit83: ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %.pr143.pr = load ptr, ptr %18, align 8, !tbaa !27
  %.not.i.i84 = icmp eq ptr %.pr143.pr, null
  br i1 %.not.i.i84, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit90, label %bb.av

bb.av:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit83
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store i32 3, ptr %4, align 8, !tbaa !35
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.14, ptr %i.gc, align 8, !tbaa !38
  %.sroa.2.0..sroa_idx.i.i.i.i.i85 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 19, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i85, align 8, !tbaa !11
  %i.gd = load i32, ptr %i.fb, align 8, !tbaa !15 ; 2 uses
  %i.ge = load i32, ptr %i.fd, align 4, !tbaa !16
  %.not.i.i.i.i.i86 = icmp ult i32 %i.gd, %i.ge
  br i1 %.not.i.i.i.i.i86, label %bb.ax, label %bb.aw, !prof !40

bb.aw:                                            ; preds = %bb.av
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ey, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA20_KcEEOS0_OT_.exit

bb.ax:                                            ; preds = %bb.av
  %i.gf = zext i32 %i.gd to i64
  %i.gg = load ptr, ptr %i.ey, align 8, !tbaa !13
  %i.gh = getelementptr inbounds nuw [24 x i8], ptr %i.gg, i64 %i.gf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.gh, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.gi = load i32, ptr %i.fb, align 8, !tbaa !15
  %i.gj = add i32 %i.gi, 1
  store i32 %i.gj, ptr %i.fb, align 8, !tbaa !15
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA20_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA20_KcEEOS0_OT_.exit: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %.pr145 = load ptr, ptr %18, align 8, !tbaa !27
  %.not.i.i87 = icmp eq ptr %.pr145, null
  br i1 %.not.i.i87, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit90, label %bb.ay

bb.ay:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA20_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i32 5, ptr %3, align 8, !tbaa !35
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.4.0.i133137, ptr %i.gk, align 8, !tbaa !59
  %i.gl = load i32, ptr %i.fb, align 8, !tbaa !15 ; 2 uses
  %i.gm = load i32, ptr %i.fd, align 4, !tbaa !16
  %.not.i.i.i.i.i88 = icmp ult i32 %i.gl, %i.gm
  br i1 %.not.i.i.i.i.i88, label %bb.ba, label %bb.az, !prof !40

bb.az:                                            ; preds = %bb.ay
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ey, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i89

bb.ba:                                            ; preds = %bb.ay
  %i.gn = zext i32 %i.gl to i64
  %i.go = load ptr, ptr %i.ey, align 8, !tbaa !13
  %i.gp = getelementptr inbounds nuw [24 x i8], ptr %i.go, i64 %i.gn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.gp, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.gq = load i32, ptr %i.fb, align 8, !tbaa !15
  %i.gr = add i32 %i.gq, 1
  store i32 %i.gr, ptr %i.fb, align 8, !tbaa !15
  br label %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i89

_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i89: ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit90

_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit90: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIjEEOS0_OT_.exit74, %_ZNO4mlir18InFlightDiagnosticlsIRA17_KcEEOS0_OT_.exit70, %_ZNO4mlir18InFlightDiagnosticlsIRA10_KcEEOS0_OT_.exit79, %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit83, %_ZNO4mlir18InFlightDiagnosticlsIRA20_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i89
  %i.gs = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %18) #10
  %i.gt = load ptr, ptr %18, align 8, !tbaa !27
  %.not.i91 = icmp eq ptr %i.gt, null
  br i1 %.not.i91, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit90
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %18) #10
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit90
  %i.gu = getelementptr inbounds nuw i8, ptr %18, i64 200 ; 2 uses
  %i.gv = load i8, ptr %i.gu, align 8, !tbaa !41, !range !22, !noundef !23
  %i.gw = trunc nuw i8 %i.gv to i1
  store i8 0, ptr %i.gu, align 8, !tbaa !41
  br i1 %i.gw, label %bb.bd, label %.thread149

bb.bd:                                            ; preds = %bb.bc
  %i.gx = getelementptr inbounds nuw i8, ptr %18, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.gx) #10
  br label %.thread149

.thread149:                                       ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #10
  br label %.thread152

bb.be:                                            ; preds = %_ZN4mlir6Region12getArgumentsEv.exit
  %i.gy = load ptr, ptr %0, align 8, !tbaa !13, !noalias !126 ; 2 uses
  %.idx = ashr exact i64 %i.dj, 1
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.idx
  %.not194 = icmp eq ptr %i.dg, %i.de
  br i1 %.not194, label %.thread152, label %.lr.ph

.lr.ph:                                           ; preds = %bb.be
  %i.ha = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.hb = ptrtoint ptr %19 to i64
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph, %bb.bg
  %.sroa.7.0163 = phi ptr [ %i.de, %.lr.ph ], [ %i.hm, %bb.bg ] ; 3 uses
  %.sroa.099.0162 = phi ptr [ %i.gy, %.lr.ph ], [ %i.hn, %bb.bg ] ; 2 uses
  %i.hc = load ptr, ptr %.sroa.7.0163, align 8, !tbaa !120
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.hd, align 8
  %i.he = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.hf = inttoptr i64 %i.he to ptr
  %i.hg = call ptr @_ZN4mlir8TypeAttr3getENS_4TypeE(ptr %i.hf) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #10
  %i.hh = load ptr, ptr %.sroa.7.0163, align 8, !tbaa !120
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  %.sroa.0.0.copyload.i93 = load ptr, ptr %i.hi, align 8
  store ptr %.sroa.0.0.copyload.i93, ptr %19, align 8
  store ptr %i.b, ptr %i.ha, align 8
  %i.hj = load i32, ptr %.sroa.099.0162, align 4, !tbaa !87
  %i.hk = call i8 @_ZN4mlir4irdl18ConstraintVerifier6verifyEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEENS_9AttributeEj(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZZNS1_4irdl16RegionConstraint6verifyERNS1_6RegionERNS6_18ConstraintVerifierEENK3$_0clENS1_8LocationEEUlvE_EES2_l", i64 %i.hb, ptr %i.hg, i32 noundef %i.hj)
  %i.hl = trunc nuw i8 %i.hk to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #10
  br i1 %i.hl, label %bb.bg, label %.thread152

bb.bg:                                            ; preds = %bb.bf
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.7.0163, i64 8 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.099.0162, i64 4 ; 2 uses
  %i.ho = icmp ne ptr %i.hm, %i.dg
  %i.hp = icmp ne ptr %i.hn, %i.gz
  %.not3.i = select i1 %i.ho, i1 %i.hp, i1 false
  br i1 %.not3.i, label %bb.bf, label %.thread152

.thread152:                                       ; preds = %bb.bf, %bb.bg, %_ZN4mlir6Region12getArgumentsEv.exit.thread, %bb.be, %bb.ab, %.thread149, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.030.4 = phi i8 [ %i.cq, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %bb.ab ], [ %i.gs, %.thread149 ], [ 1, %bb.be ], [ 1, %_ZN4mlir6Region12getArgumentsEv.exit.thread ], [ 1, %bb.bg ], [ 0, %bb.bf ]
  ret i8 %.sroa.030.4
}

declare ptr @_ZN4mlir6Region6getLocEv(ptr noundef nonnull align 8 dereferenceable(28)) local_unnamed_addr #2

declare noundef i32 @_ZN4mlir6Region15getRegionNumberEv(ptr noundef nonnull align 8 dereferenceable(28)) local_unnamed_addr #2

declare ptr @_ZN4mlir8TypeAttr3getENS_4TypeE(ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir4irdl12IsConstraintD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir4irdl18BaseAttrConstraintD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir4irdl18BaseTypeConstraintD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir4irdl27DynParametricAttrConstraintD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4mlir4irdl27DynParametricAttrConstraintE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #10
  br label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit

_ZN4llvm11SmallVectorIjLj12EED2Ev.exit:           ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir4irdl27DynParametricAttrConstraintD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4mlir4irdl27DynParametricAttrConstraintE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4mlir4irdl27DynParametricAttrConstraintD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #10, !inline_history !131
  br label %_ZN4mlir4irdl27DynParametricAttrConstraintD2Ev.exit

_ZN4mlir4irdl27DynParametricAttrConstraintD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir4irdl27DynParametricTypeConstraintD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4mlir4irdl27DynParametricTypeConstraintE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #10
  br label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit

_ZN4llvm11SmallVectorIjLj12EED2Ev.exit:           ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir4irdl27DynParametricTypeConstraintD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4mlir4irdl27DynParametricTypeConstraintE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4mlir4irdl27DynParametricTypeConstraintD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #10, !inline_history !132
  br label %_ZN4mlir4irdl27DynParametricTypeConstraintD2Ev.exit

_ZN4mlir4irdl27DynParametricTypeConstraintD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir4irdl15AnyOfConstraintD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4mlir4irdl15AnyOfConstraintE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #10
  br label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit

_ZN4llvm11SmallVectorIjLj12EED2Ev.exit:           ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir4irdl15AnyOfConstraintD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4mlir4irdl15AnyOfConstraintE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4mlir4irdl15AnyOfConstraintD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #10, !inline_history !133
  br label %_ZN4mlir4irdl15AnyOfConstraintD2Ev.exit

_ZN4mlir4irdl15AnyOfConstraintD2Ev.exit:          ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir4irdl15AllOfConstraintD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4mlir4irdl15AllOfConstraintE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #10
  br label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit

_ZN4llvm11SmallVectorIjLj12EED2Ev.exit:           ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir4irdl15AllOfConstraintD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4mlir4irdl15AllOfConstraintE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4mlir4irdl15AllOfConstraintD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #10, !inline_history !134
  br label %_ZN4mlir4irdl15AllOfConstraintD2Ev.exit

_ZN4mlir4irdl15AllOfConstraintD2Ev.exit:          ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir4irdl10ConstraintD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir4irdl22AnyAttributeConstraintD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #12
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #4 comdat {
end_hunk_0
