Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/XFileParser?download=true
inline.NumInlined: 2013
inline.NumDeleted: 807
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6Assimp11XFileParser14ThrowExceptionIJRA51_KcEEEvDpOT_:bb.a
; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11XFileParser35ParseDataObjectTransformationMatrixER12aiMatrix4x4tIfE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(64) initializes((0, 64)) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  tail call void @_ZN6Assimp11XFileParser20readHeadOfDataObjectEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef null)
  %i.a = tail call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  store float %i.a, ptr %1, align 4
  %i.b = tail call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float %i.b, ptr %i.c, align 4
  %i.d = tail call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  store float %i.d, ptr %i.e, align 4
  %i.f = tail call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  store float %i.f, ptr %i.g, align 4
  %i.h = tail call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.h, ptr %i.i, align 4
  %i.j = tail call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float %i.j, ptr %i.k, align 4
  %i.l = tail call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 36
  store float %i.l, ptr %i.m, align 4
  %i.n = tail call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 52
  store float %i.n, ptr %i.o, align 4
  %i.p = tail call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.p, ptr %i.q, align 4
  %i.r = tail call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %i.r, ptr %i.s, align 4
  %i.t = tail call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %i.t, ptr %i.u, align 4
  %i.v = tail call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  store float %i.v, ptr %i.w, align 4
  %i.x = tail call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.x, ptr %i.y, align 4
  %i.z = tail call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float %i.z, ptr %i.aa, align 4
  %i.ab = tail call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 44
  store float %i.ab, ptr %i.ac, align 4
  %i.ad = tail call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 60
  store float %i.ad, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i8, ptr %i.af, align 8, !range !11, !noundef !12
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN6Assimp11XFileParser12GetNextTokenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 1
  %.pre.i = load ptr, ptr %3, align 8             ; 3 uses
  br i1 %i.ak, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i

bb.c:                                             ; preds = %bb.b
  %lhsc.i = load i8, ptr %.pre.i, align 1
  %i.al = icmp ne i8 %lhsc.i, 59
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %bb.c, %bb.b
  %i.am = phi i1 [ true, %bb.b ], [ %i.al, %bb.c ]
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %.pre.i, %i.an
  br i1 %i.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.ap = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ap)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.aq = load i64, ptr %i.an, align 8
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %.pre.i, i64 noundef %i.ar) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %i.am, label %bb.d, label %_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA20_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(20) @.str.72) #29
  unreachable

_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit: ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN6Assimp11XFileParser12GetNextTokenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = load i64, ptr %i.as, align 8            ; 2 uses
  %i.au = icmp eq i64 %i.at, 1
  %.pre.i17 = load ptr, ptr %2, align 8           ; 3 uses
  br i1 %i.au, label %bb.e, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i18

bb.e:                                             ; preds = %_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit
  %lhsc.i22 = load i8, ptr %.pre.i17, align 1
  %i.av = icmp ne i8 %lhsc.i22, 125
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i18

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i18: ; preds = %bb.e, %_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit
  %i.aw = phi i1 [ true, %_ZN6Assimp11XFileParser17CheckForSemicolonEv.exit ], [ %i.av, %bb.e ]
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %.pre.i17, %i.ax
  br i1 %i.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i21: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i18
  %i.az = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.az)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i18
  %i.ba = load i64, ptr %i.ax, align 8
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %.pre.i17, i64 noundef %i.bb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %i.aw, label %bb.f, label %_ZN6Assimp11XFileParser20CheckForClosingBraceEv.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20
  call void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA24_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(24) @.str.71) #29
  unreachable

_ZN6Assimp11XFileParser20CheckForClosingBraceEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !11, !noundef !12
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %.preheader.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 4 uses
  %i.l = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp sgt i64 %i.n, 1
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.p = load i16, ptr %i.k, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 3 uses
  store ptr %i.q, ptr %i.j, align 8
  %i.r = icmp eq i16 %i.p, 7
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.l, %i.s
  %i.u = icmp sgt i64 %i.t, 3
  %or.cond = select i1 %i.r, i1 %i.u, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %i.q, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  store ptr %i.w, ptr %i.j, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %storemerge = phi i32 [ %i.v, %bb.e ], [ 1, %bb.d ] ; 2 uses
  store i32 %storemerge, ptr %i.e, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c, %bb.b
  %i.x = phi i32 [ %storemerge, %bb.f ], [ 0, %bb.c ], [ %i.f, %bb.b ]
  %i.y = add i32 %i.x, -1
  store i32 %i.y, ptr %i.e, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = icmp eq i32 %i.aa, 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 5 uses
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  br i1 %i.ab, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.aj = icmp sgt i64 %i.ai, 7
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.0.copyload3 = load double, ptr %i.af, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ak, ptr %i.ae, align 8
  %i.al = fptrunc double %.0.copyload3 to float
  br label %bb.af

bb.j:                                             ; preds = %bb.h
  store ptr %i.ad, ptr %i.ae, align 8
  br label %bb.af

bb.k:                                             ; preds = %bb.g
  %i.am = icmp sgt i64 %i.ai, 3
  br i1 %i.am, label %bb.l, label %.sink.split

bb.l:                                             ; preds = %bb.k
  %.0.copyload = load float, ptr %i.af, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  br label %.sink.split

.preheader.i:                                     ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8            ; 4 uses
  %.promoted11.i = load ptr, ptr %i.ao, align 8   ; 3 uses
  %i.ar = icmp ult ptr %.promoted11.i, %i.aq
  br i1 %i.ar, label %.lr.ph.lr.ph.i, label %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exit

.lr.ph.lr.ph.i:                                   ; preds = %.preheader.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.promoted.i = load i32, ptr %i.as, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.backedge, %.lr.ph.lr.ph.i
  %i.at = phi i32 [ %.promoted.i, %.lr.ph.lr.ph.i ], [ %.be, %.lr.ph.i.backedge ] ; 4 uses
  %i.au = phi ptr [ %.promoted11.i, %.lr.ph.lr.ph.i ], [ %.be96, %.lr.ph.i.backedge ] ; 6 uses
  %i.av = load i8, ptr %i.au, align 1             ; 3 uses
  %i.aw = zext i8 %i.av to i32
  %i.ax = tail call i32 @isspace(i32 noundef %i.aw) #27
  %.not.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  %i.ay = icmp eq i8 %i.av, 10
  br i1 %i.ay, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.az = add i32 %i.at, 1                        ; 2 uses
  store i32 %i.az, ptr %i.as, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ba = phi i32 [ %i.az, %bb.n ], [ %i.at, %bb.m ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 4 uses
  store ptr %i.bb, ptr %i.ao, align 8
  %i.bc = icmp ult ptr %i.bb, %i.aq
  br i1 %i.bc, label %.lr.ph.i.backedge, label %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exit

.lr.ph.i.backedge:                                ; preds = %bb.o, %_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i
  %.be = phi i32 [ %i.ba, %bb.o ], [ %i.bk, %_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i ]
  %.be96 = phi ptr [ %i.bb, %bb.o ], [ %i.bi, %_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i ]
  br label %.lr.ph.i, !llvm.loop !2

bb.p:                                             ; preds = %.lr.ph.i
  switch i8 %i.av, label %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exit [
    i8 47, label %bb.q
    i8 35, label %.lr.ph.i.i.preheader
  ]

bb.q:                                             ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = icmp eq i8 %i.be, 47
  br i1 %i.bf, label %.lr.ph.i.i.preheader, label %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.q, %bb.p
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.s
  %i.bg = phi ptr [ %i.bi, %bb.s ], [ %i.au, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 1 ; 6 uses
  store ptr %i.bi, ptr %i.ao, align 8
  switch i8 %i.bh, label %bb.s [
    i8 10, label %bb.r
    i8 13, label %bb.r
  ]

bb.r:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.bj = add i32 %i.at, 1                        ; 2 uses
  store i32 %i.bj, ptr %i.as, align 8
  br label %_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i

bb.s:                                             ; preds = %.lr.ph.i.i
  %exitcond.not.i.i = icmp eq ptr %i.bi, %i.aq
  br i1 %exitcond.not.i.i, label %_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i, label %.lr.ph.i.i, !llvm.loop !0

_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i: ; preds = %bb.s, %bb.r
  %i.bk = phi i32 [ %i.bj, %bb.r ], [ %i.at, %bb.s ]
  %i.bl = icmp ult ptr %i.bi, %i.aq
  br i1 %i.bl, label %.lr.ph.i.backedge, label %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exit

_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exit: ; preds = %bb.p, %bb.q, %_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i, %bb.o, %.preheader.i
  %i.bm = phi ptr [ %.promoted11.i, %.preheader.i ], [ %i.au, %bb.p ], [ %i.au, %bb.q ], [ %i.bi, %_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i ], [ %i.bb, %bb.o ] ; 6 uses
  %i.bn = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(10) @.str.104, i64 noundef 9) #27
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exit
  %i.bp = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(9) @.str.105, i64 noundef 8) #27
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.u, label %bb.x

bb.u:                                             ; preds = %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exit, %bb.t
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 9
  store ptr %i.br, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN6Assimp11XFileParser12GetNextTokenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bt = load i64, ptr %i.bs, align 8
  %cond.i = icmp eq i64 %i.bt, 1
  br i1 %cond.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %bb.u
  %i.bu = load ptr, ptr %3, align 8               ; 3 uses
  %lhsc.i = load i8, ptr %i.bu, align 1
  switch i8 %lhsc.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i [
    i8 44, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i
    i8 59, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %bb.u
  invoke void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA43_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(43) @.str.74) #29
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i
  unreachable

bb.w:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = load ptr, ptr %3, align 8               ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.w
  %i.bz = load i64, ptr %i.bx, align 8
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i10 ], [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.bu, %i.cb
  br i1 %i.cc, label %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i
  %i.cd = load i64, ptr %i.cb, align 8
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.ce) #31
  br label %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit

_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.af

bb.x:                                             ; preds = %bb.t
  %i.cf = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(9) @.str.106, i64 noundef 8) #27
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.ch, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN6Assimp11XFileParser12GetNextTokenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cj = load i64, ptr %i.ci, align 8
  %cond.i7 = icmp eq i64 %i.cj, 1
  br i1 %cond.i7, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i12, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i8

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i12: ; preds = %bb.y
  %i.ck = load ptr, ptr %2, align 8               ; 3 uses
  %lhsc.i13 = load i8, ptr %i.ck, align 1
  switch i8 %lhsc.i13, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i8 [
    i8 44, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i18
    i8 59, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i18
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i8: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i12, %bb.y
  invoke void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA43_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(43) @.str.74) #29
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i8
  unreachable

bb.aa:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i8
  %i.cl = landingpad { ptr, i32 }
          cleanup
  %i.cm = load ptr, ptr %2, align 8               ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9: ; preds = %bb.aa
  %i.cp = load i64, ptr %i.cn, align 8
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i10: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %common.resume

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i18: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i12, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i12
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.ck, %i.cr
  br i1 %i.cs, label %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i19: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i18
  %i.ct = load i64, ptr %i.cr, align 8
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cu) #31
  br label %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit21

_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit21: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.af

bb.ab:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store float 0.000000e+00, ptr %i.a, align 4
  %i.cv = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.bm, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i1 noundef zeroext true)
  store ptr %i.cv, ptr %i.ao, align 8
  %i.cw = load i8, ptr %i.b, align 8, !range !11, !noundef !12
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit36, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @_ZN6Assimp11XFileParser12GetNextTokenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cz = load i64, ptr %i.cy, align 8
  %cond.i22 = icmp eq i64 %i.cz, 1
  br i1 %cond.i22, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i27, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i23

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i27: ; preds = %bb.ac
  %i.da = load ptr, ptr %1, align 8               ; 3 uses
  %lhsc.i28 = load i8, ptr %i.da, align 1
  switch i8 %lhsc.i28, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i23 [
    i8 44, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i33
    i8 59, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i33
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i23: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i27, %bb.ac
  invoke void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA43_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(43) @.str.74) #29
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i23
  unreachable

bb.ae:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i23
  %i.db = landingpad { ptr, i32 }
          cleanup
  %i.dc = load ptr, ptr %1, align 8               ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24: ; preds = %bb.ae
  %i.df = load i64, ptr %i.dd, align 8
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %common.resume

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i33: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i27, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i27
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.di = icmp eq ptr %i.da, %i.dh
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i34: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i33
  %i.dj = load i64, ptr %i.dh, align 8
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.dk) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i34, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit36

_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit36: ; preds = %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i35
  %i.dl = load float, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.af

.sink.split:                                      ; preds = %bb.k, %bb.l
  %.sink = phi ptr [ %i.an, %bb.l ], [ %i.ad, %bb.k ]
  %.0.ph = phi float [ %.0.copyload, %bb.l ], [ 0.000000e+00, %bb.k ]
  store ptr %.sink, ptr %i.ae, align 8
  br label %bb.af

bb.af:                                            ; preds = %.sink.split, %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit36, %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit21, %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit, %bb.j, %bb.i
  %.0 = phi float [ %i.al, %bb.i ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit21 ], [ %i.dl, %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit36 ], [ 0.000000e+00, %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit ], [ %.0.ph, %.sink.split ]
  ret float %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11XFileParser17CheckForSemicolonEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !11, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @_ZN6Assimp11XFileParser12GetNextTokenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq i64 %i.e, 1
  %.pre = load ptr, ptr %1, align 8               ; 3 uses
  br i1 %i.f, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.c:                                             ; preds = %bb.b
  %lhsc = load i8, ptr %.pre, align 1
  %i.g = icmp ne i8 %lhsc, 59
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.c, %bb.b
  %i.h = phi i1 [ true, %bb.b ], [ %i.g, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = icmp eq ptr %.pre, %i.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.k = icmp ult i64 %i.e, 16
  call void @llvm.assume(i1 %i.k)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.l = load i64, ptr %i.i, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.m) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA20_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(20) @.str.72) #29
  unreachable

bb.e:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11XFileParser20CheckForClosingBraceEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @_ZN6Assimp11XFileParser12GetNextTokenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i64 %i.b, 1
  %.pre = load ptr, ptr %1, align 8               ; 3 uses
  br i1 %i.c, label %bb.b, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.b:                                             ; preds = %bb.a
  %lhsc = load i8, ptr %.pre, align 1
  %i.d = icmp ne i8 %lhsc, 125
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b, %bb.a
  %i.e = phi i1 [ true, %bb.a ], [ %i.d, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = icmp eq ptr %.pre, %i.f
  br i1 %i.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.h = icmp ult i64 %i.b, 16
  call void @llvm.assume(i1 %i.h)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.i = load i64, ptr %i.f, align 8
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.j) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA24_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(24) @.str.71) #29
  unreachable

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN6Assimp11XFileParser7ReadIntEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !11, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.preheader.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 6 uses
  %i.k = ptrtoint ptr %i.h to i64                 ; 3 uses
  br i1 %i.f, label %bb.c, label %._crit_edge36

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp sgt i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %._crit_edge36

bb.d:                                             ; preds = %bb.c
  %i.o = load i16, ptr %i.j, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 2 ; 4 uses
  store ptr %i.p, ptr %i.i, align 8
  %i.q = icmp eq i16 %i.o, 6
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.k, %i.r
  %i.t = icmp sgt i64 %i.s, 3
  %or.cond = select i1 %i.q, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = load i32, ptr %i.p, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 6 ; 2 uses
  store ptr %i.v, ptr %i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.w = phi ptr [ %i.v, %bb.e ], [ %i.p, %bb.d ]
  %storemerge = phi i32 [ %i.u, %bb.e ], [ 1, %bb.d ] ; 2 uses
  store i32 %storemerge, ptr %i.d, align 8
  br label %._crit_edge36

._crit_edge36:                                    ; preds = %bb.b, %bb.f, %bb.c
  %i.x = phi ptr [ %i.j, %bb.c ], [ %i.w, %bb.f ], [ %i.j, %bb.b ] ; 3 uses
  %i.y = phi i32 [ 0, %bb.c ], [ %storemerge, %bb.f ], [ %i.e, %bb.b ]
  %i.z = add i32 %i.y, -1
  store i32 %i.z, ptr %i.d, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.k, %i.ab
  %i.ad = icmp ugt i64 %i.ac, 3
  br i1 %i.ad, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %._crit_edge36
  %i.ae = load i32, ptr %i.x, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  br label %.sink.split

.preheader.i:                                     ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8            ; 6 uses
  %.promoted11.i = load ptr, ptr %i.ag, align 8   ; 3 uses
  %i.aj = icmp ult ptr %.promoted11.i, %i.ai
  br i1 %i.aj, label %.lr.ph.lr.ph.i, label %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exitthread-pre-split

.lr.ph.lr.ph.i:                                   ; preds = %.preheader.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.promoted.i = load i32, ptr %i.ak, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.backedge, %.lr.ph.lr.ph.i
  %i.al = phi i32 [ %.promoted.i, %.lr.ph.lr.ph.i ], [ %.be, %.lr.ph.i.backedge ] ; 4 uses
  %i.am = phi ptr [ %.promoted11.i, %.lr.ph.lr.ph.i ], [ %.be78, %.lr.ph.i.backedge ] ; 6 uses
  %i.an = load i8, ptr %i.am, align 1             ; 4 uses
  %i.ao = zext i8 %i.an to i32
  %i.ap = tail call i32 @isspace(i32 noundef %i.ao) #27
  %.not.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.aq = icmp eq i8 %i.an, 10
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = add i32 %i.al, 1                        ; 2 uses
  store i32 %i.ar, ptr %i.ak, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.as = phi i32 [ %i.ar, %bb.i ], [ %i.al, %bb.h ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 4 uses
  store ptr %i.at, ptr %i.ag, align 8
  %i.au = icmp ult ptr %i.at, %i.ai
  br i1 %i.au, label %.lr.ph.i.backedge, label %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exitthread-pre-split

.lr.ph.i.backedge:                                ; preds = %bb.j, %_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i
  %.be = phi i32 [ %i.as, %bb.j ], [ %i.bc, %_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i ]
  %.be78 = phi ptr [ %i.at, %bb.j ], [ %i.ba, %_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i ]
  br label %.lr.ph.i, !llvm.loop !2

bb.k:                                             ; preds = %.lr.ph.i
  switch i8 %i.an, label %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exit [
    i8 47, label %bb.l
    i8 35, label %.lr.ph.i.i.preheader
  ]

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = icmp eq i8 %i.aw, 47
  br i1 %i.ax, label %.lr.ph.i.i.preheader, label %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exitthread-pre-split

.lr.ph.i.i.preheader:                             ; preds = %bb.l, %bb.k
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.n
  %i.ay = phi ptr [ %i.ba, %bb.n ], [ %i.am, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 6 uses
  store ptr %i.ba, ptr %i.ag, align 8
  switch i8 %i.az, label %bb.n [
    i8 10, label %bb.m
    i8 13, label %bb.m
  ]

bb.m:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.bb = add i32 %i.al, 1                        ; 2 uses
  store i32 %i.bb, ptr %i.ak, align 8
  br label %_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i

bb.n:                                             ; preds = %.lr.ph.i.i
  %exitcond.not.i.i = icmp eq ptr %i.ba, %i.ai
  br i1 %exitcond.not.i.i, label %_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i, label %.lr.ph.i.i, !llvm.loop !0

_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i: ; preds = %bb.n, %bb.m
  %i.bc = phi i32 [ %i.bb, %bb.m ], [ %i.al, %bb.n ]
  %i.bd = icmp ult ptr %i.ba, %i.ai
  br i1 %i.bd, label %.lr.ph.i.backedge, label %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exitthread-pre-split

_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exitthread-pre-split: ; preds = %_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i, %bb.l, %bb.j, %.preheader.i
  %.ph = phi ptr [ %.promoted11.i, %.preheader.i ], [ %i.am, %bb.l ], [ %i.ba, %_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i ], [ %i.at, %bb.j ] ; 2 uses
  %.pr = load i8, ptr %.ph, align 1
  br label %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exit

_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exit: ; preds = %bb.k, %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exitthread-pre-split
  %i.be = phi i8 [ %.pr, %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exitthread-pre-split ], [ %i.an, %bb.k ] ; 2 uses
  %i.bf = phi ptr [ %.ph, %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exitthread-pre-split ], [ %i.am, %bb.k ] ; 2 uses
  %i.bg = icmp eq i8 %i.be, 45                    ; 2 uses
  br i1 %i.bg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 3 uses
  store ptr %i.bh, ptr %i.ag, align 8
  %.pre = load i8, ptr %i.bh, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exit
  %i.bi = phi i8 [ %.pre, %bb.o ], [ %i.be, %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exit ]
  %.promoted = phi ptr [ %i.bh, %bb.o ], [ %i.bf, %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exit ] ; 2 uses
  %i.bj = add i8 %i.bi, -48
  %isdigit = icmp ult i8 %i.bj, 10
  br i1 %isdigit, label %.preheader, label %bb.q

.preheader:                                       ; preds = %bb.p
  %i.bk = icmp ult ptr %.promoted, %i.ai
  br i1 %i.bk, label %.lr.ph, label %._crit_edge

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA17_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(17) @.str.103) #29
  unreachable

.lr.ph:                                           ; preds = %.preheader, %bb.r
  %.023 = phi i32 [ %i.br, %bb.r ], [ 0, %.preheader ] ; 2 uses
  %i.bl = phi ptr [ %i.bs, %bb.r ], [ %.promoted, %.preheader ] ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1             ; 2 uses
  %i.bn = add i8 %i.bm, -48
  %isdigit10 = icmp ult i8 %i.bn, 10
  br i1 %isdigit10, label %bb.r, label %._crit_edge

bb.r:                                             ; preds = %.lr.ph
  %i.bo = mul i32 %.023, 10
  %i.bp = zext nneg i8 %i.bm to i32
  %i.bq = add i32 %i.bo, -48
  %i.br = add i32 %i.bq, %i.bp                    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 1 ; 3 uses
  store ptr %i.bs, ptr %i.ag, align 8
  %exitcond.not = icmp eq ptr %i.bs, %i.ai
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !26

._crit_edge:                                      ; preds = %.lr.ph, %bb.r, %.preheader
  %.0.lcssa = phi i32 [ 0, %.preheader ], [ %i.br, %bb.r ], [ %.023, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @_ZN6Assimp11XFileParser12GetNextTokenB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bu = load i64, ptr %i.bt, align 8
  %cond.i = icmp eq i64 %i.bu, 1
  br i1 %cond.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %._crit_edge
  %i.bv = load ptr, ptr %1, align 8               ; 3 uses
  %lhsc.i = load i8, ptr %i.bv, align 1
  switch i8 %lhsc.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i [
    i8 44, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i
    i8 59, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %._crit_edge
  invoke void @_ZN6Assimp11XFileParser14ThrowExceptionIJRA43_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(43) @.str.74) #29
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i
  unreachable

bb.t:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.thread.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  %i.bx = load ptr, ptr %1, align 8               ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.t
  %i.ca = load i64, ptr %i.by, align 8
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %i.bw

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.bv, %i.cc
  br i1 %i.cd, label %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i
  %i.ce = load i64, ptr %i.cc, align 8
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.cf) #31
  br label %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit

_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.cg = sub nsw i32 0, %.0.lcssa
  %i.ch = select i1 %i.bg, i32 %i.cg, i32 %.0.lcssa
  br label %bb.u

.sink.split:                                      ; preds = %._crit_edge36, %bb.g
  %.sink = phi ptr [ %i.af, %bb.g ], [ %i.h, %._crit_edge36 ]
  %.1.ph = phi i32 [ %i.ae, %bb.g ], [ 0, %._crit_edge36 ]
  store ptr %.sink, ptr %i.aa, align 8
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit
  %.1 = phi i32 [ %i.ch, %_ZN6Assimp11XFileParser17CheckForSeparatorEv.exit ], [ %.1.ph, %.sink.split ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define hidden { <2 x float>, float } @_ZN6Assimp11XFileParser11ReadVector3Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.b = tail call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.c = tail call noundef float @_ZN6Assimp11XFileParser9ReadFloatEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i8, ptr %i.d, align 8, !range !11, !noundef !12
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN6Assimp11XFileParser16TestForSeparatorEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8              ; 5 uses
  %.promoted11.i.i = load ptr, ptr %i.g, align 8  ; 3 uses
  %i.j = icmp ult ptr %.promoted11.i.i, %i.i
  br i1 %i.j, label %.lr.ph.lr.ph.i.i, label %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exit.i

.lr.ph.lr.ph.i.i:                                 ; preds = %.preheader.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.promoted.i.i = load i32, ptr %i.k, align 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.backedge, %.lr.ph.lr.ph.i.i
  %i.l = phi i32 [ %.promoted.i.i, %.lr.ph.lr.ph.i.i ], [ %.be, %.lr.ph.i.i.backedge ] ; 4 uses
  %i.m = phi ptr [ %.promoted11.i.i, %.lr.ph.lr.ph.i.i ], [ %.be52, %.lr.ph.i.i.backedge ] ; 6 uses
  %i.n = load i8, ptr %i.m, align 1               ; 3 uses
  %i.o = zext i8 %i.n to i32
  %i.p = tail call i32 @isspace(i32 noundef %i.o) #27
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.q = icmp eq i8 %i.n, 10
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = add i32 %i.l, 1                          ; 2 uses
  store i32 %i.r, ptr %i.k, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = phi i32 [ %i.r, %bb.c ], [ %i.l, %bb.b ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 4 uses
  store ptr %i.t, ptr %i.g, align 8
  %i.u = icmp ult ptr %i.t, %i.i
  br i1 %i.u, label %.lr.ph.i.i.backedge, label %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exit.i

.lr.ph.i.i.backedge:                              ; preds = %bb.d, %_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i.i
  %.be = phi i32 [ %i.s, %bb.d ], [ %i.ac, %_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i.i ]
  %.be52 = phi ptr [ %i.t, %bb.d ], [ %i.aa, %_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i.i ]
  br label %.lr.ph.i.i, !llvm.loop !2

bb.e:                                             ; preds = %.lr.ph.i.i
  switch i8 %i.n, label %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exit.i [
    i8 47, label %bb.f
    i8 35, label %.lr.ph.i.i.i.preheader
  ]

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.w = load i8, ptr %i.v, align 1
  %i.x = icmp eq i8 %i.w, 47
  br i1 %i.x, label %.lr.ph.i.i.i.preheader, label %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exit.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.f, %bb.e
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.h
  %i.y = phi ptr [ %i.aa, %bb.h ], [ %i.m, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 6 uses
  store ptr %i.aa, ptr %i.g, align 8
  switch i8 %i.z, label %bb.h [
    i8 10, label %bb.g
    i8 13, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.ab = add i32 %i.l, 1                         ; 2 uses
  store i32 %i.ab, ptr %i.k, align 8
  br label %_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %exitcond.not.i.i.i = icmp eq ptr %i.aa, %i.i
  br i1 %exitcond.not.i.i.i, label %_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i.i: ; preds = %bb.h, %bb.g
  %i.ac = phi i32 [ %i.ab, %bb.g ], [ %i.l, %bb.h ]
  %i.ad = icmp ult ptr %i.aa, %i.i
  br i1 %i.ad, label %.lr.ph.i.i.backedge, label %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exit.i

_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exit.i: ; preds = %_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i.i, %bb.f, %bb.e, %bb.d, %.preheader.i.i
  %i.ae = phi ptr [ %.promoted11.i.i, %.preheader.i.i ], [ %i.m, %bb.e ], [ %i.aa, %_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i.i ], [ %i.m, %bb.f ], [ %i.t, %bb.d ] ; 3 uses
  %.not.i = icmp ult ptr %i.ae, %i.i
  br i1 %.not.i, label %bb.i, label %_ZN6Assimp11XFileParser16TestForSeparatorEv.exit

bb.i:                                             ; preds = %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exit.i
  %i.af = load i8, ptr %i.ae, align 1
  switch i8 %i.af, label %_ZN6Assimp11XFileParser16TestForSeparatorEv.exit [
    i8 59, label %bb.j
    i8 44, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store ptr %i.ag, ptr %i.g, align 8
  br label %_ZN6Assimp11XFileParser16TestForSeparatorEv.exit

_ZN6Assimp11XFileParser16TestForSeparatorEv.exit: ; preds = %bb.a, %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exit.i, %bb.i, %bb.j
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.a, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.b, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.0.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.c, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nounwind memory(read, argmem: readwrite) uwtable
define hidden void @_ZN6Assimp11XFileParser16TestForSeparatorEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !11, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.k, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  %.promoted11.i = load ptr, ptr %i.d, align 8    ; 3 uses
  %i.g = icmp ult ptr %.promoted11.i, %i.f
  br i1 %i.g, label %.lr.ph.lr.ph.i, label %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exit

.lr.ph.lr.ph.i:                                   ; preds = %.preheader.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.promoted.i = load i32, ptr %i.h, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.backedge, %.lr.ph.lr.ph.i
  %i.i = phi i32 [ %.promoted.i, %.lr.ph.lr.ph.i ], [ %.be, %.lr.ph.i.backedge ] ; 4 uses
  %i.j = phi ptr [ %.promoted11.i, %.lr.ph.lr.ph.i ], [ %.be46, %.lr.ph.i.backedge ] ; 6 uses
  %i.k = load i8, ptr %i.j, align 1               ; 3 uses
  %i.l = zext i8 %i.k to i32
  %i.m = tail call i32 @isspace(i32 noundef %i.l) #27
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.n = icmp eq i8 %i.k, 10
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = add i32 %i.i, 1                          ; 2 uses
  store i32 %i.o, ptr %i.h, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = phi i32 [ %i.o, %bb.c ], [ %i.i, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 4 uses
  store ptr %i.q, ptr %i.d, align 8
  %i.r = icmp ult ptr %i.q, %i.f
  br i1 %i.r, label %.lr.ph.i.backedge, label %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exit

.lr.ph.i.backedge:                                ; preds = %bb.d, %_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i
  %.be = phi i32 [ %i.p, %bb.d ], [ %i.z, %_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i ]
  %.be46 = phi ptr [ %i.q, %bb.d ], [ %i.x, %_ZN6Assimp11XFileParser18ReadUntilEndOfLineEv.exit.i ]
  br label %.lr.ph.i, !llvm.loop !2

bb.e:                                             ; preds = %.lr.ph.i
  switch i8 %i.k, label %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exit [
    i8 47, label %bb.f
    i8 35, label %.lr.ph.i.i.preheader
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.t = load i8, ptr %i.s, align 1
  %i.u = icmp eq i8 %i.t, 47
  br i1 %i.u, label %.lr.ph.i.i.preheader, label %_ZN6Assimp11XFileParser22FindNextNoneWhiteSpaceEv.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.f, %bb.e
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.h
  %i.v = phi ptr [ %i.x, %bb.h ], [ %i.j, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.w = load i8, ptr %i.v, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 6 uses
  store ptr %i.x, ptr %i.d, align 8
  switch i8 %i.w, label %bb.h [
    i8 10, label %bb.g
    i8 13, label %bb.g
  ]

end_hunk_0
