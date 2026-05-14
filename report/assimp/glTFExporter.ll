inline.NumInlined: 6973
inline.NumDeleted: 2254
begin_hunk_0_@_ZN4glTF5Image7SetDataEPhmRNS_5AssetE:bb.a
bb.i:                                             ; preds = %bb.f, %bb.d
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.i ], [ %i.bg, %bb.h ]
  %i.bi = load ptr, ptr %4, align 8               ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.j
  %i.bl = load i64, ptr %i.bj, align 8
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.pn

_ZNK10glTFCommon3RefIN4glTF6BufferEEcvbEv.exit.thread: ; preds = %bb.a, %_ZNK10glTFCommon3RefIN4glTF6BufferEEcvbEv.exit
  %i.bn = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %2) #33 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr align 1 %1, i64 %2, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  store ptr %i.bn, ptr %i.bo, align 8
  %.not.i.i25 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i25, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %_ZNK10glTFCommon3RefIN4glTF6BufferEEcvbEv.exit.thread
  tail call void @_ZdaPv(ptr noundef nonnull %i.bp) #31
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit: ; preds = %_ZNK10glTFCommon3RefIN4glTF6BufferEEcvbEv.exit.thread, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %2, ptr %i.bq, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_Z12FindMeshNodeRN10glTFCommon3RefIN4glTF4NodeEEES4_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = zext i32 %i.c to i64
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 4
  %.not = icmp eq ptr %i.j, %i.k
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %i.r = load ptr, ptr %2, align 8
  br label %bb.b

.preheader:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not34 = icmp eq ptr %i.u, %i.v
  br i1 %.not34, label %.loopexit, label %.lr.ph31

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread
  %i.w = phi i64 [ 0, %.lr.ph ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread ]
  %.01829 = phi i32 [ 0, %.lr.ph ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread ]
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = zext i32 %i.aa to i64
  %i.ac = load ptr, ptr %i.y, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i64, ptr %i.af, align 8            ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.q) ; 2 uses
  %i.ah = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %bcmp = tail call i32 @bcmp(ptr %i.r, ptr %i.aj, i64 %.sroa.speculated.i)
  %.not.i = icmp eq i32 %bcmp, 0
  %i.ak = icmp eq i64 %i.q, %i.ag
  %or.cond = and i1 %i.ak, %.not.i
  br i1 %or.cond, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit: ; preds = %bb.b
  %.old = icmp eq i64 %i.q, %i.ag
  br i1 %.old, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread

.thread:                                          ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %0, i64 12, i1 false)
  br label %.loopexit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit
  %i.al = add i32 %.01829, 1                      ; 2 uses
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = icmp ugt i64 %i.o, %i.am
  br i1 %i.an, label %bb.b, label %.preheader, !llvm.loop !123

bb.c:                                             ; preds = %.lr.ph31
  %i.ao = add i32 %.030, 1                        ; 2 uses
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = load ptr, ptr %0, align 8
  %i.ar = load i32, ptr %i.b, align 8
  %i.as = zext i32 %i.ar to i64
  %i.at = load ptr, ptr %i.aq, align 8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.as
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 4
  %i.be = icmp ugt i64 %i.bd, %i.ap
  br i1 %i.be, label %.lr.ph31, label %.loopexit, !llvm.loop !124

.lr.ph31:                                         ; preds = %.preheader, %bb.c
  %i.bf = phi ptr [ %i.az, %bb.c ], [ %i.v, %.preheader ]
  %i.bg = phi i64 [ %i.ap, %bb.c ], [ 0, %.preheader ]
  %.030 = phi i32 [ %i.ao, %bb.c ], [ 0, %.preheader ]
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = tail call noundef zeroext i1 @_Z12FindMeshNodeRN10glTFCommon3RefIN4glTF4NodeEEES4_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(12) %i.bh, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 3 uses
  br i1 %i.bi, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %.lr.ph31, %.preheader, %.thread
  %.2 = phi i1 [ true, %.thread ], [ false, %.preheader ], [ %i.bi, %.lr.ph31 ], [ %i.bi, %bb.c ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, i32 } @_Z21FindSkeletonRootJointRN10glTFCommon3RefIN4glTF4SkinEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = zext i32 %i.c to i64
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.05.0.copyload = load ptr, ptr %i.i, align 8
  %.sroa.67.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8
  %.pre = load ptr, ptr %.sroa.05.0.copyload, align 8
  %.phi.trans.insert = zext i32 %.sroa.67.0.copyload to i64
  %.phi.trans.insert12 = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.phi.trans.insert
  %.pre13 = load ptr, ptr %.phi.trans.insert12, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.j = phi ptr [ %.pre13, %bb.a ], [ %i.o, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 344
  %.sroa.05.0.copyload6 = load ptr, ptr %i.k, align 8 ; 2 uses
  %.sroa.67.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.j, i64 352
  %.sroa.67.0.copyload9 = load i32, ptr %.sroa.67.0..sroa_idx8, align 8 ; 2 uses
  %i.l = zext i32 %.sroa.67.0.copyload9 to i64
  %i.m = load ptr, ptr %.sroa.05.0.copyload6, align 8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 320
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.b, !llvm.loop !56

bb.c:                                             ; preds = %bb.b
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.05.0.copyload6, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.67.0.copyload9, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z10ExportSkinRN4glTF5AssetEPK6aiMeshRN10glTFCommon3RefINS_4MeshEEERNS6_INS_6BufferEEERNS6_INS_4SkinEEERSt6vectorI12aiMatrix4x4tIfESaISI_EE(ptr noundef nonnull align 8 dereferenceable(2032) %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(12) %4, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %5) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6144 = alloca { float, float, float, float }, align 8 ; 5 uses
  %.sroa.8151 = alloca { float, float, float, float }, align 8 ; 5 uses
  %.sroa.10 = alloca { float, float, float, float }, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = shl nuw nsw i64 %i.f, 4                  ; 4 uses
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #33 ; 4 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #33 ; 4 uses
  %i.j = shl nuw nsw i64 %i.f, 2                  ; 2 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #33 ; 3 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.lr.ph206, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.k, i8 0, i64 %i.j, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.h, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.i, i8 0, i64 %i.g, i1 false)
  br label %.lr.ph206

.lr.ph206:                                        ; preds = %bb.b, %.lr.ph.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.c

._crit_edge207:                                   ; preds = %._crit_edge204
  %.pre220 = load i32, ptr %i.d, align 4
  %i.q = load ptr, ptr %2, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i32, ptr %i.r, align 8
  %i.t = zext i32 %i.s to i64
  %i.u = load ptr, ptr %i.q, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.y = load ptr, ptr %i.x, align 8              ; 6 uses
  %i.z = load ptr, ptr %4, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = zext i32 %i.ab to i64
  %i.ad = load ptr, ptr %i.z, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ac
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = tail call { ptr, i32 } @_Z10ExportDataRN4glTF5AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEjPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE(ptr noundef nonnull align 8 dereferenceable(2032) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %.pre220, ptr noundef nonnull %i.h, i32 noundef 3, i32 noundef 3, i32 noundef 5126, i32 noundef 0) ; 2 uses
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.ah, 0 ; 5 uses
  %.fca.1.extract2 = extractvalue { ptr, i32 } %i.ah, 1 ; 3 uses
  %.not.i = icmp eq ptr %.fca.0.extract1, null
  br i1 %.not.i, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EE9push_backERKS4_.exit, label %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit

_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit: ; preds = %._crit_edge207
  %i.ai = zext i32 %.fca.1.extract2 to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %.fca.0.extract1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = load ptr, ptr %.fca.0.extract1, align 8
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 3
  %i.aq = icmp ugt i64 %i.ap, %i.ai
  br i1 %i.aq, label %bb.r, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EE9push_backERKS4_.exit

bb.c:                                             ; preds = %.lr.ph206, %._crit_edge204
  %indvars.iv216 = phi i64 [ 0, %.lr.ph206 ], [ %indvars.iv.next217, %._crit_edge204 ] ; 2 uses
  %i.ar = load ptr, ptr %i.l, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv216
  %i.at = load ptr, ptr %i.as, align 8            ; 10 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = tail call { ptr, i32 } @_ZN4glTF8LazyDictINS_4NodeEE3GetEPKc(ptr noundef nonnull align 8 dereferenceable(120) %i.m, ptr noundef nonnull %i.au) ; 2 uses
  %.fca.0.extract22 = extractvalue { ptr, i32 } %i.av, 0 ; 4 uses
  %.fca.1.extract23 = extractvalue { ptr, i32 } %i.av, 1 ; 3 uses
  %i.aw = zext i32 %.fca.1.extract23 to i64       ; 2 uses
  %i.ax = load ptr, ptr %.fca.0.extract22, align 8
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.aw
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 312
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
  %i.bc = load ptr, ptr %4, align 8
  %i.bd = load i32, ptr %i.n, align 8
  %i.be = zext i32 %i.bd to i64
  %i.bf = load ptr, ptr %i.bc, align 8
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.be
  %i.bh = load ptr, ptr %i.bg, align 8            ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 160 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 168 ; 4 uses
  %i.bk = load ptr, ptr %i.bj, align 8            ; 7 uses
  %i.bl = load ptr, ptr %i.bi, align 8            ; 6 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 4 uses
  %i.bp = ashr exact i64 %i.bo, 4                 ; 3 uses
  %.not209 = icmp eq ptr %i.bk, %i.bl             ; 2 uses
  br i1 %.not209, label %.thread, label %.lr.ph192

.lr.ph192:                                        ; preds = %bb.c
  %i.bq = load ptr, ptr %.fca.0.extract22, align 8
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.aw
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 320
  %i.bu = load i64, ptr %i.bt, align 8            ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 312
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread
  br i1 %spec.select249, label %bb.e, label %bb.n

bb.d:                                             ; preds = %.lr.ph192, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread
  %i.bw = phi i64 [ 0, %.lr.ph192 ], [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread ]
  %.082191 = phi i32 [ 0, %.lr.ph192 ], [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread ] ; 2 uses
  %.083190 = phi i1 [ true, %.lr.ph192 ], [ %spec.select249, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread ] ; 2 uses
  %.085189 = phi i32 [ 0, %.lr.ph192 ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bw ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = zext i32 %i.ca to i64
  %i.cc = load ptr, ptr %i.by, align 8
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 320
  %i.cg = load i64, ptr %i.cf, align 8            ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 %i.cg) ; 2 uses
  %i.ch = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.ch, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %bb.d
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 312
  %i.cj = load ptr, ptr %i.bv, align 8
  %i.ck = load ptr, ptr %i.ci, align 8
  %bcmp = tail call i32 @bcmp(ptr %i.ck, ptr %i.cj, i64 %.sroa.speculated.i)
  %.not.i90 = icmp eq i32 %bcmp, 0
  br i1 %.not.i90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit: ; preds = %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  %i.cl = icmp eq i64 %i.cg, %i.bu
  %cond.fr = freeze i1 %i.cl                      ; 2 uses
  %not..0.i = xor i1 %cond.fr, true
  %spec.select = select i1 %not..0.i, i1 %.083190, i1 false
  %spec.select256 = select i1 %cond.fr, i32 %.085189, i32 %.082191
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  %spec.select249 = phi i1 [ %.083190, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i ], [ %spec.select, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit ] ; 2 uses
  %i.cm = phi i32 [ %.082191, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i ], [ %spec.select256, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit ] ; 2 uses
  %i.cn = add i32 %.085189, 1                     ; 2 uses
  %i.co = zext i32 %i.cn to i64                   ; 2 uses
  %i.cp = icmp ugt i64 %i.bp, %i.co
  br i1 %i.cp, label %bb.d, label %._crit_edge, !llvm.loop !125

bb.e:                                             ; preds = %._crit_edge
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bh, i64 176 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8
  %.not.i91 = icmp eq ptr %i.bk, %i.cr
  br i1 %.not.i91, label %bb.g, label %bb.f

.thread:                                          ; preds = %bb.c
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bh, i64 176 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8
  %.not.i91250 = icmp eq ptr %i.bk, %i.ct
  br i1 %.not.i91250, label %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  store ptr %.fca.0.extract22, ptr %i.bk, align 8
  %.sroa.8168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 %.fca.1.extract23, ptr %.sroa.8168.0..sroa_idx, align 8
  %i.cu = load ptr, ptr %i.bj, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store ptr %i.cv, ptr %i.bj, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backERKS4_.exit

bb.g:                                             ; preds = %bb.e
  %i.cw = icmp eq i64 %i.bo, 9223372036854775792
  br i1 %i.cw, label %bb.h, label %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #34
  unreachable

_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %.thread, %bb.g
  %i.cx = phi ptr [ %i.cq, %bb.g ], [ %i.cs, %.thread ]
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.cy = add nuw nsw i64 %.sroa.speculated.i.i.i, %i.bp ; 2 uses
  %i.cz = shl nuw nsw i64 %i.cy, 4
  %i.da = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #33 ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.bo ; 2 uses
  store ptr %.fca.0.extract22, ptr %i.db, align 8
  %.sroa.8168.0..sroa_idx169 = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i32 %.fca.1.extract23, ptr %.sroa.8168.0..sroa_idx169, align 8
  br i1 %.not209, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i ], [ %i.da, %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i ], [ %i.bl, %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !126
  %i.dc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dc, %i.bk
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !29

_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.da, %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.dd, %.lr.ph.i.i.i.i.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bo) #31
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.da, ptr %i.bi, align 8
  store ptr %i.de, ptr %i.bj, align 8
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %i.cy
  store ptr %i.df, ptr %i.cx, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.f, %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6144)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8151)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.at, i64 1056
  %.sroa.0141.0.copyload = load float, ptr %i.dg, align 4 ; 2 uses
  %.sroa.6144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 1060
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6144, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6144.0..sroa_idx, i64 16, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 1076
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4 ; 2 uses
  %.sroa.8151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 1080
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8151, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8151.0..sroa_idx, i64 16, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 1096
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 1100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.0..sroa_idx, i64 16, i1 false)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 1116
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4 ; 2 uses
  %i.dh = load ptr, ptr %i.o, align 8             ; 11 uses
  %i.di = load ptr, ptr %i.p, align 8
  %.not.i92 = icmp eq ptr %i.dh, %i.di
  br i1 %.not.i92, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backERKS4_.exit
  store float %.sroa.0141.0.copyload, ptr %i.dh, align 4
  %.sroa.6144.0..sroa_idx145 = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6144.0..sroa_idx145, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6144, i64 16, i1 false)
  %.sroa.7.0..sroa_idx147 = getelementptr inbounds nuw i8, ptr %i.dh, i64 20
  store float %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx147, align 4
  %.sroa.8151.0..sroa_idx152 = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8151.0..sroa_idx152, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8151, i64 16, i1 false)
  %.sroa.9.0..sroa_idx154 = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  store float %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa_idx154, align 4
  %.sroa.10.0..sroa_idx158 = getelementptr inbounds nuw i8, ptr %i.dh, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.0..sroa_idx158, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10, i64 16, i1 false)
  %.sroa.11.0..sroa_idx160 = getelementptr inbounds nuw i8, ptr %i.dh, i64 60
  store float %.sroa.11.0.copyload, ptr %.sroa.11.0..sroa_idx160, align 4
  %i.dj = load ptr, ptr %i.o, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 64 ; 2 uses
  store ptr %i.dk, ptr %i.o, align 8
  %.pre = load ptr, ptr %5, align 8
  br label %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE9push_backERKS1_.exit

bb.k:                                             ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backERKS4_.exit
  %i.dl = load ptr, ptr %5, align 8               ; 5 uses
  %i.dm = ptrtoint ptr %i.dh to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn                    ; 4 uses
  %i.dp = icmp eq i64 %i.do, 9223372036854775744
  br i1 %i.dp, label %bb.l, label %_ZNKSt6vectorI12aiMatrix4x4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #34
  unreachable

_ZNKSt6vectorI12aiMatrix4x4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.dq = ashr exact i64 %i.do, 6                 ; 3 uses
  %.sroa.speculated.i.i.i93 = tail call i64 @llvm.umax.i64(i64 %i.dq, i64 1)
  %i.dr = add nsw i64 %.sroa.speculated.i.i.i93, %i.dq ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.dq
  %i.dt = tail call i64 @llvm.umin.i64(i64 %i.dr, i64 144115188075855871)
  %i.du = select i1 %i.ds, i64 144115188075855871, i64 %i.dt ; 3 uses
  %.not.i.i.i94 = icmp ne i64 %i.du, 0
  tail call void @llvm.assume(i1 %.not.i.i.i94)
  %i.dv = shl nuw nsw i64 %i.du, 6
  %i.dw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dv) #33 ; 6 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.do ; 7 uses
  store float %.sroa.0141.0.copyload, ptr %i.dx, align 4
  %.sroa.6144.0..sroa_idx146 = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6144.0..sroa_idx146, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6144, i64 16, i1 false)
  %.sroa.7.0..sroa_idx149 = getelementptr inbounds nuw i8, ptr %i.dx, i64 20
  store float %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx149, align 4
  %.sroa.8151.0..sroa_idx153 = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8151.0..sroa_idx153, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8151, i64 16, i1 false)
  %.sroa.9.0..sroa_idx156 = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  store float %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa_idx156, align 4
  %.sroa.10.0..sroa_idx159 = getelementptr inbounds nuw i8, ptr %i.dx, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.0..sroa_idx159, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10, i64 16, i1 false)
  %.sroa.11.0..sroa_idx162 = getelementptr inbounds nuw i8, ptr %i.dx, i64 60
  store float %.sroa.11.0.copyload, ptr %.sroa.11.0..sroa_idx162, align 4
  %.not10.i.i.i.i.i95 = icmp eq ptr %i.dl, %i.dh
  br i1 %.not10.i.i.i.i.i95, label %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i96

.lr.ph.i.i.i.i.i96:                               ; preds = %_ZNKSt6vectorI12aiMatrix4x4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i96
  %.012.i.i.i.i.i97 = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i96 ], [ %i.dw, %_ZNKSt6vectorI12aiMatrix4x4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i98 = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i96 ], [ %i.dl, %_ZNKSt6vectorI12aiMatrix4x4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.012.i.i.i.i.i97, ptr noundef nonnull align 4 dereferenceable(64) %.0911.i.i.i.i.i98, i64 64, i1 false), !alias.scope !130
  %i.dy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i98, i64 64 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i97, i64 64 ; 2 uses
  %.not.i.i.i.i.i99 = icmp eq ptr %i.dy, %i.dh
  br i1 %.not.i.i.i.i.i99, label %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i96, !llvm.loop !134

_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i96, %_ZNKSt6vectorI12aiMatrix4x4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i100 = phi ptr [ %i.dw, %_ZNKSt6vectorI12aiMatrix4x4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.dz, %.lr.ph.i.i.i.i.i96 ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i100, i64 64 ; 2 uses
  %.not.i23.i.i101 = icmp eq ptr %i.dl, null
  br i1 %.not.i23.i.i101, label %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef %i.do) #31
  br label %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.dw, ptr %5, align 8
  store ptr %i.ea, ptr %i.o, align 8
  %i.eb = getelementptr inbounds nuw [64 x i8], ptr %i.dw, i64 %i.du
  store ptr %i.eb, ptr %i.p, align 8
  br label %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.j, %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ec = phi ptr [ %.pre, %bb.j ], [ %i.dw, %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.ed = phi ptr [ %i.dk, %bb.j ], [ %i.ea, %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.ec to i64
  %i.eg = sub i64 %i.ee, %i.ef
  %i.eh = lshr exact i64 %i.eg, 6
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = add i32 %i.ei, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6144)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8151)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE9push_backERKS1_.exit, %._crit_edge
  %.2 = phi i32 [ %i.ej, %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE9push_backERKS1_.exit ], [ %i.cm, %._crit_edge ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.at, i64 1028
  %i.el = load i32, ptr %i.ek, align 4            ; 2 uses
  %.not210 = icmp eq i32 %i.el, 0
  br i1 %.not210, label %._crit_edge204, label %.lr.ph203

.lr.ph203:                                        ; preds = %bb.n
  %i.em = getelementptr inbounds nuw i8, ptr %i.at, i64 1048
  %i.en = uitofp i32 %.2 to float
  %.pre219 = load ptr, ptr %i.em, align 8
  %i.eo = zext i32 %i.el to i64
  br label %bb.o

._crit_edge204:                                   ; preds = %bb.q, %bb.n
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 1 ; 2 uses
  %i.ep = load i32, ptr %i.a, align 8
  %i.eq = zext i32 %i.ep to i64
  %i.er = icmp samesign ult i64 %indvars.iv.next217, %i.eq
  br i1 %i.er, label %bb.c, label %._crit_edge207, !llvm.loop !135

bb.o:                                             ; preds = %.lr.ph203, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph203 ], [ %indvars.iv.next, %bb.q ] ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.pre219, i64 %indvars.iv ; 2 uses
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = zext i32 %i.et to i64                   ; 3 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.eu ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4            ; 3 uses
  %i.ex = icmp sgt i32 %i.ew, 3
  br i1 %i.ex, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.ez = load float, ptr %i.ey, align 4
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.eu
  %i.fb = sext i32 %i.ew to i64                   ; 2 uses
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %i.fb
  store float %i.en, ptr %i.fc, align 4
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.eu
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %i.fb
  store float %i.ez, ptr %i.fe, align 4
  %i.ff = add nsw i32 %i.ew, 1
  store i32 %i.ff, ptr %i.ev, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fg = icmp samesign ult i64 %indvars.iv.next, %i.eo
  br i1 %i.fg, label %bb.o, label %._crit_edge204, !llvm.loop !136

bb.r:                                             ; preds = %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit
  %i.fh = getelementptr inbounds i8, ptr %i.y, i64 -104 ; 2 uses
  %i.fi = getelementptr inbounds i8, ptr %i.y, i64 -96 ; 4 uses
  %i.fj = load ptr, ptr %i.fi, align 8            ; 6 uses
  %i.fk = getelementptr inbounds i8, ptr %i.y, i64 -88 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8
  %.not.i102 = icmp eq ptr %i.fj, %i.fl
  br i1 %.not.i102, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %.fca.0.extract1, ptr %i.fj, align 8
  %.sroa.6135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.6135.0..sroa_idx, align 8
  %i.fm = load ptr, ptr %i.fi, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store ptr %i.fn, ptr %i.fi, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EE9push_backERKS4_.exit

bb.t:                                             ; preds = %bb.r
  %i.fo = load ptr, ptr %i.fh, align 8            ; 5 uses
  %i.fp = ptrtoint ptr %i.fj to i64
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = sub i64 %i.fp, %i.fq                    ; 4 uses
  %i.fs = icmp eq i64 %i.fr, 9223372036854775792
  br i1 %i.fs, label %bb.u, label %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #34
  unreachable

_ZNKSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.t
  %i.ft = ashr exact i64 %i.fr, 4                 ; 3 uses
  %.sroa.speculated.i.i.i103 = tail call i64 @llvm.umax.i64(i64 %i.ft, i64 1)
  %i.fu = add nsw i64 %.sroa.speculated.i.i.i103, %i.ft ; 2 uses
  %i.fv = icmp ult i64 %i.fu, %i.ft
  %i.fw = tail call i64 @llvm.umin.i64(i64 %i.fu, i64 576460752303423487)
  %i.fx = select i1 %i.fv, i64 576460752303423487, i64 %i.fw ; 3 uses
  %.not.i.i.i104 = icmp ne i64 %i.fx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i104)
  %i.fy = shl nuw nsw i64 %i.fx, 4
  %i.fz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fy) #33 ; 5 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.fr ; 2 uses
  store ptr %.fca.0.extract1, ptr %i.ga, align 8
  %.sroa.6135.0..sroa_idx136 = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.6135.0..sroa_idx136, align 8
  %.not10.i.i.i.i.i105 = icmp eq ptr %i.fo, %i.fj
  br i1 %.not10.i.i.i.i.i105, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i106

.lr.ph.i.i.i.i.i106:                              ; preds = %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i106
  %.012.i.i.i.i.i107 = phi ptr [ %i.gc, %.lr.ph.i.i.i.i.i106 ], [ %i.fz, %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i108 = phi ptr [ %i.gb, %.lr.ph.i.i.i.i.i106 ], [ %i.fo, %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i107, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i108, i64 16, i1 false), !alias.scope !137
  %i.gb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i108, i64 16 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i107, i64 16 ; 2 uses
  %.not.i.i.i.i.i109 = icmp eq ptr %i.gb, %i.fj
  br i1 %.not.i.i.i.i.i109, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i106, !llvm.loop !40

_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i106, %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i110 = phi ptr [ %i.fz, %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.gc, %.lr.ph.i.i.i.i.i106 ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i110, i64 16
  %.not.i23.i.i111 = icmp eq ptr %i.fo, null
  br i1 %.not.i23.i.i111, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fo, i64 noundef %i.fr) #31
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.v, %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.fz, ptr %i.fh, align 8
  store ptr %i.gd, ptr %i.fi, align 8
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %i.fx
  store ptr %i.ge, ptr %i.fk, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EE9push_backERKS4_.exit: ; preds = %._crit_edge207, %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.s, %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit
  %i.gf = load ptr, ptr %4, align 8
  %i.gg = load i32, ptr %i.aa, align 8
  %i.gh = zext i32 %i.gg to i64
  %i.gi = load ptr, ptr %i.gf, align 8
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.gh
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load i32, ptr %i.d, align 4
  %i.gn = tail call { ptr, i32 } @_Z10ExportDataRN4glTF5AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEjPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE(ptr noundef nonnull align 8 dereferenceable(2032) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.gl, ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %i.gm, ptr noundef nonnull %i.i, i32 noundef 3, i32 noundef 3, i32 noundef 5126, i32 noundef 0) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.gn, 0 ; 5 uses
  %.fca.1.extract = extractvalue { ptr, i32 } %i.gn, 1 ; 3 uses
  %.not.i112 = icmp eq ptr %.fca.0.extract, null
  br i1 %.not.i112, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EE9push_backERKS4_.exit127, label %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit113

_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit113: ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EE9push_backERKS4_.exit
  %i.go = zext i32 %.fca.1.extract to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = load ptr, ptr %.fca.0.extract, align 8
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = sub i64 %i.gs, %i.gt
  %i.gv = ashr exact i64 %i.gu, 3
  %i.gw = icmp ugt i64 %i.gv, %i.go
  br i1 %i.gw, label %bb.w, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EE9push_backERKS4_.exit127

bb.w:                                             ; preds = %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit113
  %i.gx = getelementptr inbounds i8, ptr %i.y, i64 -56 ; 2 uses
  %i.gy = getelementptr inbounds i8, ptr %i.y, i64 -48 ; 4 uses
  %i.gz = load ptr, ptr %i.gy, align 8            ; 6 uses
  %i.ha = getelementptr inbounds i8, ptr %i.y, i64 -40 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8
  %.not.i114 = icmp eq ptr %i.gz, %i.hb
  br i1 %.not.i114, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr %.fca.0.extract, ptr %i.gz, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.6.0..sroa_idx, align 8
  %i.hc = load ptr, ptr %i.gy, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  store ptr %i.hd, ptr %i.gy, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EE9push_backERKS4_.exit127

bb.y:                                             ; preds = %bb.w
  %i.he = load ptr, ptr %i.gx, align 8            ; 5 uses
  %i.hf = ptrtoint ptr %i.gz to i64
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = sub i64 %i.hf, %i.hg                    ; 4 uses
  %i.hi = icmp eq i64 %i.hh, 9223372036854775792
  br i1 %i.hi, label %bb.z, label %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i115

bb.z:                                             ; preds = %bb.y
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #34
  unreachable

_ZNKSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i115: ; preds = %bb.y
  %i.hj = ashr exact i64 %i.hh, 4                 ; 3 uses
  %.sroa.speculated.i.i.i116 = tail call i64 @llvm.umax.i64(i64 %i.hj, i64 1)
  %i.hk = add nsw i64 %.sroa.speculated.i.i.i116, %i.hj ; 2 uses
  %i.hl = icmp ult i64 %i.hk, %i.hj
  %i.hm = tail call i64 @llvm.umin.i64(i64 %i.hk, i64 576460752303423487)
  %i.hn = select i1 %i.hl, i64 576460752303423487, i64 %i.hm ; 3 uses
  %.not.i.i.i117 = icmp ne i64 %i.hn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i117)
  %i.ho = shl nuw nsw i64 %i.hn, 4
  %i.hp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ho) #33 ; 5 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hh ; 2 uses
  store ptr %.fca.0.extract, ptr %i.hq, align 8
  %.sroa.6.0..sroa_idx129 = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.6.0..sroa_idx129, align 8
  %.not10.i.i.i.i.i118 = icmp eq ptr %i.he, %i.gz
  br i1 %.not10.i.i.i.i.i118, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i123, label %.lr.ph.i.i.i.i.i119
end_hunk_0
