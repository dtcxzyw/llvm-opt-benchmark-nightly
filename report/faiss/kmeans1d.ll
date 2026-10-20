Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/kmeans1d?download=true
inline.NumInlined: 735
inline.NumDeleted: 376
begin_hunk_0_@_ZN5faiss6reduceERKSt6vectorIlSaIlEES4_RKSt8functionIFfllEERS2_:bb.a

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss11interpolateERKSt6vectorIlSaIlEES4_RKSt8functionIFfllEEPl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::unordered_map", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i64 1, ptr %i.f, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.h, align 8, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24   ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !19     ; 2 uses
  %.not.a = icmp eq ptr %i.k, %i.l
  br i1 %.not.a, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.loopexit84, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24   ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %.not109 = icmp eq ptr %i.n, %i.o
  br i1 %.not109, label %._crit_edge108, label %.lr.ph107

.lr.ph107:                                        ; preds = %.preheader
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.p
  %i.s = ashr exact i64 %i.r, 3
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  br label %bb.f

.lr.ph:                                           ; preds = %bb.a, %.loopexit84
  %i.v = phi ptr [ %i.at, %.loopexit84 ], [ %i.l, %bb.a ] ; 3 uses
  %i.w = phi ptr [ %i.au, %.loopexit84 ], [ %i.k, %bb.a ] ; 2 uses
  %.05198 = phi i64 [ %i.av, %.loopexit84 ], [ 0, %bb.a ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.05198 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !17   ; 4 uses
  %i.z = load i64, ptr %i.f, align 8, !tbaa !34   ; 2 uses
  %i.aa = urem i64 %i.y, %i.z                     ; 3 uses
  %i.ab = load ptr, ptr %4, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !35 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !36 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !17
  %i.ah = icmp eq i64 %i.y, %i.ag
  br i1 %i.ah, label %.loopexit84, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %bb.d
  %i.ai = icmp eq i64 %i.y, %i.al
  br i1 %i.ai, label %.loopexit84, label %.lr.ph.i.i.i.i, !llvm.loop !71

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.c
  %.020.i.i.i.i = phi ptr [ %i.aj, %bb.c ], [ %i.ae, %bb.b ]
  %i.aj = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !36 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !17 ; 2 uses
  %i.am = urem i64 %i.al, %i.z
  %.not19.i.i.i.i = icmp eq i64 %i.am, %i.aa
  br i1 %.not19.i.i.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !71

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.d
  br label %.loopexit.i.i, !llvm.loop !71

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %.lr.ph
  %i.an = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc:                                           ; preds = %.loopexit.i.i
  store ptr null, ptr %i.an, align 8, !tbaa !36
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i64, ptr %i.x, align 8, !tbaa !17
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !77
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 0, ptr %i.aq, align 8, !tbaa !78
  %i.ar = invoke ptr @_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %4, i64 noundef %i.aa, i64 noundef %i.y, ptr noundef nonnull %i.an, i64 noundef 1)
          to label %.noexc..loopexit84_crit_edge unwind label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

.noexc..loopexit84_crit_edge:                     ; preds = %.noexc
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !24
  %.pre122 = load ptr, ptr %1, align 8, !tbaa !19
  br label %.loopexit84

_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.noexc
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 24) #20
  br label %.body70

.loopexit84:                                      ; preds = %bb.c, %.noexc..loopexit84_crit_edge, %bb.b
  %i.at = phi ptr [ %.pre122, %.noexc..loopexit84_crit_edge ], [ %i.v, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  %i.au = phi ptr [ %.pre, %.noexc..loopexit84_crit_edge ], [ %i.w, %bb.b ], [ %i.w, %bb.c ] ; 2 uses
  %.pn.i.i = phi ptr [ %i.ar, %.noexc..loopexit84_crit_edge ], [ %i.ae, %bb.b ], [ %i.aj, %bb.c ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  store i64 %.05198, ptr %.1.i.i, align 8, !tbaa !17
  %i.av = add nuw i64 %.05198, 1                  ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 3
  %i.ba = icmp ult i64 %i.av, %i.az
  br i1 %i.ba, label %.lr.ph, label %.preheader, !llvm.loop !72

._crit_edge108:                                   ; preds = %._crit_edge, %.preheader
  %i.bb = load ptr, ptr %i.g, align 8, !tbaa !38  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i57

.lr.ph.i.i.i.i57:                                 ; preds = %._crit_edge108, %.lr.ph.i.i.i.i57
  %.06.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i57 ], [ %i.bb, %._crit_edge108 ] ; 2 uses
  %i.bc = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !36 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #20
  %.not.i.i.i.i58 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i58, label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i57, !llvm.loop !1

_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i57, %._crit_edge108
  %i.bd = load ptr, ptr %4, align 8, !tbaa !33
  %i.be = load i64, ptr %i.f, align 8, !tbaa !34
  %i.bf = shl i64 %i.be, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bd, i8 0, i64 %i.bf, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.bg = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.e
  br i1 %i.bh, label %_ZNSt13unordered_mapIllSt4hashIlESt8equal_toIlESaISt4pairIKllEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.bi = load i64, ptr %i.f, align 8, !tbaa !34
  %i.bj = shl i64 %i.bi, 3
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #20
  br label %_ZNSt13unordered_mapIllSt4hashIlESt8equal_toIlESaISt4pairIKllEEED2Ev.exit

_ZNSt13unordered_mapIllSt4hashIlESt8equal_toIlESaISt4pairIKllEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.f:                                             ; preds = %.lr.ph107, %._crit_edge
  %i.bk = phi i64 [ %i.s, %.lr.ph107 ], [ %i.di, %._crit_edge ]
  %i.bl = phi ptr [ %i.o, %.lr.ph107 ], [ %i.de, %._crit_edge ]
  %.044106 = phi i64 [ 0, %.lr.ph107 ], [ %i.dc, %._crit_edge ] ; 3 uses
  %.045105 = phi i64 [ 0, %.lr.ph107 ], [ %.043, %._crit_edge ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.044106 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !17 ; 3 uses
  %i.bo = load ptr, ptr %i.j, align 8, !tbaa !24
  %i.bp = load ptr, ptr %1, align 8, !tbaa !19    ; 4 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 3
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = add nsw i64 %i.bk, -1
  %i.bw = icmp ult i64 %.044106, %i.bv
  br i1 %i.bw, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !17
  %i.bz = getelementptr inbounds [8 x i8], ptr %3, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !17 ; 5 uses
  %i.cb = load i64, ptr %i.f, align 8, !tbaa !34  ; 2 uses
  %i.cc = urem i64 %i.ca, %i.cb                   ; 3 uses
  %i.cd = load ptr, ptr %4, align 8, !tbaa !33
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cc
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !35 ; 2 uses
  %.not.i.i.i.i59 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i59, label %.loopexit.i.i65, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !36 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !17
  %i.cj = icmp eq i64 %i.ca, %i.ci
  br i1 %i.cj, label %.loopexit80, label %.lr.ph.i.i.i.i60

bb.i:                                             ; preds = %bb.j
  %i.ck = icmp eq i64 %i.ca, %i.cn
  br i1 %i.ck, label %.loopexit80, label %.lr.ph.i.i.i.i60, !llvm.loop !71

.lr.ph.i.i.i.i60:                                 ; preds = %bb.h, %bb.i
  %.020.i.i.i.i61 = phi ptr [ %i.cl, %bb.i ], [ %i.cg, %bb.h ]
  %i.cl = load ptr, ptr %.020.i.i.i.i61, align 8, !tbaa !36 ; 4 uses
  %.not18.i.i.i.i62 = icmp eq ptr %i.cl, null
  br i1 %.not18.i.i.i.i62, label %.loopexit.i.i65, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i60
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !17 ; 2 uses
  %i.co = urem i64 %i.cn, %i.cb
  %.not19.i.i.i.i63 = icmp eq i64 %i.co, %i.cc
  br i1 %.not19.i.i.i.i63, label %bb.i, label %..loopexit_crit_edge21.i.i.i.i64, !llvm.loop !71

..loopexit_crit_edge21.i.i.i.i64:                 ; preds = %bb.j
  br label %.loopexit.i.i65, !llvm.loop !71

.loopexit.i.i65:                                  ; preds = %.lr.ph.i.i.i.i60, %..loopexit_crit_edge21.i.i.i.i64, %bb.g
  %i.cp = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19
          to label %.noexc69 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc69:                                         ; preds = %.loopexit.i.i65
  store ptr null, ptr %i.cp, align 8, !tbaa !36
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %i.ca, ptr %i.cq, align 8, !tbaa !77
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 0, ptr %i.cr, align 8, !tbaa !78
  %i.cs = invoke ptr @_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %4, i64 noundef %i.cc, i64 noundef %i.ca, ptr noundef nonnull %i.cp, i64 noundef 1)
          to label %.noexc69..loopexit80_crit_edge unwind label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i66

.noexc69..loopexit80_crit_edge:                   ; preds = %.noexc69
  %.pre123.pre = load ptr, ptr %1, align 8, !tbaa !19
  br label %.loopexit80

_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i66: ; preds = %.noexc69
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef 24) #20
  br label %.body70

.loopexit80:                                      ; preds = %bb.i, %.noexc69..loopexit80_crit_edge, %bb.h
  %.pre123 = phi ptr [ %.pre123.pre, %.noexc69..loopexit80_crit_edge ], [ %i.bp, %bb.h ], [ %i.bp, %bb.i ]
  %.pn.i.i67 = phi ptr [ %i.cs, %.noexc69..loopexit80_crit_edge ], [ %i.cg, %bb.h ], [ %i.cl, %bb.i ]
  %.1.i.i68 = getelementptr inbounds nuw i8, ptr %.pn.i.i67, i64 16
  %i.cu = load i64, ptr %.1.i.i68, align 8, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %.loopexit80, %bb.f
  %i.cv = phi ptr [ %.pre123, %.loopexit80 ], [ %i.bp, %bb.f ]
  %.043 = phi i64 [ %i.cu, %.loopexit80 ], [ %i.bu, %bb.f ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.045105
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.bn, ptr %i.c, align 8, !tbaa !17
  store i64 %i.cx, ptr %i.d, align 8, !tbaa !17
  %i.cy = load ptr, ptr %i.t, align 8, !tbaa !21
  %.not.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i, label %.invoke, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cz = load ptr, ptr %i.u, align 8, !tbaa !23
  %i.da = invoke noundef float %i.cz(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZNKSt8functionIFfllEEclEll.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

_ZNKSt8functionIFfllEEclEll.exit:                 ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.099 = add nsw i64 %.045105, 1                 ; 2 uses
  %.not100 = icmp sgt i64 %.099, %.043
  br i1 %.not100, label %._crit_edge, label %.lr.ph104

._crit_edge:                                      ; preds = %bb.p, %_ZNKSt8functionIFfllEEclEll.exit
  %.041.lcssa = phi i64 [ %i.cx, %_ZNKSt8functionIFfllEEclEll.exit ], [ %.142, %bb.p ]
  %i.db = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bn
  store i64 %.041.lcssa, ptr %i.db, align 8, !tbaa !17
  %i.dc = add i64 %.044106, 2                     ; 2 uses
  %i.dd = load ptr, ptr %i.m, align 8, !tbaa !24
  %i.de = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = ashr exact i64 %i.dh, 3                 ; 2 uses
  %i.dj = icmp ult i64 %i.dc, %i.di
  br i1 %i.dj, label %bb.f, label %._crit_edge108, !llvm.loop !73

.lr.ph104:                                        ; preds = %_ZNKSt8functionIFfllEEclEll.exit, %bb.p
  %.0103.in = phi i64 [ %.0, %bb.p ], [ %.099, %_ZNKSt8functionIFfllEEclEll.exit ] ; 3 uses
  %.040102 = phi float [ %.1, %bb.p ], [ %i.da, %_ZNKSt8functionIFfllEEclEll.exit ] ; 2 uses
  %.041101 = phi i64 [ %.142, %bb.p ], [ %i.cx, %_ZNKSt8functionIFfllEEclEll.exit ]
  %i.dk = load ptr, ptr %1, align 8, !tbaa !19
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %.0103.in
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.bn, ptr %i.a, align 8, !tbaa !17
  store i64 %i.dm, ptr %i.b, align 8, !tbaa !17
  %i.dn = load ptr, ptr %i.t, align 8, !tbaa !21
  %.not.i.i75 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i75, label %.invoke, label %bb.m

.invoke:                                          ; preds = %bb.k, %.lr.ph104
  invoke void @_ZSt25__throw_bad_function_callv() #18
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.m:                                             ; preds = %.lr.ph104
  %i.do = load ptr, ptr %i.u, align 8, !tbaa !23
  %i.dp = invoke noundef float %i.do(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0 ; 2 uses

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dq = fcmp olt float %i.dp, %.040102
  br i1 %i.dq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dr = load ptr, ptr %1, align 8, !tbaa !19
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.0103.in
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !17
  br label %bb.p

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %.loopexit.i.i65, %bb.m, %.loopexit.i.i, %.invoke
  %lpad.loopexit.split-lp165 = landingpad { ptr, i32 }
          cleanup
  br label %.body70

bb.p:                                             ; preds = %bb.o, %bb.n
  %.142 = phi i64 [ %i.dt, %bb.o ], [ %.041101, %bb.n ] ; 2 uses
  %.1 = phi float [ %i.dp, %bb.o ], [ %.040102, %bb.n ]
  %.0 = add nsw i64 %.0103.in, 1                  ; 2 uses
  %.not = icmp sgt i64 %.0, %.043
  br i1 %.not, label %._crit_edge, label %.lr.ph104, !llvm.loop !74

.body70:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i, %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i66
  %.pn55 = phi { ptr, i32 } [ %i.ct, %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i66 ], [ %i.as, %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %lpad.loopexit.split-lp165, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt13unordered_mapIllSt4hashIlESt8equal_toIlESaISt4pairIKllEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn55
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_mapIllSt4hashIlESt8equal_toIlESaISt4pairIKllEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !36 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #20
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !34
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #20
  br label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !80
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #21 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !79
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

_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !34
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !35   ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !36
  store ptr %i.w, ptr %3, align 8, !tbaa !36
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !35
  store ptr %3, ptr %i.x, align 8, !tbaa !36
  br label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38
  store ptr %i.z, ptr %3, align 8, !tbaa !36
  store ptr %3, ptr %i.y, align 8, !tbaa !38
  %i.aa = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !34
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !17
  %i.ae = urem i64 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ae
  store ptr %3, ptr %i.af, align 8, !tbaa !35
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !35
  br label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !80
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.f, align 8, !tbaa !80
  ret ptr %3
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !39

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !82
  br label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKllELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !39

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKllELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #19 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKllELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKllELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38   ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !38
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !36 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !17
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
end_hunk_0
