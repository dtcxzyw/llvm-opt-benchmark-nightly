inline.NumInlined: 4253
inline.NumDeleted: 716
begin_hunk_0_@_ZN2PP3Cmd13find_any_charEiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.p = phi i64 [ %i.n, %bb.b ], [ %i.l, %.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !916)
  %i.q = icmp ult i64 %i.p, %indvars.iv
  br i1 %i.q, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.c:                                             ; preds = %.lr.ph
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.222, ptr noundef nonnull @.str.221, i64 noundef %indvars.iv, i64 noundef %i.p) #24, !noalias !916
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %.lr.ph
  store ptr %i.c, ptr %4, align 8, !tbaa !8, !alias.scope !916
  %i.r = icmp ne i64 %i.p, %indvars.iv            ; 2 uses
  %spec.select.i.i.i = zext i1 %i.r to i64
  br i1 %i.r, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.s = load ptr, ptr %3, align 8, !tbaa !45, !noalias !916
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv
  %i.u = load i8, ptr %i.t, align 1, !tbaa !15
  store i8 %i.u, ptr %i.c, align 8, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, %bb.d
  %spec.select.i.i.i.sroa.sel = phi ptr [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ], [ %.sroa.gep, %bb.d ]
  store i64 %spec.select.i.i.i, ptr %i.d, align 8, !tbaa !12, !alias.scope !916
  store i8 0, ptr %spec.select.i.i.i.sroa.sel, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !71, !noalias !919 ; 2 uses
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !75, !noalias !919
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !76, !noalias !919
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 7
  %i.ac = add nsw i64 %i.ab, %indvars.iv63        ; 5 uses
  %i.ad = icmp sgt i64 %i.ac, -1
  br i1 %i.ad, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.ae = icmp samesign ult i64 %i.ac, 4
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds [128 x i8], ptr %i.v, i64 %indvars.iv63
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit

bb.g:                                             ; preds = %bb.e
  %i.ag = lshr i64 %i.ac, 2
  br label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.ah = ashr i64 %i.ac, 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = phi i64 [ %i.ag, %bb.g ], [ %i.ah, %bb.h ] ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !51, !noalias !919
  %i.al = shl nsw i64 %i.ai, 2
  %i.am = sub nsw i64 %i.ac, %i.al
  %i.an = getelementptr inbounds [128 x i8], ptr %i.ak, i64 %i.am
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit:          ; preds = %bb.f, %bb.i
  %storemerge.i.i.i.i = phi ptr [ %i.an, %bb.i ], [ %i.af, %bb.f ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !922)
  store ptr %i.h, ptr %5, align 8, !tbaa !8, !alias.scope !922
  %i.ao = load ptr, ptr %storemerge.i.i.i.i, align 8, !tbaa !45, !noalias !922 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !12, !noalias !922 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !922
  store i64 %i.aq, ptr %i.a, align 8, !tbaa !67, !noalias !922
  %i.ar = icmp ugt i64 %i.aq, 15
  br i1 %i.ar, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit
  %i.as = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.o     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.as, ptr %5, align 8, !tbaa !45, !alias.scope !922
  %i.at = load i64, ptr %i.a, align 8, !tbaa !67, !noalias !922
  store i64 %i.at, ptr %i.h, align 8, !tbaa !15, !alias.scope !922
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit
  %i.au = phi ptr [ %i.as, %.noexc ], [ %i.h, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit ] ; 2 uses
  switch i64 %i.aq, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.av = load i8, ptr %i.ao, align 1, !tbaa !15
  store i8 %i.av, ptr %i.au, align 1, !tbaa !15
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ao, i64 %i.aq, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !67, !noalias !922 ; 2 uses
  store i64 %i.aw, ptr %i.i, align 8, !tbaa !12, !alias.scope !922
  %i.ax = load ptr, ptr %5, align 8, !tbaa !45, !alias.scope !922
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aw
  store i8 0, ptr %i.ay, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !922
  %i.az = load i64, ptr %i.i, align 8, !tbaa !12  ; 4 uses
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !12
  %i.bb = icmp eq i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.m, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge: ; preds = %bb.l
  %.pre67 = load ptr, ptr %5, align 8, !tbaa !45
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.m:                                             ; preds = %bb.l
  %i.bc = icmp eq i64 %i.az, 0
  %.pre68 = load ptr, ptr %5, align 8, !tbaa !45  ; 3 uses
  br i1 %i.bc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = load ptr, ptr %4, align 8, !tbaa !45
  %bcmp.i = call i32 @bcmp(ptr %.pre68, ptr %i.bd, i64 %i.az)
  %i.be = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge, %bb.m, %bb.n
  %i.bf = phi ptr [ %.pre67, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %.pre68, %bb.n ], [ %.pre68, %bb.m ] ; 2 uses
  %i.bg = phi i1 [ false, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %i.be, %bb.n ], [ true, %bb.m ]
  %i.bh = icmp eq ptr %i.bf, %i.h
  br i1 %i.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.bi = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.bi)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.bj = load i64, ptr %i.h, align 8, !tbaa !15
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bk) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bl = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.c
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bn = load i64, ptr %i.c, align 8, !tbaa !15
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %i.bg, label %.loopexit.loopexit, label %bb.b

bb.o:                                             ; preds = %.noexc.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bq = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.c
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.o
  %i.bs = load i64, ptr %i.c, align 8, !tbaa !15
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %i.bp

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %i.bu = phi i64 [ %i.l, %.preheader ], [ %i.n, %bb.b ]
  %indvars.iv.next64 = add nsw i64 %indvars.iv63, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next64 to i32
  %exitcond.not = icmp eq i32 %i.k, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !925

.loopexit.loopexit:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.bv = trunc nsw i64 %indvars.iv63 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %.loopexit.loopexit, %bb.a
  %i.bw = phi i32 [ -1, %bb.a ], [ %i.bv, %.loopexit.loopexit ], [ -1, %._crit_edge ]
  ret i32 %i.bw
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN2PP3Cmd19find_closing_symbolENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(432) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = sext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ %i.m, %bb.a ] ; 5 uses
  %.014 = phi i32 [ %.115, %bb.n ], [ undef, %bb.a ] ; 4 uses
  %.012 = phi i32 [ %.113, %bb.n ], [ 0, %bb.a ]  ; 5 uses
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !76   ; 2 uses
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !76   ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3
  %i.t = icmp ne ptr %i.n, null
  %.neg.i.i = sext i1 %i.t to i64
  %i.u = add nsw i64 %i.s, %.neg.i.i
  %i.v = shl nsw i64 %i.u, 2
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !75
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = lshr exact i64 %i.aa, 7
  %i.ac = add nsw i64 %i.v, %i.ab
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !71  ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = lshr exact i64 %i.ah, 7
  %i.aj = add nsw i64 %i.ac, %i.ai
  %sext = shl i64 %i.aj, 32
  %i.ak = ashr exact i64 %sext, 32
  %.not = icmp slt i64 %indvars.iv, %i.ak
  br i1 %.not, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !75, !noalias !926
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.ag, %i.am
  %i.ao = ashr exact i64 %i.an, 7
  %i.ap = add nsw i64 %i.ao, %indvars.iv          ; 5 uses
  %i.aq = icmp sgt i64 %i.ap, -1
  br i1 %i.aq, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ar = icmp samesign ult i64 %i.ap, 4
  br i1 %i.ar, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds [128 x i8], ptr %i.ae, i64 %indvars.iv
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit

bb.f:                                             ; preds = %bb.d
  %i.at = lshr i64 %i.ap, 2
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.au = ashr i64 %i.ap, 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.av = phi i64 [ %i.at, %bb.f ], [ %i.au, %bb.g ] ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !51, !noalias !926
  %i.ay = shl nsw i64 %i.av, 2
  %i.az = sub nsw i64 %i.ap, %i.ay
  %i.ba = getelementptr inbounds [128 x i8], ptr %i.ax, i64 %i.az
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit:          ; preds = %bb.e, %bb.h
  %storemerge.i.i.i.i = phi ptr [ %i.ba, %bb.h ], [ %i.as, %bb.e ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !929)
  store ptr %i.i, ptr %4, align 8, !tbaa !8, !alias.scope !929
  %i.bb = load ptr, ptr %storemerge.i.i.i.i, align 8, !tbaa !45, !noalias !929 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !12, !noalias !929 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !929
  store i64 %i.bd, ptr %i.a, align 8, !tbaa !67, !noalias !929
  %i.be = icmp ugt i64 %i.bd, 15
  br i1 %i.be, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit
  %i.bf = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.bf, ptr %4, align 8, !tbaa !45, !alias.scope !929
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !67, !noalias !929
  store i64 %i.bg, ptr %i.i, align 8, !tbaa !15, !alias.scope !929
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit
  %i.bh = phi ptr [ %i.bf, %.noexc.i.i ], [ %i.i, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit ] ; 2 uses
  switch i64 %i.bd, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZN2PP4Word10get_stringB5cxx11Ev.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.bi = load i8, ptr %i.bb, align 1, !tbaa !15
  store i8 %i.bi, ptr %i.bh, align 1, !tbaa !15
  br label %_ZN2PP4Word10get_stringB5cxx11Ev.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr align 1 %i.bb, i64 %i.bd, i1 false)
  br label %_ZN2PP4Word10get_stringB5cxx11Ev.exit

_ZN2PP4Word10get_stringB5cxx11Ev.exit:            ; preds = %._crit_edge.i.i.i, %bb.i, %bb.j
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !67, !noalias !929 ; 2 uses
  store i64 %i.bj, ptr %i.j, align 8, !tbaa !12, !alias.scope !929
  %i.bk = load ptr, ptr %4, align 8, !tbaa !45, !alias.scope !929
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bj
  store i8 0, ptr %i.bl, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !929
  %i.bm = load i64, ptr %i.j, align 8, !tbaa !12  ; 7 uses
  %i.bn = load i64, ptr %i.k, align 8, !tbaa !12
  %i.bo = icmp eq i64 %i.bm, %i.bn
  br i1 %i.bo, label %bb.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread18

bb.k:                                             ; preds = %_ZN2PP4Word10get_stringB5cxx11Ev.exit
  %i.bp = icmp eq i64 %i.bm, 0
  br i1 %i.bp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.k
  %i.bq = load ptr, ptr %1, align 8, !tbaa !45
  %i.br = load ptr, ptr %4, align 8, !tbaa !45
  %bcmp.i = call i32 @bcmp(ptr %i.br, ptr %i.bq, i64 %i.bm)
  %i.bs = icmp eq i32 %bcmp.i, 0
  br i1 %i.bs, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread18

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.k, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.bt = add nsw i32 %.012, 1
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit17.thread19

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread18: ; preds = %_ZN2PP4Word10get_stringB5cxx11Ev.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.bu = load i64, ptr %i.l, align 8, !tbaa !12
  %i.bv = icmp eq i64 %i.bm, %i.bu
  br i1 %i.bv, label %bb.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit17.thread19

bb.l:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread18
  %i.bw = icmp eq i64 %i.bm, 0
  br i1 %i.bw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit17.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit17

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit17: ; preds = %bb.l
  %i.bx = load ptr, ptr %2, align 8, !tbaa !45
  %i.by = load ptr, ptr %4, align 8, !tbaa !45
  %bcmp.i16 = call i32 @bcmp(ptr %i.by, ptr %i.bx, i64 %i.bm)
  %i.bz = icmp eq i32 %bcmp.i16, 0
  br i1 %i.bz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit17.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit17.thread19

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit17.thread: ; preds = %bb.l, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit17
  %i.ca = icmp eq i32 %.012, 0
  %5 = trunc nsw i64 %indvars.iv to i32
  br i1 %i.ca, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit17.thread19, label %bb.m

bb.m:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit17.thread
  %i.cb = add nsw i32 %.012, -1
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit17.thread19

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit17.thread19: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread18, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit17, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit17.thread, %bb.m, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %.115 = phi i32 [ %.014, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ %5, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit17.thread ], [ %.014, %bb.m ], [ %.014, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit17 ], [ %.014, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread18 ] ; 2 uses
  %.113 = phi i32 [ %i.bt, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit17.thread ], [ %i.cb, %bb.m ], [ %.012, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit17 ], [ %.012, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread18 ]
  %.0 = phi i32 [ 4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit17.thread ], [ 4, %bb.m ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit17 ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread18 ]
  %i.cc = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.i
  br i1 %i.cd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit17.thread19
  %i.ce = icmp ult i64 %i.bm, 16
  call void @llvm.assume(i1 %i.ce)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit17.thread19
  %i.cf = load i64, ptr %i.i, align 8, !tbaa !15
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  switch i32 %.0, label %bb.o [
    i32 0, label %bb.n
    i32 4, label %bb.n
  ]

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %bb.b, !llvm.loop !932

bb.o:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %spec.select = phi i32 [ %.115, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ -1, %bb.b ]
  ret i32 %spec.select
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN2PP3Cmd23handle_innermost_parensERiS1_S1_S1_bRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEES1_(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4, i1 noundef zeroext %5, ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 4 dereferenceable(4) %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  store i32 -1, ptr %3, align 4, !tbaa !4
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.d, ptr %8, align 8, !tbaa !8
  store i8 40, ptr %i.d, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 1, ptr %i.e, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 0, ptr %i.f, align 1, !tbaa !15
  %i.g = load i32, ptr %1, align 4, !tbaa !4
  %i.h = load i32, ptr %2, align 4, !tbaa !4
  %i.i = invoke noundef i32 @_ZN2PP3Cmd9find_lastENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull %8, i32 noundef %i.g, i32 noundef %i.h)
          to label %bb.a unwind label %bb.b       ; 5 uses

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.j = load ptr, ptr %8, align 8, !tbaa !45     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.d
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.l = load i64, ptr %i.d, align 8, !tbaa !15
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.n = icmp eq i32 %i.i, -1
  br i1 %i.n, label %bb.an, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %8, align 8, !tbaa !45     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !15
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i32 %i.i, ptr %3, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.t = add nuw nsw i32 %i.i, 1                  ; 2 uses
  store i32 %i.t, ptr %i.b, align 4, !tbaa !4
  store i32 1, ptr %4, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %.pre = load i32, ptr %2, align 4, !tbaa !4
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 18
  br label %._crit_edge.i.i61

._crit_edge.i.i61:                                ; preds = %bb.aj, %bb.c
  %i.ac = phi i32 [ %.pre, %bb.c ], [ %i.fh, %bb.aj ]
  %i.ad = phi i32 [ %i.t, %bb.c ], [ %i.fi, %bb.aj ] ; 3 uses
  store ptr %i.u, ptr %9, align 8, !tbaa !8
  store i16 10540, ptr %i.u, align 8
  store i64 2, ptr %i.v, align 8, !tbaa !12
  store i8 0, ptr %i.ab, align 2, !tbaa !15
  %i.ae = invoke noundef i32 @_ZN2PP3Cmd13find_any_charEiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(432) %0, i32 noundef %i.ad, i32 noundef %i.ac, ptr noundef nonnull %9)
          to label %bb.d unwind label %bb.q       ; 6 uses

bb.d:                                             ; preds = %._crit_edge.i.i61
  %i.af = load ptr, ptr %9, align 8, !tbaa !45    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.u
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.d
  %i.ah = load i64, ptr %i.u, align 8, !tbaa !15
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  %.not.not.not.not.not = icmp ne i32 %i.ae, -1   ; 2 uses
  br i1 %.not.not.not.not.not, label %bb.r, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %i.aj = sext i32 %i.ad to i64                   ; 2 uses
  %i.ak = load ptr, ptr %i.w, align 8, !tbaa !71, !noalias !933 ; 2 uses
  %i.al = load ptr, ptr %i.x, align 8, !tbaa !75, !noalias !933
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !76, !noalias !933
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 7
  %i.ar = add nsw i64 %i.aq, %i.aj                ; 5 uses
  %i.as = icmp sgt i64 %i.ar, -1
  br i1 %i.as, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.at = icmp samesign ult i64 %i.ar, 4
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds [128 x i8], ptr %i.ak, i64 %i.aj
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit

bb.h:                                             ; preds = %bb.f
  %i.av = lshr i64 %i.ar, 2
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.aw = ashr i64 %i.ar, 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ax = phi i64 [ %i.av, %bb.h ], [ %i.aw, %bb.i ] ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !51, !noalias !933
  %i.ba = shl nsw i64 %i.ax, 2
  %i.bb = sub nsw i64 %i.ar, %i.ba
  %i.bc = getelementptr inbounds [128 x i8], ptr %i.az, i64 %i.bb
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit:          ; preds = %bb.g, %bb.j
  %storemerge.i.i.i.i = phi ptr [ %i.bc, %bb.j ], [ %i.au, %bb.g ]
  call void @_ZN2PP4Word11fatal_errorERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi(ptr noundef nonnull align 8 dereferenceable(128) %storemerge.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 4 dereferenceable(4) %7)
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @.str.90, i64 noundef 57) ; 0 uses
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !146
  %i.bg = getelementptr i8, ptr %i.bf, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %i.bd, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 240
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !148 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i, label %bb.k, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.k:                                             ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit
  call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !163
  %.not.i1.i.i = icmp eq i8 %i.bm, 0
  br i1 %.not.i1.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 67
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !15
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bk)
  %i.bp = load ptr, ptr %i.bk, align 8, !tbaa !146
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call noundef signext i8 %i.br(ptr noundef nonnull align 8 dereferenceable(570) %i.bk, i8 noundef signext 10), !inline_history !178
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.l, %bb.m
  %.0.i.i.i = phi i8 [ %i.bo, %bb.l ], [ %i.bs, %bb.m ]
  %i.bt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, i8 noundef signext %.0.i.i.i)
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bt) ; 0 uses
  %i.bv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @.str.91, i64 noundef 52) ; 0 uses
  %i.bw = load ptr, ptr %i.bd, align 8, !tbaa !146
  %i.bx = getelementptr i8, ptr %i.bw, i64 -24
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds i8, ptr %i.bd, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 240
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !148 ; 6 uses
  %.not.i.i.i81 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i81, label %bb.n, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i82

bb.n:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i82: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !163
  %.not.i1.i.i83 = icmp eq i8 %i.cd, 0
  br i1 %.not.i1.i.i83, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i82
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 67
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !15
  br label %.thread

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i82
end_hunk_0
begin_hunk_1_@_ZN2PP3Cmd15handle_exe_argsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !148 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.qd, null
  br i1 %.not.i.i.i, label %bb.cp, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZSt16__throw_bad_castv() #24
          to label %.noexc201 unwind label %.loopexit.split-lp

.noexc201:                                        ; preds = %bb.cp
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.co
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 56
  %i.qf = load i8, ptr %i.qe, align 8, !tbaa !163
  %.not.i1.i.i = icmp eq i8 %i.qf, 0
  br i1 %.not.i1.i.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qd, i64 67
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.cr:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.qd)
          to label %.noexc202 unwind label %.loopexit

.noexc202:                                        ; preds = %bb.cr
  %i.qi = load ptr, ptr %i.qd, align 8, !tbaa !146
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 48
  %i.qk = load ptr, ptr %i.qj, align 8
  %i.ql = invoke noundef signext i8 %i.qk(ptr noundef nonnull align 8 dereferenceable(570) %i.qd, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit, !inline_history !169

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc202, %bb.cq
  %.0.i.i.i = phi i8 [ %i.qh, %bb.cq ], [ %i.ql, %.noexc202 ]
  %i.qm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i8 noundef signext %.0.i.i.i)
          to label %.noexc204 unwind label %.loopexit

.noexc204:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.qn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.qm)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %bb.cr, %.noexc202, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc204
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

.loopexit.split-lp:                               ; preds = %bb.cp
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

_ZNSolsEPFRSoS_E.exit:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114._ZNSolsEPFRSoS_E.exit_crit_edge, %.noexc204
  %indvars.iv.next262.pre-phi = phi i64 [ %.pre275, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114._ZNSolsEPFRSoS_E.exit_crit_edge ], [ %i.gi, %.noexc204 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.b, !llvm.loop !1860

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.d
  %i.qo = load ptr, ptr %1, align 8, !tbaa !45    ; 6 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.qq = icmp eq ptr %i.qo, %i.qp
  %i.qr = load ptr, ptr %11, align 8, !tbaa !45   ; 5 uses
  %i.qs = icmp eq ptr %i.qr, %i.bg                ; 2 uses
  br i1 %i.qq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.qs, label %bb.cs, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.qs, label %bb.cs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.cs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.qt = load i64, ptr %i.bh, align 8, !tbaa !12 ; 3 uses
  %i.qu = icmp ult i64 %i.qt, 16
  call void @llvm.assume(i1 %i.qu)
  switch i64 %i.qt, label %bb.cu [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ct
  ]

bb.ct:                                            ; preds = %bb.cs
  %i.qv = load i8, ptr %i.qr, align 1, !tbaa !15
  store i8 %i.qv, ptr %i.qo, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.cu:                                            ; preds = %bb.cs
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qo, ptr align 1 %i.qr, i64 %i.qt, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.cu, %bb.ct, %bb.cs
  %i.qw = load i64, ptr %i.bh, align 8, !tbaa !12 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.qw, ptr %i.qx, align 8, !tbaa !12
  %i.qy = load ptr, ptr %1, align 8, !tbaa !45
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 %i.qw
  store i8 0, ptr %i.qz, align 1, !tbaa !15
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.qr, ptr %1, align 8, !tbaa !45
  %i.rb = load <2 x i64>, ptr %i.bh, align 8, !tbaa !15
  store <2 x i64> %i.rb, ptr %i.ra, align 8, !tbaa !15
  br label %bb.cw

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.rc = load i64, ptr %i.qp, align 8, !tbaa !15
  store ptr %i.qr, ptr %1, align 8, !tbaa !45
  %i.rd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.re = load <2 x i64>, ptr %i.bh, align 8, !tbaa !15
  store <2 x i64> %i.re, ptr %i.rd, align 8, !tbaa !15
  %.not.i = icmp eq ptr %i.qo, null
  br i1 %.not.i, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.qo, ptr %11, align 8, !tbaa !45
  store i64 %i.rc, ptr %i.bg, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.cw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bg, ptr %11, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.cv, %bb.cw
  %i.rf = phi ptr [ %i.qo, %bb.cv ], [ %i.bg, %bb.cw ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.bh, align 8, !tbaa !12
  store i8 0, ptr %i.rf, align 1, !tbaa !15
  %i.rg = load ptr, ptr %11, align 8, !tbaa !45   ; 2 uses
  %i.rh = icmp eq ptr %i.rg, %i.bg
  br i1 %i.rh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ri = load i64, ptr %i.bg, align 8, !tbaa !15
  %i.rj = add i64 %i.ri, 1
  call void @_ZdlPvm(ptr noundef %i.rg, i64 noundef %i.rj) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.rk = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.rk, ptr %2, align 8, !tbaa !146
  %i.rl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.rm = getelementptr i8, ptr %i.rk, i64 -24
  %i.rn = load i64, ptr %i.rm, align 8
  %i.ro = getelementptr inbounds i8, ptr %2, i64 %i.rn
  store ptr %i.rl, ptr %i.ro, align 8, !tbaa !146
  %i.rp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.rp, ptr %i.af, align 8, !tbaa !146
  %i.rq = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.rq, align 8, !tbaa !146
  %i.rr = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !45 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ru = icmp eq ptr %i.rs, %i.rt
  br i1 %i.ru, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200
  %i.rv = load i64, ptr %i.rt, align 8, !tbaa !15
  %i.rw = add i64 %i.rv, 1
  call void @_ZdlPvm(ptr noundef %i.rs, i64 noundef %i.rw) #21
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.rq, align 8, !tbaa !146
  %i.rx = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.rx) #22
  %i.ry = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ry, ptr %2, align 8, !tbaa !146
  %i.rz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.sa = getelementptr i8, ptr %i.ry, i64 -24
  %i.sb = load i64, ptr %i.sa, align 8
  %i.sc = getelementptr inbounds i8, ptr %2, i64 %i.sb
  store ptr %i.rz, ptr %i.sc, align 8, !tbaa !146
  %i.sd = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.sd, align 8, !tbaa !1861
  %i.se = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.se) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.cx

bb.cx:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, %.body
  %.pn83.pn.pn = phi { ptr, i32 } [ %i.bt, %.body ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ], [ %i.ih, %bb.at ], [ %.pn73.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181 ], [ %.pn79.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn83.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP3Cmd18deprecated_input01ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_18basic_stringstreamIcS4_S5_EERi(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.g = load i64, ptr %i.f, align 8, !tbaa !12
  %i.h = icmp eq i64 %i.g, 7
  br i1 %i.h, label %bb.b, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45   ; 2 uses
  %i.k = load i32, ptr %i.j, align 1
  %i.l = xor i32 %i.k, 1835888483
  %i.m = getelementptr i8, ptr %i.j, i64 3
  %i.n = load i32, ptr %i.m, align 1
  %i.o = xor i32 %i.n, 1684955501
  %i.p = or i32 %i.l, %i.o
  %i.q = icmp ne i32 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %.not229 = icmp eq i32 %i.r, 0
  br i1 %.not229, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader: ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 35 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.backedge, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader
  %indvars.iv = phi i64 [ 0, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader ], [ %i.ch, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.backedge ] ; 5 uses
  %indvars289 = trunc i64 %indvars.iv to i32
  %i.ao = load ptr, ptr %i.v, align 8, !tbaa !76  ; 2 uses
  %i.ap = load ptr, ptr %i.w, align 8, !tbaa !76  ; 3 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 3
  %i.au = icmp ne ptr %i.ao, null
  %.neg.i.i = sext i1 %i.au to i64
  %i.av = add nsw i64 %i.at, %.neg.i.i
  %i.aw = shl nsw i64 %i.av, 2
  %i.ax = load ptr, ptr %i.t, align 8, !tbaa !71
  %i.ay = load ptr, ptr %i.x, align 8, !tbaa !75
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = lshr exact i64 %i.bb, 7
  %i.bd = add nsw i64 %i.aw, %i.bc
  %i.be = load ptr, ptr %i.y, align 8, !tbaa !87
  %i.bf = load ptr, ptr %i.u, align 8, !tbaa !71  ; 3 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = lshr exact i64 %i.bi, 7
  %i.bk = add nsw i64 %i.bd, %i.bj
  %i.bl = shl i64 %i.bk, 32
  %sext = add i64 %i.bl, -8589934592
  %i.bm = ashr exact i64 %sext, 32
  %i.bn = icmp slt i64 %indvars.iv, %i.bm
  br i1 %i.bn, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bo = load ptr, ptr %i.z, align 8, !tbaa !75, !noalias !1863
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = sub i64 %i.bh, %i.bp
  %i.br = ashr exact i64 %i.bq, 7                 ; 2 uses
  %i.bs = add nsw i64 %i.br, %indvars.iv          ; 5 uses
  %i.bt = icmp sgt i64 %i.bs, -1
  br i1 %i.bt, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.bu = icmp samesign ult i64 %i.bs, 4
  br i1 %i.bu, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bv = getelementptr inbounds nuw [128 x i8], ptr %i.bf, i64 %indvars.iv
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit

bb.f:                                             ; preds = %bb.d
  %i.bw = lshr i64 %i.bs, 2
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.bx = ashr i64 %i.bs, 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.by = phi i64 [ %i.bw, %bb.f ], [ %i.bx, %bb.g ] ; 2 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !51, !noalias !1863
  %i.cb = shl nsw i64 %i.by, 2
  %i.cc = sub nsw i64 %i.bs, %i.cb
  %i.cd = getelementptr inbounds [128 x i8], ptr %i.ca, i64 %i.cc
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit:          ; preds = %bb.e, %bb.h
  %storemerge.i.i.i.i = phi ptr [ %i.cd, %bb.h ], [ %i.bv, %bb.e ]
  %i.ce = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 32
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !107
  %i.cg = icmp eq i32 %i.cf, 12
  %i.ch = add nuw nsw i64 %indvars.iv, 1          ; 4 uses
  br i1 %i.cg, label %bb.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.backedge

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.backedge: ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, !llvm.loop !1866

bb.i:                                             ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.ci = add nsw i64 %i.br, %i.ch                ; 5 uses
  %i.cj = icmp sgt i64 %i.ci, -1
  br i1 %i.cj, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ck = icmp samesign ult i64 %i.ci, 4
  br i1 %i.ck, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cl = getelementptr inbounds nuw [128 x i8], ptr %i.bf, i64 %i.ch
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit74

bb.l:                                             ; preds = %bb.j
  %i.cm = lshr i64 %i.ci, 2
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.cn = ashr i64 %i.ci, 2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.co = phi i64 [ %i.cm, %bb.l ], [ %i.cn, %bb.m ] ; 2 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !51, !noalias !1867
  %i.cr = shl nsw i64 %i.co, 2
  %i.cs = sub nsw i64 %i.ci, %i.cr
  %i.ct = getelementptr inbounds [128 x i8], ptr %i.cq, i64 %i.cs
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit74

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit74:        ; preds = %bb.k, %bb.n
  %storemerge.i.i.i.i73 = phi ptr [ %i.ct, %bb.n ], [ %i.cl, %bb.k ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1870)
  store ptr %i.aa, ptr %4, align 8, !tbaa !8, !alias.scope !1870
  %i.cu = load ptr, ptr %storemerge.i.i.i.i73, align 8, !tbaa !45, !noalias !1870 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i73, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !12, !noalias !1870 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22, !noalias !1870
  store i64 %i.cw, ptr %i.e, align 8, !tbaa !67, !noalias !1870
  %i.cx = icmp ugt i64 %i.cw, 15
  br i1 %i.cx, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit74
  %i.cy = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.cy, ptr %4, align 8, !tbaa !45, !alias.scope !1870
  %i.cz = load i64, ptr %i.e, align 8, !tbaa !67, !noalias !1870
  store i64 %i.cz, ptr %i.aa, align 8, !tbaa !15, !alias.scope !1870
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit74
  %i.da = phi ptr [ %i.cy, %.noexc.i.i ], [ %i.aa, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit74 ] ; 2 uses
  switch i64 %i.cw, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %_ZN2PP4Word10get_stringB5cxx11Ev.exit
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.db = load i8, ptr %i.cu, align 1, !tbaa !15
  store i8 %i.db, ptr %i.da, align 1, !tbaa !15
  br label %_ZN2PP4Word10get_stringB5cxx11Ev.exit

bb.p:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.da, ptr align 1 %i.cu, i64 %i.cw, i1 false)
  br label %_ZN2PP4Word10get_stringB5cxx11Ev.exit

_ZN2PP4Word10get_stringB5cxx11Ev.exit:            ; preds = %._crit_edge.i.i.i, %bb.o, %bb.p
  %i.dc = load i64, ptr %i.e, align 8, !tbaa !67, !noalias !1870 ; 2 uses
  store i64 %i.dc, ptr %i.ab, align 8, !tbaa !12, !alias.scope !1870
  %i.dd = load ptr, ptr %4, align 8, !tbaa !45, !alias.scope !1870
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dc
  store i8 0, ptr %i.de, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22, !noalias !1870
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %i.ac, ptr %5, align 8, !tbaa !8
  store i64 0, ptr %i.ad, align 8, !tbaa !12
  store i8 0, ptr %i.ac, align 8, !tbaa !15
  %i.df = load i64, ptr %i.ab, align 8, !tbaa !12
  %cond = icmp eq i64 %i.df, 1
  %i.dg = trunc nuw nsw i64 %i.ch to i32          ; 2 uses
  br i1 %cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit76.thread222

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN2PP4Word10get_stringB5cxx11Ev.exit
  %i.dh = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %lhsc = load i8, ptr %i.dh, align 1
  %i.di = icmp eq i8 %lhsc, 43
  br i1 %i.di, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread221

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread221: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %lhsc331 = load i8, ptr %i.dh, align 1
  %i.dj = icmp eq i8 %lhsc331, 45
  br i1 %i.dj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit76.thread222

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread221, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.dk = add nuw nsw i32 %indvars289, 2
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit76.thread222

bb.q:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit76.thread222: ; preds = %_ZN2PP4Word10get_stringB5cxx11Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread221
  %.050 = phi i32 [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ %i.dg, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread221 ], [ %i.dg, %_ZN2PP4Word10get_stringB5cxx11Ev.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.dm = sext i32 %.050 to i64                   ; 5 uses
  %i.dn = load ptr, ptr %i.u, align 8, !tbaa !71, !noalias !1873 ; 2 uses
  %i.do = load ptr, ptr %i.z, align 8, !tbaa !75, !noalias !1873
  %i.dp = load ptr, ptr %i.w, align 8, !tbaa !76, !noalias !1873
  %i.dq = ptrtoint ptr %i.dn to i64
  %i.dr = ptrtoint ptr %i.do to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = ashr exact i64 %i.ds, 7
  %i.du = add nsw i64 %i.dt, %i.dm                ; 5 uses
  %i.dv = icmp sgt i64 %i.du, -1
  br i1 %i.dv, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit76.thread222
  %i.dw = icmp samesign ult i64 %i.du, 4
  br i1 %i.dw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dx = getelementptr inbounds [128 x i8], ptr %i.dn, i64 %i.dm
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit78

bb.t:                                             ; preds = %bb.r
  %i.dy = lshr i64 %i.du, 2
  br label %bb.v

bb.u:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit76.thread222
  %i.dz = ashr i64 %i.du, 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ea = phi i64 [ %i.dy, %bb.t ], [ %i.dz, %bb.u ] ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !51, !noalias !1873
  %i.ed = shl nsw i64 %i.ea, 2
  %i.ee = sub nsw i64 %i.du, %i.ed
  %i.ef = getelementptr inbounds [128 x i8], ptr %i.ec, i64 %i.ee
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit78

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit78:        ; preds = %bb.s, %bb.v
  %storemerge.i.i.i.i77 = phi ptr [ %i.ef, %bb.v ], [ %i.dx, %bb.s ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1876)
  store ptr %i.ae, ptr %6, align 8, !tbaa !8, !alias.scope !1876
  %i.eg = load ptr, ptr %storemerge.i.i.i.i77, align 8, !tbaa !45, !noalias !1876 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i77, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !12, !noalias !1876 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22, !noalias !1876
  store i64 %i.ei, ptr %i.d, align 8, !tbaa !67, !noalias !1876
  %i.ej = icmp ugt i64 %i.ei, 15
  br i1 %i.ej, label %.noexc.i.i80, label %._crit_edge.i.i.i79

.noexc.i.i80:                                     ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit78
  %i.ek = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %bb.af    ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i80
  store ptr %i.ek, ptr %6, align 8, !tbaa !45, !alias.scope !1876
  %i.el = load i64, ptr %i.d, align 8, !tbaa !67, !noalias !1876
  store i64 %i.el, ptr %i.ae, align 8, !tbaa !15, !alias.scope !1876
  br label %._crit_edge.i.i.i79

._crit_edge.i.i.i79:                              ; preds = %.noexc, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit78
  %i.em = phi ptr [ %i.ek, %.noexc ], [ %i.ae, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit78 ] ; 2 uses
  switch i64 %i.ei, label %bb.x [
    i64 1, label %bb.w
    i64 0, label %bb.y
  ]

bb.w:                                             ; preds = %._crit_edge.i.i.i79
  %i.en = load i8, ptr %i.eg, align 1, !tbaa !15
  store i8 %i.en, ptr %i.em, align 1, !tbaa !15
  br label %bb.y

bb.x:                                             ; preds = %._crit_edge.i.i.i79
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.em, ptr align 1 %i.eg, i64 %i.ei, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %._crit_edge.i.i.i79
  %i.eo = load i64, ptr %i.d, align 8, !tbaa !67, !noalias !1876 ; 2 uses
  store i64 %i.eo, ptr %i.af, align 8, !tbaa !12, !alias.scope !1876
  %i.ep = load ptr, ptr %6, align 8, !tbaa !45, !alias.scope !1876
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eo
  store i8 0, ptr %i.eq, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22, !noalias !1876
  %i.er = load i64, ptr %i.af, align 8, !tbaa !12 ; 2 uses
  %i.es = load i64, ptr %i.ad, align 8, !tbaa !12
  %i.et = sub i64 4611686018427387903, %i.es
  %i.eu = icmp ult i64 %i.et, %i.er
  br i1 %i.eu, label %bb.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.228) #24
          to label %.noexc82 unwind label %.loopexit.split-lp

.noexc82:                                         ; preds = %bb.z
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.y
  %i.ev = load ptr, ptr %6, align 8, !tbaa !45
  %i.ew = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.ev, i64 noundef %i.er)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ex = load ptr, ptr %6, align 8, !tbaa !45    ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.ae
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ez = load i64, ptr %i.ae, align 8, !tbaa !15
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.fb = load ptr, ptr %i.u, align 8, !tbaa !71, !noalias !1879 ; 4 uses
  %i.fc = load ptr, ptr %i.z, align 8, !tbaa !75, !noalias !1879
  %i.fd = load ptr, ptr %i.w, align 8, !tbaa !76, !noalias !1879 ; 4 uses
  %i.fe = ptrtoint ptr %i.fb to i64               ; 2 uses
  %i.ff = ptrtoint ptr %i.fc to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = ashr exact i64 %i.fg, 7                 ; 2 uses
  %i.fi = add nsw i64 %i.fh, %i.dm                ; 5 uses
  %i.fj = icmp sgt i64 %i.fi, -1
  br i1 %i.fj, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fk = icmp samesign ult i64 %i.fi, 4
  br i1 %i.fk, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fl = getelementptr inbounds [128 x i8], ptr %i.fb, i64 %i.dm
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit85

bb.ac:                                            ; preds = %bb.aa
  %i.fm = lshr i64 %i.fi, 2
  br label %bb.ae

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fn = ashr i64 %i.fi, 2
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fo = phi i64 [ %i.fm, %bb.ac ], [ %i.fn, %bb.ad ] ; 2 uses
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.fo
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !51, !noalias !1879
  %i.fr = shl nsw i64 %i.fo, 2
  %i.fs = sub nsw i64 %i.fi, %i.fr
  %i.ft = getelementptr inbounds [128 x i8], ptr %i.fq, i64 %i.fs
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit85

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit85:        ; preds = %bb.ab, %bb.ae
  %storemerge.i.i.i.i84 = phi ptr [ %i.ft, %bb.ae ], [ %i.fl, %bb.ab ]
  %i.fu = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i84, i64 32
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !107
  %i.fw = and i32 %i.fv, -2
  %switch.i = icmp eq i32 %i.fw, 2
  br i1 %switch.i, label %bb.ah, label %bb.ch

bb.af:                                            ; preds = %.noexc.i.i80
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp:                               ; preds = %bb.z
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.fy = load ptr, ptr %6, align 8, !tbaa !45    ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.ae
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.ag
  %i.ga = load i64, ptr %i.ae, align 8, !tbaa !15
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.af
  %.pn = phi { ptr, i32 } [ %i.fx, %bb.af ], [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %lpad.phi, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.cj

bb.ah:                                            ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit85
  %i.gc = add nsw i32 %.050, 1                    ; 2 uses
  %i.gd = load ptr, ptr %i.v, align 8, !tbaa !76  ; 2 uses
  %i.ge = ptrtoint ptr %i.gd to i64
  %i.gf = ptrtoint ptr %i.fd to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = ashr exact i64 %i.gg, 3
  %i.gi = icmp ne ptr %i.gd, null
  %.neg.i.i89 = sext i1 %i.gi to i64
  %i.gj = add nsw i64 %i.gh, %.neg.i.i89
  %i.gk = shl nsw i64 %i.gj, 2
  %i.gl = load ptr, ptr %i.t, align 8, !tbaa !71
  %i.gm = load ptr, ptr %i.x, align 8, !tbaa !75
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = lshr exact i64 %i.gp, 7
  %i.gr = add nsw i64 %i.gk, %i.gq
  %i.gs = load ptr, ptr %i.y, align 8, !tbaa !87
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = sub i64 %i.gt, %i.fe
  %i.gv = lshr exact i64 %i.gu, 7
  %i.gw = add nsw i64 %i.gr, %i.gv
  %i.gx = trunc i64 %i.gw to i32
  %i.gy = add nsw i32 %i.gx, -1
  %.not = icmp slt i32 %.050, %i.gy
  br i1 %.not, label %bb.ai, label %bb.ch

bb.ai:                                            ; preds = %bb.ah
  %i.gz = sext i32 %i.gc to i64                   ; 9 uses
  %i.ha = add nsw i64 %i.fh, %i.gz                ; 9 uses
  %i.hb = icmp sgt i64 %i.ha, -1                  ; 2 uses
  br i1 %i.hb, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.hc = icmp samesign ult i64 %i.ha, 4
  br i1 %i.hc, label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit91.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hd = lshr i64 %i.ha, 2
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit91

bb.al:                                            ; preds = %bb.ai
  %i.he = ashr i64 %i.ha, 2
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit91

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit91:        ; preds = %bb.ak, %bb.al
  %i.hf = phi i64 [ %i.hd, %bb.ak ], [ %i.he, %bb.al ] ; 2 uses
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.hf
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !51, !noalias !1882
  %i.hi = shl nsw i64 %i.hf, 2
  %i.hj = sub nsw i64 %i.ha, %i.hi
  %i.hk = getelementptr inbounds [128 x i8], ptr %i.hh, i64 %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 32
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !107
  %i.hn = and i32 %i.hm, -2
  %switch.i92 = icmp eq i32 %i.hn, 2
  br i1 %switch.i92, label %bb.am, label %bb.ch

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit91.thread: ; preds = %bb.aj
  %i.ho = getelementptr inbounds [128 x i8], ptr %i.fb, i64 %i.gz
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !107
  %i.hr = and i32 %i.hq, -2
  %switch.i92224 = icmp eq i32 %i.hr, 2
  br i1 %switch.i92224, label %.thread225, label %bb.ch

.thread225:                                       ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit91.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  br label %bb.ao

bb.am:                                            ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit91
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  br i1 %i.hb, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.hs = icmp samesign ult i64 %i.ha, 4
  br i1 %i.hs, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.thread225, %bb.an
  %i.ht = getelementptr inbounds [128 x i8], ptr %i.fb, i64 %i.gz
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit94

bb.ap:                                            ; preds = %bb.an
  %i.hu = lshr i64 %i.ha, 2
  br label %bb.ar

bb.aq:                                            ; preds = %bb.am
  %i.hv = ashr i64 %i.ha, 2
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.hw = phi i64 [ %i.hu, %bb.ap ], [ %i.hv, %bb.aq ] ; 2 uses
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.hw
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !51, !noalias !1885
  %i.hz = shl nsw i64 %i.hw, 2
  %i.ia = sub nsw i64 %i.ha, %i.hz
  %i.ib = getelementptr inbounds [128 x i8], ptr %i.hy, i64 %i.ia
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit94

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit94:        ; preds = %bb.ao, %bb.ar
  %storemerge.i.i.i.i93 = phi ptr [ %i.ib, %bb.ar ], [ %i.ht, %bb.ao ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1888)
  store ptr %i.ag, ptr %7, align 8, !tbaa !8, !alias.scope !1888
  %i.ic = load ptr, ptr %storemerge.i.i.i.i93, align 8, !tbaa !45, !noalias !1888 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i93, i64 8
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !12, !noalias !1888 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22, !noalias !1888
  store i64 %i.ie, ptr %i.c, align 8, !tbaa !67, !noalias !1888
  %i.if = icmp ugt i64 %i.ie, 15
  br i1 %i.if, label %.noexc.i.i96, label %._crit_edge.i.i.i95

.noexc.i.i96:                                     ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit94
  %i.ig = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc97 unwind label %bb.be  ; 2 uses

.noexc97:                                         ; preds = %.noexc.i.i96
  store ptr %i.ig, ptr %7, align 8, !tbaa !45, !alias.scope !1888
  %i.ih = load i64, ptr %i.c, align 8, !tbaa !67, !noalias !1888
  store i64 %i.ih, ptr %i.ag, align 8, !tbaa !15, !alias.scope !1888
  br label %._crit_edge.i.i.i95

._crit_edge.i.i.i95:                              ; preds = %.noexc97, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit94
  %i.ii = phi ptr [ %i.ig, %.noexc97 ], [ %i.ag, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit94 ] ; 2 uses
  switch i64 %i.ie, label %bb.at [
    i64 1, label %bb.as
    i64 0, label %bb.au
  ]

bb.as:                                            ; preds = %._crit_edge.i.i.i95
  %i.ij = load i8, ptr %i.ic, align 1, !tbaa !15
  store i8 %i.ij, ptr %i.ii, align 1, !tbaa !15
  br label %bb.au

bb.at:                                            ; preds = %._crit_edge.i.i.i95
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ii, ptr align 1 %i.ic, i64 %i.ie, i1 false)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %._crit_edge.i.i.i95
  %i.ik = load i64, ptr %i.c, align 8, !tbaa !67, !noalias !1888 ; 2 uses
  store i64 %i.ik, ptr %i.ah, align 8, !tbaa !12, !alias.scope !1888
  %i.il = load ptr, ptr %7, align 8, !tbaa !45, !alias.scope !1888
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ik
  store i8 0, ptr %i.im, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22, !noalias !1888
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 1)
          to label %bb.av unwind label %bb.bf

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.in = load ptr, ptr %i.u, align 8, !tbaa !71, !noalias !1891 ; 2 uses
  %i.io = load ptr, ptr %i.z, align 8, !tbaa !75, !noalias !1891
  %i.ip = load ptr, ptr %i.w, align 8, !tbaa !76, !noalias !1891
  %i.iq = ptrtoint ptr %i.in to i64
  %i.ir = ptrtoint ptr %i.io to i64
  %i.is = sub i64 %i.iq, %i.ir
  %i.it = ashr exact i64 %i.is, 7
  %i.iu = add nsw i64 %i.it, %i.gz                ; 5 uses
  %i.iv = icmp sgt i64 %i.iu, -1
  br i1 %i.iv, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.iw = icmp samesign ult i64 %i.iu, 4
  br i1 %i.iw, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ix = getelementptr inbounds [128 x i8], ptr %i.in, i64 %i.gz
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit101

bb.ay:                                            ; preds = %bb.aw
  %i.iy = lshr i64 %i.iu, 2
  br label %bb.ba

bb.az:                                            ; preds = %bb.av
  %i.iz = ashr i64 %i.iu, 2
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ja = phi i64 [ %i.iy, %bb.ay ], [ %i.iz, %bb.az ] ; 2 uses
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.ip, i64 %i.ja
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !51, !noalias !1891
  %i.jd = shl nsw i64 %i.ja, 2
  %i.je = sub nsw i64 %i.iu, %i.jd
  %i.jf = getelementptr inbounds [128 x i8], ptr %i.jc, i64 %i.je
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit101

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit101:       ; preds = %bb.ax, %bb.ba
  %storemerge.i.i.i.i100 = phi ptr [ %i.jf, %bb.ba ], [ %i.ix, %bb.ax ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1894)
  store ptr %i.ai, ptr %8, align 8, !tbaa !8, !alias.scope !1894
  %i.jg = load ptr, ptr %storemerge.i.i.i.i100, align 8, !tbaa !45, !noalias !1894 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i100, i64 8
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !12, !noalias !1894 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22, !noalias !1894
  store i64 %i.ji, ptr %i.b, align 8, !tbaa !67, !noalias !1894
  %i.jj = icmp ugt i64 %i.ji, 15
  br i1 %i.jj, label %.noexc.i.i103, label %._crit_edge.i.i.i102

.noexc.i.i103:                                    ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit101
  %i.jk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc104 unwind label %bb.bg ; 2 uses

.noexc104:                                        ; preds = %.noexc.i.i103
  store ptr %i.jk, ptr %8, align 8, !tbaa !45, !alias.scope !1894
  %i.jl = load i64, ptr %i.b, align 8, !tbaa !67, !noalias !1894
  store i64 %i.jl, ptr %i.ai, align 8, !tbaa !15, !alias.scope !1894
  br label %._crit_edge.i.i.i102

._crit_edge.i.i.i102:                             ; preds = %.noexc104, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit101
  %i.jm = phi ptr [ %i.jk, %.noexc104 ], [ %i.ai, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit101 ] ; 2 uses
  switch i64 %i.ji, label %bb.bc [
    i64 1, label %bb.bb
    i64 0, label %bb.bd
  ]

bb.bb:                                            ; preds = %._crit_edge.i.i.i102
  %i.jn = load i8, ptr %i.jg, align 1, !tbaa !15
  store i8 %i.jn, ptr %i.jm, align 1, !tbaa !15
  br label %bb.bd

bb.bc:                                            ; preds = %._crit_edge.i.i.i102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jm, ptr align 1 %i.jg, i64 %i.ji, i1 false)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %._crit_edge.i.i.i102
  %i.jo = load i64, ptr %i.b, align 8, !tbaa !67, !noalias !1894 ; 2 uses
  store i64 %i.jo, ptr %i.aj, align 8, !tbaa !12, !alias.scope !1894
end_hunk_1
begin_hunk_2_@_ZN2PP3Cmd18deprecated_input01ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_18basic_stringstreamIcS4_S5_EERi:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213

bb.bf:                                            ; preds = %bb.au
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.bg:                                            ; preds = %.noexc.i.i103
  %i.jy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ci

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.jz = load ptr, ptr %i.u, align 8, !tbaa !71, !noalias !1897 ; 2 uses
  %i.ka = load ptr, ptr %i.z, align 8, !tbaa !75, !noalias !1897
  %i.kb = load ptr, ptr %i.w, align 8, !tbaa !76, !noalias !1897
  %i.kc = ptrtoint ptr %i.jz to i64
  %i.kd = ptrtoint ptr %i.ka to i64
  %i.ke = sub i64 %i.kc, %i.kd
  %i.kf = ashr exact i64 %i.ke, 7
  %i.kg = add nsw i64 %i.kf, %i.gz                ; 5 uses
  %i.kh = icmp sgt i64 %i.kg, -1
  br i1 %i.kh, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  %i.ki = icmp samesign ult i64 %i.kg, 4
  br i1 %i.ki, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.kj = getelementptr inbounds [128 x i8], ptr %i.jz, i64 %i.gz
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit110

bb.bk:                                            ; preds = %bb.bi
  %i.kk = lshr i64 %i.kg, 2
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bh
  %i.kl = ashr i64 %i.kg, 2
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.km = phi i64 [ %i.kk, %bb.bk ], [ %i.kl, %bb.bl ] ; 2 uses
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.kb, i64 %i.km
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !51, !noalias !1897
  %i.kp = shl nsw i64 %i.km, 2
  %i.kq = sub nsw i64 %i.kg, %i.kp
  %i.kr = getelementptr inbounds [128 x i8], ptr %i.ko, i64 %i.kq
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit110

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit110:       ; preds = %bb.bj, %bb.bm
  %storemerge.i.i.i.i109 = phi ptr [ %i.kr, %bb.bm ], [ %i.kj, %bb.bj ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1900)
  store ptr %i.ak, ptr %9, align 8, !tbaa !8, !alias.scope !1900
  %i.ks = load ptr, ptr %storemerge.i.i.i.i109, align 8, !tbaa !45, !noalias !1900 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i109, i64 8
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !12, !noalias !1900 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !1900
  store i64 %i.ku, ptr %i.a, align 8, !tbaa !67, !noalias !1900
  %i.kv = icmp ugt i64 %i.ku, 15
  br i1 %i.kv, label %.noexc.i.i112, label %._crit_edge.i.i.i111

.noexc.i.i112:                                    ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit110
  %i.kw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc113 unwind label %bb.bq ; 2 uses

.noexc113:                                        ; preds = %.noexc.i.i112
  store ptr %i.kw, ptr %9, align 8, !tbaa !45, !alias.scope !1900
  %i.kx = load i64, ptr %i.a, align 8, !tbaa !67, !noalias !1900
  store i64 %i.kx, ptr %i.ak, align 8, !tbaa !15, !alias.scope !1900
  br label %._crit_edge.i.i.i111

._crit_edge.i.i.i111:                             ; preds = %.noexc113, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit110
  %i.ky = phi ptr [ %i.kw, %.noexc113 ], [ %i.ak, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit110 ] ; 2 uses
  switch i64 %i.ku, label %bb.bo [
    i64 1, label %bb.bn
    i64 0, label %bb.bp
  ]

bb.bn:                                            ; preds = %._crit_edge.i.i.i111
  %i.kz = load i8, ptr %i.ks, align 1, !tbaa !15
  store i8 %i.kz, ptr %i.ky, align 1, !tbaa !15
  br label %bb.bp

bb.bo:                                            ; preds = %._crit_edge.i.i.i111
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ky, ptr align 1 %i.ks, i64 %i.ku, i1 false)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %._crit_edge.i.i.i111
  %i.la = load i64, ptr %i.a, align 8, !tbaa !67, !noalias !1900 ; 2 uses
  store i64 %i.la, ptr %i.al, align 8, !tbaa !12, !alias.scope !1900
  %i.lb = load ptr, ptr %9, align 8, !tbaa !45, !alias.scope !1900
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.la
  store i8 0, ptr %i.lc, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !1900
  %i.ld = load ptr, ptr %9, align 8, !tbaa !45    ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 1
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !15
  %i.lg = icmp eq ptr %i.ld, %i.ak
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %bb.bp
  %i.lh = load i64, ptr %i.ak, align 8, !tbaa !15
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.ld, i64 noundef %i.li) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.lj = and i8 %i.lf, -33
  %or.cond.not = icmp eq i8 %i.lj, 69
  br i1 %or.cond.not, label %bb.br, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122.thread

bb.bq:                                            ; preds = %.noexc.i.i112
  %i.lk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.ci

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  %i.ll = add nsw i32 %.050, 2                    ; 2 uses
  %i.lm = load ptr, ptr %i.v, align 8, !tbaa !76  ; 2 uses
  %i.ln = load ptr, ptr %i.w, align 8, !tbaa !76  ; 3 uses
  %i.lo = ptrtoint ptr %i.lm to i64
  %i.lp = ptrtoint ptr %i.ln to i64
  %i.lq = sub i64 %i.lo, %i.lp
  %i.lr = ashr exact i64 %i.lq, 3
  %i.ls = icmp ne ptr %i.lm, null
  %.neg.i.i118 = sext i1 %i.ls to i64
  %i.lt = add nsw i64 %i.lr, %.neg.i.i118
  %i.lu = shl nsw i64 %i.lt, 2
  %i.lv = load ptr, ptr %i.t, align 8, !tbaa !71
  %i.lw = load ptr, ptr %i.x, align 8, !tbaa !75
  %i.lx = ptrtoint ptr %i.lv to i64
  %i.ly = ptrtoint ptr %i.lw to i64
  %i.lz = sub i64 %i.lx, %i.ly
  %i.ma = lshr exact i64 %i.lz, 7
  %i.mb = add nsw i64 %i.lu, %i.ma
  %i.mc = load ptr, ptr %i.y, align 8, !tbaa !87
  %i.md = load ptr, ptr %i.u, align 8, !tbaa !71  ; 3 uses
  %i.me = ptrtoint ptr %i.mc to i64
  %i.mf = ptrtoint ptr %i.md to i64               ; 3 uses
  %i.mg = sub i64 %i.me, %i.mf
  %i.mh = lshr exact i64 %i.mg, 7
  %i.mi = add nsw i64 %i.mb, %i.mh
  %i.mj = trunc i64 %i.mi to i32
  %.not66.not = icmp slt i32 %i.ll, %i.mj
  br i1 %.not66.not, label %bb.bs, label %bb.bz

bb.bs:                                            ; preds = %bb.br
  %i.mk = sext i32 %i.ll to i64                   ; 2 uses
  %i.ml = load ptr, ptr %i.z, align 8, !tbaa !75, !noalias !1903
  %i.mm = ptrtoint ptr %i.ml to i64
  %i.mn = sub i64 %i.mf, %i.mm
  %i.mo = ashr exact i64 %i.mn, 7
  %i.mp = add nsw i64 %i.mo, %i.mk                ; 5 uses
  %i.mq = icmp sgt i64 %i.mp, -1
  br i1 %i.mq, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.mr = icmp samesign ult i64 %i.mp, 4
  br i1 %i.mr, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ms = getelementptr inbounds [128 x i8], ptr %i.md, i64 %i.mk
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit120

bb.bv:                                            ; preds = %bb.bt
  %i.mt = lshr i64 %i.mp, 2
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bs
  %i.mu = ashr i64 %i.mp, 2
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.mv = phi i64 [ %i.mt, %bb.bv ], [ %i.mu, %bb.bw ] ; 2 uses
  %i.mw = getelementptr inbounds [8 x i8], ptr %i.ln, i64 %i.mv
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !51, !noalias !1903
  %i.my = shl nsw i64 %i.mv, 2
  %i.mz = sub nsw i64 %i.mp, %i.my
  %i.na = getelementptr inbounds [128 x i8], ptr %i.mx, i64 %i.mz
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit120

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit120:       ; preds = %bb.bu, %bb.bx
  %storemerge.i.i.i.i119 = phi ptr [ %i.na, %bb.bx ], [ %i.ms, %bb.bu ]
  %i.nb = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i119, i64 32
  %i.nc = load i32, ptr %i.nb, align 8, !tbaa !107
  %i.nd = icmp eq i32 %i.nc, 12
  br i1 %i.nd, label %bb.bz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122.thread

bb.by:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199, %_ZNSolsEPFRSoS_E.exit197, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195, %_ZNSolsEPFRSoS_E.exit193, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191, %_ZNSolsEPFRSoS_E.exit189, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187, %_ZNSolsEPFRSoS_E.exit185, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183, %_ZNSolsEPFRSoS_E.exit181, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit179, %_ZNSolsEPFRSoS_E.exit177, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175, %_ZNSolsEPFRSoS_E.exit173, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171, %_ZNSolsEPFRSoS_E.exit169, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit167, %_ZNSolsEPFRSoS_E.exit165, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit163, %_ZNSolsEPFRSoS_E.exit161, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit159, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit157, %_ZNSolsEPFRSoS_E.exit155, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153, %_ZNSolsEPFRSoS_E.exit151, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit149, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit147, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144, %_ZNSolsEPFRSoS_E.exit142, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit140, %_ZNSolsEPFRSoS_E.exit138, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit136, %_ZNSolsEPFRSoS_E.exit134, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132, %_ZNSolsEPFRSoS_E.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.cg, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit128.thread, %bb.cf, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit126
  %i.ne = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.bz:                                            ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit120, %bb.br
  %i.nf = load i64, ptr %i.am, align 8, !tbaa !12 ; 3 uses
  switch i64 %i.nf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122.thread [
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit124
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit128
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122: ; preds = %bb.bz
  %10 = load ptr, ptr %1, align 8, !tbaa !45      ; 2 uses
  %11 = load i32, ptr %10, align 1
  %12 = xor i32 %11, 1869506409
  %13 = getelementptr i8, ptr %10, i64 4
  %14 = load i16, ptr %13, align 1
  %15 = zext i16 %14 to i32
  %16 = xor i32 %15, 25970
  %17 = or i32 %12, %16
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = icmp eq i32 %19, 0
  %spec.select = select i1 %20, i32 4, i32 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit124: ; preds = %bb.bz
  %.pre = load ptr, ptr %1, align 8, !tbaa !45
  %bcmp.i123 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.172, i64 %i.nf)
  %i.ng = icmp eq i32 %bcmp.i123, 0
  br i1 %i.ng, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit124.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit124.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit124
  %i.nh = load ptr, ptr %i.z, align 8, !tbaa !75, !noalias !1906
  %i.ni = ptrtoint ptr %i.nh to i64
  %i.nj = sub i64 %i.mf, %i.ni
  %i.nk = ashr exact i64 %i.nj, 7
  %i.nl = add nsw i64 %i.nk, %i.gz                ; 5 uses
  %i.nm = icmp sgt i64 %i.nl, -1
  br i1 %i.nm, label %bb.ca, label %bb.cd

bb.ca:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit124.thread
  %i.nn = icmp samesign ult i64 %i.nl, 4
  br i1 %i.nn, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.no = getelementptr inbounds [128 x i8], ptr %i.md, i64 %i.gz
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit126

bb.cc:                                            ; preds = %bb.ca
  %i.np = lshr i64 %i.nl, 2
  br label %bb.ce

bb.cd:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit124.thread
  %i.nq = ashr i64 %i.nl, 2
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.nr = phi i64 [ %i.np, %bb.cc ], [ %i.nq, %bb.cd ] ; 2 uses
  %i.ns = getelementptr inbounds [8 x i8], ptr %i.ln, i64 %i.nr
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !51, !noalias !1906
  %i.nu = shl nsw i64 %i.nr, 2
  %i.nv = sub nsw i64 %i.nl, %i.nu
  %i.nw = getelementptr inbounds [128 x i8], ptr %i.nt, i64 %i.nv
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit126

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit126:       ; preds = %bb.cb, %bb.ce
  %storemerge.i.i.i.i125 = phi ptr [ %i.nw, %bb.ce ], [ %i.no, %bb.cb ]
  invoke void @_ZN2PP4Word10erase_charEi(ptr noundef nonnull align 8 dereferenceable(128) %storemerge.i.i.i.i125, i32 noundef 0)
          to label %bb.cf unwind label %bb.by

bb.cf:                                            ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit126
  invoke void @_ZN2PP3Cmd11merge_wordsEii(ptr noundef nonnull align 8 dereferenceable(432) %0, i32 noundef %.050, i32 noundef %i.gc)
          to label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122.thread unwind label %bb.by

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit128: ; preds = %bb.bz
  %.pre290 = load ptr, ptr %1, align 8, !tbaa !45
  %bcmp.i127 = call i32 @bcmp(ptr %.pre290, ptr nonnull @.str.173, i64 %i.nf)
  %i.nx = icmp eq i32 %bcmp.i127, 0
  br i1 %i.nx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit128.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit128.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit128
  %i.ny = call noundef nonnull align 8 dereferenceable(128) ptr @_ZNSt5dequeIN2PP4WordESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(80) %i.s, i64 noundef %i.dm) #22
  invoke void @_ZN2PP4Word11fatal_errorERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi(ptr noundef nonnull align 8 dereferenceable(128) %i.ny, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.cg unwind label %bb.by

bb.cg:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit128.thread
  %i.nz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.174, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.by ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.cg
  %i.oa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.by, !inline_history !1315 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ob = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.175, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132 unwind label %bb.by ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.oc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %_ZNSolsEPFRSoS_E.exit134 unwind label %bb.by, !inline_history !1315 ; 0 uses

_ZNSolsEPFRSoS_E.exit134:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132
  %i.od = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.176, i64 noundef 60)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit136 unwind label %bb.by ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit136: ; preds = %_ZNSolsEPFRSoS_E.exit134
  %i.oe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %_ZNSolsEPFRSoS_E.exit138 unwind label %bb.by, !inline_history !1315 ; 0 uses

_ZNSolsEPFRSoS_E.exit138:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit136
  %i.of = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.177, i64 noundef 40)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit140 unwind label %bb.by ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit140: ; preds = %_ZNSolsEPFRSoS_E.exit138
  %i.og = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %_ZNSolsEPFRSoS_E.exit142 unwind label %bb.by, !inline_history !1315 ; 0 uses

_ZNSolsEPFRSoS_E.exit142:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit140
  %i.oh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.178, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144 unwind label %bb.by ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144: ; preds = %_ZNSolsEPFRSoS_E.exit142
  %i.oi = load ptr, ptr %5, align 8, !tbaa !45
  %i.oj = load i64, ptr %i.ad, align 8, !tbaa !12
  %i.ok = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef %i.oi, i64 noundef %i.oj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.by ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144
  %i.ol = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ok, ptr noundef nonnull @.str.179, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit147 unwind label %bb.by ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit147: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.om = load ptr, ptr %7, align 8, !tbaa !45
  %i.on = load i64, ptr %i.ah, align 8, !tbaa !12
  %i.oo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ok, ptr noundef %i.om, i64 noundef %i.on)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit149 unwind label %bb.by

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit149: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit147
  %i.op = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.oo)
          to label %_ZNSolsEPFRSoS_E.exit151 unwind label %bb.by, !inline_history !1315 ; 0 uses

_ZNSolsEPFRSoS_E.exit151:                         ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit149
  %i.oq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.180, i64 noundef 45)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153 unwind label %bb.by ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153: ; preds = %_ZNSolsEPFRSoS_E.exit151
  %i.or = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %_ZNSolsEPFRSoS_E.exit155 unwind label %bb.by, !inline_history !1315 ; 0 uses

_ZNSolsEPFRSoS_E.exit155:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153
  %i.os = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.181, i64 noundef 52)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit157 unwind label %bb.by ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit157: ; preds = %_ZNSolsEPFRSoS_E.exit155
  %i.ot = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.182, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit159 unwind label %bb.by ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit159: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit157
  %i.ou = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %_ZNSolsEPFRSoS_E.exit161 unwind label %bb.by, !inline_history !1315 ; 0 uses

_ZNSolsEPFRSoS_E.exit161:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit159
  %i.ov = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.183, i64 noundef 55)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit163 unwind label %bb.by ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit163: ; preds = %_ZNSolsEPFRSoS_E.exit161
  %i.ow = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %_ZNSolsEPFRSoS_E.exit165 unwind label %bb.by, !inline_history !1315 ; 0 uses

_ZNSolsEPFRSoS_E.exit165:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit163
  %i.ox = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.184, i64 noundef 51)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit167 unwind label %bb.by ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit167: ; preds = %_ZNSolsEPFRSoS_E.exit165
  %i.oy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %_ZNSolsEPFRSoS_E.exit169 unwind label %bb.by, !inline_history !1315 ; 0 uses

_ZNSolsEPFRSoS_E.exit169:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit167
  %i.oz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.185, i64 noundef 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171 unwind label %bb.by ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171: ; preds = %_ZNSolsEPFRSoS_E.exit169
  %i.pa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %_ZNSolsEPFRSoS_E.exit173 unwind label %bb.by, !inline_history !1315 ; 0 uses

_ZNSolsEPFRSoS_E.exit173:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171
  %i.pb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.186, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175 unwind label %bb.by ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175: ; preds = %_ZNSolsEPFRSoS_E.exit173
  %i.pc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %_ZNSolsEPFRSoS_E.exit177 unwind label %bb.by, !inline_history !1315 ; 0 uses

_ZNSolsEPFRSoS_E.exit177:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175
  %i.pd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.187, i64 noundef 47)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit179 unwind label %bb.by ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit179: ; preds = %_ZNSolsEPFRSoS_E.exit177
  %i.pe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %_ZNSolsEPFRSoS_E.exit181 unwind label %bb.by, !inline_history !1315 ; 0 uses

_ZNSolsEPFRSoS_E.exit181:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit179
  %i.pf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.188, i64 noundef 62)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183 unwind label %bb.by ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183: ; preds = %_ZNSolsEPFRSoS_E.exit181
  %i.pg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %_ZNSolsEPFRSoS_E.exit185 unwind label %bb.by, !inline_history !1315 ; 0 uses

_ZNSolsEPFRSoS_E.exit185:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183
  %i.ph = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.189, i64 noundef 43)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187 unwind label %bb.by ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187: ; preds = %_ZNSolsEPFRSoS_E.exit185
  %i.pi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %_ZNSolsEPFRSoS_E.exit189 unwind label %bb.by, !inline_history !1315 ; 0 uses

_ZNSolsEPFRSoS_E.exit189:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187
  %i.pj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.190, i64 noundef 44)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191 unwind label %bb.by ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191: ; preds = %_ZNSolsEPFRSoS_E.exit189
  %i.pk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %_ZNSolsEPFRSoS_E.exit193 unwind label %bb.by, !inline_history !1315 ; 0 uses

_ZNSolsEPFRSoS_E.exit193:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191
  %i.pl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.191, i64 noundef 49)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195 unwind label %bb.by ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195: ; preds = %_ZNSolsEPFRSoS_E.exit193
  %i.pm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %_ZNSolsEPFRSoS_E.exit197 unwind label %bb.by, !inline_history !1315 ; 0 uses

_ZNSolsEPFRSoS_E.exit197:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195
  %i.pn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.192, i64 noundef 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199 unwind label %bb.by ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199: ; preds = %_ZNSolsEPFRSoS_E.exit197
  %i.po = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %_ZNSolsEPFRSoS_E.exit201 unwind label %bb.by, !inline_history !1315 ; 0 uses

_ZNSolsEPFRSoS_E.exit201:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199
  store i32 2, ptr %3, align 4, !tbaa !4
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit124, %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit128, %bb.cf, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit120, %_ZNSolsEPFRSoS_E.exit201, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %.2 = phi i32 [ 4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108 ], [ 4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ], [ 4, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit120 ], [ %spec.select, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122 ], [ 4, %_ZNSolsEPFRSoS_E.exit201 ], [ 4, %bb.cf ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit128 ], [ 0, %bb.bz ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit124 ]
  %i.pp = load ptr, ptr %7, align 8, !tbaa !45    ; 2 uses
  %i.pq = icmp eq ptr %i.pp, %i.ag
  br i1 %i.pq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122.thread
  %i.pr = load i64, ptr %i.ag, align 8, !tbaa !15
  %i.ps = add i64 %i.pr, 1
  call void @_ZdlPvm(ptr noundef %i.pp, i64 noundef %i.ps) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.ch

bb.ch:                                            ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit91.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, %bb.ah, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit91, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit85
  %.4 = phi i32 [ 4, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit85 ], [ 2, %bb.ah ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204 ], [ 4, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit91 ], [ 4, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit91.thread ]
  %i.pt = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.pu = icmp eq ptr %i.pt, %i.ac
  br i1 %i.pu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205: ; preds = %bb.ch
  %i.pv = load i64, ptr %i.ac, align 8, !tbaa !15
  %i.pw = add i64 %i.pv, 1
  call void @_ZdlPvm(ptr noundef %i.pt, i64 noundef %i.pw) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207: ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.px = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.py = icmp eq ptr %i.px, %i.aa
  br i1 %i.py, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207
  %i.pz = load i64, ptr %i.aa, align 8, !tbaa !15
  %i.qa = add i64 %i.pz, 1
  call void @_ZdlPvm(ptr noundef %i.px, i64 noundef %i.qa) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  switch i32 %.4, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread [
    i32 0, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.backedge
    i32 4, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.backedge
  ]

bb.ci:                                            ; preds = %bb.bg, %bb.by, %bb.bq, %bb.bf
  %.pn67.pn.pn = phi { ptr, i32 } [ %i.jx, %bb.bf ], [ %i.jy, %bb.bg ], [ %i.ne, %bb.by ], [ %i.lk, %bb.bq ] ; 2 uses
  %i.qb = load ptr, ptr %7, align 8, !tbaa !45    ; 2 uses
  %i.qc = icmp eq ptr %i.qb, %i.ag
  br i1 %i.qc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211: ; preds = %bb.ci
  %i.qd = load i64, ptr %i.ag, align 8, !tbaa !15
  %i.qe = add i64 %i.qd, 1
  call void @_ZdlPvm(ptr noundef %i.qb, i64 noundef %i.qe) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211, %bb.be
  %.pn67.pn.pn.pn = phi { ptr, i32 } [ %i.jw, %bb.be ], [ %.pn67.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211 ], [ %.pn67.pn.pn, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.cj

bb.cj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %bb.q
  %.pn67.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn67.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %i.dl, %bb.q ]
  %i.qf = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.qg = icmp eq ptr %i.qf, %i.ac
  br i1 %i.qg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214: ; preds = %bb.cj
  %i.qh = load i64, ptr %i.ac, align 8, !tbaa !15
  %i.qi = add i64 %i.qh, 1
  call void @_ZdlPvm(ptr noundef %i.qf, i64 noundef %i.qi) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.qj = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.qk = icmp eq ptr %i.qj, %i.aa
  br i1 %i.qk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216
  %i.ql = load i64, ptr %i.aa, align 8, !tbaa !15
  %i.qm = add i64 %i.ql, 1
  call void @_ZdlPvm(ptr noundef %i.qj, i64 noundef %i.qm) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn67.pn.pn.pn.pn

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a, %bb.b
  ret void
}

declare void @_ZN2PP4Word10erase_charEi(ptr noundef nonnull align 8 dereferenceable(128), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP3Cmd11merge_wordsEii(ptr noundef nonnull align 8 dereferenceable(432) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Deque_iterator.10", align 8 ; 7 uses
  %4 = alloca %"struct.std::_Deque_iterator", align 8 ; 3 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.PP::Word", align 8          ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = sext i32 %1 to i64                       ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71, !noalias !1909 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !75, !noalias !1909
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !76, !noalias !1909
  %i.n = ptrtoint ptr %i.i to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 7
  %i.r = add nsw i64 %i.q, %i.g                   ; 6 uses
  %i.s = icmp sgt i64 %i.r, -1
  br i1 %i.s, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.t = icmp samesign ult i64 %i.r, 4
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds [128 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.w = load i32, ptr %i.v, align 8, !tbaa !443
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 84
  %i.y = load i32, ptr %i.x, align 4, !tbaa !429
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit32

bb.d:                                             ; preds = %bb.b
  %i.z = lshr i64 %i.r, 2
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.aa = ashr i64 %i.r, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi i64 [ %i.aa, %bb.e ], [ %i.z, %bb.d ] ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.m, i64 %.sink
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !51, !noalias !1909 ; 2 uses
  %i.ad = and i64 %i.r, 3
  %i.ae = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !443
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 84
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !429
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.aj = shl nsw i64 %.sink, 2
  %i.ak = sub nsw i64 %i.r, %i.aj
  %i.al = getelementptr inbounds [128 x i8], ptr %i.ac, i64 %i.ak
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit32

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit32:        ; preds = %bb.c, %bb.f
  %i.am = phi i32 [ %i.ai, %bb.f ], [ %i.y, %bb.c ]
  %i.an = phi i32 [ %i.ag, %bb.f ], [ %i.w, %bb.c ]
  %storemerge.i.i.i.i31 = phi ptr [ %i.al, %bb.f ], [ %i.u, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1912)
  %i.ao = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i31, i64 88
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ap, ptr %5, align 8, !tbaa !8, !alias.scope !1912
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !45, !noalias !1912 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i31, i64 96
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !12, !noalias !1912 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22, !noalias !1912
  store i64 %i.as, ptr %i.e, align 8, !tbaa !67, !noalias !1912
  %i.at = icmp ugt i64 %i.as, 15
  br i1 %i.at, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit32
  %i.au = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.au, ptr %5, align 8, !tbaa !45, !alias.scope !1912
  %i.av = load i64, ptr %i.e, align 8, !tbaa !67, !noalias !1912
  store i64 %i.av, ptr %i.ap, align 8, !tbaa !15, !alias.scope !1912
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit32
  %i.aw = phi ptr [ %i.au, %.noexc.i.i ], [ %i.ap, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit32 ] ; 2 uses
  switch i64 %i.as, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZN2PP4Word12get_filenameB5cxx11Ev.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ax = load i8, ptr %i.aq, align 1, !tbaa !15
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !15
  br label %_ZN2PP4Word12get_filenameB5cxx11Ev.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr align 1 %i.aq, i64 %i.as, i1 false)
  br label %_ZN2PP4Word12get_filenameB5cxx11Ev.exit

_ZN2PP4Word12get_filenameB5cxx11Ev.exit:          ; preds = %._crit_edge.i.i.i, %bb.g, %bb.h
  %i.ay = load i64, ptr %i.e, align 8, !tbaa !67, !noalias !1912 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !12, !alias.scope !1912
  %i.ba = load ptr, ptr %5, align 8, !tbaa !45, !alias.scope !1912
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ay
  store i8 0, ptr %i.bb, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22, !noalias !1912
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bc = load ptr, ptr %i.h, align 8, !tbaa !71, !noalias !1915 ; 2 uses
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !75, !noalias !1915
  %i.be = load ptr, ptr %i.l, align 8, !tbaa !76, !noalias !1915
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 7
  %i.bj = add nsw i64 %i.bi, %i.g                 ; 5 uses
  %i.bk = icmp sgt i64 %i.bj, -1
  br i1 %i.bk, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZN2PP4Word12get_filenameB5cxx11Ev.exit
  %i.bl = icmp samesign ult i64 %i.bj, 4
  br i1 %i.bl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds [128 x i8], ptr %i.bc, i64 %i.g
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit34

bb.k:                                             ; preds = %bb.i
  %i.bn = lshr i64 %i.bj, 2
  br label %bb.m

bb.l:                                             ; preds = %_ZN2PP4Word12get_filenameB5cxx11Ev.exit
  %i.bo = ashr i64 %i.bj, 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bp = phi i64 [ %i.bn, %bb.k ], [ %i.bo, %bb.l ] ; 2 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !51, !noalias !1915
  %i.bs = shl nsw i64 %i.bp, 2
  %i.bt = sub nsw i64 %i.bj, %i.bs
  %i.bu = getelementptr inbounds [128 x i8], ptr %i.br, i64 %i.bt
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit34

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit34:        ; preds = %bb.j, %bb.m
  %storemerge.i.i.i.i33 = phi ptr [ %i.bu, %bb.m ], [ %i.bm, %bb.j ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1918)
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.bv, ptr %6, align 8, !tbaa !8, !alias.scope !1918
  %i.bw = load ptr, ptr %storemerge.i.i.i.i33, align 8, !tbaa !45, !noalias !1918 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i33, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !12, !noalias !1918 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22, !noalias !1918
  store i64 %i.by, ptr %i.d, align 8, !tbaa !67, !noalias !1918
  %i.bz = icmp ugt i64 %i.by, 15
  br i1 %i.bz, label %.noexc.i.i36, label %._crit_edge.i.i.i35

.noexc.i.i36:                                     ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit34
  %i.ca = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %bb.r     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i36
  store ptr %i.ca, ptr %6, align 8, !tbaa !45, !alias.scope !1918
  %i.cb = load i64, ptr %i.d, align 8, !tbaa !67, !noalias !1918
  store i64 %i.cb, ptr %i.bv, align 8, !tbaa !15, !alias.scope !1918
  br label %._crit_edge.i.i.i35

._crit_edge.i.i.i35:                              ; preds = %.noexc, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit34
  %i.cc = phi ptr [ %i.ca, %.noexc ], [ %i.bv, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit34 ] ; 2 uses
  switch i64 %i.by, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZN2PP4Word10get_stringB5cxx11Ev.exit
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i35
  %i.cd = load i8, ptr %i.bw, align 1, !tbaa !15
  store i8 %i.cd, ptr %i.cc, align 1, !tbaa !15
  br label %_ZN2PP4Word10get_stringB5cxx11Ev.exit

bb.o:                                             ; preds = %._crit_edge.i.i.i35
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cc, ptr align 1 %i.bw, i64 %i.by, i1 false)
  br label %_ZN2PP4Word10get_stringB5cxx11Ev.exit

_ZN2PP4Word10get_stringB5cxx11Ev.exit:            ; preds = %._crit_edge.i.i.i35, %bb.n, %bb.o
  %i.ce = load i64, ptr %i.d, align 8, !tbaa !67, !noalias !1918 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
end_hunk_2
