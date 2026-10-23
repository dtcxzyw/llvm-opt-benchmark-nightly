Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InstructionCombining?download=true
inline.NumInlined: 12731
inline.NumDeleted: 6421
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN4llvm13IRBuilderBase17CreateInBoundsGEPEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineE:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #24, !inline_history !2
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.h) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %_ZN4llvm13IRBuilderBase9CreateGEPEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineENS_14GEPNoWrapFlagsE.exit

_ZN4llvm13IRBuilderBase9CreateGEPEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineENS_14GEPNoWrapFlagsE.exit: ; preds = %bb.a, %bb.b
  %.1.i = phi ptr [ %i.h, %bb.b ], [ %i.f, %bb.a ]
  ret ptr %.1.i
}

declare void @_ZN4llvm11Instruction13setAAMetadataERKNS_9AAMDNodesE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

declare void @_ZNK4llvm11Instruction13getAAMetadataEv(ptr dead_on_unwind writable sret(%"struct.llvm::AAMDNodes") align 8, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN4llvm16InstCombinerImpl19visitLandingPadInstERNS_14LandingPadInstE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(ret: address, provenance) dereferenceable(76) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.253", align 8 ; 20 uses
  %3 = alloca %"class.llvm::SmallPtrSet.583", align 8 ; 10 uses
  %4 = alloca %"class.llvm::SmallVector.253", align 8 ; 15 uses
  %5 = alloca %"class.llvm::SmallPtrSet.583", align 8 ; 10 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1099
  %i.e = tail call noundef ptr @_ZNK4llvm8Function16getPersonalityFnEv(ptr noundef nonnull align 8 dereferenceable(140) %i.d) #24
  %i.f = tail call noundef i32 @_ZN4llvm21classifyEHPersonalityEPKNS_5ValueE(ptr noundef %i.e) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 25 uses
  store i32 0, ptr %i.h, align 8, !tbaa !141
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  store i32 16, ptr %i.i, align 4, !tbaa !145
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %i.k = load i16, ptr %i.j, align 2, !tbaa !215
  %i.l = trunc i16 %i.k to i8
  %i.m = and i8 %i.l, 1                           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.n, ptr %3, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 16, ptr %i.o, align 8, !tbaa !416
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  store i32 0, ptr %i.p, align 4, !tbaa !417
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i8 1, ptr %i.q, align 8, !tbaa !45
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, 268435455                  ; 4 uses
  %.not369 = icmp eq i32 %i.t, 0
  br i1 %.not369, label %.thread315.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.u = getelementptr inbounds i8, ptr %1, i64 -8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 11 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.ac = zext nneg i32 %i.t to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread307
  %indvars.iv437 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next438, %.thread307 ] ; 3 uses
  %.0164370 = phi i1 [ false, %.lr.ph ], [ %.12311, %.thread307 ] ; 5 uses
  %indvars.iv.next438 = add i64 %indvars.iv437, 1 ; 4 uses
  %i.ad = load i32, ptr %i.r, align 4             ; 2 uses
  %i.ae = and i32 %i.ad, 1073741824
  %.not.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i, label %_ZNK4llvm14LandingPadInst7isCatchEj.exit, label %_ZNK4llvm14LandingPadInst7isCatchEj.exit.thread

_ZNK4llvm14LandingPadInst7isCatchEj.exit:         ; preds = %bb.b
  %i.af = and i32 %i.ad, 268435455
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds [32 x i8], ptr %1, i64 %i.ah
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %indvars.iv437
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !115 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !148 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = and i32 %i.ao, 255
  %.not327 = icmp eq i32 %i.ap, 17
  br i1 %.not327, label %_ZNK4llvm14LandingPadInst9getClauseEj.exit201, label %_ZNK4llvm14LandingPadInst9getClauseEj.exit

_ZNK4llvm14LandingPadInst7isCatchEj.exit.thread:  ; preds = %bb.b
  %i.aq = load ptr, ptr %i.u, align 8, !tbaa !147
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %indvars.iv437
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !115 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !148 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = and i32 %i.aw, 255
  %.not326 = icmp eq i32 %i.ax, 17
  br i1 %.not326, label %_ZNK4llvm14LandingPadInst9getClauseEj.exit201, label %_ZNK4llvm14LandingPadInst9getClauseEj.exit

_ZNK4llvm14LandingPadInst9getClauseEj.exit:       ; preds = %_ZNK4llvm14LandingPadInst7isCatchEj.exit, %_ZNK4llvm14LandingPadInst7isCatchEj.exit.thread
  %i.ay = phi ptr [ %i.as, %_ZNK4llvm14LandingPadInst7isCatchEj.exit.thread ], [ %i.ak, %_ZNK4llvm14LandingPadInst7isCatchEj.exit ] ; 3 uses
  %i.az = call noundef ptr @_ZNK4llvm5Value17stripPointerCastsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ay) #24 ; 4 uses
  %i.ba = load i8, ptr %i.q, align 8, !tbaa !45, !range !46, !noalias !1100, !noundef !47
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.c, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.c:                                             ; preds = %_ZNK4llvm14LandingPadInst9getClauseEj.exit
  %i.bc = load ptr, ptr %3, align 8, !tbaa !48, !noalias !1100 ; 2 uses
  %i.bd = load i32, ptr %i.p, align 4, !tbaa !417, !noalias !1100 ; 4 uses
  %i.be = zext i32 %i.bd to i64
  %.idx.i.i = shl nuw nsw i64 %i.be, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx.i.i ; 2 uses
  %.not22.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not22.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.critedge.i.i
  %.023.i.i = phi ptr [ %i.bh, %.critedge.i.i ], [ %i.bc, %bb.c ] ; 2 uses
  %i.bg = load ptr, ptr %.023.i.i, align 8, !tbaa !128, !noalias !1100
  %.not15.i.i = icmp eq ptr %i.bg, %i.az
  br i1 %.not15.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 8 ; 2 uses
  %.not.i.i199 = icmp eq ptr %i.bh, %i.bf
  br i1 %.not.i.i199, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.critedge.i.i, %bb.c
  %i.bi = load i32, ptr %i.o, align 8, !tbaa !416, !noalias !1100
  %i.bj = icmp ult i32 %i.bd, %i.bi
  br i1 %i.bj, label %.critedge549, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

.critedge549:                                     ; preds = %._crit_edge.i.i
  %i.bk = add nuw i32 %i.bd, 1
  store i32 %i.bk, ptr %i.p, align 4, !tbaa !417, !noalias !1100
  store ptr %i.az, ptr %i.bf, align 8, !tbaa !128, !noalias !1100
  br label %bb.d

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i: ; preds = %._crit_edge.i.i, %_ZNK4llvm14LandingPadInst9getClauseEj.exit
  %i.bl = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef %i.az) #24, !noalias !1100
  %i.bm = extractvalue { ptr, i8 } %i.bl, 1
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.d, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit

bb.d:                                             ; preds = %.critedge549, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i
  %i.bo = load i32, ptr %i.h, align 8, !tbaa !141 ; 2 uses
  %i.bp = load i32, ptr %i.i, align 4, !tbaa !145
  %.not.i = icmp ult i32 %i.bo, %i.bp
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !146

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.ay)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit

bb.f:                                             ; preds = %bb.d
  %i.bq = zext i32 %i.bo to i64
  %i.br = load ptr, ptr %2, align 8, !tbaa !37
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bq
  store ptr %i.ay, ptr %i.bs, align 1
  %i.bt = load i32, ptr %i.h, align 8, !tbaa !141
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.h, align 8, !tbaa !141
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i
  %.1165 = phi i1 [ true, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i ], [ %.0164370, %bb.e ], [ %.0164370, %bb.f ], [ true, %.lr.ph.i.i ] ; 7 uses
  switch i32 %i.f, label %bb.g [
    i32 2, label %.thread307
    i32 3, label %.thread307
    i32 11, label %.thread307
    i32 0, label %.thread307
    i32 1, label %.thread307
    i32 4, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit
    i32 5, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit
    i32 6, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit
    i32 7, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit
    i32 8, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit
    i32 9, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit
    i32 10, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit
    i32 12, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit
    i32 13, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit
    i32 14, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit
  ]

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit
  unreachable

_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit
  %i.bv = load i8, ptr %i.az, align 8, !tbaa !110
  %i.bw = icmp eq i8 %i.bv, 9
  br i1 %i.bw, label %.thread315.loopexit.split.loop.exit360, label %.thread307

_ZNK4llvm14LandingPadInst9getClauseEj.exit201:    ; preds = %_ZNK4llvm14LandingPadInst7isCatchEj.exit, %_ZNK4llvm14LandingPadInst7isCatchEj.exit.thread
  %i.bx = phi ptr [ %i.au, %_ZNK4llvm14LandingPadInst7isCatchEj.exit.thread ], [ %i.am, %_ZNK4llvm14LandingPadInst7isCatchEj.exit ] ; 3 uses
  %i.by = phi ptr [ %i.as, %_ZNK4llvm14LandingPadInst7isCatchEj.exit.thread ], [ %i.ak, %_ZNK4llvm14LandingPadInst7isCatchEj.exit ] ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !180 ; 3 uses
  %i.cb = trunc i64 %i.ca to i32                  ; 2 uses
  %.not181 = icmp eq i32 %i.cb, 0
  br i1 %.not181, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZNK4llvm14LandingPadInst9getClauseEj.exit201
  %i.cc = trunc nuw nsw i64 %indvars.iv.next438 to i32
  %i.cd = icmp ne i32 %i.t, %i.cc
  %i.ce = load i32, ptr %i.h, align 8, !tbaa !141 ; 2 uses
  %i.cf = load i32, ptr %i.i, align 4, !tbaa !145
  %.not.i202 = icmp ult i32 %i.ce, %i.cf
  br i1 %.not.i202, label %bb.j, label %bb.i, !prof !146

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.by)
  br label %.thread301

bb.j:                                             ; preds = %bb.h
  %i.cg = zext i32 %i.ce to i64
  %i.ch = load ptr, ptr %2, align 8, !tbaa !37
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cg
  store ptr %i.by, ptr %i.ci, align 1
  %i.cj = load i32, ptr %i.h, align 8, !tbaa !141
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr %i.h, align 8, !tbaa !141
  br label %.thread301

.thread301:                                       ; preds = %bb.j, %bb.i
  %spec.select196 = select i1 %i.cd, i1 true, i1 %.0164370
  br label %.thread315

bb.k:                                             ; preds = %_ZNK4llvm14LandingPadInst9getClauseEj.exit201
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr %i.v, ptr %4, align 8, !tbaa !37
  store i32 0, ptr %i.w, align 8, !tbaa !141
  store i32 16, ptr %i.x, align 4, !tbaa !145
  %i.cl = load i8, ptr %i.by, align 8, !tbaa !110
  %i.cm = icmp eq i8 %i.cl, 2
  br i1 %i.cm, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !181
  %i.cp = call noundef ptr @_ZN4llvm8Constant12getNullValueEPNS_4TypeE(ptr noundef %i.co) #24 ; 3 uses
  switch i32 %i.f, label %bb.m [
    i32 2, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit205.thread
    i32 3, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit205.thread
    i32 11, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit205.thread
    i32 0, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit205.thread
    i32 1, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit205.thread
    i32 4, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit205
    i32 5, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit205
    i32 6, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit205
    i32 7, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit205
    i32 8, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit205
    i32 9, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit205
    i32 10, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit205
    i32 12, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit205
    i32 13, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit205
    i32 14, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit205
  ]

bb.m:                                             ; preds = %bb.l
  unreachable

_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit205: ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  %i.cq = load i8, ptr %i.cp, align 8, !tbaa !110
  %i.cr = icmp eq i8 %i.cq, 9
  br i1 %i.cr, label %.thread284.jt4, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit205.thread

_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit205.thread: ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit205
  %i.cs = load i32, ptr %i.w, align 8, !tbaa !141 ; 2 uses
  %i.ct = load i32, ptr %i.x, align 4, !tbaa !145
  %.not.i206 = icmp ult i32 %i.cs, %i.ct
  br i1 %.not.i206, label %bb.o, label %bb.n, !prof !146

bb.n:                                             ; preds = %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit205.thread
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.cp)
  br label %.split298

bb.o:                                             ; preds = %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit205.thread
  %i.cu = zext i32 %i.cs to i64
  %i.cv = load ptr, ptr %4, align 8, !tbaa !37
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cu
  store ptr %i.cp, ptr %i.cw, align 1
  %i.cx = load i32, ptr %i.w, align 8, !tbaa !141
  %i.cy = add i32 %i.cx, 1
  store i32 %i.cy, ptr %i.w, align 8, !tbaa !141
  br label %.split298

.split298:                                        ; preds = %bb.o, %bb.n
  %.not183.not = icmp eq i32 %i.cb, 1
  br i1 %.not183.not, label %bb.z, label %bb.y

bb.p:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %i.y, ptr %5, align 8, !tbaa !48
  store i32 16, ptr %i.z, align 8, !tbaa !416
  store i32 0, ptr %i.aa, align 4, !tbaa !417
  store i8 1, ptr %i.ab, align 8, !tbaa !45
  %i.cz = and i64 %i.ca, 4294967295               ; 3 uses
  %i.da = icmp samesign ugt i64 %i.cz, 16
  br i1 %i.da, label %bb.q, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit

bb.q:                                             ; preds = %bb.p
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.v, i64 noundef %i.cz, i64 noundef 8) #24
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit: ; preds = %bb.p, %bb.q
  %i.db = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %7 = and i64 %i.ca, 4294967295
  br label %bb.r

bb.r:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit239
  %indvars.iv = phi i64 [ 0, %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit ], [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit239 ] ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = and i32 %i.dc, 268435455
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = sub nsw i64 0, %i.de
  %i.dg = getelementptr inbounds [32 x i8], ptr %i.by, i64 %i.df
  %i.dh = getelementptr inbounds nuw [32 x i8], ptr %i.dg, i64 %indvars.iv
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !115 ; 3 uses
  %i.dj = call noundef ptr @_ZNK4llvm5Value17stripPointerCastsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.di) #24 ; 4 uses
  switch i32 %i.f, label %bb.s [
    i32 2, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit209.thread
    i32 3, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit209.thread
    i32 11, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit209.thread
    i32 0, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit209.thread
    i32 1, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit209.thread
    i32 4, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit209
    i32 5, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit209
    i32 6, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit209
    i32 7, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit209
    i32 8, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit209
    i32 9, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit209
    i32 10, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit209
    i32 12, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit209
    i32 13, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit209
    i32 14, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit209
  ]

bb.s:                                             ; preds = %bb.r
  unreachable

_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit209: ; preds = %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !110
  %i.dl = icmp eq i8 %i.dk, 9
  br i1 %i.dl, label %.thread296.jt4, label %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit209.thread

_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit209.thread: ; preds = %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit209
  %i.dm = load i8, ptr %i.ab, align 8, !tbaa !45, !range !46, !noalias !1101, !noundef !47
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.t, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i210

bb.t:                                             ; preds = %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit209.thread
  %i.do = load ptr, ptr %5, align 8, !tbaa !48, !noalias !1101 ; 2 uses
  %i.dp = load i32, ptr %i.aa, align 4, !tbaa !417, !noalias !1101 ; 4 uses
  %i.dq = zext i32 %i.dp to i64
  %.idx.i.i225 = shl nuw nsw i64 %i.dq, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %.idx.i.i225 ; 2 uses
  %.not22.i.i226 = icmp eq i32 %i.dp, 0
  br i1 %.not22.i.i226, label %._crit_edge.i.i232, label %.lr.ph.i.i227

.lr.ph.i.i227:                                    ; preds = %bb.t, %.critedge.i.i230
  %.023.i.i228 = phi ptr [ %i.dt, %.critedge.i.i230 ], [ %i.do, %bb.t ] ; 2 uses
  %i.ds = load ptr, ptr %.023.i.i228, align 8, !tbaa !128, !noalias !1101
  %.not15.i.i229 = icmp eq ptr %i.ds, %i.dj
  br i1 %.not15.i.i229, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit239, label %.critedge.i.i230

.critedge.i.i230:                                 ; preds = %.lr.ph.i.i227
  %i.dt = getelementptr inbounds nuw i8, ptr %.023.i.i228, i64 8 ; 2 uses
  %.not.i.i231 = icmp eq ptr %i.dt, %i.dr
  br i1 %.not.i.i231, label %._crit_edge.i.i232, label %.lr.ph.i.i227

._crit_edge.i.i232:                               ; preds = %.critedge.i.i230, %bb.t
  %i.du = load i32, ptr %i.z, align 8, !tbaa !416, !noalias !1101
  %i.dv = icmp ult i32 %i.dp, %i.du
  br i1 %i.dv, label %.critedge550, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i210

.critedge550:                                     ; preds = %._crit_edge.i.i232
  %i.dw = add nuw i32 %i.dp, 1
  store i32 %i.dw, ptr %i.aa, align 4, !tbaa !417, !noalias !1101
  store ptr %i.dj, ptr %i.dr, align 8, !tbaa !128, !noalias !1101
  br label %bb.u

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i210: ; preds = %._crit_edge.i.i232, %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit209.thread
  %i.dx = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %5, ptr noundef %i.dj) #24, !noalias !1101
  %i.dy = extractvalue { ptr, i8 } %i.dx, 1
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.u, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit239

bb.u:                                             ; preds = %.critedge550, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i210
  %i.ea = load i32, ptr %i.w, align 8, !tbaa !141 ; 2 uses
  %i.eb = load i32, ptr %i.x, align 4, !tbaa !145
  %.not.i238 = icmp ult i32 %i.ea, %i.eb
  br i1 %.not.i238, label %.split, label %.split295, !prof !146

.split295:                                        ; preds = %bb.u
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.di)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit239

.split:                                           ; preds = %bb.u
  %i.ec = zext i32 %i.ea to i64
  %i.ed = load ptr, ptr %4, align 8, !tbaa !37
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ec
  store ptr %i.di, ptr %i.ee, align 1
  %i.ef = load i32, ptr %i.w, align 8, !tbaa !141
  %i.eg = add i32 %i.ef, 1
  store i32 %i.eg, ptr %i.w, align 8, !tbaa !141
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit239

_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit239: ; preds = %.lr.ph.i.i227, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i210, %.split, %.split295
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %7
  br i1 %exitcond, label %bb.v, label %bb.r, !llvm.loop !1088

bb.v:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit239
  %i.eh = load i32, ptr %i.w, align 8, !tbaa !141
  %i.ei = zext i32 %i.eh to i64
  %i.ej = icmp samesign ugt i64 %i.cz, %i.ei
  br label %.thread296.jt4

.thread296.jt4:                                   ; preds = %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit209, %bb.v
  %i.ek = phi i1 [ false, %bb.v ], [ true, %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit209 ]
  %.6170.jt4 = phi i1 [ %.0164370, %bb.v ], [ true, %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit209 ] ; 2 uses
  %.3148.jt4 = phi i1 [ %i.ej, %bb.v ], [ false, %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit209 ]
  %i.el = load i8, ptr %i.ab, align 8, !tbaa !45, !range !46, !noundef !47
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.jt4, label %bb.w

bb.w:                                             ; preds = %.thread296.jt4
  %i.en = load ptr, ptr %5, align 8, !tbaa !48
  call void @free(ptr noundef %i.en) #24
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.jt4

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.jt4:       ; preds = %bb.w, %.thread296.jt4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %i.ek, label %.thread284.jt4, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.jt4
  br i1 %.3148.jt4, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.split298, %bb.x
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !181
  %i.eq = load i32, ptr %i.w, align 8, !tbaa !141
  %i.er = zext i32 %i.eq to i64
  %i.es = call noundef ptr @_ZN4llvm9ArrayType3getEPNS_4TypeEm(ptr noundef %i.ep, i64 noundef %i.er) #24
  %i.et = load ptr, ptr %4, align 8, !tbaa !37
  %i.eu = load i32, ptr %i.w, align 8, !tbaa !141
  %i.ev = zext i32 %i.eu to i64
  %i.ew = call noundef ptr @_ZN4llvm13ConstantArray3getEPNS_9ArrayTypeENS_8ArrayRefIPNS_8ConstantEEE(ptr noundef %i.es, ptr %i.et, i64 %i.ev) #24
  br label %bb.z

bb.z:                                             ; preds = %.split298, %bb.y, %bb.x
  %.4149299 = phi i1 [ true, %bb.y ], [ false, %bb.x ], [ false, %.split298 ]
  %.0270 = phi ptr [ %i.ew, %bb.y ], [ %i.by, %bb.x ], [ %i.by, %.split298 ] ; 2 uses
  %.8172 = phi i1 [ true, %bb.y ], [ %.6170.jt4, %bb.x ], [ %.0164370, %.split298 ] ; 2 uses
  %i.ex = load i32, ptr %i.h, align 8, !tbaa !141 ; 2 uses
  %i.ey = load i32, ptr %i.i, align 4, !tbaa !145
  %.not.i240 = icmp ult i32 %i.ex, %i.ey
  br i1 %.not.i240, label %bb.ab, label %bb.aa, !prof !146

bb.aa:                                            ; preds = %bb.z
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %.0270)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit241

bb.ab:                                            ; preds = %bb.z
  %i.ez = zext i32 %i.ex to i64
  %i.fa = load ptr, ptr %2, align 8, !tbaa !37
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ez
  store ptr %.0270, ptr %i.fb, align 1
  %i.fc = load i32, ptr %i.h, align 8, !tbaa !141
  %i.fd = add i32 %i.fc, 1
  store i32 %i.fd, ptr %i.h, align 8, !tbaa !141
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit241

_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit241: ; preds = %bb.aa, %bb.ab
  %i.fe = load i32, ptr %i.w, align 8
  %.not184 = icmp eq i32 %i.fe, 0
  %or.cond323 = select i1 %.4149299, i1 %.not184, i1 false
  br i1 %or.cond323, label %.thread284.jt2, label %.thread284.jt4

.thread284.jt2:                                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit241
  %i.ff = load ptr, ptr %4, align 8, !tbaa !37    ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.v
  br i1 %i.fg, label %bb.ae, label %bb.ac

.thread284.jt4:                                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit241, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.jt4, %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit205
  %.9.jt4 = phi i1 [ true, %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit205 ], [ %.6170.jt4, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.jt4 ], [ %.8172, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit241 ]
  %i.fh = load ptr, ptr %4, align 8, !tbaa !37    ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.v
  br i1 %i.fi, label %bb.af, label %bb.ad

bb.ac:                                            ; preds = %.thread284.jt2
  call void @free(ptr noundef %i.ff) #24
  br label %bb.ae

bb.ad:                                            ; preds = %.thread284.jt4
  call void @free(ptr noundef %i.fh) #24
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac, %.thread284.jt2
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.thread315

bb.af:                                            ; preds = %bb.ad, %.thread284.jt4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.thread307

.thread307:                                       ; preds = %bb.af, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit, %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit
  %.12311 = phi i1 [ %.9.jt4, %bb.af ], [ %.1165, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit ], [ %.1165, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit ], [ %.1165, %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit ], [ %.1165, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit ], [ %.1165, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit ], [ %.1165, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit ] ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next438, %i.ac
  br i1 %.not, label %.thread315, label %bb.b, !llvm.loop !1089

.thread315.loopexit.split.loop.exit360:           ; preds = %_ZL10isCatchAllN4llvm13EHPersonalityEPNS_8ConstantE.exit
  %i.fj = trunc nuw nsw i64 %indvars.iv.next438 to i32
  %i.fk = icmp ne i32 %i.t, %i.fj
  %spec.select.le = select i1 %i.fk, i1 true, i1 %.1165
  br label %.thread315

.thread315:                                       ; preds = %.thread307, %bb.ae, %.thread315.loopexit.split.loop.exit360, %.thread301
  %.13 = phi i1 [ %spec.select196, %.thread301 ], [ %.8172, %bb.ae ], [ %spec.select.le, %.thread315.loopexit.split.loop.exit360 ], [ %.12311, %.thread307 ] ; 2 uses
  %.6162 = phi i8 [ 0, %.thread301 ], [ 0, %bb.ae ], [ 0, %.thread315.loopexit.split.loop.exit360 ], [ %i.m, %.thread307 ] ; 3 uses
  %i.fl = load i32, ptr %i.h, align 8, !tbaa !141 ; 3 uses
  %i.fm = icmp ugt i32 %i.fl, 1
  br i1 %i.fm, label %.preheader344.preheader, label %.preheader343.thread

.thread315.thread:                                ; preds = %bb.a
  %i.fn = load i32, ptr %i.h, align 8, !tbaa !141 ; 2 uses
  %i.fo = icmp ugt i32 %i.fn, 1
  br i1 %i.fo, label %.preheader344.preheader, label %.preheader343.thread.thread

.preheader343.thread:                             ; preds = %.thread315
  br i1 %.13, label %bb.bp, label %.preheader343.thread.thread

.preheader344.preheader:                          ; preds = %.thread315.thread, %.thread315
  %i.fp = phi i32 [ %i.fn, %.thread315.thread ], [ %i.fl, %.thread315 ] ; 5 uses
  %.6162500 = phi i8 [ %i.m, %.thread315.thread ], [ %.6162, %.thread315 ] ; 2 uses
  %.13496 = phi i1 [ false, %.thread315.thread ], [ %.13, %.thread315 ]
  %.pre449.pre455 = load ptr, ptr %2, align 8
  br label %.preheader344

.preheader344:                                    ; preds = %.preheader344.preheader, %_ZSt11stable_sortIPPN4llvm8ConstantEPFbPKNS0_5ValueES6_EEvT_S9_T0_.exit
  %.pre449 = phi ptr [ %.pre449456, %_ZSt11stable_sortIPPN4llvm8ConstantEPFbPKNS0_5ValueES6_EEvT_S9_T0_.exit ], [ %.pre449.pre455, %.preheader344.preheader ] ; 8 uses
  %.0140383 = phi i32 [ %i.hn, %_ZSt11stable_sortIPPN4llvm8ConstantEPFbPKNS0_5ValueES6_EEvT_S9_T0_.exit ], [ 0, %.preheader344.preheader ] ; 6 uses
  %.14382 = phi i1 [ %.15, %_ZSt11stable_sortIPPN4llvm8ConstantEPFbPKNS0_5ValueES6_EEvT_S9_T0_.exit ], [ %.13496, %.preheader344.preheader ] ; 2 uses
  %.not195376 = icmp eq i32 %.0140383, %i.fp
  br i1 %.not195376, label %._crit_edge, label %.lr.ph378

.preheader343:                                    ; preds = %_ZSt11stable_sortIPPN4llvm8ConstantEPFbPKNS0_5ValueES6_EEvT_S9_T0_.exit
  %.pre450 = load i32, ptr %i.h, align 8, !tbaa !141 ; 3 uses
  %i.fq = icmp ugt i32 %.pre450, 1
  br i1 %i.fq, label %.lr.ph403, label %._crit_edge404

.lr.ph378:                                        ; preds = %.preheader344, %bb.ag
  %.0139377 = phi i32 [ %i.ga, %bb.ag ], [ %.0140383, %.preheader344 ] ; 3 uses
  %i.fr = zext i32 %.0139377 to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %.pre449, i64 %i.fr
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !202
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !148
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load i32, ptr %i.fw, align 8
  %i.fy = and i32 %i.fx, 255
  %i.fz = icmp eq i32 %i.fy, 17
  br i1 %i.fz, label %bb.ag, label %._crit_edge

bb.ag:                                            ; preds = %.lr.ph378
  %i.ga = add i32 %.0139377, 1                    ; 2 uses
  %.not195 = icmp eq i32 %i.ga, %i.fp
  br i1 %.not195, label %._crit_edge, label %.lr.ph378, !llvm.loop !1090

._crit_edge:                                      ; preds = %bb.ag, %.lr.ph378, %.preheader344
  %.0139.lcssa = phi i32 [ %i.fp, %.preheader344 ], [ %.0139377, %.lr.ph378 ], [ %i.fp, %bb.ag ] ; 6 uses
  %i.gb = add i32 %.0140383, 1                    ; 2 uses
  %i.gc = icmp ult i32 %i.gb, %.0139.lcssa
  br i1 %i.gc, label %.lr.ph548, label %_ZSt11stable_sortIPPN4llvm8ConstantEPFbPKNS0_5ValueES6_EEvT_S9_T0_.exit

bb.ah:                                            ; preds = %.lr.ph548
  %i.gd = add i32 %i.gf, 1                        ; 2 uses
  %i.ge = icmp ult i32 %i.gd, %.0139.lcssa
  br i1 %i.ge, label %.lr.ph548, label %_ZSt11stable_sortIPPN4llvm8ConstantEPFbPKNS0_5ValueES6_EEvT_S9_T0_.exit, !llvm.loop !1091

.lr.ph548:                                        ; preds = %._crit_edge, %bb.ah
  %i.gf = phi i32 [ %i.gd, %bb.ah ], [ %i.gb, %._crit_edge ] ; 3 uses
  %.0138547 = phi i32 [ %i.gf, %bb.ah ], [ %.0140383, %._crit_edge ]
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %.pre449, i64 %i.gg
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !202
  %i.gj = zext i32 %.0138547 to i64
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %.pre449, i64 %i.gj
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !202
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !148
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !180
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !148
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !180
  %i.gu = icmp ult i64 %i.gp, %i.gt
  br i1 %i.gu, label %bb.ai, label %bb.ah, !llvm.loop !1091

bb.ai:                                            ; preds = %.lr.ph548
  %i.gv = zext i32 %.0140383 to i64
  %.idx336 = shl nuw nsw i64 %i.gv, 3             ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.pre449, i64 %.idx336 ; 4 uses
  %i.gx = zext i32 %.0139.lcssa to i64
  %.idx335 = shl nuw nsw i64 %i.gx, 3             ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.pre449, i64 %.idx335 ; 3 uses
  %i.gz = icmp eq i32 %.0140383, %.0139.lcssa
  br i1 %i.gz, label %_ZSt11stable_sortIPPN4llvm8ConstantEPFbPKNS0_5ValueES6_EEvT_S9_T0_.exit, label %bb.aj

end_hunk_0
