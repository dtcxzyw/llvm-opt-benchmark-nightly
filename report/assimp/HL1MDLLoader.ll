Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/HL1MDLLoader?download=true
inline.NumInlined: 2805
inline.NumDeleted: 972
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader21read_bone_controllersEv:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.ag

bb.ad:                                            ; preds = %.thread28.i79
  %i.ib = landingpad { ptr, i32 }
          cleanup
  %i.ic = load ptr, ptr %4, align 8               ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.bl
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %bb.ad
  %i.ie = load i64, ptr %i.bl, align 8
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.if) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.ag

bb.ae:                                            ; preds = %.thread28.i93
  %i.ig = landingpad { ptr, i32 }
          cleanup
  %i.ih = load ptr, ptr %5, align 8               ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %i.bn
  br i1 %i.ii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %bb.ae
  %i.ij = load i64, ptr %i.bn, align 8
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.ik) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ag

bb.af:                                            ; preds = %.thread28.i108
  %i.il = landingpad { ptr, i32 }
          cleanup
  %i.im = load ptr, ptr %6, align 8               ; 2 uses
  %i.in = icmp eq ptr %i.im, %i.bp
  br i1 %i.in, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %bb.af
  %i.io = load i64, ptr %i.bp, align 8
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.ip) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ag

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit, %bb.a
  ret void

bb.ag:                                            ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %.pn40.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %i.hq, %bb.aa ], [ %i.il, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ], [ %i.ig, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125 ], [ %i.ib, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122 ], [ %i.hw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %i.hr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ]
  resume { ptr, i32 } %.pn40.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3MDL8HalfLife12HL1MDLLoader16read_global_infoEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(320) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.e = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.f, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 17, ptr %i.d, align 8
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %bb.bn    ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.g, ptr %1, align 8
  %i.h = load i64, ptr %i.d, align 8              ; 3 uses
  store i64 %i.h, ptr %i.f, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.g, ptr noundef nonnull align 1 dereferenceable(17) @.str.63, i64 17, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.h, ptr %i.i, align 8
  %i.j = load ptr, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  store i8 0, ptr %i.k, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.bo

bb.a:                                             ; preds = %.noexc
  %i.l = load ptr, ptr %1, align 8                ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.f
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.n = load i64, ptr %i.f, align 8
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  %.not.i = icmp eq ptr %i.r, %i.t
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.e, ptr %i.r, align 8
  %i.u = load ptr, ptr %i.q, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.v, ptr %i.q, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.x = ptrtoint ptr %i.r to i64
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.z = sub i64 %i.x, %i.y                       ; 5 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775800
  br i1 %i.aa, label %bb.d, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #25
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.ab = ashr exact i64 %i.z, 3                  ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = call i64 @llvm.umin.i64(i64 %i.ac, i64 1152921504606846975)
  %i.af = select i1 %i.ad, i64 1152921504606846975, i64 %i.ae ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.af, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #26 ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.z ; 2 uses
  store ptr %i.e, ptr %i.ai, align 8
  %i.aj = icmp sgt i64 %i.z, 0
  br i1 %i.aj, label %bb.e, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.w, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.not.i17.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.al = load ptr, ptr %i.s, align 8
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.an) #24
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.ah, ptr %i.p, align 8
  store ptr %i.ak, ptr %i.q, align 8
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.ao, ptr %i.s, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !22
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 9
  %i.as = load i8, ptr %i.ar, align 1, !range !23, !noundef !22
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = select i1 %i.at, i32 16, i32 11         ; 2 uses
  %i.av = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 20 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 17 uses
  store i32 %i.au, ptr %i.av, align 8
  %i.ax = zext nneg i32 %i.au to i64              ; 3 uses
  %i.ay = mul nuw nsw i64 %i.ax, 1028             ; 3 uses
  %i.az = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ay) #26 ; 2 uses
  %18 = trunc nuw nsw i64 %i.ay to i16
  %.lhs.trunc = add nsw i16 %18, -1028
  %19 = urem i16 %.lhs.trunc, 1028
  %.zext = zext nneg i16 %19 to i64
  %i.ba = sub nuw nsw i64 %i.ay, %.zext
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.az, i8 0, i64 %i.ba, i1 false)
  store ptr %i.az, ptr %i.aw, align 8
  %i.bb = shl nuw nsw i64 %i.ax, 4                ; 2 uses
  %i.bc = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bb) #26 ; 4 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.ax
  %i.be = add nsw i64 %i.bb, -16                  ; 2 uses
  %i.bf = lshr exact i64 %i.be, 4
  %i.bg = add nuw nsw i64 %i.bf, 1
  %xtraiter = and i64 %i.bg, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit, %.prol.preheader
  %i.bh = phi ptr [ %i.bj, %.prol.preheader ], [ %i.bc, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ]
  store i32 10, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr null, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !286

.prol.loopexit:                                   ; preds = %.prol.preheader, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit
  %.unr = phi ptr [ %i.bc, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ], [ %i.bj, %.prol.preheader ]
  %i.bk = icmp ult i64 %i.be, 112
  br i1 %i.bk, label %_ZN10aiMetadata5AllocEj.exit, label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit.new

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit.new: ; preds = %.prol.loopexit, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit.new
  %i.bl = phi ptr [ %i.cb, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 10, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr null, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i32 10, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store ptr null, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store i32 10, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  store ptr null, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  store i32 10, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  store ptr null, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  store i32 10, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  store ptr null, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 80
  store i32 10, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 88
  store ptr null, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  store i32 10, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 104
  store ptr null, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 112
  store i32 10, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 120
  store ptr null, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 128 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bd
  br i1 %i.cc, label %_ZN10aiMetadata5AllocEj.exit, label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit.new

_ZN10aiMetadata5AllocEj.exit:                     ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit.new, %.prol.loopexit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 49 uses
  store ptr %i.bc, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 1136
  store ptr %i.av, ptr %i.ce, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.cf, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.cf, ptr noundef nonnull align 1 dereferenceable(7) @.str.64, i64 7, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 7, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 23
  store i8 0, ptr %i.ch, align 1
  %i.ci = load i32, ptr %i.av, align 8
  %.not.i77.not = icmp eq i32 %i.ci, 0
  br i1 %.not.i77.not, label %_ZN10aiMetadata3SetIiEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZN10aiMetadata5AllocEj.exit
  %i.cj = load ptr, ptr %i.aw, align 8            ; 3 uses
  store i32 7, ptr %i.cj, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cl = load ptr, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %i.ck, ptr noundef nonnull align 1 dereferenceable(7) %i.cl, i64 7, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 11
  store i8 0, ptr %i.cm, align 1
  %.pre = load ptr, ptr %i.cd, align 8
  store i32 1, ptr %.pre, align 8
  %i.cn = load ptr, ptr %i.cd, align 8            ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8            ; 3 uses
  %.not24.i = icmp eq ptr %i.cp, null
  br i1 %.not24.i, label %.thread28.i, label %bb.g

bb.g:                                             ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.cq = load i32, ptr %i.cn, align 8
  %.not25.i = icmp eq i32 %i.cq, 7
  br i1 %.not25.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 10, ptr %i.cp, align 1
  br label %_ZN10aiMetadata3SetIiEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.i:                                             ; preds = %bb.g
  store i32 10, ptr %i.cp, align 4
  br label %_ZN10aiMetadata3SetIiEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

.thread28.i:                                      ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.cr = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #26
          to label %.noexc78 unwind label %bb.bp  ; 2 uses

.noexc78:                                         ; preds = %.thread28.i
  store i32 10, ptr %i.cr, align 4
  %i.cs = load ptr, ptr %i.cd, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %i.cr, ptr %i.ct, align 8
  br label %_ZN10aiMetadata3SetIiEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

_ZN10aiMetadata3SetIiEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %.noexc78, %bb.i, %bb.h, %_ZN10aiMetadata5AllocEj.exit
  %i.cu = load ptr, ptr %2, align 8               ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.cf
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZN10aiMetadata3SetIiEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.cw = load i64, ptr %i.cf, align 8
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZN10aiMetadata3SetIiEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.cy, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cy, ptr noundef nonnull align 1 dereferenceable(12) @.str.65, i64 12, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 12, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i8 0, ptr %i.da, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 12 uses
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 204 ; 2 uses
  %i.de = load i32, ptr %i.av, align 8
  %.not.i86 = icmp ugt i32 %i.de, 1
  br i1 %.not.i86, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i88, label %_ZN10aiMetadata3SetIiEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit93

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %i.df = load ptr, ptr %i.aw, align 8            ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1028
  store i32 12, ptr %i.dg, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 1032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dh, ptr noundef nonnull align 1 dereferenceable(12) @.str.65, i64 12, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 1044
  store i8 0, ptr %i.di, align 4
  %i.dj = load ptr, ptr %i.cd, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i32 1, ptr %i.dk, align 8
  %i.dl = load ptr, ptr %i.cd, align 8            ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8            ; 3 uses
  %.not24.i89 = icmp eq ptr %i.dn, null
  br i1 %.not24.i89, label %.thread28.i91, label %bb.j

bb.j:                                             ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i88
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dp = load i32, ptr %i.do, align 8
  %.not25.i90 = icmp eq i32 %i.dp, 7
  %i.dq = load i32, ptr %i.dd, align 4            ; 2 uses
  br i1 %.not25.i90, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.dq, ptr %i.dn, align 1
  br label %_ZN10aiMetadata3SetIiEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit93

bb.l:                                             ; preds = %bb.j
  store i32 %i.dq, ptr %i.dn, align 4
  br label %_ZN10aiMetadata3SetIiEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit93

.thread28.i91:                                    ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i88
  %i.dr = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #26
          to label %.noexc92 unwind label %bb.bq  ; 2 uses

.noexc92:                                         ; preds = %.thread28.i91
  %i.ds = load i32, ptr %i.dd, align 4
  store i32 %i.ds, ptr %i.dr, align 4
  %i.dt = load ptr, ptr %i.cd, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  store ptr %i.dr, ptr %i.du, align 8
  br label %_ZN10aiMetadata3SetIiEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit93

_ZN10aiMetadata3SetIiEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit93: ; preds = %.noexc92, %bb.l, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %i.dv = load ptr, ptr %3, align 8               ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.cy
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

end_hunk_0
