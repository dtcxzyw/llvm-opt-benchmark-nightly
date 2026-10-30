Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/update?download=true
inline.NumInlined: 1172
inline.NumDeleted: 523
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZSt4swapIN5vcpkg15OutdatedPackageEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_:bb.a
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !42
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !42
  %i.ax = load ptr, ptr %1, align 8, !tbaa !37    ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !38 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  %.not21.i.i.i = icmp eq ptr %1, %0
  br i1 %.not21.i.i.i, label %_ZN5vcpkg15OutdatedPackageaSEOS0_.exit, label %bb.f, !prof !39

bb.f:                                             ; preds = %bb.e
  switch i64 %i.bb, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.bd = load i8, ptr %i.ax, align 1, !tbaa !40
  store i8 %i.bd, ptr %i.c, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.c, ptr align 1 %i.ax, i64 %i.bb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.be = load i64, ptr %i.ba, align 8, !tbaa !38 ; 2 uses
  store i64 %i.be, ptr %i.k, align 8, !tbaa !38
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.be
  store i8 0, ptr %i.bf, align 1, !tbaa !40
  %.pre.i.i.i = load ptr, ptr %1, align 8, !tbaa !37
  br label %_ZN5vcpkg15OutdatedPackageaSEOS0_.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  store ptr %i.ax, ptr %0, align 8, !tbaa !37
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !38
  store i64 %i.bh, ptr %i.k, align 8, !tbaa !38
  %i.bi = load i64, ptr %i.ay, align 8, !tbaa !40
  store i64 %i.bi, ptr %i.c, align 8, !tbaa !40
  store ptr %i.ay, ptr %1, align 8, !tbaa !37
  br label %_ZN5vcpkg15OutdatedPackageaSEOS0_.exit

_ZN5vcpkg15OutdatedPackageaSEOS0_.exit:           ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %bb.i
  %i.bj = phi ptr [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.ax, %bb.e ], [ %i.ay, %bb.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i64 0, ptr %i.bk, align 8, !tbaa !38
  store i8 0, ptr %i.bj, align 1, !tbaa !40
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !159
  store i64 %i.bm, ptr %i.n, align 8, !tbaa !159
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bo = call noundef nonnull align 8 dereferenceable(80) ptr @_ZN5vcpkg11VersionDiffaSEOS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.q, ptr noundef nonnull align 8 dereferenceable(80) %i.bn) #21 ; 0 uses
  %i.bp = load ptr, ptr %1, align 8, !tbaa !37    ; 6 uses
  %i.bq = icmp eq ptr %i.bp, %i.ay
  %i.br = load ptr, ptr %2, align 8, !tbaa !37    ; 5 uses
  %i.bs = icmp eq ptr %i.br, %i.a                 ; 2 uses
  br i1 %i.bq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11: ; preds = %_ZN5vcpkg15OutdatedPackageaSEOS0_.exit
  br i1 %i.bs, label %bb.j, label %.thread.i.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i5: ; preds = %_ZN5vcpkg15OutdatedPackageaSEOS0_.exit
  br i1 %i.bs, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i6

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11
  %i.bt = load i64, ptr %i.l, align 8, !tbaa !38  ; 3 uses
  %i.bu = icmp ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  switch i64 %i.bt, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.bv = load i8, ptr %i.br, align 1, !tbaa !40
  store i8 %i.bv, ptr %i.bp, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr align 1 %i.br, i64 %i.bt, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9: ; preds = %bb.l, %bb.k, %bb.j
  %i.bw = load i64, ptr %i.l, align 8, !tbaa !38  ; 2 uses
  store i64 %i.bw, ptr %i.bk, align 8, !tbaa !38
  %i.bx = load ptr, ptr %1, align 8, !tbaa !37
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !40
  %.pre.i.i.i10 = load ptr, ptr %2, align 8, !tbaa !37
  br label %_ZN5vcpkg15OutdatedPackageaSEOS0_.exit13

.thread.i.i.i12:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11
  store ptr %i.br, ptr %1, align 8, !tbaa !37
  %i.bz = load <2 x i64>, ptr %i.l, align 8, !tbaa !40
  store <2 x i64> %i.bz, ptr %i.bk, align 8, !tbaa !40
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i6: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i5
  %i.ca = load i64, ptr %i.ay, align 8, !tbaa !40
  store ptr %i.br, ptr %1, align 8, !tbaa !37
  %i.cb = load <2 x i64>, ptr %i.l, align 8, !tbaa !40
  store <2 x i64> %i.cb, ptr %i.bk, align 8, !tbaa !40
  %.not.i.i.i7 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i7, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i6
  store ptr %i.bp, ptr %2, align 8, !tbaa !37
  store i64 %i.ca, ptr %i.a, align 8, !tbaa !40
  br label %_ZN5vcpkg15OutdatedPackageaSEOS0_.exit13

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i6, %.thread.i.i.i12
  store ptr %i.a, ptr %2, align 8, !tbaa !37
  br label %_ZN5vcpkg15OutdatedPackageaSEOS0_.exit13

_ZN5vcpkg15OutdatedPackageaSEOS0_.exit13:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9, %bb.m, %bb.n
  %i.cc = phi ptr [ %.pre.i.i.i10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9 ], [ %i.bp, %bb.m ], [ %i.a, %bb.n ]
  store i64 0, ptr %i.l, align 8, !tbaa !38
  store i8 0, ptr %i.cc, align 1, !tbaa !40
  %i.cd = load i64, ptr %i.m, align 8, !tbaa !159
  store i64 %i.cd, ptr %i.bl, align 8, !tbaa !159
  %i.ce = call noundef nonnull align 8 dereferenceable(80) ptr @_ZN5vcpkg11VersionDiffaSEOS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.bn, ptr noundef nonnull align 8 dereferenceable(80) %i.p) #21 ; 0 uses
  %i.cf = load ptr, ptr %i.ag, align 8, !tbaa !37 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ai
  br i1 %i.cg, label %_ZN5vcpkg7VersionD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN5vcpkg15OutdatedPackageaSEOS0_.exit13
  %i.ch = load i64, ptr %i.ai, align 8, !tbaa !40
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #24
  br label %_ZN5vcpkg7VersionD2Ev.exit.i.i

_ZN5vcpkg7VersionD2Ev.exit.i.i:                   ; preds = %_ZN5vcpkg15OutdatedPackageaSEOS0_.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.cj = load ptr, ptr %i.p, align 8, !tbaa !37  ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.r
  br i1 %i.ck, label %_ZN5vcpkg11VersionDiffD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i: ; preds = %_ZN5vcpkg7VersionD2Ev.exit.i.i
  %i.cl = load i64, ptr %i.r, align 8, !tbaa !40
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #24
  br label %_ZN5vcpkg11VersionDiffD2Ev.exit.i

_ZN5vcpkg11VersionDiffD2Ev.exit.i:                ; preds = %_ZN5vcpkg7VersionD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i
  %i.cn = load ptr, ptr %2, align 8, !tbaa !37    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.a
  br i1 %i.co, label %_ZN5vcpkg15OutdatedPackageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i14: ; preds = %_ZN5vcpkg11VersionDiffD2Ev.exit.i
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !40
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #24
  br label %_ZN5vcpkg15OutdatedPackageD2Ev.exit

_ZN5vcpkg15OutdatedPackageD2Ev.exit:              ; preds = %_ZN5vcpkg11VersionDiffD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5vcpkg15OutdatedPackageESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.vcpkg::OutdatedPackage", align 8 ; 21 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.020 = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %.not21 = icmp eq ptr %.sroa.0.020, %1
  br i1 %.not21, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not21.i.i.i = icmp eq ptr %3, %0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.0.023 = phi ptr [ %.sroa.0.020, %.lr.ph ], [ %.sroa.0.0, %bb.o ] ; 7 uses
  %.pn22 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.023, %bb.o ] ; 15 uses
  %i.q = call noundef zeroext i1 %2(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.0.023, ptr noundef nonnull align 8 dereferenceable(120) %0), !inline_history !11
  br i1 %i.q, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %i.b, ptr %3, align 8, !tbaa !69
  %i.r = load ptr, ptr %.sroa.0.023, align 8, !tbaa !37 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.pn22, i64 136 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.pn22, i64 128
  %i.v = load i64, ptr %i.u, align 8, !tbaa !38   ; 2 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN5vcpkg11PackageSpecC2EOS0_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  store ptr %i.r, ptr %3, align 8, !tbaa !37
  %i.y = load i64, ptr %i.s, align 8, !tbaa !40
  store i64 %i.y, ptr %i.b, align 8, !tbaa !40
  br label %_ZN5vcpkg11PackageSpecC2EOS0_.exit.i

_ZN5vcpkg11PackageSpecC2EOS0_.exit.i:             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.d
  %4 = getelementptr inbounds nuw i8, ptr %.pn22, i64 128 ; 2 uses
  %5 = load i64, ptr %4, align 8, !tbaa !38
  store i64 %5, ptr %i.c, align 8, !tbaa !38
  store ptr %i.s, ptr %.sroa.0.023, align 8, !tbaa !37
  store i64 0, ptr %4, align 8, !tbaa !38
  store i8 0, ptr %i.s, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %.pn22, i64 152
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !159
  store i64 %i.aa, ptr %i.d, align 8, !tbaa !159
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn22, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !69
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !37 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn22, i64 176 ; 5 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.e:                                             ; preds = %_ZN5vcpkg11PackageSpecC2EOS0_.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %.pn22, i64 168
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !38 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ah)
  %i.ai = add nuw nsw i64 %i.ag, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.ai, i1 false)
  br label %_ZN5vcpkg7VersionC2EOS0_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN5vcpkg11PackageSpecC2EOS0_.exit.i
  store ptr %i.ac, ptr %i.e, align 8, !tbaa !37
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !40
  store i64 %i.aj, ptr %i.f, align 8, !tbaa !40
  br label %_ZN5vcpkg7VersionC2EOS0_.exit.i.i

_ZN5vcpkg7VersionC2EOS0_.exit.i.i:                ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %6 = getelementptr inbounds nuw i8, ptr %.pn22, i64 168 ; 2 uses
  %7 = load i64, ptr %6, align 8, !tbaa !38
  store i64 %7, ptr %i.g, align 8, !tbaa !38
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !37
  store i64 0, ptr %6, align 8, !tbaa !38
  store i8 0, ptr %i.ad, align 8, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn22, i64 192
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !42
  store i32 %i.al, ptr %i.h, align 8, !tbaa !42
  %i.am = getelementptr inbounds nuw i8, ptr %.pn22, i64 200 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !69
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !37 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn22, i64 216 ; 5 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i

bb.f:                                             ; preds = %_ZN5vcpkg7VersionC2EOS0_.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn22, i64 208
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !38 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.at, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i: ; preds = %_ZN5vcpkg7VersionC2EOS0_.exit.i.i
  store ptr %i.an, ptr %i.i, align 8, !tbaa !37
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !40
  store i64 %i.au, ptr %i.j, align 8, !tbaa !40
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i, %bb.f
  %8 = getelementptr inbounds nuw i8, ptr %.pn22, i64 208 ; 2 uses
  %9 = load i64, ptr %8, align 8, !tbaa !38
  store i64 %9, ptr %i.k, align 8, !tbaa !38
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !37
  store i64 0, ptr %8, align 8, !tbaa !38
  store i8 0, ptr %i.ao, align 8, !tbaa !40
  %i.av = getelementptr inbounds nuw i8, ptr %.pn22, i64 232
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !42
  store i32 %i.aw, ptr %i.l, align 8, !tbaa !42
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn22, i64 240
  %i.ay = call noundef ptr @_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN5vcpkg15OutdatedPackageES5_EET0_T_S7_S6_(ptr noundef nonnull %0, ptr noundef nonnull %.sroa.0.023, ptr noundef nonnull %i.ax) ; 0 uses
  %i.az = load ptr, ptr %0, align 8, !tbaa !37    ; 6 uses
  %i.ba = icmp eq ptr %i.az, %i.m
  %i.bb = load ptr, ptr %3, align 8, !tbaa !37    ; 6 uses
  %i.bc = icmp eq ptr %i.bb, %i.b                 ; 2 uses
  br i1 %i.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9: ; preds = %bb.g
  br i1 %i.bc, label %bb.h, label %.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.g
  br i1 %i.bc, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9
  %i.bd = load i64, ptr %i.c, align 8, !tbaa !38  ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.be)
  br i1 %.not21.i.i.i, label %_ZN5vcpkg15OutdatedPackageaSEOS0_.exit, label %bb.i, !prof !39

bb.i:                                             ; preds = %bb.h
  switch i64 %i.bd, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.bf = load i8, ptr %i.bb, align 1, !tbaa !40
  store i8 %i.bf, ptr %i.az, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr align 1 %i.bb, i64 %i.bd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.bg = load i64, ptr %i.c, align 8, !tbaa !38  ; 2 uses
  store i64 %i.bg, ptr %i.n, align 8, !tbaa !38
  %i.bh = load ptr, ptr %0, align 8, !tbaa !37
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bg
  store i8 0, ptr %i.bi, align 1, !tbaa !40
  %.pre.i.i.i = load ptr, ptr %3, align 8, !tbaa !37
  br label %_ZN5vcpkg15OutdatedPackageaSEOS0_.exit

.thread.i.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9
  store ptr %i.bb, ptr %0, align 8, !tbaa !37
  %i.bj = load <2 x i64>, ptr %i.c, align 8, !tbaa !40
  store <2 x i64> %i.bj, ptr %i.n, align 8, !tbaa !40
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bk = load i64, ptr %i.m, align 8, !tbaa !40
  store ptr %i.bb, ptr %0, align 8, !tbaa !37
  %i.bl = load <2 x i64>, ptr %i.c, align 8, !tbaa !40
  store <2 x i64> %i.bl, ptr %i.n, align 8, !tbaa !40
  %.not.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i
  store ptr %i.az, ptr %3, align 8, !tbaa !37
  store i64 %i.bk, ptr %i.b, align 8, !tbaa !40
  br label %_ZN5vcpkg15OutdatedPackageaSEOS0_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i, %.thread.i.i.i
  store ptr %i.b, ptr %3, align 8, !tbaa !37
  br label %_ZN5vcpkg15OutdatedPackageaSEOS0_.exit

_ZN5vcpkg15OutdatedPackageaSEOS0_.exit:           ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %bb.l, %bb.m
  %i.bm = phi ptr [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.az, %bb.l ], [ %i.b, %bb.m ], [ %i.bb, %bb.h ]
  store i64 0, ptr %i.c, align 8, !tbaa !38
  store i8 0, ptr %i.bm, align 1, !tbaa !40
  %i.bn = load i64, ptr %i.d, align 8, !tbaa !159
  store i64 %i.bn, ptr %i.o, align 8, !tbaa !159
  %i.bo = call noundef nonnull align 8 dereferenceable(80) ptr @_ZN5vcpkg11VersionDiffaSEOS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(80) %i.e) #21 ; 0 uses
  %i.bp = load ptr, ptr %i.i, align 8, !tbaa !37  ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.j
  br i1 %i.bq, label %_ZN5vcpkg7VersionD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN5vcpkg15OutdatedPackageaSEOS0_.exit
  %i.br = load i64, ptr %i.j, align 8, !tbaa !40
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #24
  br label %_ZN5vcpkg7VersionD2Ev.exit.i.i

_ZN5vcpkg7VersionD2Ev.exit.i.i:                   ; preds = %_ZN5vcpkg15OutdatedPackageaSEOS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.bt = load ptr, ptr %i.e, align 8, !tbaa !37  ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.f
  br i1 %i.bu, label %_ZN5vcpkg11VersionDiffD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i: ; preds = %_ZN5vcpkg7VersionD2Ev.exit.i.i
  %i.bv = load i64, ptr %i.f, align 8, !tbaa !40
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #24
  br label %_ZN5vcpkg11VersionDiffD2Ev.exit.i

_ZN5vcpkg11VersionDiffD2Ev.exit.i:                ; preds = %_ZN5vcpkg7VersionD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i
  %i.bx = load ptr, ptr %3, align 8, !tbaa !37    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.b
  br i1 %i.by, label %_ZN5vcpkg15OutdatedPackageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10: ; preds = %_ZN5vcpkg11VersionDiffD2Ev.exit.i
  %i.bz = load i64, ptr %i.b, align 8, !tbaa !40
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #24
  br label %_ZN5vcpkg15OutdatedPackageD2Ev.exit

_ZN5vcpkg15OutdatedPackageD2Ev.exit:              ; preds = %_ZN5vcpkg11VersionDiffD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5vcpkg15OutdatedPackageESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_(ptr nonnull %.sroa.0.023, ptr %2)
  br label %bb.o

bb.o:                                             ; preds = %_ZN5vcpkg15OutdatedPackageD2Ev.exit, %bb.n
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 120 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !327

.loopexit:                                        ; preds = %bb.o, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5vcpkg15OutdatedPackageESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_(ptr %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.vcpkg::OutdatedPackage", align 8 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !69
  %i.b = load ptr, ptr %0, align 8, !tbaa !37     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !38   ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZN5vcpkg11PackageSpecC2EOS0_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %2, align 8, !tbaa !37
  %i.i = load i64, ptr %i.c, align 8, !tbaa !40
  store i64 %i.i, ptr %i.a, align 8, !tbaa !40
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !38
  br label %_ZN5vcpkg11PackageSpecC2EOS0_.exit.i

_ZN5vcpkg11PackageSpecC2EOS0_.exit.i:             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.b
  %i.j = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.f, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i64 %i.j, ptr %i.l, align 8, !tbaa !38
  store ptr %i.c, ptr %0, align 8, !tbaa !37
  store i64 0, ptr %i.k, align 8, !tbaa !38
  store i8 0, ptr %i.c, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !159
  store i64 %i.o, ptr %i.m, align 8, !tbaa !159
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !69
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !37   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %_ZN5vcpkg11PackageSpecC2EOS0_.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i64, ptr %i.v, align 8, !tbaa !38   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZN5vcpkg7VersionC2EOS0_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN5vcpkg11PackageSpecC2EOS0_.exit.i
  store ptr %i.s, ptr %i.p, align 8, !tbaa !37
  %i.z = load i64, ptr %i.t, align 8, !tbaa !40
  store i64 %i.z, ptr %i.r, align 8, !tbaa !40
  %.phi.trans.insert21 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre22 = load i64, ptr %.phi.trans.insert21, align 8, !tbaa !38
  br label %_ZN5vcpkg7VersionC2EOS0_.exit.i.i

_ZN5vcpkg7VersionC2EOS0_.exit.i.i:                ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.c
  %i.aa = phi i64 [ %.pre22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.w, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !38
  store ptr %i.t, ptr %i.q, align 8, !tbaa !37
end_hunk_0
