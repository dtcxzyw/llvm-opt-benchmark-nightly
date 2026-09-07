Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/ColladaParser?download=true
inline.NumInlined: 6573
inline.NumDeleted: 2480
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE16getValueAsStringERS2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  switch i64 %i.v, label %bb.d [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.x = load i8, ptr %i.r, align 1
  store i8 %i.x, ptr %i.p, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.r, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10: ; preds = %bb.d, %bb.c, %bb.b
  %i.y = load i64, ptr %i.u, align 8              ; 2 uses
  store i64 %i.y, ptr %i.e, align 8
  %i.z = load ptr, ptr %1, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 0, ptr %i.aa, align 1
  %.pre.i11 = load ptr, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit14

.thread.i13:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
  store ptr %i.r, ptr %1, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = load <2 x i64>, ptr %i.ab, align 8
  store <2 x i64> %i.ac, ptr %i.e, align 8
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i8: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i7
  %i.ad = load i64, ptr %i.d, align 8
  store ptr %i.r, ptr %1, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load <2 x i64>, ptr %i.ae, align 8
  store <2 x i64> %i.af, ptr %i.e, align 8
  %.not.i9 = icmp eq ptr %i.p, null
  br i1 %.not.i9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i8
  store ptr %i.p, ptr %4, align 8
  store i64 %i.ad, ptr %i.s, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit14

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i8, %.thread.i13
  store ptr %i.s, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10, %bb.e, %bb.f
  %i.ag = phi ptr [ %.pre.i11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10 ], [ %i.p, %bb.e ], [ %i.s, %bb.f ]
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ah, align 8
  store i8 0, ptr %i.ag, align 1
  %i.ai = load ptr, ptr %4, align 8               ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit14
  %i.al = load i64, ptr %i.aj, align 8
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %.0 = xor i1 %i.j, true
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nounwind memory(read, argmem: readwrite) uwtable
define hidden void @_ZN6Assimp13ColladaParser13UriDecodePathER8aiString(ptr noundef nonnull align 4 dereferenceable(1028) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 13 uses
  %i.c = load i32, ptr %i.b, align 1
  %i.d = xor i32 %i.c, 1701603686
  %i.e = getelementptr i8, ptr %i.b, i64 3
  %i.f = load i32, ptr %i.e, align 1
  %i.g = xor i32 %i.f, 791624293
  %i.h = or i32 %i.d, %i.g
  %i.i = icmp ne i32 %i.h, 0
  %i.j = zext i1 %i.i to i32
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %0, align 4
  %i.m = add i32 %i.l, -7                         ; 2 uses
  store i32 %i.m, ptr %0, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.o = zext i32 %i.m to i64                     ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.b, ptr nonnull align 1 %i.n, i64 %i.o, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.o
  store i8 0, ptr %i.p, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = load i8, ptr %i.b, align 4
  %i.r = icmp eq i8 %i.q, 47
  br i1 %i.r, label %bb.d, label %thread-pre-split

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i32
  %i.v = tail call i32 @isalpha(i32 noundef %i.u) #32
  %.not = icmp ne i32 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.x = load i8, ptr %i.w, align 2
  %i.y = icmp eq i8 %i.x, 58
  %or.cond = select i1 %.not, i1 %i.y, i1 false
  br i1 %or.cond, label %bb.e, label %thread-pre-split

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %0, align 4
  %i.aa = add i32 %i.z, -1                        ; 3 uses
  store i32 %i.aa, ptr %0, align 4
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.b, ptr nonnull align 1 %i.s, i64 %i.ab, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ab
  store i8 0, ptr %i.ac, align 1
  br label %bb.f

thread-pre-split:                                 ; preds = %bb.c, %bb.d
  %.pr = load i32, ptr %0, align 4
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split, %bb.e
  %i.ad = phi i32 [ %.pr, %thread-pre-split ], [ %i.aa, %bb.e ] ; 2 uses
  %.not3940 = icmp eq i32 %i.ad, 0
  br i1 %.not3940, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br label %bb.g

._crit_edge:                                      ; preds = %bb.r, %bb.f
  %.0.lcssa = phi ptr [ %i.b, %bb.f ], [ %.1, %bb.r ] ; 2 uses
  store i8 0, ptr %.0.lcssa, align 1
  %i.ai = ptrtoint ptr %.0.lcssa to i64
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = trunc i64 %i.ak to i32
  store i32 %i.al, ptr %0, align 4
  ret void

bb.g:                                             ; preds = %.lr.ph, %bb.r
  %i.am = phi ptr [ %i.af, %.lr.ph ], [ %i.bl, %bb.r ]
  %.042 = phi ptr [ %i.b, %.lr.ph ], [ %.1, %bb.r ] ; 3 uses
  %.03541 = phi ptr [ %i.b, %.lr.ph ], [ %.136, %bb.r ] ; 5 uses
  %i.an = load i8, ptr %.03541, align 1           ; 2 uses
  %i.ao = icmp eq i8 %i.an, 37
  br i1 %i.ao, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %.03541, i64 3 ; 2 uses
  %i.aq = icmp ult ptr %i.ap, %i.am
  br i1 %i.aq, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.ar = getelementptr inbounds nuw i8, ptr %.03541, i64 1
  %i.as = load i8, ptr %i.ar, align 1             ; 2 uses
  store i8 %i.as, ptr %i.a, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %.03541, i64 2
  %i.au = load i8, ptr %i.at, align 1
  store i8 %i.au, ptr %i.ag, align 1
  store i8 0, ptr %i.ah, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.p, %bb.i
  %i.av = phi i8 [ %i.as, %bb.i ], [ %.pre, %bb.p ] ; 3 uses
  %.016.i = phi ptr [ %i.a, %bb.i ], [ %i.bh, %bb.p ]
  %.0.i = phi i8 [ 0, %bb.i ], [ %.1.i, %bb.p ]   ; 4 uses
  %i.aw = add i8 %i.av, -48                       ; 2 uses
  %or.cond.i = icmp ult i8 %i.aw, 10
  br i1 %or.cond.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = shl i8 %.0.i, 4
  %i.ay = or disjoint i8 %i.aw, %i.ax
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.az = add i8 %i.av, -65                       ; 2 uses
  %or.cond23.i = icmp ult i8 %i.az, 6
  br i1 %or.cond23.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ba = shl i8 %.0.i, 4
  %i.bb = or disjoint i8 %i.ba, 10
  %i.bc = add i8 %i.bb, %i.az
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.bd = add i8 %i.av, -97                       ; 2 uses
  %or.cond24.i = icmp ult i8 %i.bd, 6
  br i1 %or.cond24.i, label %bb.o, label %_ZN6Assimp9strtoul16EPKcPS1_.exit

bb.o:                                             ; preds = %bb.n
  %i.be = shl i8 %.0.i, 4
  %i.bf = or disjoint i8 %i.be, 10
  %i.bg = add i8 %i.bf, %i.bd
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.k
  %.1.i = phi i8 [ %i.ay, %bb.k ], [ %i.bc, %bb.m ], [ %i.bg, %bb.o ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.016.i, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.bh, align 1
  br label %bb.j, !llvm.loop !40

_ZN6Assimp9strtoul16EPKcPS1_.exit:                ; preds = %bb.n
  store i8 %.0.i, ptr %.042, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.r

bb.q:                                             ; preds = %bb.h, %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %.03541, i64 1
  store i8 %i.an, ptr %.042, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN6Assimp9strtoul16EPKcPS1_.exit
  %.136 = phi ptr [ %i.ap, %_ZN6Assimp9strtoul16EPKcPS1_.exit ], [ %i.bi, %bb.q ] ; 2 uses
  %.1 = getelementptr inbounds nuw i8, ptr %.042, i64 1 ; 2 uses
  %i.bj = load i32, ptr %0, align 4
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bk ; 2 uses
  %.not39 = icmp eq ptr %.136, %i.bl
  br i1 %.not39, label %._crit_edge, label %bb.g, !llvm.loop !41
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalpha(i32 noundef) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp eq i32 %bcmp, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ true, %bb.b ]
  ret i1 %i.h
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE18getStdStrAttributeERS2_PKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %3 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = tail call ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  store ptr %i.a, ptr %3, align 8
  %i.b = call noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %3) ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.46) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #28
  %i.g = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.e, ptr noundef nonnull %i.c, i64 noundef %i.f) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = xor i1 %i.b, true
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret i1 %.0
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #4

declare void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp13ColladaParser13ReadStructureERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(772) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.pugi::xml_object_range", align 16 ; 6 uses
  %3 = alloca %"class.pugi::xml_node_iterator", align 16 ; 8 uses
  %4 = alloca %"class.pugi::xml_node_iterator", align 16 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZNK4pugi8xml_node8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.pugi::xml_object_range") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.b = load <2 x ptr>, ptr %2, align 16
  store <2 x ptr> %i.b, ptr %3, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load <2 x ptr>, ptr %i.c, align 16
  store <2 x ptr> %i.d, ptr %4, align 16
  %i.e = call noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @_ZN6Assimp13ColladaParser25PostProcessRootAnimationsEv(ptr noundef nonnull align 8 dereferenceable(772) %0)
  call void @_ZN6Assimp13ColladaParser22PostProcessControllersEv(ptr noundef nonnull align 8 dereferenceable(772) %0)
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %i.h = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi17xml_node_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %3) ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.i = call noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 4 uses
  store ptr %i.f, ptr %5, align 8
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.290) #29
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.k, ptr %i.a, align 8
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %5, align 8
  %i.n = load i64, ptr %i.a, align 8
  store i64 %i.n, ptr %i.f, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.o = phi ptr [ %i.m, %.noexc.i ], [ %i.f, %bb.c ] ; 2 uses
  switch i64 %i.k, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %i.i, align 1
  store i8 %i.p, ptr %i.o, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %i.i, i64 %i.k, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.q = load i64, ptr %i.a, align 8              ; 2 uses
  store i64 %i.q, ptr %i.g, align 8
  %i.r = load ptr, ptr %5, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  store i8 0, ptr %i.s, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.t = load i64, ptr %i.g, align 8              ; 11 uses
  switch i64 %i.t, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59.thread73 [
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 18, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41
    i64 23, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43
    i64 19, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45
    i64 14, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47
    i64 17, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit49
    i64 15, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51
    i64 21, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit55
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.f
  %i.u = load ptr, ptr %5, align 8                ; 2 uses
  %i.v = load i32, ptr %i.u, align 1
  %i.w = xor i32 %i.v, 1702064993
  %i.x = getelementptr i8, ptr %i.u, i64 4
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i32
  %i.aa = xor i32 %i.z, 116
  %i.ab = or i32 %i.w, %i.aa
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = zext i1 %i.ac to i32
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59.thread73

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  invoke void @_ZN6Assimp13ColladaParser13ReadAssetInfoERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(772) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.k unwind label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.h, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit55.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit49.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.af = landingpad { ptr, i32 }
end_hunk_0
