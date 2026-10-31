Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/BytecodeGraph?download=true
inline.NumInlined: 3821
inline.NumDeleted: 1895
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE9sealBlockENS0_4BcOpE:bb.a

.lr.ph.i.i.i30:                                   ; preds = %_ZNSt6vectorISt4pairIhN4Luau8Bytecode4BcOpEESaIS4_EEC2INSt8__detail14_Node_iteratorIS0_IKhS3_ELb0ELb0EEEvEET_SD_RKS5_.exit, %.lr.ph.i.i.i30
  %.06.i.i.i31 = phi ptr [ %i.ae, %.lr.ph.i.i.i30 ], [ %.pr, %_ZNSt6vectorISt4pairIhN4Luau8Bytecode4BcOpEESaIS4_EEC2INSt8__detail14_Node_iteratorIS0_IKhS3_ELb0ELb0EEEvEET_SD_RKS5_.exit ] ; 2 uses
  %i.ae = load ptr, ptr %.06.i.i.i31, align 8, !tbaa !245 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i31, i64 noundef 16) #19
  %.not.i.i.i32 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i32, label %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEE5clearEv.exit, label %.lr.ph.i.i.i30, !llvm.loop !11

_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEE5clearEv.exit: ; preds = %.lr.ph.i.i.i30, %bb.c, %_ZNSt6vectorISt4pairIhN4Luau8Bytecode4BcOpEESaIS4_EEC2INSt8__detail14_Node_iteratorIS0_IKhS3_ELb0ELb0EEEvEET_SD_RKS5_.exit
  %.0.lcssa.i.i.i.i.i.i63 = phi ptr [ null, %bb.c ], [ %i.ac, %_ZNSt6vectorISt4pairIhN4Luau8Bytecode4BcOpEESaIS4_EEC2INSt8__detail14_Node_iteratorIS0_IKhS3_ELb0ELb0EEEvEET_SD_RKS5_.exit ], [ %i.ac, %.lr.ph.i.i.i30 ] ; 2 uses
  %.sroa.049.061 = phi ptr [ null, %bb.c ], [ %i.v, %_ZNSt6vectorISt4pairIhN4Luau8Bytecode4BcOpEESaIS4_EEC2INSt8__detail14_Node_iteratorIS0_IKhS3_ELb0ELb0EEEvEET_SD_RKS5_.exit ], [ %i.v, %.lr.ph.i.i.i30 ] ; 8 uses
  %.sroa.11.060 = phi ptr [ null, %bb.c ], [ %i.ad, %_ZNSt6vectorISt4pairIhN4Luau8Bytecode4BcOpEESaIS4_EEC2INSt8__detail14_Node_iteratorIS0_IKhS3_ELb0ELb0EEEvEET_SD_RKS5_.exit ], [ %i.ad, %.lr.ph.i.i.i30 ] ; 2 uses
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !319
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !320
  %i.ai = shl i64 %i.ah, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.af, i8 0, i64 %i.ai, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %.not80 = icmp eq ptr %.sroa.049.061, %.0.lcssa.i.i.i.i.i.i63
  br i1 %.not80, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.critedge, %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEE5clearEv.exit
  %.not.i.i.i33 = icmp eq ptr %.sroa.049.061, null
  br i1 %.not.i.i.i33, label %_ZNSt6vectorISt4pairIhN4Luau8Bytecode4BcOpEESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.aj = ptrtoint ptr %.sroa.11.060 to i64
  %i.ak = ptrtoint ptr %.sroa.049.061 to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.049.061, i64 noundef %i.al) #19
  br label %_ZNSt6vectorISt4pairIhN4Luau8Bytecode4BcOpEESaIS4_EED2Ev.exit

.lr.ph:                                           ; preds = %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEE5clearEv.exit, %.critedge
  %.sroa.045.081 = phi ptr [ %i.bz, %.critedge ], [ %.sroa.049.061, %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEE5clearEv.exit ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.045.081, i64 4 ; 2 uses
  %i.an = load i8, ptr %.sroa.045.081, align 1, !tbaa !33
  %.sroa.02.0.copyload = load i32, ptr %i.am, align 4, !tbaa !33
  %i.ao = invoke i32 @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE14addPhiOperandsEhNS0_4BcOpES4_(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 noundef zeroext %i.an, i32 %.sroa.02.0.copyload, i32 %1)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %.lr.ph
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !201
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !202 ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = sdiv exact i64 %i.at, 192               ; 2 uses
  %.not.i.i35 = icmp ugt i64 %i.au, %i.c
  br i1 %.not.i.i35, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, i64 noundef %i.c, i64 noundef %i.au) #18
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw [192 x i8], ptr %i.aq, i64 %i.c ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 80
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !323
  %.not.not.i.i = icmp eq i64 %i.ax, 0
  %i.ay = load i8, ptr %.sroa.045.081, align 4    ; 4 uses
  br i1 %.not.not.i.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.sroa.06.0.in.i.i = phi ptr [ %i.az, %bb.h ], [ %.sroa.06.0.i.i, %bb.j ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !245 ; 4 uses
  %.not.i.i37 = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i37, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !33
  %i.bc = icmp eq i8 %i.ay, %i.bb
  br i1 %i.bc, label %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEE4findERS8_.exit, label %bb.i, !llvm.loop !13

bb.k:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.be = zext i8 %i.ay to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !320 ; 2 uses
  %i.bh = urem i64 %i.be, %i.bg                   ; 2 uses
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !319
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !244 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !245 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !33
  %i.bo = icmp eq i8 %i.ay, %i.bn
  br i1 %i.bo, label %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEE4findERS8_.exit, label %.lr.ph.i.i.i.i

bb.m:                                             ; preds = %bb.n
  %i.bp = icmp eq i8 %i.ay, %i.bs
  br i1 %i.bp, label %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEE4findERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %bb.m
  %.020.i.i.i.i = phi ptr [ %i.bq, %bb.m ], [ %i.bl, %bb.l ]
  %i.bq = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !245 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not18.i.i.i.i, label %.critedge, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !33  ; 2 uses
  %i.bt = zext i8 %i.bs to i64
  %i.bu = urem i64 %i.bt, %i.bg
  %.not19.i.i.i.i = icmp eq i64 %i.bu, %i.bh
  br i1 %.not19.i.i.i.i, label %bb.m, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !12

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.n
  br label %.critedge, !llvm.loop !12

_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEE4findERS8_.exit: ; preds = %bb.m, %bb.j, %bb.l
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.j ], [ %i.bl, %bb.l ], [ %i.bq, %bb.m ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 12 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = load i32, ptr %i.am, align 4
  %i.by = icmp eq i32 %i.bw, %i.bx
  br i1 %i.by, label %bb.o, label %.critedge

bb.o:                                             ; preds = %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEE4findERS8_.exit
  store i32 %i.ao, ptr %i.bv, align 4, !tbaa !33
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.i.i.i.i, %bb.i, %bb.k, %..loopexit_crit_edge21.i.i.i.i, %bb.o, %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEE4findERS8_.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.045.081, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bz, %.0.lcssa.i.i.i.i.i.i63
  br i1 %.not, label %._crit_edge, label %.lr.ph

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.f
  %lpad.loopexit.split-lp116 = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i38 = icmp eq ptr %.sroa.049.061, null
  br i1 %.not.i.i.i38, label %.body, label %.thread

.thread:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ca = ptrtoint ptr %.sroa.11.060 to i64
  %i.cb = ptrtoint ptr %.sroa.049.061 to i64
  %i.cc = sub i64 %i.ca, %i.cb
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.049.061, i64 noundef %i.cc) #19
  br label %.body

_ZNSt6vectorISt4pairIhN4Luau8Bytecode4BcOpEESaIS4_EED2Ev.exit: ; preds = %bb.d, %._crit_edge, %_ZNSt6vectorIN4Luau8Bytecode19BytecodeGraphParserINS1_9BcVmConstEE14BlockProducersESaIS5_EE2atEm.exit
  ret void

.body:                                            ; preds = %.thread, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp116
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 115292150460684697
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !269
  %i.d = load ptr, ptr %0, align 8, !tbaa !218
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 80
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIN4Luau8Bytecode6BcInstESaIS2_EE11_M_allocateEm.exit, label %bb.h

_ZNSt12_Vector_baseIN4Luau8Bytecode6BcInstESaIS2_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !268
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 80
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #20 ; 5 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !218    ; 3 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !268  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNSt12_Vector_baseIN4Luau8Bytecode6BcInstESaIS2_EE11_M_allocateEm.exit
  %i.r = ptrtoaddr ptr %i.o to i64
  %i.s = add i64 %i.r, 24
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %indvar = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %indvar.next, %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ] ; 2 uses
  %.012.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.preheader ], [ %i.bg, %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ] ; 9 uses
  %.0911.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.bf, %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598)
  %i.t = load i64, ptr %.0911.i.i.i, align 8, !alias.scope !598
  store i64 %i.t, ptr %.012.i.i.i, align 8, !alias.scope !597
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store i32 0, ptr %i.w, align 8, !tbaa !239, !alias.scope !597
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 20
  store i32 4, ptr %i.x, align 4, !tbaa !240, !alias.scope !597
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 5 uses
  store ptr %i.y, ptr %i.u, align 8, !tbaa !241, !alias.scope !597
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !241, !alias.scope !598 ; 10 uses
  %i.aa = ptrtoaddr ptr %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !239, !alias.scope !598 ; 3 uses
  %i.ae = zext i32 %i.ad to i64
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.ae, 2    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i.i.i.i.i.i
  %.not11.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.d
  %i.ag = add nsw i64 %.idx.i.i.i.i.i.i, -4       ; 2 uses
  %i.ah = lshr exact i64 %i.ag, 2
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ag, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader21, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %2 = mul i64 %indvar, 80
  %3 = add i64 %i.s, %2
  %4 = sub i64 %i.aa, %3
  %diff.check = icmp ugt i64 %4, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader21, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ai, 9223372036854775800     ; 3 uses
  %i.aj = shl i64 %n.vec, 2                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.y, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.z, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.am ; 2 uses
  %next.gep18 = getelementptr i8, ptr %i.z, i64 %i.am ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep18, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep18, align 4, !tbaa !33, !noalias !598
  %wide.load19 = load <4 x i32>, ptr %i.an, align 4, !tbaa !33, !noalias !598
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !33, !alias.scope !597
  store <4 x i32> %wide.load19, ptr %i.ao, align 4, !tbaa !33, !alias.scope !597
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !595

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader21

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader21:           ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader21, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader21 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader21 ] ; 2 uses
  %i.aq = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !33, !noalias !598
  store i32 %i.aq, ptr %.013.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !33, !alias.scope !597
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ar, %i.af
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !596

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block
  store i32 %i.ad, ptr %i.w, align 8, !tbaa !239, !alias.scope !597
  store i32 0, ptr %i.ac, align 8, !tbaa !239, !alias.scope !598
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  store ptr %i.z, ptr %i.u, align 8, !tbaa !241, !alias.scope !597
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 20
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.av = load <2 x i32>, ptr %i.au, align 8, !tbaa !129, !alias.scope !598
  store <2 x i32> %i.av, ptr %i.w, align 8, !tbaa !129, !alias.scope !597
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !241, !alias.scope !598
  store i32 4, ptr %i.at, align 4, !tbaa !240, !alias.scope !598
  store i32 0, ptr %i.au, align 8, !tbaa !239, !alias.scope !598
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.preheader.i.i.i.i.i.i.i, %bb.d
  %i.aw = phi ptr [ %i.ab, %bb.e ], [ %i.z, %.lr.ph.preheader.i.i.i.i.i.i.i ], [ %i.z, %bb.d ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.az = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !237, !alias.scope !598
  store <2 x ptr> %i.az, ptr %i.ax, align 8, !tbaa !237, !alias.scope !597
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !251, !alias.scope !598
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !251, !alias.scope !597
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false), !alias.scope !598
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bd, ptr noundef nonnull align 8 dereferenceable(12) %i.be, i64 12, i1 false), !alias.scope !599
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.aw, %i.ab
  br i1 %.not.i.i8.i.i.i.i, label %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.aw) #17
  br label %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.f, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80
  %.not.i.i.i = icmp eq ptr %i.bf, %i.q
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exitthread-pre-split, label %.lr.ph.i.i.i, !llvm.loop !14

_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exitthread-pre-split: ; preds = %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !218
  br label %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exitthread-pre-split, %_ZNSt12_Vector_baseIN4Luau8Bytecode6BcInstESaIS2_EE11_M_allocateEm.exit
  %i.bh = phi ptr [ %.pr, %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exitthread-pre-split ], [ %i.p, %_ZNSt12_Vector_baseIN4Luau8Bytecode6BcInstESaIS2_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.bh, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIN4Luau8Bytecode6BcInstESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !269
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = sub i64 %i.bj, %i.bk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bl) #19
  br label %_ZNSt12_Vector_baseIN4Luau8Bytecode6BcInstESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4Luau8Bytecode6BcInstESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.g
  store ptr %i.o, ptr %0, align 8, !tbaa !218
  %i.bm = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.bm, ptr %i.j, align 8, !tbaa !268
  %i.bn = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %1
  store ptr %i.bn, ptr %i.b, align 8, !tbaa !269
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIN4Luau8Bytecode6BcInstESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN4Luau11getOpLengthE10LuauOpcode(i32 noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %switch.tableidx = add i32 %0, -7               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 83
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4Luau11getOpLengthE10LuauOpcode, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE7addInstEv(ptr noundef nonnull align 8 dereferenceable(456) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.Luau::Bytecode::BcInst", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  store i32 0, ptr %1, align 8, !tbaa !231
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  store i32 0, ptr %i.d, align 8, !tbaa !239
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  store i32 4, ptr %i.e, align 4, !tbaa !240
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !241
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.g, i8 0, i64 36, i1 false)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !268  ; 11 uses
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !269
  %.not.i = icmp eq ptr %i.j, %i.m
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %1, align 8
  store i64 %i.n, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store i32 0, ptr %i.p, align 8, !tbaa !239
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store i32 4, ptr %i.q, align 4, !tbaa !240
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 5 uses
  store ptr %i.r, ptr %i.o, align 8, !tbaa !241
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !241  ; 8 uses
  %i.t = ptrtoaddr ptr %i.s to i64
  %.not.i.i.i = icmp eq ptr %i.s, %i.f
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = load i32, ptr %i.d, align 8, !tbaa !239  ; 2 uses
  %i.v = zext i32 %i.u to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.v, 2           ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.i.i.i
  %.not11.i.i.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.c
  %i.x = add nsw i64 %.idx.i.i.i, -4              ; 2 uses
  %i.y = lshr exact i64 %i.x, 2
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader11, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.aa = sub i64 %i.k, %i.t
  %i.ab = add i64 %i.aa, 23
  %diff.check = icmp ult i64 %i.ab, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 9223372036854775800      ; 3 uses
  %i.ac = shl i64 %n.vec, 2                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.r, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.s, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.af ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.s, i64 %i.af ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep8, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep8, align 4, !tbaa !33
  %wide.load9 = load <4 x i32>, ptr %i.ag, align 4, !tbaa !33
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !33
  store <4 x i32> %wide.load9, ptr %i.ah, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !600

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.i.i.preheader11:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader11 ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE6addPhiEv:bb.a
          to label %_ZNSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit unwind label %bb.h

_ZNSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit: ; preds = %bb.e
  %.pr = load ptr, ptr %i.e, align 8, !tbaa !250  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !251
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %.pr to i64
  %i.au = sub i64 %i.as, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.au) #19
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit.i: ; preds = %_ZNSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.thread, %bb.f, %_ZNSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit
  %.promoted.i.i.i = load i32, ptr %i.b, align 8, !tbaa !239
  %.not1.i.i.i = icmp eq i32 %.promoted.i.i.i, 0
  br i1 %.not1.i.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit.i
  store i32 0, ptr %i.b, align 8, !tbaa !239
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit.i
  %i.av = load ptr, ptr %1, align 8, !tbaa !241   ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, %i.d
  br i1 %.not.i.i, label %_ZN4Luau8Bytecode5BcPhiD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.av) #17
  br label %_ZN4Luau8Bytecode5BcPhiD2Ev.exit

_ZN4Luau8Bytecode5BcPhiD2Ev.exit:                 ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !264
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !263
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = sdiv exact i64 %i.ba, 56
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = shl i32 %i.bc, 4
  %i.be = add i32 %i.bd, -12
  ret i32 %i.be

bb.h:                                             ; preds = %bb.e
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau8Bytecode5BcPhiD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %i.bf
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !263    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 56                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 164703072086692425)
  %i.l = select i1 %i.j, i64 164703072086692425, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 56
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #20 ; 6 uses
  %i.q = ptrtoaddr ptr %i.p to i64                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  store i32 0, ptr %i.s, align 8, !tbaa !239
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 4, ptr %i.t, align 4, !tbaa !240
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  store ptr %i.u, ptr %i.r, align 8, !tbaa !241
  %i.v = load ptr, ptr %2, align 8, !tbaa !241    ; 8 uses
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !239  ; 3 uses
  %i.aa = zext i32 %i.z to i64
  %.idx.i.i = shl nuw nsw i64 %i.aa, 2            ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx.i.i
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not11.i.i.i.i.i.i, label %_ZN4Luau8Bytecode5BcPhiC2EOS1_.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.c
  %i.ac = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.ad = lshr exact i64 %i.ac, 2
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader107, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.af = add i64 %i.q, %i.m
  %i.ag = add i64 %i.w, %i.e
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = add i64 %i.ah, 15
  %diff.check = icmp ult i64 %i.ai, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.preheader107, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, 9223372036854775800     ; 3 uses
  %i.aj = shl i64 %n.vec, 2                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.u, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.v, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.am ; 2 uses
  %next.gep63 = getelementptr i8, ptr %i.v, i64 %i.am ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep63, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep63, align 4, !tbaa !33
  %wide.load64 = load <4 x i32>, ptr %i.an, align 4, !tbaa !33
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !33
  store <4 x i32> %wide.load64, ptr %i.ao, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !668

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader107

.lr.ph.i.i.i.i.i.i.preheader107:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader107, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader107 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader107 ] ; 2 uses
  %i.aq = load i32, ptr %.sroa.08.012.i.i.i.i.i.i, align 4, !tbaa !33
  store i32 %i.aq, ptr %.013.i.i.i.i.i.i, align 4, !tbaa !33
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ar, %i.ab
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !669

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  store i32 %i.z, ptr %i.s, align 8, !tbaa !239
  store i32 0, ptr %i.y, align 8, !tbaa !239
  br label %_ZN4Luau8Bytecode5BcPhiC2EOS1_.exit

bb.d:                                             ; preds = %_ZNKSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE12_M_check_lenEmPKc.exit
  store ptr %i.v, ptr %i.r, align 8, !tbaa !241
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.av = load <2 x i32>, ptr %i.au, align 8, !tbaa !129
  store <2 x i32> %i.av, ptr %i.s, align 8, !tbaa !129
  store ptr %i.x, ptr %2, align 8, !tbaa !241
  store i32 4, ptr %i.at, align 4, !tbaa !240
  store i32 0, ptr %i.au, align 8, !tbaa !239
  br label %_ZN4Luau8Bytecode5BcPhiC2EOS1_.exit

_ZN4Luau8Bytecode5BcPhiC2EOS1_.exit:              ; preds = %bb.c, %.lr.ph.preheader.i.i.i, %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ay = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !237
  store <2 x ptr> %i.ay, ptr %i.aw, align 8, !tbaa !237
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !251
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !251
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN4Luau8Bytecode5BcPhiC2EOS1_.exit
  %i.bc = add i64 %i.q, 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt19__relocate_object_aIN4Luau8Bytecode5BcPhiES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %indvar = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %indvar.next, %_ZSt19__relocate_object_aIN4Luau8Bytecode5BcPhiES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ] ; 2 uses
  %.012.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.cl, %_ZSt19__relocate_object_aIN4Luau8Bytecode5BcPhiES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ck, %_ZSt19__relocate_object_aIN4Luau8Bytecode5BcPhiES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682)
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 3 uses
  store i32 0, ptr %i.bd, align 8, !tbaa !239, !alias.scope !681
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 12
  store i32 4, ptr %i.be, align 4, !tbaa !240, !alias.scope !681
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 5 uses
  store ptr %i.bf, ptr %.012.i.i.i, align 8, !tbaa !241, !alias.scope !681
  %i.bg = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !241, !alias.scope !682 ; 10 uses
  %i.bh = ptrtoaddr ptr %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 4 uses
  %.not.i.i.i.i.i.i16 = icmp eq ptr %i.bg, %i.bi
  br i1 %.not.i.i.i.i.i.i16, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !239, !alias.scope !682 ; 3 uses
  %i.bl = zext i32 %i.bk to i64
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.bl, 2    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx.i.i.i.i.i.i
  %.not11.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.e
  %i.bn = add nsw i64 %.idx.i.i.i.i.i.i, -4       ; 2 uses
  %i.bo = lshr exact i64 %i.bn, 2
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check69 = icmp ult i64 %i.bn, 28
  br i1 %min.iters.check69, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader105, label %vector.memcheck70

vector.memcheck70:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %3 = mul i64 %indvar, 56
  %4 = add i64 %i.bc, %3
  %5 = sub i64 %i.bh, %4
  %diff.check71 = icmp ugt i64 %5, -32
  br i1 %diff.check71, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader105, label %vector.ph70

vector.ph70:                                      ; preds = %vector.memcheck70
  %n.vec71 = and i64 %i.bp, 9223372036854775800   ; 3 uses
  %i.bq = shl i64 %n.vec71, 2                     ; 2 uses
  %i.br = getelementptr i8, ptr %i.bf, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.bg, i64 %i.bq
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %vector.ph70
  %index73 = phi i64 [ 0, %vector.ph70 ], [ %index.next78, %vector.body72 ] ; 2 uses
  %i.bt = shl i64 %index73, 2                     ; 2 uses
  %next.gep74 = getelementptr i8, ptr %i.bf, i64 %i.bt ; 2 uses
  %next.gep75 = getelementptr i8, ptr %i.bg, i64 %i.bt ; 2 uses
  %i.bu = getelementptr i8, ptr %next.gep75, i64 16
  %wide.load76 = load <4 x i32>, ptr %next.gep75, align 4, !tbaa !33, !noalias !682
  %wide.load77 = load <4 x i32>, ptr %i.bu, align 4, !tbaa !33, !noalias !682
  %i.bv = getelementptr i8, ptr %next.gep74, i64 16
  store <4 x i32> %wide.load76, ptr %next.gep74, align 4, !tbaa !33, !alias.scope !681
  store <4 x i32> %wide.load77, ptr %i.bv, align 4, !tbaa !33, !alias.scope !681
  %index.next78 = add nuw i64 %index73, 8         ; 2 uses
  %i.bw = icmp eq i64 %index.next78, %n.vec71
  br i1 %i.bw, label %middle.block79, label %vector.body72, !llvm.loop !673

middle.block79:                                   ; preds = %vector.body72
  %cmp.n80 = icmp eq i64 %i.bp, %n.vec71
  br i1 %cmp.n80, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader105

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader105:          ; preds = %vector.memcheck70, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block79
  %.013.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bf, %vector.memcheck70 ], [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.br, %middle.block79 ]
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bg, %vector.memcheck70 ], [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bs, %middle.block79 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader105, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader105 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader105 ] ; 2 uses
  %i.bx = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !33, !noalias !682
  store i32 %i.bx, ptr %.013.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !33, !alias.scope !681
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.by, %i.bm
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !674

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block79
  store i32 %i.bk, ptr %i.bd, align 8, !tbaa !239, !alias.scope !681
  store i32 0, ptr %i.bj, align 8, !tbaa !239, !alias.scope !682
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  store ptr %i.bg, ptr %.012.i.i.i, align 8, !tbaa !241, !alias.scope !681
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 12
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.cc = load <2 x i32>, ptr %i.cb, align 8, !tbaa !129, !alias.scope !682
  store <2 x i32> %i.cc, ptr %i.bd, align 8, !tbaa !129, !alias.scope !681
  store ptr %i.bi, ptr %.0911.i.i.i, align 8, !tbaa !241, !alias.scope !682
  store i32 4, ptr %i.ca, align 4, !tbaa !240, !alias.scope !682
  store i32 0, ptr %i.cb, align 8, !tbaa !239, !alias.scope !682
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.preheader.i.i.i.i.i.i.i, %bb.e
  %i.cd = phi ptr [ %i.bi, %bb.f ], [ %i.bg, %.lr.ph.preheader.i.i.i.i.i.i.i ], [ %i.bg, %bb.e ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.cg = load <2 x ptr>, ptr %i.cf, align 8, !tbaa !237, !alias.scope !682
  store <2 x ptr> %i.cg, ptr %i.ce, align 8, !tbaa !237, !alias.scope !681
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !251, !alias.scope !682
  store ptr %i.cj, ptr %i.ch, align 8, !tbaa !251, !alias.scope !681
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i8 0, i64 24, i1 false), !alias.scope !682
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.cd, %i.bi
  br i1 %.not.i.i8.i.i.i.i, label %_ZSt19__relocate_object_aIN4Luau8Bytecode5BcPhiES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.cd) #17
  br label %_ZSt19__relocate_object_aIN4Luau8Bytecode5BcPhiES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN4Luau8Bytecode5BcPhiES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.g, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ck, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !675

_ZNSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN4Luau8Bytecode5BcPhiES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN4Luau8Bytecode5BcPhiC2EOS1_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZN4Luau8Bytecode5BcPhiC2EOS1_.exit ], [ %i.cl, %_ZSt19__relocate_object_aIN4Luau8Bytecode5BcPhiES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 56 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34, label %.lr.ph.i.i.i18.preheader

.lr.ph.i.i.i18.preheader:                         ; preds = %_ZNSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i84 = ptrtoaddr ptr %.0.lcssa.i.i.i to i64
  %i.cn = add i64 %.0.lcssa.i.i.i84, 72
  br label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %.lr.ph.i.i.i18.preheader, %_ZSt19__relocate_object_aIN4Luau8Bytecode5BcPhiES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i24
  %indvar85 = phi i64 [ 0, %.lr.ph.i.i.i18.preheader ], [ %indvar.next86, %_ZSt19__relocate_object_aIN4Luau8Bytecode5BcPhiES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i24 ] ; 2 uses
  %.012.i.i.i19 = phi ptr [ %i.cm, %.lr.ph.i.i.i18.preheader ], [ %i.dw, %_ZSt19__relocate_object_aIN4Luau8Bytecode5BcPhiES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i24 ] ; 8 uses
  %.0911.i.i.i20 = phi ptr [ %1, %.lr.ph.i.i.i18.preheader ], [ %i.dv, %_ZSt19__relocate_object_aIN4Luau8Bytecode5BcPhiES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i24 ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684)
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 8 ; 3 uses
  store i32 0, ptr %i.co, align 8, !tbaa !239, !alias.scope !683
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 12
  store i32 4, ptr %i.cp, align 4, !tbaa !240, !alias.scope !683
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 16 ; 5 uses
  store ptr %i.cq, ptr %.012.i.i.i19, align 8, !tbaa !241, !alias.scope !683
  %i.cr = load ptr, ptr %.0911.i.i.i20, align 8, !tbaa !241, !alias.scope !684 ; 10 uses
  %i.cs = ptrtoaddr ptr %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16 ; 4 uses
  %.not.i.i.i.i.i.i21 = icmp eq ptr %i.cr, %i.ct
  br i1 %.not.i.i.i.i.i.i21, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i18
  %i.cu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !239, !alias.scope !684 ; 3 uses
  %i.cw = zext i32 %i.cv to i64
  %.idx.i.i.i.i.i.i27 = shl nuw nsw i64 %i.cw, 2  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx.i.i.i.i.i.i27
  %.not11.i.i.i.i.i.i.i.i.i.i28 = icmp eq i32 %i.cv, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i28, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i22, label %.lr.ph.i.i.i.i.i.i.i.i.i.i29.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i29.preheader:           ; preds = %bb.h
  %i.cy = add nsw i64 %.idx.i.i.i.i.i.i27, -4     ; 2 uses
  %i.cz = lshr exact i64 %i.cy, 2
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %min.iters.check89 = icmp ult i64 %i.cy, 28
  br i1 %min.iters.check89, label %.lr.ph.i.i.i.i.i.i.i.i.i.i29.preheader104, label %vector.memcheck95

vector.memcheck95:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i29.preheader
  %6 = mul i64 %indvar85, 56
  %7 = add i64 %i.cn, %6
  %8 = sub i64 %i.cs, %7
  %diff.check96 = icmp ugt i64 %8, -32
  br i1 %diff.check96, label %.lr.ph.i.i.i.i.i.i.i.i.i.i29.preheader104, label %vector.ph90

vector.ph90:                                      ; preds = %vector.memcheck95
  %n.vec91 = and i64 %i.da, 9223372036854775800   ; 3 uses
  %i.db = shl i64 %n.vec91, 2                     ; 2 uses
  %i.dc = getelementptr i8, ptr %i.cq, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.cr, i64 %i.db
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph90
  %index93 = phi i64 [ 0, %vector.ph90 ], [ %index.next98, %vector.body92 ] ; 2 uses
  %i.de = shl i64 %index93, 2                     ; 2 uses
  %next.gep94 = getelementptr i8, ptr %i.cq, i64 %i.de ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.cr, i64 %i.de ; 2 uses
  %i.df = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load96 = load <4 x i32>, ptr %next.gep95, align 4, !tbaa !33, !noalias !684
  %wide.load97 = load <4 x i32>, ptr %i.df, align 4, !tbaa !33, !noalias !684
  %i.dg = getelementptr i8, ptr %next.gep94, i64 16
  store <4 x i32> %wide.load96, ptr %next.gep94, align 4, !tbaa !33, !alias.scope !683
  store <4 x i32> %wide.load97, ptr %i.dg, align 4, !tbaa !33, !alias.scope !683
  %index.next98 = add nuw i64 %index93, 8         ; 2 uses
  %i.dh = icmp eq i64 %index.next98, %n.vec91
  br i1 %i.dh, label %middle.block99, label %vector.body92, !llvm.loop !679

middle.block99:                                   ; preds = %vector.body92
  %cmp.n100 = icmp eq i64 %i.da, %n.vec91
  br i1 %cmp.n100, label %.lr.ph.preheader.i.i.i.i.i.i.i33, label %.lr.ph.i.i.i.i.i.i.i.i.i.i29.preheader104

.lr.ph.i.i.i.i.i.i.i.i.i.i29.preheader104:        ; preds = %vector.memcheck95, %.lr.ph.i.i.i.i.i.i.i.i.i.i29.preheader, %middle.block99
  %.013.i.i.i.i.i.i.i.i.i.i30.ph = phi ptr [ %i.cq, %vector.memcheck95 ], [ %i.cq, %.lr.ph.i.i.i.i.i.i.i.i.i.i29.preheader ], [ %i.dc, %middle.block99 ]
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i31.ph = phi ptr [ %i.cr, %vector.memcheck95 ], [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.i.i.i29.preheader ], [ %i.dd, %middle.block99 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i29

.lr.ph.i.i.i.i.i.i.i.i.i.i29:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i29.preheader104, %.lr.ph.i.i.i.i.i.i.i.i.i.i29
  %.013.i.i.i.i.i.i.i.i.i.i30 = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i.i.i.i.i.i29 ], [ %.013.i.i.i.i.i.i.i.i.i.i30.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i29.preheader104 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i31 = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i.i.i.i.i.i29 ], [ %.sroa.08.012.i.i.i.i.i.i.i.i.i.i31.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i29.preheader104 ] ; 2 uses
  %i.di = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i31, align 4, !tbaa !33, !noalias !684
  store i32 %i.di, ptr %.013.i.i.i.i.i.i.i.i.i.i30, align 4, !tbaa !33, !alias.scope !683
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i31, i64 4 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i30, i64 4
  %.not.i.i.i.i.i.i.i.i.i.i32 = icmp eq ptr %i.dj, %i.cx
  br i1 %.not.i.i.i.i.i.i.i.i.i.i32, label %.lr.ph.preheader.i.i.i.i.i.i.i33, label %.lr.ph.i.i.i.i.i.i.i.i.i.i29, !llvm.loop !680

.lr.ph.preheader.i.i.i.i.i.i.i33:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i29, %middle.block99
  store i32 %i.cv, ptr %i.co, align 8, !tbaa !239, !alias.scope !683
  store i32 0, ptr %i.cu, align 8, !tbaa !239, !alias.scope !684
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i22

bb.i:                                             ; preds = %.lr.ph.i.i.i18
  store ptr %i.cr, ptr %.012.i.i.i19, align 8, !tbaa !241, !alias.scope !683
  %i.dl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 12
  %i.dm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8 ; 2 uses
  %i.dn = load <2 x i32>, ptr %i.dm, align 8, !tbaa !129, !alias.scope !684
  store <2 x i32> %i.dn, ptr %i.co, align 8, !tbaa !129, !alias.scope !683
  store ptr %i.ct, ptr %.0911.i.i.i20, align 8, !tbaa !241, !alias.scope !684
  store i32 4, ptr %i.dl, align 4, !tbaa !240, !alias.scope !684
  store i32 0, ptr %i.dm, align 8, !tbaa !239, !alias.scope !684
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i22

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i22: ; preds = %bb.i, %.lr.ph.preheader.i.i.i.i.i.i.i33, %bb.h
  %i.do = phi ptr [ %i.ct, %bb.i ], [ %i.cr, %.lr.ph.preheader.i.i.i.i.i.i.i33 ], [ %i.cr, %bb.h ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 32 ; 2 uses
  %i.dr = load <2 x ptr>, ptr %i.dq, align 8, !tbaa !237, !alias.scope !684
  store <2 x ptr> %i.dr, ptr %i.dp, align 8, !tbaa !237, !alias.scope !683
  %i.ds = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 48
  %i.dt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 48
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !251, !alias.scope !684
  store ptr %i.du, ptr %i.ds, align 8, !tbaa !251, !alias.scope !683
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i8 0, i64 24, i1 false), !alias.scope !684
  %.not.i.i8.i.i.i.i23 = icmp eq ptr %i.do, %i.ct
  br i1 %.not.i.i8.i.i.i.i23, label %_ZSt19__relocate_object_aIN4Luau8Bytecode5BcPhiES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i24, label %bb.j

bb.j:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i22
  tail call void @_ZdlPv(ptr noundef %i.do) #17
  br label %_ZSt19__relocate_object_aIN4Luau8Bytecode5BcPhiES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i24

_ZSt19__relocate_object_aIN4Luau8Bytecode5BcPhiES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i24: ; preds = %bb.j, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i22
  %i.dv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 56 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 56 ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.dv, %i.b
  %indvar.next86 = add i64 %indvar85, 1
  br i1 %.not.i.i.i25, label %_ZNSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34, label %.lr.ph.i.i.i18, !llvm.loop !675

_ZNSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34: ; preds = %_ZSt19__relocate_object_aIN4Luau8Bytecode5BcPhiES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i24, %_ZNSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i26 = phi ptr [ %i.cm, %_ZNSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.dw, %_ZSt19__relocate_object_aIN4Luau8Bytecode5BcPhiES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i24 ]
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN4Luau8Bytecode5BcPhiESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !265
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = sub i64 %i.dz, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ea) #19
  br label %_ZNSt12_Vector_baseIN4Luau8Bytecode5BcPhiESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4Luau8Bytecode5BcPhiESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34, %bb.k
  store ptr %i.p, ptr %0, align 8, !tbaa !263
  store ptr %.0.lcssa.i.i.i26, ptr %i.a, align 8, !tbaa !264
  %i.eb = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %i.l
  store ptr %i.eb, ptr %i.dx, align 8, !tbaa !265
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !326
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !178
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !328
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #17 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !326
  invoke void @__cxa_rethrow() #18
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #22
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !178
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %2, ptr %i.t, align 8, !tbaa !247
  %i.u = load ptr, ptr %0, align 8, !tbaa !177    ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !244  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !245
  store ptr %i.x, ptr %3, align 8, !tbaa !245
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !244
  store ptr %3, ptr %i.y, align 8, !tbaa !245
  br label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !256
  store ptr %i.aa, ptr %3, align 8, !tbaa !245
  store ptr %3, ptr %i.z, align 8, !tbaa !256
  %i.ab = load ptr, ptr %3, align 8, !tbaa !245   ; 2 uses
  %.not11.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !178
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !247
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !244
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !244
  br label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb1EEE.exit

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !328
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !328
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !295

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !686
  br label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4Luau8Bytecode4BcOpES5_ELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !295

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

end_hunk_1
begin_hunk_2_@_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE9recordUseENS0_4BcOpES4_:bb.a

.lr.ph.i.i.i.i.i11.preheader53:                   ; preds = %.lr.ph.i.i.i.i.i11.preheader, %middle.block
  %.012.i.i.i.i.i12.ph = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i11.preheader ], [ %i.bx, %middle.block ]
  %.0911.i.i.i.i.i13.ph = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i11.preheader ], [ %i.by, %middle.block ]
  br label %.lr.ph.i.i.i.i.i11

.lr.ph.i.i.i.i.i11:                               ; preds = %.lr.ph.i.i.i.i.i11.preheader53, %.lr.ph.i.i.i.i.i11
  %.012.i.i.i.i.i12 = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i11 ], [ %.012.i.i.i.i.i12.ph, %.lr.ph.i.i.i.i.i11.preheader53 ] ; 2 uses
  %.0911.i.i.i.i.i13 = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i11 ], [ %.0911.i.i.i.i.i13.ph, %.lr.ph.i.i.i.i.i11.preheader53 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !700)
  %i.cd = load i32, ptr %.0911.i.i.i.i.i13, align 4, !tbaa !33, !alias.scope !700
  store i32 %i.cd, ptr %.012.i.i.i.i.i12, align 4, !tbaa !33, !alias.scope !699
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i13, i64 4 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i12, i64 4 ; 2 uses
  %.not.i.i.i.i.i14 = icmp eq ptr %i.ce, %i.ba
  br i1 %.not.i.i.i.i.i14, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i15, label %.lr.ph.i.i.i.i.i11, !llvm.loop !696

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i15: ; preds = %.lr.ph.i.i.i.i.i11, %middle.block, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i7
  %.0.lcssa.i.i.i.i.i16 = phi ptr [ %i.bq, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i7 ], [ %i.bx, %middle.block ], [ %i.cf, %.lr.ph.i.i.i.i.i11 ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i16, i64 4
  %.not.i23.i.i17 = icmp eq ptr %i.bf, null
  br i1 %.not.i23.i.i17, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i18, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i15
  %i.ch = load ptr, ptr %i.bb, align 8, !tbaa !251
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = sub i64 %i.ci, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.cj) #19
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i18

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i18: ; preds = %bb.k, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i15
  store ptr %i.bq, ptr %i.ay, align 8, !tbaa !250
  store ptr %i.cg, ptr %i.az, align 8, !tbaa !298
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bo
  store ptr %i.ck, ptr %i.bb, align 8, !tbaa !251
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i18, %bb.h, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(76) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !268  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !218    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775760
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 80                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 115292150460684697)
  %i.l = select i1 %i.j, i64 115292150460684697, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 80
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #20 ; 6 uses
  %i.q = ptrtoaddr ptr %i.p to i64                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 8 uses
  %i.s = load i64, ptr %2, align 8
  store i64 %i.s, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store i32 0, ptr %i.v, align 8, !tbaa !239
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  store i32 4, ptr %i.w, align 4, !tbaa !240
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 5 uses
  store ptr %i.x, ptr %i.t, align 8, !tbaa !241
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !241  ; 8 uses
  %i.z = ptrtoaddr ptr %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !239 ; 3 uses
  %i.ad = zext i32 %i.ac to i64
  %.idx.i.i = shl nuw nsw i64 %i.ad, 2            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i.i
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i.i.i.i.i.i, label %_ZN4Luau8Bytecode6BcInstC2EOS1_.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.c
  %i.af = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.ag = lshr exact i64 %i.af, 2
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader107, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.ai = add i64 %i.q, %i.m
  %i.aj = add i64 %i.z, %i.e
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = add i64 %i.ak, 23
  %diff.check = icmp ult i64 %i.al, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.preheader107, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 9223372036854775800     ; 3 uses
  %i.am = shl i64 %n.vec, 2                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.x, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.y, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ap ; 2 uses
  %next.gep63 = getelementptr i8, ptr %i.y, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep63, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep63, align 4, !tbaa !33
  %wide.load64 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !33
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !33
  store <4 x i32> %wide.load64, ptr %i.ar, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !701

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader107

.lr.ph.i.i.i.i.i.i.preheader107:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader107, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader107 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader107 ] ; 2 uses
  %i.at = load i32, ptr %.sroa.08.012.i.i.i.i.i.i, align 4, !tbaa !33
  store i32 %i.at, ptr %.013.i.i.i.i.i.i, align 4, !tbaa !33
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, %i.ae
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !702

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  store i32 %i.ac, ptr %i.v, align 8, !tbaa !239
  store i32 0, ptr %i.ab, align 8, !tbaa !239
  br label %_ZN4Luau8Bytecode6BcInstC2EOS1_.exit

bb.d:                                             ; preds = %_ZNKSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE12_M_check_lenEmPKc.exit
  store ptr %i.y, ptr %i.t, align 8, !tbaa !241
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ay = load <2 x i32>, ptr %i.ax, align 8, !tbaa !129
  store <2 x i32> %i.ay, ptr %i.v, align 8, !tbaa !129
  store ptr %i.aa, ptr %i.u, align 8, !tbaa !241
  store i32 4, ptr %i.aw, align 4, !tbaa !240
  store i32 0, ptr %i.ax, align 8, !tbaa !239
  br label %_ZN4Luau8Bytecode6BcInstC2EOS1_.exit

_ZN4Luau8Bytecode6BcInstC2EOS1_.exit:             ; preds = %bb.c, %.lr.ph.preheader.i.i.i, %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.bb = load <2 x ptr>, ptr %i.ba, align 8, !tbaa !237
  store <2 x ptr> %i.bb, ptr %i.az, align 8, !tbaa !237
  %i.bc = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !251
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !251
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i8 0, i64 24, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bf, ptr noundef nonnull align 8 dereferenceable(12) %i.bg, i64 12, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN4Luau8Bytecode6BcInstC2EOS1_.exit
  %i.bh = add i64 %i.q, 24
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %indvar = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %indvar.next, %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ] ; 2 uses
  %.012.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.cv, %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ] ; 9 uses
  %.0911.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.cu, %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !714)
  %i.bi = load i64, ptr %.0911.i.i.i, align 8, !alias.scope !714
  store i64 %i.bi, ptr %.012.i.i.i, align 8, !alias.scope !713
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store i32 0, ptr %i.bl, align 8, !tbaa !239, !alias.scope !713
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 20
  store i32 4, ptr %i.bm, align 4, !tbaa !240, !alias.scope !713
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 5 uses
  store ptr %i.bn, ptr %i.bj, align 8, !tbaa !241, !alias.scope !713
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !241, !alias.scope !714 ; 10 uses
  %i.bp = ptrtoaddr ptr %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 4 uses
  %.not.i.i.i.i.i.i16 = icmp eq ptr %i.bo, %i.bq
  br i1 %.not.i.i.i.i.i.i16, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !239, !alias.scope !714 ; 3 uses
  %i.bt = zext i32 %i.bs to i64
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.bt, 2    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx.i.i.i.i.i.i
  %.not11.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.e
  %i.bv = add nsw i64 %.idx.i.i.i.i.i.i, -4       ; 2 uses
  %i.bw = lshr exact i64 %i.bv, 2
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %min.iters.check69 = icmp ult i64 %i.bv, 28
  br i1 %min.iters.check69, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader105, label %vector.memcheck70

vector.memcheck70:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %3 = mul i64 %indvar, 80
  %4 = add i64 %i.bh, %3
  %5 = sub i64 %i.bp, %4
  %diff.check71 = icmp ugt i64 %5, -32
  br i1 %diff.check71, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader105, label %vector.ph70

vector.ph70:                                      ; preds = %vector.memcheck70
  %n.vec71 = and i64 %i.bx, 9223372036854775800   ; 3 uses
  %i.by = shl i64 %n.vec71, 2                     ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bn, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bo, i64 %i.by
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %vector.ph70
  %index73 = phi i64 [ 0, %vector.ph70 ], [ %index.next78, %vector.body72 ] ; 2 uses
  %i.cb = shl i64 %index73, 2                     ; 2 uses
  %next.gep74 = getelementptr i8, ptr %i.bn, i64 %i.cb ; 2 uses
  %next.gep75 = getelementptr i8, ptr %i.bo, i64 %i.cb ; 2 uses
  %i.cc = getelementptr i8, ptr %next.gep75, i64 16
  %wide.load76 = load <4 x i32>, ptr %next.gep75, align 4, !tbaa !33, !noalias !714
  %wide.load77 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !33, !noalias !714
  %i.cd = getelementptr i8, ptr %next.gep74, i64 16
  store <4 x i32> %wide.load76, ptr %next.gep74, align 4, !tbaa !33, !alias.scope !713
  store <4 x i32> %wide.load77, ptr %i.cd, align 4, !tbaa !33, !alias.scope !713
  %index.next78 = add nuw i64 %index73, 8         ; 2 uses
  %i.ce = icmp eq i64 %index.next78, %n.vec71
  br i1 %i.ce, label %middle.block79, label %vector.body72, !llvm.loop !706

middle.block79:                                   ; preds = %vector.body72
  %cmp.n80 = icmp eq i64 %i.bx, %n.vec71
  br i1 %cmp.n80, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader105

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader105:          ; preds = %vector.memcheck70, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block79
  %.013.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bn, %vector.memcheck70 ], [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bz, %middle.block79 ]
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bo, %vector.memcheck70 ], [ %i.bo, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ca, %middle.block79 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader105, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader105 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader105 ] ; 2 uses
  %i.cf = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !33, !noalias !714
  store i32 %i.cf, ptr %.013.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !33, !alias.scope !713
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cg, %i.bu
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !707

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block79
  store i32 %i.bs, ptr %i.bl, align 8, !tbaa !239, !alias.scope !713
  store i32 0, ptr %i.br, align 8, !tbaa !239, !alias.scope !714
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  store ptr %i.bo, ptr %i.bj, align 8, !tbaa !241, !alias.scope !713
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 20
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ck = load <2 x i32>, ptr %i.cj, align 8, !tbaa !129, !alias.scope !714
  store <2 x i32> %i.ck, ptr %i.bl, align 8, !tbaa !129, !alias.scope !713
  store ptr %i.bq, ptr %i.bk, align 8, !tbaa !241, !alias.scope !714
  store i32 4, ptr %i.ci, align 4, !tbaa !240, !alias.scope !714
  store i32 0, ptr %i.cj, align 8, !tbaa !239, !alias.scope !714
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.preheader.i.i.i.i.i.i.i, %bb.e
  %i.cl = phi ptr [ %i.bq, %bb.f ], [ %i.bo, %.lr.ph.preheader.i.i.i.i.i.i.i ], [ %i.bo, %bb.e ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.co = load <2 x ptr>, ptr %i.cn, align 8, !tbaa !237, !alias.scope !714
  store <2 x ptr> %i.co, ptr %i.cm, align 8, !tbaa !237, !alias.scope !713
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.cq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !251, !alias.scope !714
  store ptr %i.cr, ptr %i.cp, align 8, !tbaa !251, !alias.scope !713
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i8 0, i64 24, i1 false), !alias.scope !714
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cs, ptr noundef nonnull align 8 dereferenceable(12) %i.ct, i64 12, i1 false), !alias.scope !715
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.cl, %i.bq
  br i1 %.not.i.i8.i.i.i.i, label %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.cl) #17
  br label %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.g, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cu, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !14

_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN4Luau8Bytecode6BcInstC2EOS1_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZN4Luau8Bytecode6BcInstC2EOS1_.exit ], [ %i.cv, %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 80 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34, label %.lr.ph.i.i.i18.preheader

.lr.ph.i.i.i18.preheader:                         ; preds = %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i84 = ptrtoaddr ptr %.0.lcssa.i.i.i to i64
  %i.cx = add i64 %.0.lcssa.i.i.i84, 104
  br label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %.lr.ph.i.i.i18.preheader, %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i24
  %indvar85 = phi i64 [ 0, %.lr.ph.i.i.i18.preheader ], [ %indvar.next86, %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i24 ] ; 2 uses
  %.012.i.i.i19 = phi ptr [ %i.cw, %.lr.ph.i.i.i18.preheader ], [ %i.el, %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i24 ] ; 9 uses
  %.0911.i.i.i20 = phi ptr [ %1, %.lr.ph.i.i.i18.preheader ], [ %i.ek, %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i24 ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !717)
  %i.cy = load i64, ptr %.0911.i.i.i20, align 8, !alias.scope !717
  store i64 %i.cy, ptr %.012.i.i.i19, align 8, !alias.scope !716
  %i.cz = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 16 ; 3 uses
  store i32 0, ptr %i.db, align 8, !tbaa !239, !alias.scope !716
  %i.dc = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 20
  store i32 4, ptr %i.dc, align 4, !tbaa !240, !alias.scope !716
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 24 ; 5 uses
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !241, !alias.scope !716
  %i.de = load ptr, ptr %i.da, align 8, !tbaa !241, !alias.scope !717 ; 10 uses
  %i.df = ptrtoaddr ptr %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 24 ; 4 uses
  %.not.i.i.i.i.i.i21 = icmp eq ptr %i.de, %i.dg
  br i1 %.not.i.i.i.i.i.i21, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i18
  %i.dh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !239, !alias.scope !717 ; 3 uses
  %i.dj = zext i32 %i.di to i64
  %.idx.i.i.i.i.i.i27 = shl nuw nsw i64 %i.dj, 2  ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 %.idx.i.i.i.i.i.i27
  %.not11.i.i.i.i.i.i.i.i.i.i28 = icmp eq i32 %i.di, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i28, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i22, label %.lr.ph.i.i.i.i.i.i.i.i.i.i29.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i29.preheader:           ; preds = %bb.h
  %i.dl = add nsw i64 %.idx.i.i.i.i.i.i27, -4     ; 2 uses
  %i.dm = lshr exact i64 %i.dl, 2
  %i.dn = add nuw nsw i64 %i.dm, 1                ; 2 uses
  %min.iters.check89 = icmp ult i64 %i.dl, 28
  br i1 %min.iters.check89, label %.lr.ph.i.i.i.i.i.i.i.i.i.i29.preheader104, label %vector.memcheck95

vector.memcheck95:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i29.preheader
  %6 = mul i64 %indvar85, 80
  %7 = add i64 %i.cx, %6
  %8 = sub i64 %i.df, %7
  %diff.check96 = icmp ugt i64 %8, -32
  br i1 %diff.check96, label %.lr.ph.i.i.i.i.i.i.i.i.i.i29.preheader104, label %vector.ph90

vector.ph90:                                      ; preds = %vector.memcheck95
  %n.vec91 = and i64 %i.dn, 9223372036854775800   ; 3 uses
  %i.do = shl i64 %n.vec91, 2                     ; 2 uses
  %i.dp = getelementptr i8, ptr %i.dd, i64 %i.do
  %i.dq = getelementptr i8, ptr %i.de, i64 %i.do
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph90
  %index93 = phi i64 [ 0, %vector.ph90 ], [ %index.next98, %vector.body92 ] ; 2 uses
  %i.dr = shl i64 %index93, 2                     ; 2 uses
  %next.gep94 = getelementptr i8, ptr %i.dd, i64 %i.dr ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.de, i64 %i.dr ; 2 uses
  %i.ds = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load96 = load <4 x i32>, ptr %next.gep95, align 4, !tbaa !33, !noalias !717
  %wide.load97 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !33, !noalias !717
  %i.dt = getelementptr i8, ptr %next.gep94, i64 16
  store <4 x i32> %wide.load96, ptr %next.gep94, align 4, !tbaa !33, !alias.scope !716
  store <4 x i32> %wide.load97, ptr %i.dt, align 4, !tbaa !33, !alias.scope !716
  %index.next98 = add nuw i64 %index93, 8         ; 2 uses
  %i.du = icmp eq i64 %index.next98, %n.vec91
  br i1 %i.du, label %middle.block99, label %vector.body92, !llvm.loop !711

middle.block99:                                   ; preds = %vector.body92
  %cmp.n100 = icmp eq i64 %i.dn, %n.vec91
  br i1 %cmp.n100, label %.lr.ph.preheader.i.i.i.i.i.i.i33, label %.lr.ph.i.i.i.i.i.i.i.i.i.i29.preheader104

.lr.ph.i.i.i.i.i.i.i.i.i.i29.preheader104:        ; preds = %vector.memcheck95, %.lr.ph.i.i.i.i.i.i.i.i.i.i29.preheader, %middle.block99
  %.013.i.i.i.i.i.i.i.i.i.i30.ph = phi ptr [ %i.dd, %vector.memcheck95 ], [ %i.dd, %.lr.ph.i.i.i.i.i.i.i.i.i.i29.preheader ], [ %i.dp, %middle.block99 ]
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i31.ph = phi ptr [ %i.de, %vector.memcheck95 ], [ %i.de, %.lr.ph.i.i.i.i.i.i.i.i.i.i29.preheader ], [ %i.dq, %middle.block99 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i29

.lr.ph.i.i.i.i.i.i.i.i.i.i29:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i29.preheader104, %.lr.ph.i.i.i.i.i.i.i.i.i.i29
  %.013.i.i.i.i.i.i.i.i.i.i30 = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i.i.i.i.i.i29 ], [ %.013.i.i.i.i.i.i.i.i.i.i30.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i29.preheader104 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i31 = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.i.i.i29 ], [ %.sroa.08.012.i.i.i.i.i.i.i.i.i.i31.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i29.preheader104 ] ; 2 uses
  %i.dv = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i31, align 4, !tbaa !33, !noalias !717
  store i32 %i.dv, ptr %.013.i.i.i.i.i.i.i.i.i.i30, align 4, !tbaa !33, !alias.scope !716
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i31, i64 4 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i30, i64 4
  %.not.i.i.i.i.i.i.i.i.i.i32 = icmp eq ptr %i.dw, %i.dk
  br i1 %.not.i.i.i.i.i.i.i.i.i.i32, label %.lr.ph.preheader.i.i.i.i.i.i.i33, label %.lr.ph.i.i.i.i.i.i.i.i.i.i29, !llvm.loop !712

.lr.ph.preheader.i.i.i.i.i.i.i33:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i29, %middle.block99
  store i32 %i.di, ptr %i.db, align 8, !tbaa !239, !alias.scope !716
  store i32 0, ptr %i.dh, align 8, !tbaa !239, !alias.scope !717
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i22

bb.i:                                             ; preds = %.lr.ph.i.i.i18
  store ptr %i.de, ptr %i.cz, align 8, !tbaa !241, !alias.scope !716
  %i.dy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 20
  %i.dz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16 ; 2 uses
  %i.ea = load <2 x i32>, ptr %i.dz, align 8, !tbaa !129, !alias.scope !717
  store <2 x i32> %i.ea, ptr %i.db, align 8, !tbaa !129, !alias.scope !716
  store ptr %i.dg, ptr %i.da, align 8, !tbaa !241, !alias.scope !717
  store i32 4, ptr %i.dy, align 4, !tbaa !240, !alias.scope !717
  store i32 0, ptr %i.dz, align 8, !tbaa !239, !alias.scope !717
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i22

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i22: ; preds = %bb.i, %.lr.ph.preheader.i.i.i.i.i.i.i33, %bb.h
  %i.eb = phi ptr [ %i.dg, %bb.i ], [ %i.de, %.lr.ph.preheader.i.i.i.i.i.i.i33 ], [ %i.de, %bb.h ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 40
  %i.ed = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 40 ; 2 uses
  %i.ee = load <2 x ptr>, ptr %i.ed, align 8, !tbaa !237, !alias.scope !717
  store <2 x ptr> %i.ee, ptr %i.ec, align 8, !tbaa !237, !alias.scope !716
  %i.ef = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 56
  %i.eg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 56
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !251, !alias.scope !717
  store ptr %i.eh, ptr %i.ef, align 8, !tbaa !251, !alias.scope !716
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ed, i8 0, i64 24, i1 false), !alias.scope !717
  %i.ei = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 64
  %i.ej = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ei, ptr noundef nonnull align 8 dereferenceable(12) %i.ej, i64 12, i1 false), !alias.scope !718
  %.not.i.i8.i.i.i.i23 = icmp eq ptr %i.eb, %i.dg
  br i1 %.not.i.i8.i.i.i.i23, label %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i24, label %bb.j

bb.j:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i22
  tail call void @_ZdlPv(ptr noundef %i.eb) #17
  br label %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i24

_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i24: ; preds = %bb.j, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i22
  %i.ek = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 80 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 80 ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.ek, %i.b
  %indvar.next86 = add i64 %indvar85, 1
  br i1 %.not.i.i.i25, label %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34, label %.lr.ph.i.i.i18, !llvm.loop !14

_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34: ; preds = %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i24, %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i26 = phi ptr [ %i.cw, %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.el, %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i24 ]
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN4Luau8Bytecode6BcInstESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !269
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = sub i64 %i.eo, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ep) #19
  br label %_ZNSt12_Vector_baseIN4Luau8Bytecode6BcInstESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4Luau8Bytecode6BcInstESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34, %bb.k
  store ptr %i.p, ptr %0, align 8, !tbaa !218
  store ptr %.0.lcssa.i.i.i26, ptr %i.a, align 8, !tbaa !268
  %i.eq = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %i.l
  store ptr %i.eq, ptr %i.em, align 8, !tbaa !269
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE13isUnreachableENS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !197, !nonnull !170, !align !198 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %1, %i.c
  br i1 %i.d, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = lshr i32 %1, 4
  %i.g = zext nneg i32 %i.f to i64
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !200
  %i.i = getelementptr inbounds nuw [136 x i8], ptr %i.h, i64 %i.g ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !210  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.m = load i32, ptr %i.l, align 8, !tbaa !206  ; 2 uses
  %i.n = zext i32 %i.m to i64
  %.idx = shl nuw nsw i64 %i.n, 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  %.not17 = icmp eq i32 %i.m, 0
  br i1 %.not17, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %select.unfold
  %.01418 = phi ptr [ %i.r, %select.unfold ], [ %i.k, %bb.b ] ; 3 uses
  %.sroa.01.0.copyload = load i32, ptr %.01418, align 4, !tbaa !720
  %i.p = icmp eq i32 %.sroa.01.0.copyload, 2
  br i1 %i.p, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.01418, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !33
  %i.q = tail call noundef zeroext i1 @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE13isUnreachableENS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 %.sroa.4.0.copyload)
  br i1 %i.q, label %select.unfold, label %.critedge

select.unfold:                                    ; preds = %bb.c, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.01418, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.r, %i.o
  br i1 %.not, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %select.unfold, %bb.c, %bb.b, %bb.a
  %.4 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ true, %select.unfold ], [ false, %bb.c ]
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8__detail9_Map_baseIN4Luau8Bytecode4BcOpESt4pairIKS3_hESaIS6_ENS_10_Select1stESt8equal_toIS3_ENS2_8BcOpHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.0.copyload.i.i = load i32, ptr %1, align 4    ; 3 uses
  %.0.insert.ext.i.i = zext i32 %.0.copyload.i.i to i64 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = urem i64 %.0.insert.ext.i.i, %i.b        ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !244  ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !245  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !247
  %i.k = icmp eq i64 %i.j, %.0.insert.ext.i.i
  %i.l = load i32, ptr %i.h, align 8
  %i.m = icmp eq i32 %.0.copyload.i.i, %i.l
  %i.n = select i1 %i.k, i1 %i.m, i1 false
  br i1 %i.n, label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.p = icmp eq i64 %i.v, %.0.insert.ext.i.i
  %i.q = load i32, ptr %i.o, align 8
  %i.r = icmp eq i32 %.0.copyload.i.i, %i.q
  %i.s = select i1 %i.p, i1 %i.r, i1 false
  br i1 %i.s, label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit, label %.lr.ph.i.i, !llvm.loop !1

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.020.i.i = phi ptr [ %i.t, %bb.c ], [ %i.g, %bb.b ]
  %i.t = load ptr, ptr %.020.i.i, align 8, !tbaa !245 ; 5 uses
  %.not18.i.i = icmp eq ptr %i.t, null
  br i1 %.not18.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !247  ; 2 uses
  %i.w = urem i64 %i.v, %i.b
  %.not19.i.i = icmp eq i64 %i.w, %i.c
  br i1 %.not19.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i, !llvm.loop !1

..loopexit_crit_edge21.i.i:                       ; preds = %bb.d
  br label %.loopexit, !llvm.loop !1

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.a, %..loopexit_crit_edge21.i.i
  %i.x = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20 ; 5 uses
  store ptr null, ptr %i.x, align 8, !tbaa !245
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %1, align 4, !tbaa !33
  store i32 %i.z, ptr %i.y, align 8, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i8 0, ptr %i.aa, align 4, !tbaa !249
  %i.ab = invoke ptr @_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.c, i64 noundef %.0.insert.ext.i.i, ptr noundef nonnull %i.x, i64 noundef 1)
          to label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22: ; preds = %.loopexit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 24) #19
  resume { ptr, i32 } %i.ac

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.c, %.loopexit, %bb.b
  %.pn = phi ptr [ %i.ab, %.loopexit ], [ %i.g, %bb.b ], [ %i.t, %bb.c ]
  %.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 12
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_2
