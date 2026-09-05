Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ng-log/original/symbolize?download=true
begin_hunk_0_@_ZN5nglog5toolsL20SymbolizeAndDemangleEPvPcmNS0_16SymbolizeOptionsE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  invoke fastcc void @_ZN5nglog5tools12_GLOBAL__N_115DemangleInplaceEPcm(ptr noundef %.157, i64 noundef %.155)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %bb.av, %.thread, %.loopexit112, %_ZN5nglog5toolsL16SafeAppendStringEPKcPcm.exit86, %.loopexit112.thread
  %.153.ph = phi i1 [ true, %bb.av ], [ false, %.loopexit112 ], [ false, %.thread ], [ true, %_ZN5nglog5toolsL16SafeAppendStringEPKcPcm.exit86 ], [ false, %.loopexit112.thread ]
  %i.ed = invoke i32 @close(i32 noundef %.pr)
          to label %_ZN5nglog5tools14FileDescriptorD2Ev.exit88 unwind label %bb.ax ; 0 uses

bb.ax:                                            ; preds = %bb.aw
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #20
  unreachable

_ZN5nglog5tools14FileDescriptorD2Ev.exit88:       ; preds = %_ZN5nglog5toolsL16SafeAppendStringEPKcPcm.exit68, %bb.i, %bb.a, %bb.aw
  %.15396 = phi i1 [ %.153.ph, %bb.aw ], [ true, %_ZN5nglog5toolsL16SafeAppendStringEPKcPcm.exit68 ], [ false, %bb.a ], [ false, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i1 %.15396

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.w, %bb.g, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.t, %bb.g ], [ %i.p, %bb.e ], [ %i.bc, %bb.w ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit101, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit106, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit109, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp110, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5nglog5tools14FileDescriptorD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: nofree
declare noundef i64 @pread(i32 noundef, ptr noundef captures(none), i64 noundef, i64 noundef) local_unnamed_addr #8

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZN5nglog5toolsL44OpenObjectFileContainingPcAndGetStartAddressEmRmS1_Pcm(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 4 captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3, ptr noundef %4, i64 noundef range(i64 0, -1) %5) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.nglog::tools::FileDescriptor", align 4 ; 5 uses
  %7 = alloca %"class.nglog::tools::FileDescriptor", align 4 ; 5 uses
  %i.a = alloca [1024 x i8], align 16             ; 12 uses
  %8 = alloca %struct.Elf64_Ehdr, align 8         ; 9 uses
  %9 = alloca %struct.Elf64_Phdr, align 8         ; 8 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.c = tail call noundef i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.6, i32 noundef 0) ; 5 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__errno_location() #21
  %i.f = load i32, ptr %i.e, align 4, !tbaa !13
  %i.g = icmp eq i32 %i.f, 4
  br i1 %i.g, label %bb.b, label %.thread148, !llvm.loop !30

.thread148:                                       ; preds = %bb.c
  store i32 -1, ptr %0, align 4, !tbaa !23
  br label %_ZN5nglog5tools14FileDescriptorD2Ev.exit95

bb.d:                                             ; preds = %bb.b
  store i32 %i.c, ptr %6, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.h = invoke noundef i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.7, i32 noundef 0)
          to label %.noexc unwind label %bb.g     ; 6 uses

.noexc:                                           ; preds = %bb.e
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.noexc
  %i.j = tail call ptr @__errno_location() #21
  %i.k = load i32, ptr %i.j, align 4, !tbaa !13
  %i.l = icmp eq i32 %i.k, 4
  br i1 %i.l, label %bb.e, label %.thread145, !llvm.loop !31

.thread145:                                       ; preds = %bb.f
  store i32 -1, ptr %0, align 4, !tbaa !23
  br label %bb.bl

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.h:                                             ; preds = %.noexc
  store i32 %i.h, ptr %7, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.s = icmp sgt i32 %i.h, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.bf, %bb.h
  %.sroa.26.0 = phi ptr [ %i.a, %bb.h ], [ %i.am, %bb.bf ]
  %.sroa.14.0 = phi i64 [ 0, %bb.h ], [ %.sroa.14.1, %bb.bf ] ; 5 uses
  %.sroa.30.0 = phi ptr [ %i.a, %bb.h ], [ %.sroa.30.1, %bb.bf ] ; 4 uses
  %i.t = icmp eq ptr %i.a, %.sroa.30.0
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.u = invoke fastcc noundef i64 @_ZN5nglog5toolsL14ReadFromOffsetEiPvmm(i32 noundef %i.c, ptr noundef nonnull %i.a, i64 noundef 1024, i64 noundef %.sroa.14.0)
          to label %.noexc75 unwind label %bb.p   ; 3 uses

.noexc75:                                         ; preds = %bb.j
  %i.v = icmp slt i64 %i.u, 1
  br i1 %i.v, label %bb.o, label %.thread.i

.thread.i:                                        ; preds = %.noexc75
  %i.w = add i64 %i.u, %.sroa.14.0
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.u
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.26.0, i64 1 ; 5 uses
  %.not.i = icmp ugt ptr %i.y, %.sroa.30.0
  br i1 %.not.i, label %bb.l, label %_ZN5nglog5tools12_GLOBAL__N_110LineReader15HasCompleteLineEv.exit.i

bb.l:                                             ; preds = %bb.k
  call void @abort() #20
  unreachable

_ZN5nglog5tools12_GLOBAL__N_110LineReader15HasCompleteLineEv.exit.i: ; preds = %bb.k
  %i.z = ptrtoint ptr %.sroa.30.0 to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 4 uses
  %i.ac = call noundef ptr @memchr(ptr noundef nonnull %i.y, i32 noundef 10, i64 noundef %i.ab) #22
  %.not26.i = icmp eq ptr %i.ac, null
  br i1 %.not26.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN5nglog5tools12_GLOBAL__N_110LineReader15HasCompleteLineEv.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %i.y, i64 %i.ab, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ab ; 2 uses
  %i.ae = sub i64 1024, %i.ab
  %i.af = invoke fastcc noundef i64 @_ZN5nglog5toolsL14ReadFromOffsetEiPvmm(i32 noundef %i.c, ptr noundef nonnull %i.ad, i64 noundef %i.ae, i64 noundef %.sroa.14.0)
          to label %.noexc76 unwind label %bb.p   ; 3 uses

.noexc76:                                         ; preds = %bb.m
  %i.ag = icmp slt i64 %i.af, 1
  br i1 %i.ag, label %bb.o, label %.thread25.i

.thread25.i:                                      ; preds = %.noexc76
  %i.ah = add i64 %i.af, %.sroa.14.0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af
  br label %bb.n

bb.n:                                             ; preds = %.thread25.i, %_ZN5nglog5tools12_GLOBAL__N_110LineReader15HasCompleteLineEv.exit.i, %.thread.i
  %.sroa.21.0 = phi ptr [ %i.a, %.thread.i ], [ %i.a, %.thread25.i ], [ %i.y, %_ZN5nglog5tools12_GLOBAL__N_110LineReader15HasCompleteLineEv.exit.i ] ; 6 uses
  %.sroa.14.1 = phi i64 [ %i.w, %.thread.i ], [ %i.ah, %.thread25.i ], [ %.sroa.14.0, %_ZN5nglog5tools12_GLOBAL__N_110LineReader15HasCompleteLineEv.exit.i ]
  %.sroa.30.1 = phi ptr [ %i.x, %.thread.i ], [ %i.ai, %.thread25.i ], [ %.sroa.30.0, %_ZN5nglog5tools12_GLOBAL__N_110LineReader15HasCompleteLineEv.exit.i ] ; 2 uses
  %i.aj = ptrtoint ptr %.sroa.30.1 to i64
  %i.ak = ptrtoint ptr %.sroa.21.0 to i64         ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = call noundef ptr @memchr(ptr noundef nonnull %.sroa.21.0, i32 noundef 10, i64 noundef %i.al) #22 ; 18 uses
  %i.an = ptrtoaddr ptr %i.am to i64              ; 4 uses
  %i.ao = icmp eq ptr %i.am, null
  br i1 %i.ao, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.noexc75, %bb.n, %.noexc76
  store i32 -1, ptr %0, align 4, !tbaa !23
  br label %bb.bi

bb.p:                                             ; preds = %bb.m, %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.q:                                             ; preds = %bb.n
  store i8 0, ptr %i.am, align 1, !tbaa !24
  store i64 0, ptr %2, align 8, !tbaa !21
  %i.aq = icmp ult ptr %.sroa.21.0, %i.am
  br i1 %i.aq, label %.lr.ph.preheader.i, label %switch.early.test._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.q
  %i.ar = sub i64 %i.an, %i.ak
  %scevgep.i = getelementptr i8, ptr %.sroa.21.0, i64 %i.ar
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r, %.lr.ph.preheader.i
  %i.as = phi i64 [ %i.ax, %bb.r ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.02531.i = phi ptr [ %i.ay, %bb.r ], [ %.sroa.21.0, %.lr.ph.preheader.i ] ; 3 uses
  %i.at = load i8, ptr %.02531.i, align 1, !tbaa !24
  %.fr30.i = freeze i8 %i.at                      ; 4 uses
  %10 = sext i8 %.fr30.i to i32                   ; 2 uses
  %i.au = add i8 %.fr30.i, -48
  %or.cond.i = icmp ult i8 %i.au, 10
  br i1 %or.cond.i, label %bb.r, label %switch.early.test.i

switch.early.test.i:                              ; preds = %.lr.ph.i
  switch i8 %.fr30.i, label %switch.early.test._crit_edge.i [
    i8 102, label %bb.r
    i8 101, label %bb.r
    i8 100, label %bb.r
    i8 99, label %bb.r
    i8 98, label %bb.r
    i8 97, label %bb.r
    i8 70, label %bb.r
    i8 69, label %bb.r
    i8 68, label %bb.r
    i8 67, label %bb.r
    i8 66, label %bb.r
    i8 65, label %bb.r
  ]

bb.r:                                             ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %.lr.ph.i
  %i.av = shl i64 %i.as, 4
  %i.aw = icmp samesign ult i8 %.fr30.i, 65
  %11 = add nsw i32 %10, -48
  %12 = and i32 %10, 15
  %13 = add nuw nsw i32 %12, 9
  %.v.i = select i1 %i.aw, i32 %11, i32 %13
  %14 = zext nneg i32 %.v.i to i64
  %i.ax = or i64 %i.av, %14                       ; 3 uses
  store i64 %i.ax, ptr %2, align 8, !tbaa !21
  %i.ay = getelementptr inbounds nuw i8, ptr %.02531.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ay, %i.am
  br i1 %exitcond.not.i, label %switch.early.test._crit_edge.i, label %.lr.ph.i, !llvm.loop !2

switch.early.test._crit_edge.i:                   ; preds = %bb.r, %switch.early.test.i, %bb.q
  %i.az = phi i64 [ 0, %bb.q ], [ %i.ax, %bb.r ], [ %i.as, %switch.early.test.i ]
  %.025.lcssa.i = phi ptr [ %.sroa.21.0, %bb.q ], [ %scevgep.i, %bb.r ], [ %.02531.i, %switch.early.test.i ] ; 4 uses
  %.not.i77 = icmp ugt ptr %.025.lcssa.i, %i.am
  br i1 %.not.i77, label %bb.s, label %_ZN5nglog5toolsL6GetHexEPKcS2_Pm.exit

bb.s:                                             ; preds = %switch.early.test._crit_edge.i
  call void @abort() #20
  unreachable

_ZN5nglog5toolsL6GetHexEPKcS2_Pm.exit:            ; preds = %switch.early.test._crit_edge.i
  %i.ba = icmp eq ptr %.025.lcssa.i, %i.am
  br i1 %i.ba, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN5nglog5toolsL6GetHexEPKcS2_Pm.exit
  %i.bb = load i8, ptr %.025.lcssa.i, align 1, !tbaa !24
  %.not = icmp eq i8 %i.bb, 45
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN5nglog5toolsL6GetHexEPKcS2_Pm.exit
  store i32 -1, ptr %0, align 4, !tbaa !23
  br label %bb.bi

bb.v:                                             ; preds = %bb.t
  %i.bc = getelementptr inbounds nuw i8, ptr %.025.lcssa.i, i64 1 ; 5 uses
  %i.bd = icmp ult ptr %i.bc, %i.am
  br i1 %i.bd, label %.lr.ph.preheader.i81, label %switch.early.test._crit_edge.i78

.lr.ph.preheader.i81:                             ; preds = %bb.v
  %i.be = ptrtoaddr ptr %i.bc to i64
  %i.bf = sub i64 %i.an, %i.be
  %scevgep.i82 = getelementptr i8, ptr %i.bc, i64 %i.bf
  br label %.lr.ph.i83

.lr.ph.i83:                                       ; preds = %bb.w, %.lr.ph.preheader.i81
  %.1 = phi i64 [ 0, %.lr.ph.preheader.i81 ], [ %i.bk, %bb.w ] ; 2 uses
  %.02531.i84 = phi ptr [ %i.bc, %.lr.ph.preheader.i81 ], [ %i.bl, %bb.w ] ; 3 uses
  %i.bg = load i8, ptr %.02531.i84, align 1, !tbaa !24
  %.fr30.i85 = freeze i8 %i.bg                    ; 4 uses
  %15 = sext i8 %.fr30.i85 to i32                 ; 2 uses
  %i.bh = add i8 %.fr30.i85, -48
  %or.cond.i86 = icmp ult i8 %i.bh, 10
  br i1 %or.cond.i86, label %bb.w, label %switch.early.test.i87

switch.early.test.i87:                            ; preds = %.lr.ph.i83
  switch i8 %.fr30.i85, label %switch.early.test._crit_edge.i78.loopexit [
    i8 102, label %bb.w
    i8 101, label %bb.w
    i8 100, label %bb.w
    i8 99, label %bb.w
    i8 98, label %bb.w
    i8 97, label %bb.w
    i8 70, label %bb.w
    i8 69, label %bb.w
    i8 68, label %bb.w
    i8 67, label %bb.w
    i8 66, label %bb.w
    i8 65, label %bb.w
  ]

bb.w:                                             ; preds = %switch.early.test.i87, %switch.early.test.i87, %switch.early.test.i87, %switch.early.test.i87, %switch.early.test.i87, %switch.early.test.i87, %switch.early.test.i87, %switch.early.test.i87, %switch.early.test.i87, %switch.early.test.i87, %switch.early.test.i87, %switch.early.test.i87, %.lr.ph.i83
  %i.bi = shl i64 %.1, 4
  %i.bj = icmp samesign ult i8 %.fr30.i85, 65
  %16 = add nsw i32 %15, -48
  %17 = and i32 %15, 15
  %18 = add nuw nsw i32 %17, 9
  %.v.i88 = select i1 %i.bj, i32 %16, i32 %18
  %19 = zext nneg i32 %.v.i88 to i64
  %i.bk = or i64 %i.bi, %19                       ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.02531.i84, i64 1 ; 2 uses
  %exitcond.not.i89 = icmp eq ptr %i.bl, %i.am
  br i1 %exitcond.not.i89, label %switch.early.test._crit_edge.i78.loopexit, label %.lr.ph.i83, !llvm.loop !2

switch.early.test._crit_edge.i78.loopexit:        ; preds = %switch.early.test.i87, %bb.w
  %.0.ph = phi i64 [ %i.bk, %bb.w ], [ %.1, %switch.early.test.i87 ]
  %.025.lcssa.i79.ph = phi ptr [ %scevgep.i82, %bb.w ], [ %.02531.i84, %switch.early.test.i87 ]
  %i.bm = icmp ult i64 %1, %.0.ph
  br label %switch.early.test._crit_edge.i78

switch.early.test._crit_edge.i78:                 ; preds = %switch.early.test._crit_edge.i78.loopexit, %bb.v
  %.0 = phi i1 [ false, %bb.v ], [ %i.bm, %switch.early.test._crit_edge.i78.loopexit ]
  %.025.lcssa.i79 = phi ptr [ %i.bc, %bb.v ], [ %.025.lcssa.i79.ph, %switch.early.test._crit_edge.i78.loopexit ] ; 8 uses
  %.025.lcssa.i79226 = ptrtoaddr ptr %.025.lcssa.i79 to i64
  %.not.i80 = icmp ugt ptr %.025.lcssa.i79, %i.am
  br i1 %.not.i80, label %bb.x, label %_ZN5nglog5toolsL6GetHexEPKcS2_Pm.exit90

bb.x:                                             ; preds = %switch.early.test._crit_edge.i78
  call void @abort() #20
  unreachable

_ZN5nglog5toolsL6GetHexEPKcS2_Pm.exit90:          ; preds = %switch.early.test._crit_edge.i78
  %i.bn = icmp eq ptr %.025.lcssa.i79, %i.am
  br i1 %i.bn, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZN5nglog5toolsL6GetHexEPKcS2_Pm.exit90
  %i.bo = load i8, ptr %.025.lcssa.i79, align 1, !tbaa !24
  %.not50 = icmp eq i8 %i.bo, 32
  br i1 %.not50, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZN5nglog5toolsL6GetHexEPKcS2_Pm.exit90
  store i32 -1, ptr %0, align 4, !tbaa !23
  br label %bb.bi

bb.aa:                                            ; preds = %bb.y
  %.ptr150 = getelementptr inbounds nuw i8, ptr %.025.lcssa.i79, i64 1 ; 4 uses
  %i.bp = icmp ult ptr %.ptr150, %i.am
  br i1 %i.bp, label %.lr.ph.preheader, label %.critedge.thread

.lr.ph.preheader:                                 ; preds = %bb.aa
  %i.bq = sub i64 %i.an, %.025.lcssa.i79226       ; 3 uses
  %scevgep = getelementptr i8, ptr %.025.lcssa.i79, i64 %i.bq
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ab
  %storemerge.ptr182 = phi ptr [ %storemerge.ptr, %bb.ab ], [ %.ptr150, %.lr.ph.preheader ] ; 2 uses
  %storemerge.idx181 = phi i64 [ %storemerge.add, %bb.ab ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %i.br = load i8, ptr %storemerge.ptr182, align 1, !tbaa !24
  %.not51 = icmp eq i8 %i.br, 32
  br i1 %.not51, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph
  %storemerge.add = add nuw i64 %storemerge.idx181, 1 ; 3 uses
  %storemerge.ptr = getelementptr inbounds nuw i8, ptr %.025.lcssa.i79, i64 %storemerge.add
  %exitcond.not = icmp eq i64 %storemerge.add, %i.bq
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !32

.critedge:                                        ; preds = %.lr.ph, %bb.ab
  %storemerge.idx.lcssa.ph = phi i64 [ %storemerge.idx181, %.lr.ph ], [ %i.bq, %bb.ab ]
  %storemerge.ptr.lcssa.ph = phi ptr [ %storemerge.ptr182, %.lr.ph ], [ %scevgep, %bb.ab ] ; 2 uses
  %i.bs = icmp samesign ult i64 %storemerge.idx.lcssa.ph, 5
  %i.bt = icmp eq ptr %storemerge.ptr.lcssa.ph, %i.am
  %or.cond64 = select i1 %i.bt, i1 true, i1 %i.bs
  br i1 %or.cond64, label %.critedge.thread, label %bb.ac

.critedge.thread:                                 ; preds = %bb.aa, %.critedge
  store i32 -1, ptr %0, align 4, !tbaa !23
  br label %bb.bi

bb.ac:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.bu = load i8, ptr %.ptr150, align 1, !tbaa !24
  %i.bv = icmp eq i8 %i.bu, 114
  br i1 %i.bv, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.s, label %.preheader.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @abort() #20
  unreachable

.preheader.i:                                     ; preds = %bb.ad, %"_ZN5nglog5tools12_GLOBAL__N_112FailureRetryIZNS0_L14ReadFromOffsetEiPvmmE3$_0EEDaT_i.exit.i"
  %.020.i = phi i64 [ %.1.i, %"_ZN5nglog5tools12_GLOBAL__N_112FailureRetryIZNS0_L14ReadFromOffsetEiPvmmE3$_0EEDaT_i.exit.i" ], [ 0, %bb.ad ] ; 6 uses
  %i.bw = icmp ult i64 %.020.i, 64
  br i1 %i.bw, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %.preheader.i
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 %.020.i
  %i.by = sub nuw nsw i64 64, %.020.i
  %i.bz = add i64 %.020.i, %i.az
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %bb.af
  %i.ca = invoke noundef i64 @pread(i32 noundef %i.h, ptr noundef nonnull %i.bx, i64 noundef %i.by, i64 noundef %i.bz)
          to label %.noexc97 unwind label %bb.am  ; 4 uses

.noexc97:                                         ; preds = %bb.ag
  %i.cb = icmp eq i64 %i.ca, -1
  br i1 %i.cb, label %bb.ah, label %"_ZN5nglog5tools12_GLOBAL__N_112FailureRetryIZNS0_L14ReadFromOffsetEiPvmmE3$_0EEDaT_i.exit.i"

bb.ah:                                            ; preds = %.noexc97
  %i.cc = tail call ptr @__errno_location() #21
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !13
  %i.ce = icmp eq i32 %i.cd, 4
  br i1 %i.ce, label %bb.ag, label %.thread, !llvm.loop !0

"_ZN5nglog5tools12_GLOBAL__N_112FailureRetryIZNS0_L14ReadFromOffsetEiPvmmE3$_0EEDaT_i.exit.i": ; preds = %.noexc97
  %i.cf = icmp slt i64 %i.ca, 0
  %i.cg = icmp eq i64 %i.ca, 0
  %spec.select28.i = select i1 %i.cg, i32 3, i32 0
  %i.ch = call i64 @llvm.smax.i64(i64 %i.ca, i64 0)
  %.1.i = add nuw i64 %i.ch, %.020.i              ; 2 uses
  %.0.i = select i1 %i.cf, i32 1, i32 %spec.select28.i
  switch i32 %.0.i, label %.thread [
    i32 0, label %.preheader.i
    i32 3, label %bb.ai
  ], !llvm.loop !1

bb.ai:                                            ; preds = %"_ZN5nglog5tools12_GLOBAL__N_112FailureRetryIZNS0_L14ReadFromOffsetEiPvmmE3$_0EEDaT_i.exit.i", %.preheader.i
  %.2.i96 = phi i64 [ %.1.i, %"_ZN5nglog5tools12_GLOBAL__N_112FailureRetryIZNS0_L14ReadFromOffsetEiPvmmE3$_0EEDaT_i.exit.i" ], [ %.020.i, %.preheader.i ] ; 2 uses
  %.not27.i = icmp ugt i64 %.2.i96, 64
  br i1 %.not27.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @abort() #20
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.ci = icmp eq i64 %.2.i96, 64
  %lhsv = load i32, ptr %8, align 8
  %.not52 = icmp eq i32 %lhsv, 1179403647
  %or.cond65 = select i1 %i.ci, i1 %.not52, i1 false
  br i1 %or.cond65, label %bb.al, label %.thread

bb.al:                                            ; preds = %bb.ak
  %i.cj = load i16, ptr %i.n, align 8, !tbaa !36
  switch i16 %i.cj, label %.thread [
    i16 2, label %bb.an
    i16 3, label %bb.ao
  ]

bb.am:                                            ; preds = %bb.ag
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.an:                                            ; preds = %bb.al
  store i64 0, ptr %3, align 8, !tbaa !21
  br label %.thread

bb.ao:                                            ; preds = %bb.al
  %i.cl = load i64, ptr %2, align 8, !tbaa !21
  store i64 %i.cl, ptr %3, align 8, !tbaa !21
  %i.cm = load i16, ptr %i.o, align 8, !tbaa !37  ; 2 uses
  %.not53187 = icmp eq i16 %i.cm, 0
  br i1 %.not53187, label %.thread, label %.lr.ph189

.lr.ph189:                                        ; preds = %bb.ao
  %i.cn = load i64, ptr %i.p, align 8, !tbaa !38
  %i.co = zext i16 %i.cm to i64
  br label %.preheader.i98.preheader

.preheader.i98.preheader:                         ; preds = %.critedge67, %.lr.ph189
  %indvars.iv = phi i64 [ 0, %.lr.ph189 ], [ %indvars.iv.next, %.critedge67 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.cp = mul nuw nsw i64 %indvars.iv, 56
  %i.cq = load i64, ptr %2, align 8, !tbaa !21
  %i.cr = add i64 %i.cq, %i.cp
  %i.cs = add i64 %i.cr, %i.cn
  br label %.preheader.i98

.preheader.i98:                                   ; preds = %.preheader.i98.preheader, %"_ZN5nglog5tools12_GLOBAL__N_112FailureRetryIZNS0_L14ReadFromOffsetEiPvmmE3$_0EEDaT_i.exit.i103"
  %.020.i99 = phi i64 [ %.1.i105, %"_ZN5nglog5tools12_GLOBAL__N_112FailureRetryIZNS0_L14ReadFromOffsetEiPvmmE3$_0EEDaT_i.exit.i103" ], [ 0, %.preheader.i98.preheader ] ; 6 uses
  %i.ct = icmp ult i64 %.020.i99, 56
  br i1 %i.ct, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %.preheader.i98
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 %.020.i99
  %i.cv = sub nuw nsw i64 56, %.020.i99
  %i.cw = add i64 %i.cs, %.020.i99
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ar, %bb.ap
  %i.cx = invoke noundef i64 @pread(i32 noundef %i.h, ptr noundef nonnull %i.cu, i64 noundef %i.cv, i64 noundef %i.cw)
          to label %.noexc107 unwind label %bb.av ; 4 uses

.noexc107:                                        ; preds = %bb.aq
  %i.cy = icmp eq i64 %i.cx, -1
  br i1 %i.cy, label %bb.ar, label %"_ZN5nglog5tools12_GLOBAL__N_112FailureRetryIZNS0_L14ReadFromOffsetEiPvmmE3$_0EEDaT_i.exit.i103"

bb.ar:                                            ; preds = %.noexc107
  %i.cz = tail call ptr @__errno_location() #21
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !13
  %i.db = icmp eq i32 %i.da, 4
  br i1 %i.db, label %bb.aq, label %.loopexit, !llvm.loop !0

"_ZN5nglog5tools12_GLOBAL__N_112FailureRetryIZNS0_L14ReadFromOffsetEiPvmmE3$_0EEDaT_i.exit.i103": ; preds = %.noexc107
  %i.dc = icmp slt i64 %i.cx, 0
  %i.dd = icmp eq i64 %i.cx, 0
end_hunk_0
