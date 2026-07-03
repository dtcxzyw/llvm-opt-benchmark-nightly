inline.NumInlined: 461
inline.NumDeleted: 172
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN5HydroC2EPK9InputFileP4Mesh:._crit_edge.i.i
bb.bd:                                            ; preds = %.noexc179
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.je, ptr align 8 %i.it, i64 %i.iw, i1 false)
  br label %_ZNSt6vectorIP7HydroBCSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i175

_ZNSt6vectorIP7HydroBCSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i175: ; preds = %bb.bd, %.noexc179
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %.not.i17.i.i.i176 = icmp eq ptr %i.it, null
  br i1 %.not.i17.i.i.i176, label %_ZNSt6vectorIP7HydroBCSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i177, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIP7HydroBCSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i175
  call void @_ZdlPvm(ptr noundef nonnull %i.it, i64 noundef %i.iw) #22
  br label %_ZNSt6vectorIP7HydroBCSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i177

_ZNSt6vectorIP7HydroBCSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i177: ; preds = %bb.be, %_ZNSt6vectorIP7HydroBCSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i175
  store ptr %i.je, ptr %i.a, align 8, !tbaa !55
  store ptr %i.jh, ptr %i.ed, align 8, !tbaa !51
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %i.jc
  store ptr %i.ji, ptr %i.ee, align 8, !tbaa !52
  br label %_ZNSt6vectorIP7HydroBCSaIS1_EE9push_backEOS1_.exit180

_ZNSt6vectorIP7HydroBCSaIS1_EE9push_backEOS1_.exit180: ; preds = %_ZNSt6vectorIP7HydroBCSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i177, %bb.ba
  %i.jj = load ptr, ptr %19, align 8, !tbaa !56   ; 3 uses
  %.not.i.i.i181 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i181, label %_ZNSt6vectorIiSaIiEED2Ev.exit182, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIP7HydroBCSaIS1_EE9push_backEOS1_.exit180
  %i.jk = load ptr, ptr %i.ef, align 8, !tbaa !59
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = ptrtoint ptr %i.jj to i64
  %i.jn = sub i64 %i.jl, %i.jm
  call void @_ZdlPvm(ptr noundef nonnull %i.jj, i64 noundef %i.jn) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit182

_ZNSt6vectorIiSaIiEED2Ev.exit182:                 ; preds = %_ZNSt6vectorIP7HydroBCSaIS1_EE9push_backEOS1_.exit180, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  %indvars.iv.next238 = add nuw nsw i64 %indvars.iv237, 1 ; 2 uses
  %i.jo = load ptr, ptr %i.ct, align 8, !tbaa !49
  %i.jp = load ptr, ptr %i.c, align 8, !tbaa !43  ; 2 uses
  %i.jq = ptrtoint ptr %i.jo to i64
  %i.jr = ptrtoint ptr %i.jp to i64
  %i.js = sub i64 %i.jq, %i.jr
  %i.jt = ashr exact i64 %i.js, 3
  %i.ju = icmp ugt i64 %i.jt, %indvars.iv.next238
  br i1 %i.ju, label %bb.aw, label %._crit_edge, !llvm.loop !62

bb.bg:                                            ; preds = %bb.aw
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

_ZNSt6vectorIiSaIiEED2Ev.exit184.thread:          ; preds = %bb.ax
  %i.jw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.bj

bb.bh:                                            ; preds = %_ZNKSt6vectorIP7HydroBCSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i172, %bb.ay
  %.0.ph = phi i1 [ true, %bb.ay ], [ false, %_ZNKSt6vectorIP7HydroBCSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i172 ] ; 2 uses
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jx = load ptr, ptr %19, align 8, !tbaa !56   ; 3 uses
  %.not.i.i.i183 = icmp eq ptr %i.jx, null
  br i1 %.not.i.i.i183, label %_ZNSt6vectorIiSaIiEED2Ev.exit184, label %bb.bi

.thread312:                                       ; preds = %bb.bc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jy = load ptr, ptr %19, align 8, !tbaa !56   ; 3 uses
  %.not.i.i.i183315 = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i183315, label %_ZNSt6vectorIiSaIiEED2Ev.exit184.thread320, label %.thread326

.thread326:                                       ; preds = %.thread312
  %i.jz = load ptr, ptr %i.ef, align 8, !tbaa !59
  %i.ka = ptrtoint ptr %i.jz to i64
  %i.kb = ptrtoint ptr %i.jy to i64
  %i.kc = sub i64 %i.ka, %i.kb
  call void @_ZdlPvm(ptr noundef nonnull %i.jy, i64 noundef %i.kc) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.bk

_ZNSt6vectorIiSaIiEED2Ev.exit184.thread320:       ; preds = %.thread312
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.kd = load ptr, ptr %i.ef, align 8, !tbaa !59
  %i.ke = ptrtoint ptr %i.kd to i64
  %i.kf = ptrtoint ptr %i.jx to i64
  %i.kg = sub i64 %i.ke, %i.kf
  call void @_ZdlPvm(ptr noundef nonnull %i.jx, i64 noundef %i.kg) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br i1 %.0.ph, label %bb.bj, label %bb.bk

_ZNSt6vectorIiSaIiEED2Ev.exit184:                 ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br i1 %.0.ph, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi, %_ZNSt6vectorIiSaIiEED2Ev.exit184.thread, %_ZNSt6vectorIiSaIiEED2Ev.exit184
  %.pn63214 = phi { ptr, i32 } [ %i.jw, %_ZNSt6vectorIiSaIiEED2Ev.exit184.thread ], [ %lpad.loopexit, %_ZNSt6vectorIiSaIiEED2Ev.exit184 ], [ %lpad.loopexit, %bb.bi ]
  call void @_ZdlPvm(ptr noundef nonnull %i.im, i64 noundef 88) #22
  br label %bb.bk

bb.bk:                                            ; preds = %.thread326, %.thread323, %_ZNSt6vectorIiSaIiEED2Ev.exit184.thread320, %_ZNSt6vectorIiSaIiEED2Ev.exit170.thread309, %bb.au, %_ZNSt6vectorIiSaIiEED2Ev.exit170, %bb.av, %bb.as, %bb.bi, %_ZNSt6vectorIiSaIiEED2Ev.exit184, %bb.bj, %bb.bg, %bb.ah, %bb.ag, %bb.af, %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %.pn66.pn.pn.pn = phi { ptr, i32 } [ %i.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137 ], [ %i.go, %bb.ah ], [ %i.gl, %bb.ae ], [ %i.gn, %bb.ag ], [ %i.gm, %bb.af ], [ %i.ga, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165 ], [ %i.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ], [ %i.fk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155 ], [ %i.ff, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152 ], [ %i.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %i.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ], [ %i.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ], [ %i.el, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140 ], [ %lpad.loopexit, %bb.bi ], [ %lpad.loopexit217, %bb.au ], [ %.pn66211, %bb.av ], [ %lpad.loopexit217, %_ZNSt6vectorIiSaIiEED2Ev.exit170 ], [ %i.hz, %bb.as ], [ %.pn63214, %bb.bj ], [ %lpad.loopexit, %_ZNSt6vectorIiSaIiEED2Ev.exit184 ], [ %i.jv, %bb.bg ], [ %lpad.loopexit.split-lp218, %_ZNSt6vectorIiSaIiEED2Ev.exit170.thread309 ], [ %lpad.loopexit.split-lp, %_ZNSt6vectorIiSaIiEED2Ev.exit184.thread320 ], [ %lpad.loopexit.split-lp218, %.thread323 ], [ %lpad.loopexit.split-lp, %.thread326 ]
  %i.kh = load ptr, ptr %i.c, align 8, !tbaa !43  ; 3 uses
  %.not.i.i.i185 = icmp eq ptr %i.kh, null
  br i1 %.not.i.i.i185, label %_ZNSt6vectorIdSaIdEED2Ev.exit186, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !44
  %i.kk = ptrtoint ptr %i.kj to i64
  %i.kl = ptrtoint ptr %i.kh to i64
  %i.km = sub i64 %i.kk, %i.kl
  call void @_ZdlPvm(ptr noundef nonnull %i.kh, i64 noundef %i.km) #22
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit186

_ZNSt6vectorIdSaIdEED2Ev.exit186:                 ; preds = %bb.bk, %bb.bl
  %i.kn = load ptr, ptr %i.b, align 8, !tbaa !43  ; 3 uses
  %.not.i.i.i187 = icmp eq ptr %i.kn, null
  br i1 %.not.i.i.i187, label %_ZNSt6vectorIdSaIdEED2Ev.exit188, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit186
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !44
  %i.kq = ptrtoint ptr %i.kp to i64
  %i.kr = ptrtoint ptr %i.kn to i64
  %i.ks = sub i64 %i.kq, %i.kr
  call void @_ZdlPvm(ptr noundef nonnull %i.kn, i64 noundef %i.ks) #22
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit188

_ZNSt6vectorIdSaIdEED2Ev.exit188:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit186, %bb.bm
  %i.kt = load ptr, ptr %i.a, align 8, !tbaa !55  ; 3 uses
  %.not.i.i.i189 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i.i189, label %_ZNSt6vectorIP7HydroBCSaIS1_EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit188
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !52
  %i.kw = ptrtoint ptr %i.kv to i64
  %i.kx = ptrtoint ptr %i.kt to i64
  %i.ky = sub i64 %i.kw, %i.kx
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef %i.ky) #22
  br label %_ZNSt6vectorIP7HydroBCSaIS1_EED2Ev.exit

_ZNSt6vectorIP7HydroBCSaIS1_EED2Ev.exit:          ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit188, %bb.bn
  resume { ptr, i32 } %.pn66.pn.pn.pn
}

declare noundef double @_ZNK9InputFile9getDoubleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32), double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_ZNK9InputFile13getDoubleListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIdSaIdEE(ptr dead_on_unwind writable sret(%"class.std::vector.0") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

declare void @_ZN7PolyGasC1EPK9InputFileP5Hydro(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN3TTSC1EPK9InputFileP5Hydro(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN3QCSC1EPK9InputFileP5Hydro(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN4Mesh9getXPlaneEd(ptr dead_on_unwind writable sret(%"class.std::vector.11") align 8, ptr noundef nonnull align 8 dereferenceable(616), double noundef) local_unnamed_addr #1

declare void @_ZN7HydroBCC1EP4Mesh7double2RKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZN4Mesh9getYPlaneEd(ptr dead_on_unwind writable sret(%"class.std::vector.11") align 8, ptr noundef nonnull align 8 dereferenceable(616), double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @_ZN5Hydro4initEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) initializes((248, 408)) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 504
  %i.c = load i32, ptr %i.b, align 8, !tbaa !63   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  %i.e = load i32, ptr %i.d, align 8, !tbaa !72   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.g = load i32, ptr %i.f, align 4, !tbaa !73
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.i = load i32, ptr %i.h, align 4, !tbaa !74
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.k = load i32, ptr %i.j, align 8, !tbaa !75
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !76
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !77   ; 9 uses
  %i.p = sext i32 %i.g to i64                     ; 2 uses
  %i.q = shl nsw i64 %i.p, 4                      ; 4 uses
  %i.r = tail call noalias noundef ptr @malloc(i64 noundef %i.q) #25 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !78
  %i.t = tail call noalias noundef ptr @malloc(i64 noundef %i.q) #25
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.t, ptr %i.u, align 8, !tbaa !79
  %i.v = tail call noalias noundef ptr @malloc(i64 noundef %i.q) #25
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %i.v, ptr %i.w, align 8, !tbaa !80
  %i.x = tail call noalias noundef ptr @malloc(i64 noundef %i.q) #25
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.x, ptr %i.y, align 8, !tbaa !81
  %i.z = shl nsw i64 %i.p, 3
  %i.aa = tail call noalias noundef ptr @malloc(i64 noundef %i.z) #25
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !82
  %i.ac = sext i32 %i.k to i64                    ; 2 uses
  %i.ad = shl nsw i64 %i.ac, 3
  %i.ae = tail call noalias noundef ptr @malloc(i64 noundef %i.ad) #25
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !83
  %i.ag = sext i32 %i.i to i64
  %i.ah = shl nsw i64 %i.ag, 3                    ; 10 uses
  %i.ai = tail call noalias noundef ptr @malloc(i64 noundef %i.ah) #25 ; 10 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !84
  %i.ak = tail call noalias noundef ptr @malloc(i64 noundef %i.ah) #25 ; 15 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !85
  %i.am = tail call noalias noundef ptr @malloc(i64 noundef %i.ah) #25
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %i.am, ptr %i.an, align 8, !tbaa !86
  %i.ao = tail call noalias noundef ptr @malloc(i64 noundef %i.ah) #25 ; 15 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !87
  %i.aq = tail call noalias noundef ptr @malloc(i64 noundef %i.ah) #25 ; 10 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !88
  %i.as = tail call noalias noundef ptr @malloc(i64 noundef %i.ah) #25
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %i.as, ptr %i.at, align 8, !tbaa !89
  %i.au = tail call noalias noundef ptr @malloc(i64 noundef %i.ah) #25 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.au, ptr %i.av, align 8, !tbaa !90
  %i.aw = tail call noalias noundef ptr @malloc(i64 noundef %i.ah) #25
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !91
  %i.ay = tail call noalias noundef ptr @malloc(i64 noundef %i.ah) #25
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !92
  %i.ba = tail call noalias noundef ptr @malloc(i64 noundef %i.ah) #25
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !93
  %i.bc = shl nsw i64 %i.ac, 4                    ; 4 uses
  %i.bd = tail call noalias noundef ptr @malloc(i64 noundef %i.bc) #25
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !94
  %i.bf = tail call noalias noundef ptr @malloc(i64 noundef %i.bc) #25
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !95
  %i.bh = tail call noalias noundef ptr @malloc(i64 noundef %i.bc) #25
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !96
  %i.bj = tail call noalias noundef ptr @malloc(i64 noundef %i.bc) #25
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !97
  %i.bl = icmp sgt i32 %i.e, 0
  br i1 %i.bl, label %.lr.ph97, label %.preheader

.lr.ph97:                                         ; preds = %bb.a
  %1 = ptrtoaddr ptr %i.aq to i64                 ; 4 uses
  %2 = ptrtoaddr ptr %i.ao to i64                 ; 2 uses
  %3 = ptrtoaddr ptr %i.ak to i64                 ; 2 uses
  %4 = ptrtoaddr ptr %i.ai to i64                 ; 4 uses
  %5 = ptrtoaddr ptr %i.o to i64                  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !56 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !56 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.br = load double, ptr %i.bq, align 8, !tbaa !50 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !50 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !45 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !45
  %i.by = icmp eq ptr %i.bv, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %wide.trip.count123 = zext nneg i32 %i.e to i64 ; 2 uses
  %6 = sub i64 %1, %4                             ; 2 uses
  %7 = sub i64 %4, %3                             ; 2 uses
  %8 = sub i64 %4, %5                             ; 2 uses
  %9 = sub i64 %2, %4                             ; 2 uses
  %10 = sub i64 %1, %3                            ; 2 uses
  %11 = sub i64 %1, %5                            ; 2 uses
  %12 = sub i64 %1, %2                            ; 2 uses
  br i1 %i.by, label %.lr.ph97.split.us.preheader, label %.lr.ph97.split.preheader

.lr.ph97.split.preheader:                         ; preds = %.lr.ph97
  %broadcast.splatinsert175 = insertelement <2 x double> poison, double %i.br, i64 0
  %broadcast.splat176 = shufflevector <2 x double> %broadcast.splatinsert175, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bt, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ce = load double, ptr %i.cc, align 8
  %i.cf = load double, ptr %i.cd, align 8
  %diff.check = icmp ult i64 %6, 16
  %diff.check146 = icmp ult i64 %7, 16
  %conflict.rdx = or i1 %diff.check, %diff.check146
  %diff.check147 = icmp ult i64 %8, 16
  %conflict.rdx148 = or i1 %conflict.rdx, %diff.check147
  %diff.check149 = icmp ult i64 %9, 16
  %conflict.rdx150 = or i1 %conflict.rdx148, %diff.check149
  %diff.check151 = icmp ult i64 %10, 16
  %conflict.rdx152 = or i1 %conflict.rdx150, %diff.check151
  %diff.check153 = icmp ult i64 %11, 16
  %conflict.rdx154 = or i1 %conflict.rdx152, %diff.check153
  %diff.check155 = icmp ult i64 %12, 16
  %conflict.rdx156 = or i1 %conflict.rdx154, %diff.check155
  br label %.lr.ph97.split

.lr.ph97.split.us.preheader:                      ; preds = %.lr.ph97
  %broadcast.splatinsert231 = insertelement <2 x double> poison, double %i.br, i64 0
  %broadcast.splat232 = shufflevector <2 x double> %broadcast.splatinsert231, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert217 = insertelement <2 x double> poison, double %i.bt, i64 0
  %broadcast.splat218 = shufflevector <2 x double> %broadcast.splatinsert217, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %diff.check185 = icmp ult i64 %6, 16
  %diff.check186 = icmp ult i64 %7, 16
  %conflict.rdx187 = or i1 %diff.check185, %diff.check186
  %diff.check188 = icmp ult i64 %8, 16
  %conflict.rdx189 = or i1 %conflict.rdx187, %diff.check188
  %diff.check190 = icmp ult i64 %9, 16
  %conflict.rdx191 = or i1 %conflict.rdx189, %diff.check190
  %diff.check192 = icmp ult i64 %10, 16
  %conflict.rdx193 = or i1 %conflict.rdx191, %diff.check192
  %diff.check194 = icmp ult i64 %11, 16
  %conflict.rdx195 = or i1 %conflict.rdx193, %diff.check194
  %diff.check196 = icmp ult i64 %12, 16
  %conflict.rdx197 = or i1 %conflict.rdx195, %diff.check196
  br label %.lr.ph97.split.us

.lr.ph97.split.us:                                ; preds = %.lr.ph97.split.us.preheader, %._crit_edge.us
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %._crit_edge.us ], [ 0, %.lr.ph97.split.us.preheader ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv120
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4  ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv120
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !4  ; 3 uses
  %i.ck = sext i32 %i.ch to i64                   ; 10 uses
  %i.cl = sext i32 %i.cj to i64                   ; 9 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.cl
  %.not6.i.i.i.us = icmp eq i32 %i.ch, %i.cj
  br i1 %.not6.i.i.i.us, label %_ZSt4fillIPddEvT_S1_RKT0_.exit85.us, label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.lr.ph97.split.us
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ck ; 3 uses
  %i.co = sub nsw i64 %i.cl, %i.ck
  %i.cp = add nsw i64 %i.co, 2305843009213693951
  %i.cq = and i64 %i.cp, 2305843009213693951      ; 2 uses
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %min.iters.check227 = icmp samesign ult i64 %i.cq, 3
  br i1 %min.iters.check227, label %.lr.ph.i.i.i.us.preheader243, label %vector.ph228

vector.ph228:                                     ; preds = %.lr.ph.i.i.i.us.preheader
  %n.vec230 = and i64 %i.cr, 4611686018427387900  ; 3 uses
  %i.cs = shl i64 %n.vec230, 3
  %i.ct = getelementptr i8, ptr %i.cn, i64 %i.cs
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph228
  %index234 = phi i64 [ 0, %vector.ph228 ], [ %index.next236, %vector.body233 ] ; 2 uses
  %i.cu = shl i64 %index234, 3
  %next.gep235 = getelementptr i8, ptr %i.cn, i64 %i.cu ; 2 uses
  %i.cv = getelementptr i8, ptr %next.gep235, i64 16
  store <2 x double> %broadcast.splat232, ptr %next.gep235, align 8, !tbaa !50
  store <2 x double> %broadcast.splat232, ptr %i.cv, align 8, !tbaa !50
  %index.next236 = add nuw i64 %index234, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next236, %n.vec230
  br i1 %i.cw, label %middle.block237, label %vector.body233, !llvm.loop !98

middle.block237:                                  ; preds = %vector.body233
  %cmp.n238 = icmp eq i64 %i.cr, %n.vec230
  br i1 %cmp.n238, label %.lr.ph.i.i.i77.us.preheader, label %.lr.ph.i.i.i.us.preheader243

.lr.ph.i.i.i.us.preheader243:                     ; preds = %.lr.ph.i.i.i.us.preheader, %middle.block237
  %.07.i.i.i.us.ph = phi ptr [ %i.cn, %.lr.ph.i.i.i.us.preheader ], [ %i.ct, %middle.block237 ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader243, %.lr.ph.i.i.i.us
  %.07.i.i.i.us = phi ptr [ %i.cx, %.lr.ph.i.i.i.us ], [ %.07.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader243 ] ; 2 uses
  store double %i.br, ptr %.07.i.i.i.us, align 8, !tbaa !50
  %i.cx = getelementptr inbounds nuw i8, ptr %.07.i.i.i.us, i64 8 ; 2 uses
  %.not.i.i.i.us = icmp eq ptr %i.cx, %i.cm
  br i1 %.not.i.i.i.us, label %.lr.ph.i.i.i77.us.preheader, label %.lr.ph.i.i.i.us, !llvm.loop !101

.lr.ph.i.i.i77.us.preheader:                      ; preds = %.lr.ph.i.i.i.us, %middle.block237
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.cl
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ck ; 3 uses
  %i.da = sub nsw i64 %i.cl, %i.ck
  %i.db = add nsw i64 %i.da, 2305843009213693951
  %i.dc = and i64 %i.db, 2305843009213693951      ; 2 uses
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %min.iters.check213 = icmp samesign ult i64 %i.dc, 3
  br i1 %min.iters.check213, label %.lr.ph.i.i.i77.us.preheader242, label %vector.ph214

vector.ph214:                                     ; preds = %.lr.ph.i.i.i77.us.preheader
  %n.vec216 = and i64 %i.dd, 4611686018427387900  ; 3 uses
  %i.de = shl i64 %n.vec216, 3
  %i.df = getelementptr i8, ptr %i.cz, i64 %i.de
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph214
  %index220 = phi i64 [ 0, %vector.ph214 ], [ %index.next222, %vector.body219 ] ; 2 uses
  %i.dg = shl i64 %index220, 3
  %next.gep221 = getelementptr i8, ptr %i.cz, i64 %i.dg ; 2 uses
  %i.dh = getelementptr i8, ptr %next.gep221, i64 16
  store <2 x double> %broadcast.splat218, ptr %next.gep221, align 8, !tbaa !50
  store <2 x double> %broadcast.splat218, ptr %i.dh, align 8, !tbaa !50
  %index.next222 = add nuw i64 %index220, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next222, %n.vec216
  br i1 %i.di, label %middle.block223, label %vector.body219, !llvm.loop !102

middle.block223:                                  ; preds = %vector.body219
  %cmp.n224 = icmp eq i64 %i.dd, %n.vec216
  br i1 %cmp.n224, label %.lr.ph.i.i.i82.us.preheader, label %.lr.ph.i.i.i77.us.preheader242

.lr.ph.i.i.i77.us.preheader242:                   ; preds = %.lr.ph.i.i.i77.us.preheader, %middle.block223
  %.07.i.i.i78.us.ph = phi ptr [ %i.cz, %.lr.ph.i.i.i77.us.preheader ], [ %i.df, %middle.block223 ]
  br label %.lr.ph.i.i.i77.us

.lr.ph.i.i.i77.us:                                ; preds = %.lr.ph.i.i.i77.us.preheader242, %.lr.ph.i.i.i77.us
  %.07.i.i.i78.us = phi ptr [ %i.dj, %.lr.ph.i.i.i77.us ], [ %.07.i.i.i78.us.ph, %.lr.ph.i.i.i77.us.preheader242 ] ; 2 uses
  store double %i.bt, ptr %.07.i.i.i78.us, align 8, !tbaa !50
  %i.dj = getelementptr inbounds nuw i8, ptr %.07.i.i.i78.us, i64 8 ; 2 uses
  %.not.i.i.i79.us = icmp eq ptr %i.dj, %i.cy
  br i1 %.not.i.i.i79.us, label %.lr.ph.i.i.i82.us.preheader, label %.lr.ph.i.i.i77.us, !llvm.loop !103

.lr.ph.i.i.i82.us.preheader:                      ; preds = %.lr.ph.i.i.i77.us, %middle.block223
  %i.dk = getelementptr [8 x i8], ptr %i.au, i64 %i.ck
  %i.dl = sub nsw i64 %i.cl, %i.ck
  %i.dm = shl nsw i64 %i.dl, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dk, i8 0, i64 %i.dm, i1 false), !tbaa !50
  br label %_ZSt4fillIPddEvT_S1_RKT0_.exit85.us

_ZSt4fillIPddEvT_S1_RKT0_.exit85.us:              ; preds = %.lr.ph97.split.us, %.lr.ph.i.i.i82.us.preheader
  %i.dn = icmp slt i32 %i.ch, %i.cj
  br i1 %i.dn, label %.lr.ph94.us.preheader, label %._crit_edge.us

.lr.ph94.us.preheader:                            ; preds = %_ZSt4fillIPddEvT_S1_RKT0_.exit85.us
  %i.do = sub nsw i64 %i.cl, %i.ck                ; 3 uses
  %min.iters.check199 = icmp ult i64 %i.do, 6
  %brmerge = select i1 %min.iters.check199, i1 true, i1 %conflict.rdx197
  br i1 %brmerge, label %.lr.ph94.us.preheader241, label %vector.ph200

vector.ph200:                                     ; preds = %.lr.ph94.us.preheader
  %n.vec202 = and i64 %i.do, -2                   ; 3 uses
  %i.dp = add nsw i64 %n.vec202, %i.ck
  br label %vector.body203

vector.body203:                                   ; preds = %vector.body203, %vector.ph200
  %index204 = phi i64 [ 0, %vector.ph200 ], [ %index.next208, %vector.body203 ] ; 2 uses
  %i.dq = add i64 %index204, %i.ck                ; 5 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.dq
  %wide.load205 = load <2 x double>, ptr %i.dr, align 8, !tbaa !50
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.dq
  %wide.load206 = load <2 x double>, ptr %i.ds, align 8, !tbaa !50
  %i.dt = fmul <2 x double> %wide.load205, %wide.load206 ; 2 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.dq
  store <2 x double> %i.dt, ptr %i.du, align 8, !tbaa !50
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.dq
  %wide.load207 = load <2 x double>, ptr %i.dv, align 8, !tbaa !50
  %i.dw = fmul <2 x double> %i.dt, %wide.load207
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.dq
  store <2 x double> %i.dw, ptr %i.dx, align 8, !tbaa !50
  %index.next208 = add nuw i64 %index204, 2       ; 2 uses
  %i.dy = icmp eq i64 %index.next208, %n.vec202
  br i1 %i.dy, label %middle.block209, label %vector.body203, !llvm.loop !104

middle.block209:                                  ; preds = %vector.body203
  %cmp.n210 = icmp eq i64 %i.do, %n.vec202
  br i1 %cmp.n210, label %._crit_edge.us, label %.lr.ph94.us.preheader241

.lr.ph94.us.preheader241:                         ; preds = %.lr.ph94.us.preheader, %middle.block209
  %indvars.iv115.ph = phi i64 [ %i.dp, %middle.block209 ], [ %i.ck, %.lr.ph94.us.preheader ] ; 9 uses
  %i.dz = sub nsw i64 %i.cl, %indvars.iv115.ph
  %xtraiter247 = and i64 %i.dz, 1
  %lcmp.mod248.not = icmp eq i64 %xtraiter247, 0
  br i1 %lcmp.mod248.not, label %.lr.ph94.us.prol.loopexit, label %.lr.ph94.us.prol

.lr.ph94.us.prol:                                 ; preds = %.lr.ph94.us.preheader241
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv115.ph
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !50
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.o, i64 %indvars.iv115.ph
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !50
  %i.ee = fmul double %i.eb, %i.ed                ; 2 uses
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %indvars.iv115.ph
  store double %i.ee, ptr %i.ef, align 8, !tbaa !50
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv115.ph
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !50
  %i.ei = fmul double %i.ee, %i.eh
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %indvars.iv115.ph
  store double %i.ei, ptr %i.ej, align 8, !tbaa !50
  %indvars.iv.next116.prol = add nsw i64 %indvars.iv115.ph, 1
  br label %.lr.ph94.us.prol.loopexit

.lr.ph94.us.prol.loopexit:                        ; preds = %.lr.ph94.us.prol, %.lr.ph94.us.preheader241
  %indvars.iv115.unr = phi i64 [ %indvars.iv115.ph, %.lr.ph94.us.preheader241 ], [ %indvars.iv.next116.prol, %.lr.ph94.us.prol ]
  %i.ek = add nsw i64 %i.cl, -1
  %i.el = icmp eq i64 %indvars.iv115.ph, %i.ek
  br i1 %i.el, label %._crit_edge.us, label %.lr.ph94.us

._crit_edge.us:                                   ; preds = %.lr.ph94.us.prol.loopexit, %.lr.ph94.us, %middle.block209, %_ZSt4fillIPddEvT_S1_RKT0_.exit85.us
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count123
  br i1 %exitcond124.not, label %.preheader, label %.lr.ph97.split.us, !llvm.loop !105

.lr.ph94.us:                                      ; preds = %.lr.ph94.us.prol.loopexit, %.lr.ph94.us
  %indvars.iv115 = phi i64 [ %indvars.iv.next116.1, %.lr.ph94.us ], [ %indvars.iv115.unr, %.lr.ph94.us.prol.loopexit ] ; 7 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv115
  %i.en = load double, ptr %i.em, align 8, !tbaa !50
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.o, i64 %indvars.iv115
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !50
  %i.eq = fmul double %i.en, %i.ep                ; 2 uses
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %indvars.iv115
  store double %i.eq, ptr %i.er, align 8, !tbaa !50
  %i.es = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv115
  %i.et = load double, ptr %i.es, align 8, !tbaa !50
  %i.eu = fmul double %i.eq, %i.et
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %indvars.iv115
  store double %i.eu, ptr %i.ev, align 8, !tbaa !50
  %indvars.iv.next116 = add nsw i64 %indvars.iv115, 1 ; 5 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv.next116
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !50
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.o, i64 %indvars.iv.next116
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !50
  %i.fa = fmul double %i.ex, %i.ez                ; 2 uses
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %indvars.iv.next116
  store double %i.fa, ptr %i.fb, align 8, !tbaa !50
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv.next116
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !50
  %i.fe = fmul double %i.fa, %i.fd
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %indvars.iv.next116
  store double %i.fe, ptr %i.ff, align 8, !tbaa !50
  %indvars.iv.next116.1 = add nsw i64 %indvars.iv115, 2 ; 2 uses
  %exitcond119.not.1 = icmp eq i64 %indvars.iv.next116.1, %i.cl
  br i1 %exitcond119.not.1, label %._crit_edge.us, label %.lr.ph94.us, !llvm.loop !106

.preheader:                                       ; preds = %._crit_edge, %._crit_edge.us, %bb.a
  %i.fg = icmp sgt i32 %i.c, 0
  br i1 %i.fg, label %.lr.ph99, label %._crit_edge100

.lr.ph99:                                         ; preds = %.preheader
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !42
  %i.fj = fcmp une double %i.fi, 0.000000e+00
  br i1 %i.fj, label %.lr.ph99.split.preheader, label %.lr.ph99.split.us

.lr.ph99.split.preheader:                         ; preds = %.lr.ph99
  %wide.trip.count133 = zext nneg i32 %i.c to i64
  br label %.lr.ph99.split

.lr.ph99.split.us:                                ; preds = %.lr.ph99
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !56 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 536
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !56 ; 3 uses
  %wide.trip.count128 = zext nneg i32 %i.c to i64 ; 2 uses
  %xtraiter249 = and i64 %wide.trip.count128, 1
  %i.fo = icmp eq i32 %i.c, 1
  br i1 %i.fo, label %.epil.preheader, label %.lr.ph99.split.us.new

.lr.ph99.split.us.new:                            ; preds = %.lr.ph99.split.us
  %unroll_iter = and i64 %wide.trip.count128, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %_ZN5Hydro13initRadialVelEdii.exit.us.1, %.lr.ph99.split.us.new
  %indvars.iv125 = phi i64 [ 0, %.lr.ph99.split.us.new ], [ %indvars.iv.next126.1, %_ZN5Hydro13initRadialVelEdii.exit.us.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph99.split.us.new ], [ %niter.next.1, %_ZN5Hydro13initRadialVelEdii.exit.us.1 ]
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv125
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !4  ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv125
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !4  ; 2 uses
  %.not5.i.i.i.us = icmp eq i32 %i.fq, %i.fs
  br i1 %.not5.i.i.i.us, label %_ZN5Hydro13initRadialVelEdii.exit.us, label %.lr.ph.i.i.i86.us.preheader

.lr.ph.i.i.i86.us.preheader:                      ; preds = %bb.b
  %i.ft = sext i32 %i.fs to i64
  %i.fu = sext i32 %i.fq to i64                   ; 2 uses
  %i.fv = getelementptr [16 x i8], ptr %i.r, i64 %i.fu
  %i.fw = sub nsw i64 %i.ft, %i.fu
  %i.fx = shl nsw i64 %i.fw, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fv, i8 0, i64 %i.fx, i1 false), !tbaa !50
  br label %_ZN5Hydro13initRadialVelEdii.exit.us

_ZN5Hydro13initRadialVelEdii.exit.us:             ; preds = %.lr.ph.i.i.i86.us.preheader, %bb.b
  %indvars.iv.next126 = or disjoint i64 %indvars.iv125, 1 ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv.next126
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !4  ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.next126
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !4  ; 2 uses
  %.not5.i.i.i.us.1 = icmp eq i32 %i.fz, %i.gb
  br i1 %.not5.i.i.i.us.1, label %_ZN5Hydro13initRadialVelEdii.exit.us.1, label %.lr.ph.i.i.i86.us.preheader.1

.lr.ph.i.i.i86.us.preheader.1:                    ; preds = %_ZN5Hydro13initRadialVelEdii.exit.us
  %i.gc = sext i32 %i.gb to i64
  %i.gd = sext i32 %i.fz to i64                   ; 2 uses
  %i.ge = getelementptr [16 x i8], ptr %i.r, i64 %i.gd
  %i.gf = sub nsw i64 %i.gc, %i.gd
  %i.gg = shl nsw i64 %i.gf, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ge, i8 0, i64 %i.gg, i1 false), !tbaa !50
  br label %_ZN5Hydro13initRadialVelEdii.exit.us.1

_ZN5Hydro13initRadialVelEdii.exit.us.1:           ; preds = %.lr.ph.i.i.i86.us.preheader.1, %_ZN5Hydro13initRadialVelEdii.exit.us
  %indvars.iv.next126.1 = add nuw nsw i64 %indvars.iv125, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge100.loopexit240.unr-lcssa, label %bb.b, !llvm.loop !107

.lr.ph97.split:                                   ; preds = %.lr.ph97.split.preheader, %._crit_edge
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %._crit_edge ], [ 0, %.lr.ph97.split.preheader ] ; 3 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv110
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !4  ; 3 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv110
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !4  ; 3 uses
  %i.gl = sext i32 %i.gi to i64                   ; 11 uses
  %i.gm = sext i32 %i.gk to i64                   ; 10 uses
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.gm
  %.not6.i.i.i = icmp eq i32 %i.gi, %i.gk
  br i1 %.not6.i.i.i, label %_ZSt4fillIPddEvT_S1_RKT0_.exit85, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph97.split
  %i.go = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.gl ; 3 uses
  %i.gp = sub nsw i64 %i.gm, %i.gl
  %i.gq = add nsw i64 %i.gp, 2305843009213693951
  %i.gr = and i64 %i.gq, 2305843009213693951      ; 2 uses
  %i.gs = add nuw nsw i64 %i.gr, 1                ; 2 uses
  %min.iters.check171 = icmp samesign ult i64 %i.gr, 3
  br i1 %min.iters.check171, label %.lr.ph.i.i.i.preheader245, label %vector.ph172

vector.ph172:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec174 = and i64 %i.gs, 4611686018427387900  ; 3 uses
  %i.gt = shl i64 %n.vec174, 3
  %i.gu = getelementptr i8, ptr %i.go, i64 %i.gt
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph172
  %index178 = phi i64 [ 0, %vector.ph172 ], [ %index.next180, %vector.body177 ] ; 2 uses
  %i.gv = shl i64 %index178, 3
  %next.gep179 = getelementptr i8, ptr %i.go, i64 %i.gv ; 2 uses
  %i.gw = getelementptr i8, ptr %next.gep179, i64 16
  store <2 x double> %broadcast.splat176, ptr %next.gep179, align 8, !tbaa !50
  store <2 x double> %broadcast.splat176, ptr %i.gw, align 8, !tbaa !50
  %index.next180 = add nuw i64 %index178, 4       ; 2 uses
  %i.gx = icmp eq i64 %index.next180, %n.vec174
  br i1 %i.gx, label %middle.block181, label %vector.body177, !llvm.loop !108

middle.block181:                                  ; preds = %vector.body177
  %cmp.n182 = icmp eq i64 %i.gs, %n.vec174
  br i1 %cmp.n182, label %.lr.ph.i.i.i77.preheader, label %.lr.ph.i.i.i.preheader245

.lr.ph.i.i.i.preheader245:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block181
  %.07.i.i.i.ph = phi ptr [ %i.go, %.lr.ph.i.i.i.preheader ], [ %i.gu, %middle.block181 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader245, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.gy, %.lr.ph.i.i.i ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader245 ] ; 2 uses
  store double %i.br, ptr %.07.i.i.i, align 8, !tbaa !50
  %i.gy = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gy, %i.gn
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i77.preheader, label %.lr.ph.i.i.i, !llvm.loop !109

.lr.ph.i.i.i77.preheader:                         ; preds = %.lr.ph.i.i.i, %middle.block181
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.gm
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.gl ; 3 uses
  %i.hb = sub nsw i64 %i.gm, %i.gl
  %i.hc = add nsw i64 %i.hb, 2305843009213693951
  %i.hd = and i64 %i.hc, 2305843009213693951      ; 2 uses
  %i.he = add nuw nsw i64 %i.hd, 1                ; 2 uses
  %min.iters.check160 = icmp samesign ult i64 %i.hd, 3
  br i1 %min.iters.check160, label %.lr.ph.i.i.i77.preheader244, label %vector.ph161

vector.ph161:                                     ; preds = %.lr.ph.i.i.i77.preheader
  %n.vec163 = and i64 %i.he, 4611686018427387900  ; 3 uses
  %i.hf = shl i64 %n.vec163, 3
  %i.hg = getelementptr i8, ptr %i.ha, i64 %i.hf
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph161
  %index165 = phi i64 [ 0, %vector.ph161 ], [ %index.next166, %vector.body164 ] ; 2 uses
  %i.hh = shl i64 %index165, 3
  %next.gep = getelementptr i8, ptr %i.ha, i64 %i.hh ; 2 uses
  %i.hi = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %broadcast.splat, ptr %next.gep, align 8, !tbaa !50
  store <2 x double> %broadcast.splat, ptr %i.hi, align 8, !tbaa !50
  %index.next166 = add nuw i64 %index165, 4       ; 2 uses
  %i.hj = icmp eq i64 %index.next166, %n.vec163
  br i1 %i.hj, label %middle.block167, label %vector.body164, !llvm.loop !110

middle.block167:                                  ; preds = %vector.body164
  %cmp.n168 = icmp eq i64 %i.he, %n.vec163
  br i1 %cmp.n168, label %.lr.ph.i.i.i82.preheader, label %.lr.ph.i.i.i77.preheader244

.lr.ph.i.i.i77.preheader244:                      ; preds = %.lr.ph.i.i.i77.preheader, %middle.block167
  %.07.i.i.i78.ph = phi ptr [ %i.ha, %.lr.ph.i.i.i77.preheader ], [ %i.hg, %middle.block167 ]
  br label %.lr.ph.i.i.i77

.lr.ph.i.i.i77:                                   ; preds = %.lr.ph.i.i.i77.preheader244, %.lr.ph.i.i.i77
  %.07.i.i.i78 = phi ptr [ %i.hk, %.lr.ph.i.i.i77 ], [ %.07.i.i.i78.ph, %.lr.ph.i.i.i77.preheader244 ] ; 2 uses
  store double %i.bt, ptr %.07.i.i.i78, align 8, !tbaa !50
  %i.hk = getelementptr inbounds nuw i8, ptr %.07.i.i.i78, i64 8 ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %i.hk, %i.gz
  br i1 %.not.i.i.i79, label %.lr.ph.i.i.i82.preheader, label %.lr.ph.i.i.i77, !llvm.loop !111

.lr.ph.i.i.i82.preheader:                         ; preds = %.lr.ph.i.i.i77, %middle.block167
  %i.hl = getelementptr [8 x i8], ptr %i.au, i64 %i.gl
  %i.hm = sub nsw i64 %i.gm, %i.gl
  %i.hn = shl nsw i64 %i.hm, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hl, i8 0, i64 %i.hn, i1 false), !tbaa !50
  br label %_ZSt4fillIPddEvT_S1_RKT0_.exit85

_ZSt4fillIPddEvT_S1_RKT0_.exit85:                 ; preds = %.lr.ph97.split, %.lr.ph.i.i.i82.preheader
  %i.ho = icmp slt i32 %i.gi, %i.gk
  br i1 %i.ho, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt4fillIPddEvT_S1_RKT0_.exit85, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ %i.gl, %_ZSt4fillIPddEvT_S1_RKT0_.exit85 ] ; 4 uses
  %i.hp = getelementptr inbounds [16 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !112 ; 2 uses
  %i.hr = load double, ptr %i.bv, align 8, !tbaa !50
  %i.hs = fadd double %i.hr, f0xBD719799812DEA11
  %i.ht = fcmp ogt double %i.hq, %i.hs
  br i1 %i.ht, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.lr.ph
  %i.hu = load double, ptr %i.bz, align 8, !tbaa !50
  %i.hv = fadd double %i.hu, f0x3D719799812DEA11
  %i.hw = fcmp olt double %i.hq, %i.hv
  br i1 %i.hw, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !114 ; 2 uses
  %i.hz = load double, ptr %i.ca, align 8, !tbaa !50
  %i.ia = fadd double %i.hz, f0xBD719799812DEA11
  %i.ib = fcmp ogt double %i.hy, %i.ia
  br i1 %i.ib, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ic = load double, ptr %i.cb, align 8, !tbaa !50
  %i.id = fadd double %i.ic, f0x3D719799812DEA11
  %i.ie = fcmp olt double %i.hy, %i.id
  br i1 %i.ie, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.if = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv
  store double %i.ce, ptr %i.if, align 8, !tbaa !50
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv
  store double %i.cf, ptr %i.ig, align 8, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.c, %bb.d, %bb.e, %bb.f
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.gm
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !115

.loopexit:                                        ; preds = %bb.g
  %i.ih = sub nsw i64 %i.gm, %i.gl                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ih, 6
  %brmerge252 = select i1 %min.iters.check, i1 true, i1 %conflict.rdx156
  br i1 %brmerge252, label %.lr.ph94.preheader, label %vector.ph

vector.ph:                                        ; preds = %.loopexit
  %n.vec = and i64 %i.ih, -2                      ; 3 uses
  %i.ii = add nsw i64 %n.vec, %i.gl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ij = add i64 %index, %i.gl                   ; 5 uses
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ij
  %wide.load = load <2 x double>, ptr %i.ik, align 8, !tbaa !50
  %i.il = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ij
  %wide.load157 = load <2 x double>, ptr %i.il, align 8, !tbaa !50
  %i.im = fmul <2 x double> %wide.load, %wide.load157 ; 2 uses
  %i.in = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ij
  store <2 x double> %i.im, ptr %i.in, align 8, !tbaa !50
  %i.io = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ij
  %wide.load158 = load <2 x double>, ptr %i.io, align 8, !tbaa !50
  %i.ip = fmul <2 x double> %i.im, %wide.load158
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ij
  store <2 x double> %i.ip, ptr %i.iq, align 8, !tbaa !50
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ir = icmp eq i64 %index.next, %n.vec
  br i1 %i.ir, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ih, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph94.preheader

.lr.ph94.preheader:                               ; preds = %.loopexit, %middle.block
  %indvars.iv105.ph = phi i64 [ %i.ii, %middle.block ], [ %i.gl, %.loopexit ] ; 9 uses
  %i.is = sub nsw i64 %i.gm, %indvars.iv105.ph
  %xtraiter = and i64 %i.is, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph94.prol.loopexit, label %.lr.ph94.prol

.lr.ph94.prol:                                    ; preds = %.lr.ph94.preheader
  %i.it = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv105.ph
  %i.iu = load double, ptr %i.it, align 8, !tbaa !50
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.o, i64 %indvars.iv105.ph
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !50
  %i.ix = fmul double %i.iu, %i.iw                ; 2 uses
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %indvars.iv105.ph
  store double %i.ix, ptr %i.iy, align 8, !tbaa !50
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv105.ph
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !50
  %i.jb = fmul double %i.ix, %i.ja
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %indvars.iv105.ph
  store double %i.jb, ptr %i.jc, align 8, !tbaa !50
  %indvars.iv.next106.prol = add nsw i64 %indvars.iv105.ph, 1
  br label %.lr.ph94.prol.loopexit

.lr.ph94.prol.loopexit:                           ; preds = %.lr.ph94.prol, %.lr.ph94.preheader
  %indvars.iv105.unr = phi i64 [ %indvars.iv105.ph, %.lr.ph94.preheader ], [ %indvars.iv.next106.prol, %.lr.ph94.prol ]
  %i.jd = add nsw i64 %i.gm, -1
  %i.je = icmp eq i64 %indvars.iv105.ph, %i.jd
  br i1 %i.je, label %._crit_edge, label %.lr.ph94

._crit_edge:                                      ; preds = %.lr.ph94.prol.loopexit, %.lr.ph94, %middle.block, %_ZSt4fillIPddEvT_S1_RKT0_.exit85
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count123
  br i1 %exitcond114.not, label %.preheader, label %.lr.ph97.split, !llvm.loop !105

.lr.ph94:                                         ; preds = %.lr.ph94.prol.loopexit, %.lr.ph94
  %indvars.iv105 = phi i64 [ %indvars.iv.next106.1, %.lr.ph94 ], [ %indvars.iv105.unr, %.lr.ph94.prol.loopexit ] ; 7 uses
  %i.jf = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv105
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !50
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.o, i64 %indvars.iv105
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !50
  %i.jj = fmul double %i.jg, %i.ji                ; 2 uses
  %i.jk = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %indvars.iv105
  store double %i.jj, ptr %i.jk, align 8, !tbaa !50
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv105
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !50
  %i.jn = fmul double %i.jj, %i.jm
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %indvars.iv105
  store double %i.jn, ptr %i.jo, align 8, !tbaa !50
  %indvars.iv.next106 = add nsw i64 %indvars.iv105, 1 ; 5 uses
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv.next106
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !50
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.o, i64 %indvars.iv.next106
  %i.js = load double, ptr %i.jr, align 8, !tbaa !50
  %i.jt = fmul double %i.jq, %i.js                ; 2 uses
  %i.ju = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %indvars.iv.next106
  store double %i.jt, ptr %i.ju, align 8, !tbaa !50
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv.next106
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !50
  %i.jx = fmul double %i.jt, %i.jw
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %indvars.iv.next106
  store double %i.jx, ptr %i.jy, align 8, !tbaa !50
  %indvars.iv.next106.1 = add nsw i64 %indvars.iv105, 2 ; 2 uses
  %exitcond109.not.1 = icmp eq i64 %indvars.iv.next106.1, %i.gm
  br i1 %exitcond109.not.1, label %._crit_edge, label %.lr.ph94, !llvm.loop !117

._crit_edge100.loopexit240.unr-lcssa:             ; preds = %_ZN5Hydro13initRadialVelEdii.exit.us.1
  %lcmp.mod250.not = icmp eq i64 %xtraiter249, 0
  br i1 %lcmp.mod250.not, label %._crit_edge100, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge100.loopexit240.unr-lcssa, %.lr.ph99.split.us
  %indvars.iv125.epil.init = phi i64 [ 0, %.lr.ph99.split.us ], [ %indvars.iv.next126.1, %._crit_edge100.loopexit240.unr-lcssa ] ; 2 uses
  %lcmp.mod251 = trunc i32 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod251)
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv125.epil.init
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !4  ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv125.epil.init
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !4  ; 2 uses
  %.not5.i.i.i.us.epil = icmp eq i32 %i.ka, %i.kc
  br i1 %.not5.i.i.i.us.epil, label %._crit_edge100, label %.lr.ph.i.i.i86.us.preheader.epil

.lr.ph.i.i.i86.us.preheader.epil:                 ; preds = %.epil.preheader
  %i.kd = sext i32 %i.kc to i64
  %i.ke = sext i32 %i.ka to i64                   ; 2 uses
  %i.kf = getelementptr [16 x i8], ptr %i.r, i64 %i.ke
  %i.kg = sub nsw i64 %i.kd, %i.ke
  %i.kh = shl nsw i64 %i.kg, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.kf, i8 0, i64 %i.kh, i1 false), !tbaa !50
  br label %._crit_edge100

._crit_edge100:                                   ; preds = %._crit_edge100.loopexit240.unr-lcssa, %.lr.ph.i.i.i86.us.preheader.epil, %.epil.preheader, %_ZN5Hydro13initRadialVelEdii.exit, %.preheader
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 160
  store double f0x547D42AEA2879F2E, ptr %i.ki, align 8, !tbaa !118
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.kj, ptr noundef nonnull align 1 dereferenceable(14) @.str.11, i64 14, i1 false) #21
  ret void

.lr.ph99.split:                                   ; preds = %.lr.ph99.split.preheader, %_ZN5Hydro13initRadialVelEdii.exit
  %indvars.iv130 = phi i64 [ 0, %.lr.ph99.split.preheader ], [ %indvars.iv.next131, %_ZN5Hydro13initRadialVelEdii.exit ] ; 3 uses
  %i.kk = load ptr, ptr %0, align 8, !tbaa !8     ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 512
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !56
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %indvars.iv130
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !4  ; 4 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kk, i64 536
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !56
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %indvars.iv130
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !4  ; 4 uses
  %i.kt = load double, ptr %i.fh, align 8, !tbaa !42 ; 3 uses
  %i.ku = fcmp une double %i.kt, 0.000000e+00
  br i1 %i.ku, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph99.split
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kk, i64 240
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !119
  %i.kx = icmp slt i32 %i.ko, %i.ks
  br i1 %i.kx, label %.lr.ph.i, label %_ZN5Hydro13initRadialVelEdii.exit

.lr.ph.i:                                         ; preds = %bb.h
  %i.ky = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.kz = sext i32 %i.ko to i64
  %wide.trip.count.i = sext i32 %i.ks to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.kz, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.l ] ; 4 uses
  %i.la = getelementptr inbounds [16 x i8], ptr %i.kw, i64 %indvars.iv.i ; 2 uses
  %i.lb = load double, ptr %i.la, align 8, !tbaa !112 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !114 ; 3 uses
  %i.le = fmul double %i.ld, %i.ld
  %i.lf = tail call double @llvm.fmuladd.f64(double %i.lb, double %i.lb, double %i.le)
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.lf) ; 2 uses
  %i.lg = fcmp ogt double %sqrt.i.i, f0x3D719799812DEA11
  br i1 %i.lg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.lh = fmul double %i.kt, %i.lb
  %i.li = fmul double %i.kt, %i.ld
  %i.lj = fdiv double 1.000000e+00, %sqrt.i.i     ; 2 uses
  %i.lk = fmul double %i.lh, %i.lj
  %i.ll = fmul double %i.li, %i.lj
  %i.lm = getelementptr inbounds [16 x i8], ptr %i.ky, i64 %indvars.iv.i ; 2 uses
  store double %i.lk, ptr %i.lm, align 8, !tbaa !112
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  store double %i.ll, ptr %i.ln, align 8, !tbaa !114
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.lo = getelementptr inbounds [16 x i8], ptr %i.ky, i64 %indvars.iv.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lo, i8 0, i64 16, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN5Hydro13initRadialVelEdii.exit, label %bb.i, !llvm.loop !120

bb.m:                                             ; preds = %.lr.ph99.split
  %.not5.i.i.i = icmp eq i32 %i.ko, %i.ks
  br i1 %.not5.i.i.i, label %_ZN5Hydro13initRadialVelEdii.exit, label %.lr.ph.i.i.i86.preheader

.lr.ph.i.i.i86.preheader:                         ; preds = %bb.m
  %i.lp = sext i32 %i.ks to i64
  %i.lq = load ptr, ptr %i.s, align 8, !tbaa !78
  %i.lr = sext i32 %i.ko to i64                   ; 2 uses
  %i.ls = getelementptr [16 x i8], ptr %i.lq, i64 %i.lr
  %i.lt = sub nsw i64 %i.lp, %i.lr
  %i.lu = shl nsw i64 %i.lt, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ls, i8 0, i64 %i.lu, i1 false), !tbaa !50
end_hunk_0
begin_hunk_1_@_ZN5Hydro7doCycleEd:bb.a
  %conflict.rdx306 = or i1 %conflict.rdx, %found.conflict305
  %bound0307 = icmp ult ptr %scevgep292, %scevgep299
  %bound1308 = icmp ult ptr %scevgep298, %scevgep293
  %found.conflict309 = and i1 %bound0307, %bound1308
  %conflict.rdx310 = or i1 %conflict.rdx306, %found.conflict309
  br i1 %conflict.rdx310, label %.lr.ph.i.preheader603, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ci, -2                      ; 3 uses
  %i.dr = add nsw i64 %n.vec, %i.cg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ds = add i64 %index, %i.cg                   ; 4 uses
  %i.dt = add i64 %i.ds, 1                        ; 3 uses
  %i.du = getelementptr inbounds [16 x i8], ptr %i.al, i64 %i.ds
  %i.dv = getelementptr inbounds [16 x i8], ptr %i.al, i64 %i.dt
  %i.dw = getelementptr inbounds [16 x i8], ptr %i.be, i64 %i.ds
  %i.dx = getelementptr inbounds [16 x i8], ptr %i.be, i64 %i.dt
  %wide.load = load <2 x double>, ptr %i.dw, align 8, !noalias !146
  %wide.load311 = load <2 x double>, ptr %i.dx, align 8, !noalias !146
  %i.dy = fmul <2 x double> %broadcast.splat, %wide.load
  %i.dz = fmul <2 x double> %broadcast.splat, %wide.load311
  %wide.load312 = load <2 x double>, ptr %i.du, align 8, !noalias !149
  %wide.load313 = load <2 x double>, ptr %i.dv, align 8, !noalias !149
  %i.ea = fadd <2 x double> %i.dy, %wide.load312
  %i.eb = fadd <2 x double> %i.dz, %wide.load313
  %i.ec = getelementptr inbounds [16 x i8], ptr %i.an, i64 %i.ds
  %i.ed = getelementptr inbounds [16 x i8], ptr %i.an, i64 %i.dt
  store <2 x double> %i.ea, ptr %i.ec, align 8
  store <2 x double> %i.eb, ptr %i.ed, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !152

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br i1 %cmp.n, label %_ZN5Hydro10advPosHalfEPK7double2S2_dPS0_ii.exit, label %.lr.ph.i.preheader603

.lr.ph.i.preheader603:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.cg, %vector.memcheck ], [ %i.cg, %.lr.ph.i.preheader ], [ %i.dr, %middle.block ] ; 7 uses
  %i.ef = sub nsw i64 %i.ch, %indvars.iv.i.ph
  %xtraiter = and i64 %i.ef, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader603
  %i.eg = getelementptr inbounds [16 x i8], ptr %i.al, i64 %indvars.iv.i.ph
  %i.eh = getelementptr inbounds [16 x i8], ptr %i.be, i64 %indvars.iv.i.ph
  %i.ei = getelementptr inbounds [16 x i8], ptr %i.an, i64 %indvars.iv.i.ph
  %i.ej = load <2 x double>, ptr %i.eh, align 8, !tbaa !50, !noalias !146
  %i.ek = fmul <2 x double> %i.bh, %i.ej
  %i.el = load <2 x double>, ptr %i.eg, align 8, !tbaa !50, !noalias !149
  %i.em = fadd <2 x double> %i.ek, %i.el
  store <2 x double> %i.em, ptr %i.ei, align 8, !tbaa !50
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader603
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader603 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.en = add nsw i64 %i.ch, -1
  %i.eo = icmp eq i64 %indvars.iv.i.ph, %i.en
  br i1 %i.eo, label %_ZN5Hydro10advPosHalfEPK7double2S2_dPS0_ii.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ep = getelementptr inbounds [16 x i8], ptr %i.al, i64 %indvars.iv.i
  %i.eq = getelementptr inbounds [16 x i8], ptr %i.be, i64 %indvars.iv.i
  %i.er = getelementptr inbounds [16 x i8], ptr %i.an, i64 %indvars.iv.i
  %i.es = load <2 x double>, ptr %i.eq, align 8, !tbaa !50, !noalias !146
  %i.et = fmul <2 x double> %i.bj, %i.es
  %i.eu = load <2 x double>, ptr %i.ep, align 8, !tbaa !50, !noalias !149
  %i.ev = fadd <2 x double> %i.et, %i.eu
  store <2 x double> %i.ev, ptr %i.er, align 8, !tbaa !50
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.ew = getelementptr inbounds [16 x i8], ptr %i.al, i64 %indvars.iv.next.i
  %i.ex = getelementptr inbounds [16 x i8], ptr %i.be, i64 %indvars.iv.next.i
  %i.ey = getelementptr inbounds [16 x i8], ptr %i.an, i64 %indvars.iv.next.i
  %i.ez = load <2 x double>, ptr %i.ex, align 8, !tbaa !50, !noalias !146
  %i.fa = fmul <2 x double> %i.bl, %i.ez
  %i.fb = load <2 x double>, ptr %i.ew, align 8, !tbaa !50, !noalias !149
  %i.fc = fadd <2 x double> %i.fa, %i.fb
  store <2 x double> %i.fc, ptr %i.ey, align 8, !tbaa !50
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.ch
  br i1 %exitcond.not.i.1, label %_ZN5Hydro10advPosHalfEPK7double2S2_dPS0_ii.exit, label %.lr.ph.i, !llvm.loop !153

_ZN5Hydro10advPosHalfEPK7double2S2_dPS0_ii.exit:  ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %_ZSt4copyIP7double2S1_ET0_T_S3_S2_.exit163
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !154

._crit_edge.loopexit:                             ; preds = %_ZN5Hydro12sumCrnrForceEPK7double2S2_S2_PS0_ii.exit
  %.pre260 = load ptr, ptr %0, align 8, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.fd = phi ptr [ %.pre260, %._crit_edge.loopexit ], [ %i.a, %.preheader ]
  tail call void @_ZN4Mesh13checkBadSidesEv(ptr noundef nonnull align 8 dereferenceable(616) %i.fd)
  %i.fe = load ptr, ptr %0, align 8, !tbaa !8
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !83
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !82
  tail call void @_ZN4Mesh11sumToPointsIdEEvPKT_PS1_(ptr noundef nonnull align 8 dereferenceable(616) %i.fe, ptr noundef %i.fg, ptr noundef %i.fi)
  %i.fj = load ptr, ptr %0, align 8, !tbaa !8
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !97
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !81
  tail call void @_ZN4Mesh11sumToPointsI7double2EEvPKT_PS2_(ptr noundef nonnull align 8 dereferenceable(616) %i.fj, ptr noundef %i.fl, ptr noundef %i.fn)
  br i1 %i.aw, label %.lr.ph228, label %._crit_edge229

.lr.ph228:                                        ; preds = %._crit_edge
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 248
  %wide.trip.count250 = zext nneg i32 %i.c to i64
  %.pre261 = load ptr, ptr %i.fp, align 8, !tbaa !51
  %.pre262 = load ptr, ptr %i.fo, align 8, !tbaa !55
  %scevgep408 = getelementptr i8, ptr %i.g, i64 -8
  %scevgep417 = getelementptr i8, ptr %i.al, i64 -8
  %scevgep422 = getelementptr i8, ptr %i.g, i64 8
  %scevgep431 = getelementptr i8, ptr %i.al, i64 8
  %broadcast.splatinsert494 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat495 = shufflevector <2 x double> %broadcast.splatinsert494, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ft = insertelement <2 x double> poison, double %1, i64 0
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.h

bb.c:                                             ; preds = %.lr.ph221, %_ZN5Hydro12sumCrnrForceEPK7double2S2_S2_PS0_ii.exit
  %indvars.iv239 = phi i64 [ 0, %.lr.ph221 ], [ %indvars.iv.next240, %_ZN5Hydro12sumCrnrForceEPK7double2S2_S2_PS0_ii.exit ] ; 5 uses
  %i.fv = load ptr, ptr %0, align 8, !tbaa !8     ; 6 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 408
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !56
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv239
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !4  ; 11 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 432
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !56
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv239
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !4  ; 11 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fv, i64 456
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !56
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv239
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !4  ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fv, i64 480
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !56
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv239
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !4  ; 3 uses
  %i.gm = sext i32 %i.gh to i64                   ; 8 uses
  %.idx214 = shl nsw i64 %i.gm, 3
  %i.gn = getelementptr inbounds i8, ptr %i.s, i64 %.idx214 ; 2 uses
  %i.go = sext i32 %i.gl to i64                   ; 5 uses
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.gm ; 2 uses
  %i.gq = sub nsw i64 %i.go, %i.gm                ; 3 uses
  %i.gr = icmp sgt i64 %i.gq, 1
  br i1 %i.gr, label %bb.d, label %bb.e, !prof !155

bb.d:                                             ; preds = %bb.c
  %gepdiff = shl nuw nsw i64 %i.gq, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.gp, ptr align 8 %i.gn, i64 %gepdiff, i1 false)
  %.pre = load ptr, ptr %0, align 8, !tbaa !8
  br label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit

bb.e:                                             ; preds = %bb.c
  %i.gs = icmp eq i64 %i.gq, 1
  br i1 %i.gs, label %bb.f, label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit

bb.f:                                             ; preds = %bb.e
  %i.gt = load double, ptr %i.gn, align 8, !tbaa !50
  store double %i.gt, ptr %i.gp, align 8, !tbaa !50
  br label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit

_ZSt4copyIPdS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.d, %bb.e, %bb.f
  %i.gu = phi ptr [ %.pre, %bb.d ], [ %i.fv, %bb.e ], [ %i.fv, %bb.f ]
  tail call void @_ZN4Mesh8calcCtrsEPK7double2PS0_S3_ii(ptr noundef nonnull align 8 dereferenceable(616) %i.gu, ptr noundef %i.an, ptr noundef %i.ap, ptr noundef %i.ar, i32 noundef %i.fz, i32 noundef %i.gd)
  %i.gv = load ptr, ptr %0, align 8, !tbaa !8
  tail call void @_ZN4Mesh8calcVolsEPK7double2S2_PdS3_S3_S3_ii(ptr noundef nonnull align 8 dereferenceable(616) %i.gv, ptr noundef %i.an, ptr noundef %i.ar, ptr noundef %i.v, ptr noundef %i.x, ptr noundef %i.z, ptr noundef %i.ab, i32 noundef %i.fz, i32 noundef %i.gd)
  %i.gw = load ptr, ptr %0, align 8, !tbaa !8
  tail call void @_ZN4Mesh12calcSurfVecsEPK7double2S2_PS0_ii(ptr noundef nonnull align 8 dereferenceable(616) %i.gw, ptr noundef %i.ar, ptr noundef %i.ap, ptr noundef %i.ah, i32 noundef %i.fz, i32 noundef %i.gd)
  %i.gx = load ptr, ptr %0, align 8, !tbaa !8
  tail call void @_ZN4Mesh11calcEdgeLenEPK7double2Pdii(ptr noundef nonnull align 8 dereferenceable(616) %i.gx, ptr noundef %i.an, ptr noundef %i.aj, i32 noundef %i.fz, i32 noundef %i.gd)
  %i.gy = load ptr, ptr %0, align 8, !tbaa !8
  tail call void @_ZN4Mesh11calcCharLenEPKdPdii(ptr noundef nonnull align 8 dereferenceable(616) %i.gy, ptr noundef %i.v, ptr noundef %i.av, i32 noundef %i.fz, i32 noundef %i.gd)
  %i.gz = load ptr, ptr %i.bn, align 8, !tbaa !84 ; 8 uses
  %i.ha = ptrtoaddr ptr %i.gz to i64
  %i.hb = load ptr, ptr %i.bo, align 8, !tbaa !86 ; 10 uses
  %i.hc = ptrtoaddr ptr %i.hb to i64              ; 2 uses
  %i.hd = icmp slt i32 %i.gh, %i.gl
  br i1 %i.hd, label %.lr.ph.i166.preheader, label %_ZN5Hydro7calcRhoEPKdS1_Pdii.exit

.lr.ph.i166.preheader:                            ; preds = %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit
  %i.he = sub nsw i64 %i.go, %i.gm                ; 3 uses
  %min.iters.check391 = icmp ult i64 %i.he, 2
  br i1 %min.iters.check391, label %.lr.ph.i166.preheader602, label %vector.memcheck387

vector.memcheck387:                               ; preds = %.lr.ph.i166.preheader
  %i.hf = sub i64 %i.hc, %i.ha
  %diff.check = icmp ult i64 %i.hf, 16
  %i.hg = sub i64 %i.hc, %i.ac
  %diff.check388 = icmp ult i64 %i.hg, 16
  %conflict.rdx389 = or i1 %diff.check, %diff.check388
  br i1 %conflict.rdx389, label %.lr.ph.i166.preheader602, label %vector.ph392

vector.ph392:                                     ; preds = %vector.memcheck387
  %n.vec394 = and i64 %i.he, -2                   ; 3 uses
  %i.hh = add nsw i64 %n.vec394, %i.gm
  br label %vector.body395

vector.body395:                                   ; preds = %vector.body395, %vector.ph392
  %index396 = phi i64 [ 0, %vector.ph392 ], [ %index.next399, %vector.body395 ] ; 2 uses
  %i.hi = add i64 %index396, %i.gm                ; 3 uses
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.hi
  %wide.load397 = load <2 x double>, ptr %i.hj, align 8, !tbaa !50
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.hi
  %wide.load398 = load <2 x double>, ptr %i.hk, align 8, !tbaa !50
  %i.hl = fdiv <2 x double> %wide.load397, %wide.load398
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.hi
  store <2 x double> %i.hl, ptr %i.hm, align 8, !tbaa !50
  %index.next399 = add nuw i64 %index396, 2       ; 2 uses
  %i.hn = icmp eq i64 %index.next399, %n.vec394
  br i1 %i.hn, label %middle.block400, label %vector.body395, !llvm.loop !156

middle.block400:                                  ; preds = %vector.body395
  %cmp.n401 = icmp eq i64 %i.he, %n.vec394
  br i1 %cmp.n401, label %_ZN5Hydro7calcRhoEPKdS1_Pdii.exit, label %.lr.ph.i166.preheader602

.lr.ph.i166.preheader602:                         ; preds = %vector.memcheck387, %.lr.ph.i166.preheader, %middle.block400
  %indvars.iv.i167.ph = phi i64 [ %i.gm, %vector.memcheck387 ], [ %i.gm, %.lr.ph.i166.preheader ], [ %i.hh, %middle.block400 ] ; 4 uses
  %i.ho = sub nsw i64 %i.go, %indvars.iv.i167.ph
  %xtraiter606 = and i64 %i.ho, 3                 ; 2 uses
  %lcmp.mod607.not = icmp eq i64 %xtraiter606, 0
  br i1 %lcmp.mod607.not, label %.lr.ph.i166.prol.loopexit, label %.lr.ph.i166.prol

.lr.ph.i166.prol:                                 ; preds = %.lr.ph.i166.preheader602, %.lr.ph.i166.prol
  %indvars.iv.i167.prol = phi i64 [ %indvars.iv.next.i168.prol, %.lr.ph.i166.prol ], [ %indvars.iv.i167.ph, %.lr.ph.i166.preheader602 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i166.prol ], [ 0, %.lr.ph.i166.preheader602 ]
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %indvars.iv.i167.prol
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !50
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %indvars.iv.i167.prol
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !50
  %i.ht = fdiv double %i.hq, %i.hs
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %indvars.iv.i167.prol
  store double %i.ht, ptr %i.hu, align 8, !tbaa !50
  %indvars.iv.next.i168.prol = add nsw i64 %indvars.iv.i167.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter606
  br i1 %prol.iter.cmp.not, label %.lr.ph.i166.prol.loopexit, label %.lr.ph.i166.prol, !llvm.loop !157

.lr.ph.i166.prol.loopexit:                        ; preds = %.lr.ph.i166.prol, %.lr.ph.i166.preheader602
  %indvars.iv.i167.unr = phi i64 [ %indvars.iv.i167.ph, %.lr.ph.i166.preheader602 ], [ %indvars.iv.next.i168.prol, %.lr.ph.i166.prol ]
  %i.hv = sub nsw i64 %indvars.iv.i167.ph, %i.go
  %i.hw = icmp ugt i64 %i.hv, -4
  br i1 %i.hw, label %_ZN5Hydro7calcRhoEPKdS1_Pdii.exit, label %.lr.ph.i166

.lr.ph.i166:                                      ; preds = %.lr.ph.i166.prol.loopexit, %.lr.ph.i166
  %indvars.iv.i167 = phi i64 [ %indvars.iv.next.i168.3, %.lr.ph.i166 ], [ %indvars.iv.i167.unr, %.lr.ph.i166.prol.loopexit ] ; 7 uses
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %indvars.iv.i167
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !50
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %indvars.iv.i167
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !50
  %i.ib = fdiv double %i.hy, %i.ia
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %indvars.iv.i167
  store double %i.ib, ptr %i.ic, align 8, !tbaa !50
  %indvars.iv.next.i168 = add nsw i64 %indvars.iv.i167, 1 ; 3 uses
  %i.id = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %indvars.iv.next.i168
  %i.ie = load double, ptr %i.id, align 8, !tbaa !50
  %i.if = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i168
  %i.ig = load double, ptr %i.if, align 8, !tbaa !50
  %i.ih = fdiv double %i.ie, %i.ig
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %indvars.iv.next.i168
  store double %i.ih, ptr %i.ii, align 8, !tbaa !50
  %indvars.iv.next.i168.1 = add nsw i64 %indvars.iv.i167, 2 ; 3 uses
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %indvars.iv.next.i168.1
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !50
  %i.il = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i168.1
  %i.im = load double, ptr %i.il, align 8, !tbaa !50
  %i.in = fdiv double %i.ik, %i.im
  %i.io = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %indvars.iv.next.i168.1
  store double %i.in, ptr %i.io, align 8, !tbaa !50
  %indvars.iv.next.i168.2 = add nsw i64 %indvars.iv.i167, 3 ; 3 uses
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %indvars.iv.next.i168.2
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !50
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i168.2
  %i.is = load double, ptr %i.ir, align 8, !tbaa !50
  %i.it = fdiv double %i.iq, %i.is
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %indvars.iv.next.i168.2
  store double %i.it, ptr %i.iu, align 8, !tbaa !50
  %indvars.iv.next.i168.3 = add nsw i64 %indvars.iv.i167, 4 ; 2 uses
  %exitcond.not.i169.3 = icmp eq i64 %indvars.iv.next.i168.3, %i.go
  br i1 %exitcond.not.i169.3, label %_ZN5Hydro7calcRhoEPKdS1_Pdii.exit, label %.lr.ph.i166, !llvm.loop !159

_ZN5Hydro7calcRhoEPKdS1_Pdii.exit:                ; preds = %.lr.ph.i166.prol.loopexit, %.lr.ph.i166, %middle.block400, %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit
  %i.iv = load ptr, ptr %i.bp, align 8, !tbaa !83 ; 3 uses
  %i.iw = icmp slt i32 %i.fz, %i.gd               ; 2 uses
  br i1 %i.iw, label %.lr.ph.i170, label %_ZN5Hydro12calcCrnrMassEPKdS1_S1_Pdii.exit

.lr.ph.i170:                                      ; preds = %_ZN5Hydro7calcRhoEPKdS1_Pdii.exit
  %i.ix = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 120
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !160 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 104
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !161 ; 3 uses
  %i.jc = sext i32 %i.fz to i64                   ; 8 uses
  %wide.trip.count.i171 = sext i32 %i.gd to i64   ; 3 uses
  %i.jd = sub nsw i64 %wide.trip.count.i171, %i.jc
  %xtraiter608 = and i64 %i.jd, 1
  %lcmp.mod609.not = icmp eq i64 %xtraiter608, 0
  br i1 %lcmp.mod609.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i170
  %i.je = getelementptr inbounds [4 x i8], ptr %i.iz, i64 %i.jc
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !4
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.jb, i64 %i.jc
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !4
  %i.ji = sext i32 %i.jh to i64                   ; 2 uses
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.ji
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !50
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ji
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !50
  %i.jn = fmul double %i.jk, %i.jm
  %i.jo = fmul double %i.jn, 5.000000e-01
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.jc
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !50
  %i.jr = sext i32 %i.jf to i64
  %i.js = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.jr
  %i.jt = load double, ptr %i.js, align 8, !tbaa !50
  %i.ju = fadd double %i.jq, %i.jt
  %i.jv = fmul double %i.jo, %i.ju
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.iv, i64 %i.jc
  store double %i.jv, ptr %i.jw, align 8, !tbaa !50
  %indvars.iv.next.i173.prol = add nsw i64 %i.jc, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i170
  %indvars.iv.i172.unr = phi i64 [ %i.jc, %.lr.ph.i170 ], [ %indvars.iv.next.i173.prol, %.prol.loopexit.unr-lcssa ]
  %i.jx = add nsw i64 %wide.trip.count.i171, -1
  %i.jy = icmp eq i64 %i.jx, %i.jc
  br i1 %i.jy, label %_ZN5Hydro12calcCrnrMassEPKdS1_S1_Pdii.exit, label %.lr.ph.i170.new

.lr.ph.i170.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i170.new
  %indvars.iv.i172 = phi i64 [ %indvars.iv.next.i173.1, %.lr.ph.i170.new ], [ %indvars.iv.i172.unr, %.prol.loopexit ] ; 6 uses
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.iz, i64 %indvars.iv.i172
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !4
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.jb, i64 %indvars.iv.i172
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !4
  %i.kd = sext i32 %i.kc to i64                   ; 2 uses
  %i.ke = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.kd
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !50
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.kd
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !50
  %i.ki = fmul double %i.kf, %i.kh
  %i.kj = fmul double %i.ki, 5.000000e-01
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.at, i64 %indvars.iv.i172
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !50
  %i.km = sext i32 %i.ka to i64
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.km
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !50
  %i.kp = fadd double %i.kl, %i.ko
  %i.kq = fmul double %i.kj, %i.kp
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.iv, i64 %indvars.iv.i172
  store double %i.kq, ptr %i.kr, align 8, !tbaa !50
  %indvars.iv.next.i173 = add nsw i64 %indvars.iv.i172, 1 ; 4 uses
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.iz, i64 %indvars.iv.next.i173
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !4
  %i.ku = getelementptr inbounds [4 x i8], ptr %i.jb, i64 %indvars.iv.next.i173
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !4
  %i.kw = sext i32 %i.kv to i64                   ; 2 uses
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.kw
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !50
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.kw
  %i.la = load double, ptr %i.kz, align 8, !tbaa !50
  %i.lb = fmul double %i.ky, %i.la
  %i.lc = fmul double %i.lb, 5.000000e-01
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.at, i64 %indvars.iv.next.i173
  %i.le = load double, ptr %i.ld, align 8, !tbaa !50
  %i.lf = sext i32 %i.kt to i64
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.lf
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !50
  %i.li = fadd double %i.le, %i.lh
  %i.lj = fmul double %i.lc, %i.li
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.iv, i64 %indvars.iv.next.i173
  store double %i.lj, ptr %i.lk, align 8, !tbaa !50
  %indvars.iv.next.i173.1 = add nsw i64 %indvars.iv.i172, 2 ; 2 uses
  %exitcond.not.i174.1 = icmp eq i64 %indvars.iv.next.i173.1, %wide.trip.count.i171
  br i1 %exitcond.not.i174.1, label %_ZN5Hydro12calcCrnrMassEPKdS1_S1_Pdii.exit, label %.lr.ph.i170.new, !llvm.loop !162

_ZN5Hydro12calcCrnrMassEPKdS1_S1_Pdii.exit:       ; preds = %.prol.loopexit, %.lr.ph.i170.new, %_ZN5Hydro7calcRhoEPKdS1_Pdii.exit
  %i.ll = load ptr, ptr %i.bq, align 8, !tbaa !46
  %i.lm = load ptr, ptr %i.br, align 8, !tbaa !85
  %i.ln = load ptr, ptr %i.bs, align 8, !tbaa !87
  %i.lo = load ptr, ptr %i.bt, align 8, !tbaa !90
  %i.lp = load ptr, ptr %i.bu, align 8, !tbaa !91
  %i.lq = load ptr, ptr %i.bv, align 8, !tbaa !92
  tail call void @_ZN7PolyGas15calcStateAtHalfEPKdS1_S1_S1_S1_S1_dPdS2_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.ll, ptr noundef %i.lm, ptr noundef %i.ab, ptr noundef %i.ae, ptr noundef %i.ln, ptr noundef %i.lo, ptr noundef %i.gz, double noundef %1, ptr noundef %i.lp, ptr noundef %i.lq, i32 noundef %i.gh, i32 noundef %i.gl)
  %i.lr = load ptr, ptr %i.bq, align 8, !tbaa !46
  %i.ls = load ptr, ptr %i.bu, align 8, !tbaa !91
  %i.lt = load ptr, ptr %i.bw, align 8, !tbaa !94
  tail call void @_ZN7PolyGas9calcForceEPKdPK7double2PS2_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.lr, ptr noundef %i.ls, ptr noundef %i.ah, ptr noundef %i.lt, i32 noundef %i.fz, i32 noundef %i.gd)
  %i.lu = load ptr, ptr %i.bx, align 8, !tbaa !47
  %i.lv = load ptr, ptr %i.bo, align 8, !tbaa !86
end_hunk_1
begin_hunk_2_@_ZN5Hydro7doCycleEd:bb.a
  %i.qm = phi ptr [ %i.ra, %.lr.ph224 ], [ %i.nm, %bb.h ]
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %indvars.iv244
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !53 ; 3 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 40
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !56
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %indvars.iv247
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !4
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qo, i64 64
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !56
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %indvars.iv247
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !4
  %i.qx = load ptr, ptr %i.fq, align 8, !tbaa !79
  %i.qy = load ptr, ptr %i.fm, align 8, !tbaa !81
  tail call void @_ZN7HydroBC12applyFixedBCEP7double2S1_ii(ptr noundef nonnull align 8 dereferenceable(88) %i.qo, ptr noundef %i.qx, ptr noundef %i.qy, i32 noundef %i.qs, i32 noundef %i.qw)
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 2 uses
  %i.qz = load ptr, ptr %i.fp, align 8, !tbaa !51 ; 2 uses
  %i.ra = load ptr, ptr %i.fo, align 8, !tbaa !55 ; 3 uses
  %i.rb = ptrtoint ptr %i.qz to i64
  %i.rc = ptrtoint ptr %i.ra to i64
  %i.rd = sub i64 %i.rb, %i.rc
  %i.re = ashr exact i64 %i.rd, 3
  %i.rf = icmp ugt i64 %i.re, %indvars.iv.next245
  br i1 %i.rf, label %.lr.ph224, label %._crit_edge225, !llvm.loop !205

._crit_edge233:                                   ; preds = %_ZN5Hydro8calcWorkEPK7double2S2_S2_S2_S2_dPdS3_ii.exit, %._crit_edge229
  %i.rg = load ptr, ptr %0, align 8, !tbaa !8
  tail call void @_ZN4Mesh13checkBadSidesEv(ptr noundef nonnull align 8 dereferenceable(616) %i.rg)
  %i.rh = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 560
  %i.rj = load i32, ptr %i.ri, align 8, !tbaa !72
  %i.rk = icmp sgt i32 %i.rj, 0
  br i1 %i.rk, label %.lr.ph236, label %._crit_edge237

.lr.ph236:                                        ; preds = %._crit_edge233
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ro = fdiv double 1.000000e+00, %1            ; 4 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 304
  %broadcast.splatinsert583 = insertelement <2 x double> poison, double %i.ro, i64 0
  %broadcast.splat584 = shufflevector <2 x double> %broadcast.splatinsert583, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph232, %_ZN5Hydro8calcWorkEPK7double2S2_S2_S2_S2_dPdS3_ii.exit
  %indvars.iv252 = phi i64 [ 0, %.lr.ph232 ], [ %indvars.iv.next253, %_ZN5Hydro8calcWorkEPK7double2S2_S2_S2_S2_dPdS3_ii.exit ] ; 5 uses
  %i.rt = load ptr, ptr %0, align 8, !tbaa !8     ; 5 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 408
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !56
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %indvars.iv252
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !4  ; 4 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rt, i64 432
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !56
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %indvars.iv252
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !4  ; 4 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rt, i64 456
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !56
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %indvars.iv252
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !4  ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rt, i64 480
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !56
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %indvars.iv252
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !4  ; 2 uses
  tail call void @_ZN4Mesh8calcCtrsEPK7double2PS0_S3_ii(ptr noundef nonnull align 8 dereferenceable(616) %i.rt, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k, i32 noundef %i.rx, i32 noundef %i.sb)
  %i.sk = load ptr, ptr %0, align 8, !tbaa !8
  tail call void @_ZN4Mesh8calcVolsEPK7double2S2_PdS3_S3_S3_ii(ptr noundef nonnull align 8 dereferenceable(616) %i.sk, ptr noundef %i.g, ptr noundef %i.k, ptr noundef %i.m, ptr noundef %i.o, ptr noundef %i.q, ptr noundef %i.s, i32 noundef %i.rx, i32 noundef %i.sb)
  %i.sl = load ptr, ptr %i.nf, align 8, !tbaa !89 ; 2 uses
  %.not6.i.i.i = icmp eq i32 %i.sf, %i.sj
  br i1 %.not6.i.i.i, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.i
  %i.sm = sext i32 %i.sj to i64
  %i.sn = sext i32 %i.sf to i64                   ; 2 uses
  %i.so = getelementptr [8 x i8], ptr %i.sl, i64 %i.sn
  %i.sp = sub nsw i64 %i.sm, %i.sn
  %i.sq = shl nsw i64 %i.sp, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.so, i8 0, i64 %i.sq, i1 false), !tbaa !50
  br label %_ZSt4fillIPddEvT_S1_RKT0_.exit

_ZSt4fillIPddEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i.preheader, %bb.i
  %i.sr = load ptr, ptr %i.ng, align 8, !tbaa !94
  %i.ss = load ptr, ptr %i.nh, align 8, !tbaa !95
  %i.st = load ptr, ptr %i.ni, align 8, !tbaa !79 ; 2 uses
  %i.su = load ptr, ptr %i.nj, align 8, !tbaa !78 ; 2 uses
  %i.sv = load ptr, ptr %i.nk, align 8, !tbaa !88
  %i.sw = icmp slt i32 %i.rx, %i.sb
  br i1 %i.sw, label %.lr.ph.i190, label %_ZN5Hydro8calcWorkEPK7double2S2_S2_S2_S2_dPdS3_ii.exit

.lr.ph.i190:                                      ; preds = %_ZSt4fillIPddEvT_S1_RKT0_.exit
  %i.sx = load ptr, ptr %0, align 8, !tbaa !8     ; 3 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 88
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !206
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sx, i64 96
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !207
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sx, i64 104
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !161
  %i.te = sext i32 %i.rx to i64
  %wide.trip.count.i191 = sext i32 %i.sb to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i190
  %indvars.iv.i192 = phi i64 [ %i.te, %.lr.ph.i190 ], [ %indvars.iv.next.i193, %bb.j ] ; 6 uses
  %i.tf = getelementptr inbounds [4 x i8], ptr %i.sz, i64 %indvars.iv.i192
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !4
  %i.th = getelementptr inbounds [4 x i8], ptr %i.tb, i64 %indvars.iv.i192
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !4
  %i.tj = getelementptr inbounds [4 x i8], ptr %i.td, i64 %indvars.iv.i192
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !4
  %i.tl = getelementptr inbounds [16 x i8], ptr %i.sr, i64 %indvars.iv.i192 ; 2 uses
  %i.tm = getelementptr inbounds [16 x i8], ptr %i.ss, i64 %indvars.iv.i192 ; 2 uses
  %i.tn = load double, ptr %i.tl, align 8, !tbaa !112, !noalias !208
  %i.to = load double, ptr %i.tm, align 8, !tbaa !112, !noalias !208
  %i.tp = fadd double %i.tn, %i.to                ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %i.tr = load double, ptr %i.tq, align 8, !tbaa !114, !noalias !208
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  %i.tt = load double, ptr %i.ts, align 8, !tbaa !114, !noalias !208
  %i.tu = fadd double %i.tr, %i.tt                ; 2 uses
  %i.tv = sext i32 %i.tg to i64                   ; 3 uses
  %i.tw = getelementptr inbounds [16 x i8], ptr %i.st, i64 %i.tv ; 2 uses
  %i.tx = getelementptr inbounds [16 x i8], ptr %i.su, i64 %i.tv ; 2 uses
  %i.ty = load double, ptr %i.tw, align 8, !tbaa !112, !noalias !211
  %i.tz = load double, ptr %i.tx, align 8, !tbaa !112, !noalias !211
  %i.ua = fadd double %i.ty, %i.tz
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  %i.uc = load double, ptr %i.ub, align 8, !tbaa !114, !noalias !211
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %i.ue = load double, ptr %i.ud, align 8, !tbaa !114, !noalias !211
  %i.uf = fadd double %i.uc, %i.ue
  %i.ug = fmul double %i.tu, %i.uf
  %i.uh = tail call noundef double @llvm.fmuladd.f64(double %i.tp, double %i.ua, double %i.ug)
  %i.ui = fneg double %i.tp
  %i.uj = fneg double %i.tu
  %i.uk = sext i32 %i.ti to i64                   ; 3 uses
  %i.ul = getelementptr inbounds [16 x i8], ptr %i.st, i64 %i.uk ; 2 uses
  %i.um = getelementptr inbounds [16 x i8], ptr %i.su, i64 %i.uk ; 2 uses
  %i.un = load double, ptr %i.ul, align 8, !tbaa !112, !noalias !214
  %i.uo = load double, ptr %i.um, align 8, !tbaa !112, !noalias !214
  %i.up = fadd double %i.un, %i.uo
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  %i.ur = load double, ptr %i.uq, align 8, !tbaa !114, !noalias !214
  %i.us = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  %i.ut = load double, ptr %i.us, align 8, !tbaa !114, !noalias !214
  %i.uu = fadd double %i.ur, %i.ut
  %i.uv = fmul double %i.uu, %i.uj
  %i.uw = tail call noundef double @llvm.fmuladd.f64(double %i.ui, double %i.up, double %i.uv)
  %i.ux = getelementptr inbounds [16 x i8], ptr %i.an, i64 %i.tv
  %i.uy = load double, ptr %i.ux, align 8, !tbaa !112
  %i.uz = getelementptr inbounds [16 x i8], ptr %i.an, i64 %i.uk
  %i.va = load double, ptr %i.uz, align 8, !tbaa !112
  %i.vb = fmul double %i.va, %i.uw
  %i.vc = tail call double @llvm.fmuladd.f64(double %i.uh, double %i.uy, double %i.vb)
  %i.vd = fmul double %i.nl, %i.vc                ; 2 uses
  %i.ve = sext i32 %i.tk to i64                   ; 2 uses
  %i.vf = getelementptr inbounds [8 x i8], ptr %i.sv, i64 %i.ve ; 2 uses
  %i.vg = load double, ptr %i.vf, align 8, !tbaa !50
  %i.vh = fadd double %i.vg, %i.vd
  store double %i.vh, ptr %i.vf, align 8, !tbaa !50
  %i.vi = getelementptr inbounds [8 x i8], ptr %i.sl, i64 %i.ve ; 2 uses
  %i.vj = load double, ptr %i.vi, align 8, !tbaa !50
  %i.vk = fadd double %i.vj, %i.vd
  store double %i.vk, ptr %i.vi, align 8, !tbaa !50
  %indvars.iv.next.i193 = add nsw i64 %indvars.iv.i192, 1 ; 2 uses
  %exitcond.not.i194 = icmp eq i64 %indvars.iv.next.i193, %wide.trip.count.i191
  br i1 %exitcond.not.i194, label %_ZN5Hydro8calcWorkEPK7double2S2_S2_S2_S2_dPdS3_ii.exit, label %bb.j, !llvm.loop !217

_ZN5Hydro8calcWorkEPK7double2S2_S2_S2_S2_dPdS3_ii.exit: ; preds = %bb.j, %_ZSt4fillIPddEvT_S1_RKT0_.exit
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 2 uses
  %exitcond256.not = icmp eq i64 %indvars.iv.next253, %wide.trip.count255
  br i1 %exitcond256.not, label %._crit_edge233, label %bb.i, !llvm.loop !218

._crit_edge237:                                   ; preds = %_ZN5Hydro7calcRhoEPKdS1_Pdii.exit213, %._crit_edge233
  ret void

bb.k:                                             ; preds = %.lr.ph236, %_ZN5Hydro7calcRhoEPKdS1_Pdii.exit213
  %indvars.iv257 = phi i64 [ 0, %.lr.ph236 ], [ %indvars.iv.next258, %_ZN5Hydro7calcRhoEPKdS1_Pdii.exit213 ] ; 3 uses
  %i.vl = phi ptr [ %i.rh, %.lr.ph236 ], [ %i.abv, %_ZN5Hydro7calcRhoEPKdS1_Pdii.exit213 ] ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 568
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !56
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.vn, i64 %indvars.iv257
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !4  ; 3 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vl, i64 592
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !56
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.vr, i64 %indvars.iv257
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !4  ; 3 uses
  %i.vu = load ptr, ptr %i.rl, align 8, !tbaa !89 ; 5 uses
  %i.vv = ptrtoaddr ptr %i.vu to i64
  %i.vw = load ptr, ptr %i.rm, align 8, !tbaa !91 ; 5 uses
  %i.vx = ptrtoaddr ptr %i.vw to i64
  %i.vy = load ptr, ptr %i.rn, align 8, !tbaa !90 ; 5 uses
  %i.vz = ptrtoaddr ptr %i.vy to i64              ; 4 uses
  %i.wa = icmp slt i32 %i.vp, %i.vt
  br i1 %i.wa, label %.lr.ph.preheader.i195, label %_ZN5Hydro7calcRhoEPKdS1_Pdii.exit213

.lr.ph.preheader.i195:                            ; preds = %bb.k
  %i.wb = sext i32 %i.vp to i64                   ; 15 uses
  %wide.trip.count.i196 = sext i32 %i.vt to i64   ; 12 uses
  %i.wc = sub nsw i64 %wide.trip.count.i196, %i.wb ; 3 uses
  %min.iters.check579 = icmp ult i64 %i.wc, 4
  br i1 %min.iters.check579, label %.lr.ph.i197.preheader, label %vector.memcheck570

vector.memcheck570:                               ; preds = %.lr.ph.preheader.i195
  %i.wd = sub i64 %i.vz, %i.t
  %diff.check571 = icmp ult i64 %i.wd, 32
  %i.we = sub i64 %i.vz, %i.af
  %diff.check572 = icmp ult i64 %i.we, 32
  %conflict.rdx573 = or i1 %diff.check571, %diff.check572
  %i.wf = sub i64 %i.vz, %i.vv
  %diff.check574 = icmp ult i64 %i.wf, 32
  %conflict.rdx575 = or i1 %conflict.rdx573, %diff.check574
  %i.wg = sub i64 %i.vz, %i.vx
  %diff.check576 = icmp ult i64 %i.wg, 32
  %conflict.rdx577 = or i1 %conflict.rdx575, %diff.check576
  br i1 %conflict.rdx577, label %.lr.ph.i197.preheader, label %vector.ph580

vector.ph580:                                     ; preds = %vector.memcheck570
  %n.vec582 = and i64 %i.wc, -4                   ; 3 uses
  %i.wh = add nsw i64 %n.vec582, %i.wb
  br label %vector.body585

vector.body585:                                   ; preds = %vector.body585, %vector.ph580
  %index586 = phi i64 [ 0, %vector.ph580 ], [ %index.next595, %vector.body585 ] ; 2 uses
  %i.wi = add i64 %index586, %i.wb                ; 5 uses
  %i.wj = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.wi ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 16
  %wide.load587 = load <2 x double>, ptr %i.wj, align 8, !tbaa !50
  %wide.load588 = load <2 x double>, ptr %i.wk, align 8, !tbaa !50
  %i.wl = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.wi ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 16
  %wide.load589 = load <2 x double>, ptr %i.wl, align 8, !tbaa !50
  %wide.load590 = load <2 x double>, ptr %i.wm, align 8, !tbaa !50
  %i.wn = fsub <2 x double> %wide.load587, %wide.load589
  %i.wo = fsub <2 x double> %wide.load588, %wide.load590
  %i.wp = getelementptr inbounds [8 x i8], ptr %i.vu, i64 %i.wi ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 16
  %wide.load591 = load <2 x double>, ptr %i.wp, align 8, !tbaa !50
  %wide.load592 = load <2 x double>, ptr %i.wq, align 8, !tbaa !50
  %i.wr = getelementptr inbounds [8 x i8], ptr %i.vw, i64 %i.wi ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 16
  %wide.load593 = load <2 x double>, ptr %i.wr, align 8, !tbaa !50
  %wide.load594 = load <2 x double>, ptr %i.ws, align 8, !tbaa !50
  %i.wt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load593, <2 x double> %i.wn, <2 x double> %wide.load591)
  %i.wu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load594, <2 x double> %i.wo, <2 x double> %wide.load592)
  %i.wv = fmul <2 x double> %broadcast.splat584, %i.wt
  %i.ww = fmul <2 x double> %broadcast.splat584, %i.wu
  %i.wx = getelementptr inbounds [8 x i8], ptr %i.vy, i64 %i.wi ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 16
  store <2 x double> %i.wv, ptr %i.wx, align 8, !tbaa !50
  store <2 x double> %i.ww, ptr %i.wy, align 8, !tbaa !50
  %index.next595 = add nuw i64 %index586, 4       ; 2 uses
  %i.wz = icmp eq i64 %index.next595, %n.vec582
  br i1 %i.wz, label %middle.block596, label %vector.body585, !llvm.loop !219

middle.block596:                                  ; preds = %vector.body585
  %cmp.n597 = icmp eq i64 %i.wc, %n.vec582
  br i1 %cmp.n597, label %.lr.ph.preheader.i201, label %.lr.ph.i197.preheader

.lr.ph.i197.preheader:                            ; preds = %vector.memcheck570, %.lr.ph.preheader.i195, %middle.block596
  %indvars.iv.i198.ph = phi i64 [ %i.wb, %vector.memcheck570 ], [ %i.wb, %.lr.ph.preheader.i195 ], [ %i.wh, %middle.block596 ] ; 9 uses
  %i.xa = sub nsw i64 %wide.trip.count.i196, %indvars.iv.i198.ph
  %xtraiter611 = and i64 %i.xa, 1
  %lcmp.mod612.not = icmp eq i64 %xtraiter611, 0
  br i1 %lcmp.mod612.not, label %.lr.ph.i197.prol.loopexit, label %.lr.ph.i197.prol

.lr.ph.i197.prol:                                 ; preds = %.lr.ph.i197.preheader
  %i.xb = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.i198.ph
  %i.xc = load double, ptr %i.xb, align 8, !tbaa !50
  %i.xd = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %indvars.iv.i198.ph
  %i.xe = load double, ptr %i.xd, align 8, !tbaa !50
  %i.xf = fsub double %i.xc, %i.xe
  %i.xg = getelementptr inbounds [8 x i8], ptr %i.vu, i64 %indvars.iv.i198.ph
  %i.xh = load double, ptr %i.xg, align 8, !tbaa !50
  %i.xi = getelementptr inbounds [8 x i8], ptr %i.vw, i64 %indvars.iv.i198.ph
  %i.xj = load double, ptr %i.xi, align 8, !tbaa !50
  %i.xk = tail call double @llvm.fmuladd.f64(double %i.xj, double %i.xf, double %i.xh)
  %i.xl = fmul double %i.ro, %i.xk
  %i.xm = getelementptr inbounds [8 x i8], ptr %i.vy, i64 %indvars.iv.i198.ph
  store double %i.xl, ptr %i.xm, align 8, !tbaa !50
  %indvars.iv.next.i199.prol = add nsw i64 %indvars.iv.i198.ph, 1
  br label %.lr.ph.i197.prol.loopexit

.lr.ph.i197.prol.loopexit:                        ; preds = %.lr.ph.i197.prol, %.lr.ph.i197.preheader
  %indvars.iv.i198.unr = phi i64 [ %indvars.iv.i198.ph, %.lr.ph.i197.preheader ], [ %indvars.iv.next.i199.prol, %.lr.ph.i197.prol ]
  %i.xn = add nsw i64 %wide.trip.count.i196, -1
  %i.xo = icmp eq i64 %indvars.iv.i198.ph, %i.xn
  br i1 %i.xo, label %.lr.ph.preheader.i201, label %.lr.ph.i197

.lr.ph.i197:                                      ; preds = %.lr.ph.i197.prol.loopexit, %.lr.ph.i197
  %indvars.iv.i198 = phi i64 [ %indvars.iv.next.i199.1, %.lr.ph.i197 ], [ %indvars.iv.i198.unr, %.lr.ph.i197.prol.loopexit ] ; 7 uses
  %i.xp = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.i198
  %i.xq = load double, ptr %i.xp, align 8, !tbaa !50
  %i.xr = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %indvars.iv.i198
  %i.xs = load double, ptr %i.xr, align 8, !tbaa !50
  %i.xt = fsub double %i.xq, %i.xs
  %i.xu = getelementptr inbounds [8 x i8], ptr %i.vu, i64 %indvars.iv.i198
  %i.xv = load double, ptr %i.xu, align 8, !tbaa !50
  %i.xw = getelementptr inbounds [8 x i8], ptr %i.vw, i64 %indvars.iv.i198
  %i.xx = load double, ptr %i.xw, align 8, !tbaa !50
  %i.xy = tail call double @llvm.fmuladd.f64(double %i.xx, double %i.xt, double %i.xv)
  %i.xz = fmul double %i.ro, %i.xy
  %i.ya = getelementptr inbounds [8 x i8], ptr %i.vy, i64 %indvars.iv.i198
  store double %i.xz, ptr %i.ya, align 8, !tbaa !50
  %indvars.iv.next.i199 = add nsw i64 %indvars.iv.i198, 1 ; 5 uses
  %i.yb = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.next.i199
  %i.yc = load double, ptr %i.yb, align 8, !tbaa !50
  %i.yd = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %indvars.iv.next.i199
  %i.ye = load double, ptr %i.yd, align 8, !tbaa !50
  %i.yf = fsub double %i.yc, %i.ye
  %i.yg = getelementptr inbounds [8 x i8], ptr %i.vu, i64 %indvars.iv.next.i199
  %i.yh = load double, ptr %i.yg, align 8, !tbaa !50
  %i.yi = getelementptr inbounds [8 x i8], ptr %i.vw, i64 %indvars.iv.next.i199
  %i.yj = load double, ptr %i.yi, align 8, !tbaa !50
  %i.yk = tail call double @llvm.fmuladd.f64(double %i.yj, double %i.yf, double %i.yh)
  %i.yl = fmul double %i.ro, %i.yk
  %i.ym = getelementptr inbounds [8 x i8], ptr %i.vy, i64 %indvars.iv.next.i199
  store double %i.yl, ptr %i.ym, align 8, !tbaa !50
  %indvars.iv.next.i199.1 = add nsw i64 %indvars.iv.i198, 2 ; 2 uses
  %exitcond.not.i200.1 = icmp eq i64 %indvars.iv.next.i199.1, %wide.trip.count.i196
  br i1 %exitcond.not.i200.1, label %.lr.ph.preheader.i201, label %.lr.ph.i197, !llvm.loop !220

.lr.ph.preheader.i201:                            ; preds = %.lr.ph.i197.prol.loopexit, %.lr.ph.i197, %middle.block596
  %i.yn = load ptr, ptr %i.rp, align 8, !tbaa !88 ; 5 uses
  %i.yo = load ptr, ptr %i.rq, align 8, !tbaa !84 ; 11 uses
  %i.yp = ptrtoaddr ptr %i.yo to i64              ; 2 uses
  %i.yq = load ptr, ptr %i.rr, align 8, !tbaa !87 ; 5 uses
  %i.yr = sub nsw i64 %wide.trip.count.i196, %i.wb ; 3 uses
  %min.iters.check558 = icmp ult i64 %i.yr, 2
  br i1 %min.iters.check558, label %.lr.ph.i203.preheader, label %vector.memcheck553

vector.memcheck553:                               ; preds = %.lr.ph.preheader.i201
  %i.ys = ptrtoaddr ptr %i.yq to i64              ; 2 uses
  %i.yt = ptrtoaddr ptr %i.yn to i64
  %i.yu = sub i64 %i.ys, %i.yt
  %diff.check554 = icmp ult i64 %i.yu, 16
  %i.yv = sub i64 %i.ys, %i.yp
  %diff.check555 = icmp ult i64 %i.yv, 16
  %conflict.rdx556 = or i1 %diff.check554, %diff.check555
  br i1 %conflict.rdx556, label %.lr.ph.i203.preheader, label %vector.ph559

vector.ph559:                                     ; preds = %vector.memcheck553
  %n.vec561 = and i64 %i.yr, -2                   ; 3 uses
  %i.yw = add nsw i64 %n.vec561, %i.wb
  br label %vector.body562

vector.body562:                                   ; preds = %vector.body562, %vector.ph559
  %index563 = phi i64 [ 0, %vector.ph559 ], [ %index.next566, %vector.body562 ] ; 2 uses
  %i.yx = add i64 %index563, %i.wb                ; 3 uses
  %i.yy = getelementptr inbounds [8 x i8], ptr %i.yn, i64 %i.yx
  %wide.load564 = load <2 x double>, ptr %i.yy, align 8, !tbaa !50
  %i.yz = getelementptr inbounds [8 x i8], ptr %i.yo, i64 %i.yx
  %wide.load565 = load <2 x double>, ptr %i.yz, align 8, !tbaa !50
  %i.za = fadd <2 x double> %wide.load565, splat (double 1.000000e-99)
  %i.zb = fdiv <2 x double> %wide.load564, %i.za
  %i.zc = getelementptr inbounds [8 x i8], ptr %i.yq, i64 %i.yx
  store <2 x double> %i.zb, ptr %i.zc, align 8, !tbaa !50
  %index.next566 = add nuw i64 %index563, 2       ; 2 uses
  %i.zd = icmp eq i64 %index.next566, %n.vec561
  br i1 %i.zd, label %middle.block567, label %vector.body562, !llvm.loop !221

middle.block567:                                  ; preds = %vector.body562
  %cmp.n568 = icmp eq i64 %i.yr, %n.vec561
  br i1 %cmp.n568, label %.lr.ph.preheader.i207, label %.lr.ph.i203.preheader

.lr.ph.i203.preheader:                            ; preds = %vector.memcheck553, %.lr.ph.preheader.i201, %middle.block567
  %indvars.iv.i204.ph = phi i64 [ %i.wb, %vector.memcheck553 ], [ %i.wb, %.lr.ph.preheader.i201 ], [ %i.yw, %middle.block567 ] ; 7 uses
  %i.ze = sub nsw i64 %wide.trip.count.i196, %indvars.iv.i204.ph
  %xtraiter614 = and i64 %i.ze, 1
  %lcmp.mod615.not = icmp eq i64 %xtraiter614, 0
  br i1 %lcmp.mod615.not, label %.lr.ph.i203.prol.loopexit, label %.lr.ph.i203.prol

.lr.ph.i203.prol:                                 ; preds = %.lr.ph.i203.preheader
  %i.zf = getelementptr inbounds [8 x i8], ptr %i.yn, i64 %indvars.iv.i204.ph
  %i.zg = load double, ptr %i.zf, align 8, !tbaa !50
  %i.zh = getelementptr inbounds [8 x i8], ptr %i.yo, i64 %indvars.iv.i204.ph
  %i.zi = load double, ptr %i.zh, align 8, !tbaa !50
  %i.zj = fadd double %i.zi, 1.000000e-99
  %i.zk = fdiv double %i.zg, %i.zj
  %i.zl = getelementptr inbounds [8 x i8], ptr %i.yq, i64 %indvars.iv.i204.ph
  store double %i.zk, ptr %i.zl, align 8, !tbaa !50
  %indvars.iv.next.i205.prol = add nsw i64 %indvars.iv.i204.ph, 1
  br label %.lr.ph.i203.prol.loopexit

.lr.ph.i203.prol.loopexit:                        ; preds = %.lr.ph.i203.prol, %.lr.ph.i203.preheader
  %indvars.iv.i204.unr = phi i64 [ %indvars.iv.i204.ph, %.lr.ph.i203.preheader ], [ %indvars.iv.next.i205.prol, %.lr.ph.i203.prol ]
  %i.zm = add nsw i64 %wide.trip.count.i196, -1
  %i.zn = icmp eq i64 %indvars.iv.i204.ph, %i.zm
  br i1 %i.zn, label %.lr.ph.preheader.i207, label %.lr.ph.i203

.lr.ph.i203:                                      ; preds = %.lr.ph.i203.prol.loopexit, %.lr.ph.i203
  %indvars.iv.i204 = phi i64 [ %indvars.iv.next.i205.1, %.lr.ph.i203 ], [ %indvars.iv.i204.unr, %.lr.ph.i203.prol.loopexit ] ; 5 uses
  %i.zo = getelementptr inbounds [8 x i8], ptr %i.yn, i64 %indvars.iv.i204
  %i.zp = load double, ptr %i.zo, align 8, !tbaa !50
  %i.zq = getelementptr inbounds [8 x i8], ptr %i.yo, i64 %indvars.iv.i204
  %i.zr = load double, ptr %i.zq, align 8, !tbaa !50
  %i.zs = fadd double %i.zr, 1.000000e-99
  %i.zt = fdiv double %i.zp, %i.zs
  %i.zu = getelementptr inbounds [8 x i8], ptr %i.yq, i64 %indvars.iv.i204
  store double %i.zt, ptr %i.zu, align 8, !tbaa !50
  %indvars.iv.next.i205 = add nsw i64 %indvars.iv.i204, 1 ; 3 uses
  %i.zv = getelementptr inbounds [8 x i8], ptr %i.yn, i64 %indvars.iv.next.i205
  %i.zw = load double, ptr %i.zv, align 8, !tbaa !50
  %i.zx = getelementptr inbounds [8 x i8], ptr %i.yo, i64 %indvars.iv.next.i205
  %i.zy = load double, ptr %i.zx, align 8, !tbaa !50
  %i.zz = fadd double %i.zy, 1.000000e-99
  %i.aaa = fdiv double %i.zw, %i.zz
  %i.aab = getelementptr inbounds [8 x i8], ptr %i.yq, i64 %indvars.iv.next.i205
  store double %i.aaa, ptr %i.aab, align 8, !tbaa !50
  %indvars.iv.next.i205.1 = add nsw i64 %indvars.iv.i204, 2 ; 2 uses
  %exitcond.not.i206.1 = icmp eq i64 %indvars.iv.next.i205.1, %wide.trip.count.i196
  br i1 %exitcond.not.i206.1, label %.lr.ph.preheader.i207, label %.lr.ph.i203, !llvm.loop !222

.lr.ph.preheader.i207:                            ; preds = %.lr.ph.i203.prol.loopexit, %.lr.ph.i203, %middle.block567
  %i.aac = load ptr, ptr %i.rs, align 8, !tbaa !85 ; 7 uses
  %i.aad = sub nsw i64 %wide.trip.count.i196, %i.wb ; 3 uses
  %min.iters.check541 = icmp ult i64 %i.aad, 2
  br i1 %min.iters.check541, label %.lr.ph.i209.preheader, label %vector.memcheck536

vector.memcheck536:                               ; preds = %.lr.ph.preheader.i207
  %i.aae = ptrtoaddr ptr %i.aac to i64            ; 2 uses
  %i.aaf = sub i64 %i.aae, %i.yp
  %diff.check537 = icmp ult i64 %i.aaf, 16
  %i.aag = sub i64 %i.aae, %i.t
  %diff.check538 = icmp ult i64 %i.aag, 16
  %conflict.rdx539 = or i1 %diff.check537, %diff.check538
  br i1 %conflict.rdx539, label %.lr.ph.i209.preheader, label %vector.ph542

vector.ph542:                                     ; preds = %vector.memcheck536
  %n.vec544 = and i64 %i.aad, -2                  ; 3 uses
  %i.aah = add nsw i64 %n.vec544, %i.wb
  br label %vector.body545

vector.body545:                                   ; preds = %vector.body545, %vector.ph542
  %index546 = phi i64 [ 0, %vector.ph542 ], [ %index.next549, %vector.body545 ] ; 2 uses
  %i.aai = add i64 %index546, %i.wb               ; 3 uses
  %i.aaj = getelementptr inbounds [8 x i8], ptr %i.yo, i64 %i.aai
  %wide.load547 = load <2 x double>, ptr %i.aaj, align 8, !tbaa !50
  %i.aak = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.aai
  %wide.load548 = load <2 x double>, ptr %i.aak, align 8, !tbaa !50
  %i.aal = fdiv <2 x double> %wide.load547, %wide.load548
  %i.aam = getelementptr inbounds [8 x i8], ptr %i.aac, i64 %i.aai
  store <2 x double> %i.aal, ptr %i.aam, align 8, !tbaa !50
  %index.next549 = add nuw i64 %index546, 2       ; 2 uses
  %i.aan = icmp eq i64 %index.next549, %n.vec544
  br i1 %i.aan, label %middle.block550, label %vector.body545, !llvm.loop !223

middle.block550:                                  ; preds = %vector.body545
  %cmp.n551 = icmp eq i64 %i.aad, %n.vec544
  br i1 %cmp.n551, label %_ZN5Hydro7calcRhoEPKdS1_Pdii.exit213, label %.lr.ph.i209.preheader

.lr.ph.i209.preheader:                            ; preds = %vector.memcheck536, %.lr.ph.preheader.i207, %middle.block550
  %indvars.iv.i210.ph = phi i64 [ %i.wb, %vector.memcheck536 ], [ %i.wb, %.lr.ph.preheader.i207 ], [ %i.aah, %middle.block550 ] ; 4 uses
  %i.aao = sub nsw i64 %wide.trip.count.i196, %indvars.iv.i210.ph
  %xtraiter617 = and i64 %i.aao, 3                ; 2 uses
  %lcmp.mod618.not = icmp eq i64 %xtraiter617, 0
  br i1 %lcmp.mod618.not, label %.lr.ph.i209.prol.loopexit, label %.lr.ph.i209.prol

.lr.ph.i209.prol:                                 ; preds = %.lr.ph.i209.preheader, %.lr.ph.i209.prol
  %indvars.iv.i210.prol = phi i64 [ %indvars.iv.next.i211.prol, %.lr.ph.i209.prol ], [ %indvars.iv.i210.ph, %.lr.ph.i209.preheader ] ; 4 uses
  %prol.iter619 = phi i64 [ %prol.iter619.next, %.lr.ph.i209.prol ], [ 0, %.lr.ph.i209.preheader ]
  %i.aap = getelementptr inbounds [8 x i8], ptr %i.yo, i64 %indvars.iv.i210.prol
  %i.aaq = load double, ptr %i.aap, align 8, !tbaa !50
  %i.aar = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.i210.prol
  %i.aas = load double, ptr %i.aar, align 8, !tbaa !50
  %i.aat = fdiv double %i.aaq, %i.aas
  %i.aau = getelementptr inbounds [8 x i8], ptr %i.aac, i64 %indvars.iv.i210.prol
  store double %i.aat, ptr %i.aau, align 8, !tbaa !50
  %indvars.iv.next.i211.prol = add nsw i64 %indvars.iv.i210.prol, 1 ; 2 uses
  %prol.iter619.next = add i64 %prol.iter619, 1   ; 2 uses
  %prol.iter619.cmp.not = icmp eq i64 %prol.iter619.next, %xtraiter617
  br i1 %prol.iter619.cmp.not, label %.lr.ph.i209.prol.loopexit, label %.lr.ph.i209.prol, !llvm.loop !224

.lr.ph.i209.prol.loopexit:                        ; preds = %.lr.ph.i209.prol, %.lr.ph.i209.preheader
  %indvars.iv.i210.unr = phi i64 [ %indvars.iv.i210.ph, %.lr.ph.i209.preheader ], [ %indvars.iv.next.i211.prol, %.lr.ph.i209.prol ]
  %i.aav = sub nsw i64 %indvars.iv.i210.ph, %wide.trip.count.i196
  %i.aaw = icmp ugt i64 %i.aav, -4
  br i1 %i.aaw, label %_ZN5Hydro7calcRhoEPKdS1_Pdii.exit213, label %.lr.ph.i209

.lr.ph.i209:                                      ; preds = %.lr.ph.i209.prol.loopexit, %.lr.ph.i209
  %indvars.iv.i210 = phi i64 [ %indvars.iv.next.i211.3, %.lr.ph.i209 ], [ %indvars.iv.i210.unr, %.lr.ph.i209.prol.loopexit ] ; 7 uses
  %i.aax = getelementptr inbounds [8 x i8], ptr %i.yo, i64 %indvars.iv.i210
  %i.aay = load double, ptr %i.aax, align 8, !tbaa !50
  %i.aaz = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.i210
  %i.aba = load double, ptr %i.aaz, align 8, !tbaa !50
  %i.abb = fdiv double %i.aay, %i.aba
  %i.abc = getelementptr inbounds [8 x i8], ptr %i.aac, i64 %indvars.iv.i210
  store double %i.abb, ptr %i.abc, align 8, !tbaa !50
  %indvars.iv.next.i211 = add nsw i64 %indvars.iv.i210, 1 ; 3 uses
  %i.abd = getelementptr inbounds [8 x i8], ptr %i.yo, i64 %indvars.iv.next.i211
  %i.abe = load double, ptr %i.abd, align 8, !tbaa !50
  %i.abf = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.next.i211
  %i.abg = load double, ptr %i.abf, align 8, !tbaa !50
  %i.abh = fdiv double %i.abe, %i.abg
  %i.abi = getelementptr inbounds [8 x i8], ptr %i.aac, i64 %indvars.iv.next.i211
  store double %i.abh, ptr %i.abi, align 8, !tbaa !50
  %indvars.iv.next.i211.1 = add nsw i64 %indvars.iv.i210, 2 ; 3 uses
  %i.abj = getelementptr inbounds [8 x i8], ptr %i.yo, i64 %indvars.iv.next.i211.1
  %i.abk = load double, ptr %i.abj, align 8, !tbaa !50
  %i.abl = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.next.i211.1
  %i.abm = load double, ptr %i.abl, align 8, !tbaa !50
  %i.abn = fdiv double %i.abk, %i.abm
  %i.abo = getelementptr inbounds [8 x i8], ptr %i.aac, i64 %indvars.iv.next.i211.1
  store double %i.abn, ptr %i.abo, align 8, !tbaa !50
  %indvars.iv.next.i211.2 = add nsw i64 %indvars.iv.i210, 3 ; 3 uses
  %i.abp = getelementptr inbounds [8 x i8], ptr %i.yo, i64 %indvars.iv.next.i211.2
  %i.abq = load double, ptr %i.abp, align 8, !tbaa !50
  %i.abr = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.next.i211.2
  %i.abs = load double, ptr %i.abr, align 8, !tbaa !50
  %i.abt = fdiv double %i.abq, %i.abs
  %i.abu = getelementptr inbounds [8 x i8], ptr %i.aac, i64 %indvars.iv.next.i211.2
  store double %i.abt, ptr %i.abu, align 8, !tbaa !50
  %indvars.iv.next.i211.3 = add nsw i64 %indvars.iv.i210, 4 ; 2 uses
  %exitcond.not.i212.3 = icmp eq i64 %indvars.iv.next.i211.3, %wide.trip.count.i196
  br i1 %exitcond.not.i212.3, label %_ZN5Hydro7calcRhoEPKdS1_Pdii.exit213, label %.lr.ph.i209, !llvm.loop !225

_ZN5Hydro7calcRhoEPKdS1_Pdii.exit213:             ; preds = %.lr.ph.i209.prol.loopexit, %.lr.ph.i209, %middle.block550, %bb.k
  tail call void @_ZN5Hydro11calcDtHydroEPKdS1_S1_dii(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %i.av, ptr noundef %i.s, ptr noundef %i.ae, double noundef %1, i32 noundef %i.vp, i32 noundef %i.vt)
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %i.abv = load ptr, ptr %0, align 8, !tbaa !8    ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 560
  %i.abx = load i32, ptr %i.abw, align 8, !tbaa !72
  %i.aby = sext i32 %i.abx to i64
  %i.abz = icmp slt i64 %indvars.iv.next258, %i.aby
  br i1 %i.abz, label %bb.k, label %._crit_edge237, !llvm.loop !226
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN5Hydro10advPosHalfEPK7double2S2_dPS0_ii(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(408) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, double noundef %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = fmul double %3, 5.000000e-01             ; 4 uses
  %i.b = icmp slt i32 %5, %6
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = sext i32 %5 to i64                       ; 6 uses
  %wide.trip.count = sext i32 %6 to i64           ; 5 uses
  %i.d = sub nsw i64 %wide.trip.count, %i.c       ; 3 uses
  %min.iters.check = icmp ult i64 %i.d, 12
  br i1 %min.iters.check, label %.lr.ph.preheader42, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.e = shl nsw i64 %i.c, 4                      ; 4 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.e   ; 2 uses
  %i.f = shl nsw i64 %wide.trip.count, 4          ; 4 uses
  %i.g = add nsw i64 %i.f, -8                     ; 3 uses
  %scevgep17 = getelementptr i8, ptr %4, i64 %i.g ; 2 uses
  %scevgep18 = getelementptr i8, ptr %2, i64 %i.e
  %scevgep19 = getelementptr i8, ptr %2, i64 %i.g
  %scevgep20 = getelementptr i8, ptr %1, i64 %i.e
  %scevgep21 = getelementptr i8, ptr %1, i64 %i.g
  %i.h = or disjoint i64 %i.e, 8                  ; 3 uses
  %scevgep22 = getelementptr i8, ptr %4, i64 %i.h ; 2 uses
  %scevgep23 = getelementptr i8, ptr %4, i64 %i.f ; 2 uses
  %scevgep24 = getelementptr i8, ptr %2, i64 %i.h
  %scevgep25 = getelementptr i8, ptr %2, i64 %i.f
  %scevgep26 = getelementptr i8, ptr %1, i64 %i.h
  %scevgep27 = getelementptr i8, ptr %1, i64 %i.f
  %bound0 = icmp ult ptr %scevgep, %scevgep19
  %bound1 = icmp ult ptr %scevgep18, %scevgep17
  %found.conflict = and i1 %bound0, %bound1
  %bound028 = icmp ult ptr %scevgep, %scevgep21
  %bound129 = icmp ult ptr %scevgep20, %scevgep17
  %found.conflict30 = and i1 %bound028, %bound129
  %conflict.rdx = or i1 %found.conflict, %found.conflict30
  %bound031 = icmp ult ptr %scevgep22, %scevgep25
  %bound132 = icmp ult ptr %scevgep24, %scevgep23
  %found.conflict33 = and i1 %bound031, %bound132
  %conflict.rdx34 = or i1 %conflict.rdx, %found.conflict33
  %bound035 = icmp ult ptr %scevgep22, %scevgep27
  %bound136 = icmp ult ptr %scevgep26, %scevgep23
  %found.conflict37 = and i1 %bound035, %bound136
  %conflict.rdx38 = or i1 %conflict.rdx34, %found.conflict37
  br i1 %conflict.rdx38, label %.lr.ph.preheader42, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.d, -2                       ; 3 uses
  %i.i = add nsw i64 %n.vec, %i.c
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.a, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.j = add i64 %index, %i.c                     ; 4 uses
  %i.k = add i64 %i.j, 1                          ; 3 uses
  %i.l = getelementptr inbounds [16 x i8], ptr %1, i64 %i.j
  %i.m = getelementptr inbounds [16 x i8], ptr %1, i64 %i.k
  %i.n = getelementptr inbounds [16 x i8], ptr %2, i64 %i.j
  %i.o = getelementptr inbounds [16 x i8], ptr %2, i64 %i.k
  %wide.load = load <2 x double>, ptr %i.n, align 8, !noalias !227
  %wide.load39 = load <2 x double>, ptr %i.o, align 8, !noalias !227
  %i.p = fmul <2 x double> %broadcast.splat, %wide.load
  %i.q = fmul <2 x double> %broadcast.splat, %wide.load39
  %wide.load40 = load <2 x double>, ptr %i.l, align 8, !noalias !230
  %wide.load41 = load <2 x double>, ptr %i.m, align 8, !noalias !230
  %i.r = fadd <2 x double> %i.p, %wide.load40
  %i.s = fadd <2 x double> %i.q, %wide.load41
  %i.t = getelementptr inbounds [16 x i8], ptr %4, i64 %i.j
  %i.u = getelementptr inbounds [16 x i8], ptr %4, i64 %i.k
  store <2 x double> %i.r, ptr %i.t, align 8
  store <2 x double> %i.s, ptr %i.u, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !233

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader42

.lr.ph.preheader42:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.preheader ], [ %i.i, %middle.block ] ; 7 uses
  %i.w = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader42
  %i.x = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv.ph
  %i.y = getelementptr inbounds [16 x i8], ptr %2, i64 %indvars.iv.ph
  %i.z = getelementptr inbounds [16 x i8], ptr %4, i64 %indvars.iv.ph
  %i.aa = load <2 x double>, ptr %i.y, align 8, !tbaa !50, !noalias !227
  %i.ab = insertelement <2 x double> poison, double %i.a, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x double> %i.ac, %i.aa
  %i.ae = load <2 x double>, ptr %i.x, align 8, !tbaa !50, !noalias !230
  %i.af = fadd <2 x double> %i.ad, %i.ae
  store <2 x double> %i.af, ptr %i.z, align 8, !tbaa !50
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader42
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader42 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ag = add nsw i64 %wide.trip.count, -1
  %i.ah = icmp eq i64 %indvars.iv.ph, %i.ag
  br i1 %i.ah, label %._crit_edge, label %.lr.ph.preheader42.new

.lr.ph.preheader42.new:                           ; preds = %.lr.ph.prol.loopexit
  %i.ai = insertelement <2 x double> poison, double %i.a, i64 0
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = insertelement <2 x double> poison, double %i.a, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader42.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %.lr.ph.preheader42.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 5 uses
  %i.am = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv
  %i.an = getelementptr inbounds [16 x i8], ptr %2, i64 %indvars.iv
  %i.ao = getelementptr inbounds [16 x i8], ptr %4, i64 %indvars.iv
  %i.ap = load <2 x double>, ptr %i.an, align 8, !tbaa !50, !noalias !227
  %i.aq = fmul <2 x double> %i.aj, %i.ap
  %i.ar = load <2 x double>, ptr %i.am, align 8, !tbaa !50, !noalias !230
  %i.as = fadd <2 x double> %i.aq, %i.ar
  store <2 x double> %i.as, ptr %i.ao, align 8, !tbaa !50
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.at = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv.next
  %i.au = getelementptr inbounds [16 x i8], ptr %2, i64 %indvars.iv.next
  %i.av = getelementptr inbounds [16 x i8], ptr %4, i64 %indvars.iv.next
  %i.aw = load <2 x double>, ptr %i.au, align 8, !tbaa !50, !noalias !227
  %i.ax = fmul <2 x double> %i.al, %i.aw
  %i.ay = load <2 x double>, ptr %i.at, align 8, !tbaa !50, !noalias !230
  %i.az = fadd <2 x double> %i.ax, %i.ay
  store <2 x double> %i.az, ptr %i.av, align 8, !tbaa !50
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !234
}

declare void @_ZN4Mesh8calcCtrsEPK7double2PS0_S3_ii(ptr noundef nonnull align 8 dereferenceable(616), ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4Mesh8calcVolsEPK7double2S2_PdS3_S3_S3_ii(ptr noundef nonnull align 8 dereferenceable(616), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4Mesh12calcSurfVecsEPK7double2S2_PS0_ii(ptr noundef nonnull align 8 dereferenceable(616), ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4Mesh11calcEdgeLenEPK7double2Pdii(ptr noundef nonnull align 8 dereferenceable(616), ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4Mesh11calcCharLenEPKdPdii(ptr noundef nonnull align 8 dereferenceable(616), ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN5Hydro7calcRhoEPKdS1_Pdii(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(408) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.d = icmp slt i32 %4, %5
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = sext i32 %4 to i64                       ; 5 uses
  %wide.trip.count = sext i32 %5 to i64           ; 4 uses
  %i.f = sub nsw i64 %wide.trip.count, %i.e       ; 3 uses
  %min.iters.check = icmp ult i64 %i.f, 2
  br i1 %min.iters.check, label %.lr.ph.preheader14, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.g = sub i64 %i.c, %i.b
  %diff.check = icmp ult i64 %i.g, 16
  %i.h = sub i64 %i.c, %i.a
  %diff.check12 = icmp ult i64 %i.h, 16
  %conflict.rdx = or i1 %diff.check, %diff.check12
  br i1 %conflict.rdx, label %.lr.ph.preheader14, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.f, -2                       ; 3 uses
  %i.i = add nsw i64 %n.vec, %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.j = add i64 %index, %i.e                     ; 3 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %1, i64 %i.j
  %wide.load = load <2 x double>, ptr %i.k, align 8, !tbaa !50
  %i.l = getelementptr inbounds [8 x i8], ptr %2, i64 %i.j
  %wide.load13 = load <2 x double>, ptr %i.l, align 8, !tbaa !50
  %i.m = fdiv <2 x double> %wide.load, %wide.load13
  %i.n = getelementptr inbounds [8 x i8], ptr %3, i64 %i.j
  store <2 x double> %i.m, ptr %i.n, align 8, !tbaa !50
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !235

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader14

.lr.ph.preheader14:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.e, %vector.memcheck ], [ %i.e, %.lr.ph.preheader ], [ %i.i, %middle.block ] ; 4 uses
  %i.p = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.p, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader14, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader14 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader14 ]
  %i.q = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.prol
  %i.r = load double, ptr %i.q, align 8, !tbaa !50
  %i.s = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv.prol
  %i.t = load double, ptr %i.s, align 8, !tbaa !50
  %i.u = fdiv double %i.r, %i.t
  %i.v = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.prol
  store double %i.u, ptr %i.v, align 8, !tbaa !50
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !236

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader14
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader14 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.w = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.x = icmp ugt i64 %i.w, -4
  br i1 %i.x, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  %i.z = load double, ptr %i.y, align 8, !tbaa !50
  %i.aa = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !50
  %i.ac = fdiv double %i.z, %i.ab
  %i.ad = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv
  store double %i.ac, ptr %i.ad, align 8, !tbaa !50
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.af = load double, ptr %i.ae, align 8, !tbaa !50
  %i.ag = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !50
  %i.ai = fdiv double %i.af, %i.ah
  %i.aj = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next
  store double %i.ai, ptr %i.aj, align 8, !tbaa !50
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.al = load double, ptr %i.ak, align 8, !tbaa !50
  %i.am = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.an = load double, ptr %i.am, align 8, !tbaa !50
  %i.ao = fdiv double %i.al, %i.an
  %i.ap = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next.1
  store double %i.ao, ptr %i.ap, align 8, !tbaa !50
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3 ; 3 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !50
  %i.as = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.at = load double, ptr %i.as, align 8, !tbaa !50
  %i.au = fdiv double %i.ar, %i.at
  %i.av = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next.2
  store double %i.au, ptr %i.av, align 8, !tbaa !50
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !237
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5Hydro12calcCrnrMassEPKdS1_S1_Pdii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = icmp slt i32 %5, %6
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !160  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !161  ; 3 uses
  %i.g = sext i32 %5 to i64                       ; 8 uses
  %wide.trip.count = sext i32 %6 to i64           ; 3 uses
  %i.h = sub nsw i64 %wide.trip.count, %i.g
  %xtraiter = and i64 %i.h, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.i = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.g
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %i.k = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.g
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %1, i64 %i.m
  %i.o = load double, ptr %i.n, align 8, !tbaa !50
  %i.p = getelementptr inbounds [8 x i8], ptr %2, i64 %i.m
  %i.q = load double, ptr %i.p, align 8, !tbaa !50
  %i.r = fmul double %i.o, %i.q
  %i.s = fmul double %i.r, 5.000000e-01
  %i.t = getelementptr inbounds [8 x i8], ptr %3, i64 %i.g
  %i.u = load double, ptr %i.t, align 8, !tbaa !50
  %i.v = sext i32 %i.j to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %3, i64 %i.v
  %i.x = load double, ptr %i.w, align 8, !tbaa !50
  %i.y = fadd double %i.u, %i.x
  %i.z = fmul double %i.s, %i.y
  %i.aa = getelementptr inbounds [8 x i8], ptr %4, i64 %i.g
  store double %i.z, ptr %i.aa, align 8, !tbaa !50
  %indvars.iv.next.prol = add nsw i64 %i.g, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.g, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.ab = add nsw i64 %wide.trip.count, -1
  %i.ac = icmp eq i64 %i.ab, %i.g
  br i1 %i.ac, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.a
  ret void

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = sext i32 %i.ag to i64                   ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ah
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !50
  %i.ak = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ah
  %i.al = load double, ptr %i.ak, align 8, !tbaa !50
  %i.am = fmul double %i.aj, %i.al
  %i.an = fmul double %i.am, 5.000000e-01
  %i.ao = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !50
  %i.aq = sext i32 %i.ae to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %3, i64 %i.aq
  %i.as = load double, ptr %i.ar, align 8, !tbaa !50
  %i.at = fadd double %i.ap, %i.as
  %i.au = fmul double %i.an, %i.at
  %i.av = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv
  store double %i.au, ptr %i.av, align 8, !tbaa !50
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 4 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv.next
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !50
  %i.bd = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ba
  %i.be = load double, ptr %i.bd, align 8, !tbaa !50
  %i.bf = fmul double %i.bc, %i.be
  %i.bg = fmul double %i.bf, 5.000000e-01
  %i.bh = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !50
  %i.bj = sext i32 %i.ax to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bj
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !50
  %i.bm = fadd double %i.bi, %i.bl
  %i.bn = fmul double %i.bg, %i.bm
  %i.bo = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next
  store double %i.bn, ptr %i.bo, align 8, !tbaa !50
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.new, !llvm.loop !162
}

declare void @_ZN7PolyGas15calcStateAtHalfEPKdS1_S1_S1_S1_S1_dPdS2_ii(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN7PolyGas9calcForceEPKdPK7double2PS2_ii(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN3TTS9calcForceEPKdS1_S1_S1_S1_PK7double2PS2_ii(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1
end_hunk_2
begin_hunk_3_@_ZN5Hydro10advPosFullEPK7double2S2_S2_dPS0_S3_ii:bb.a
  %conflict.rdx74 = or i1 %conflict.rdx70, %found.conflict73
  %bound075 = icmp ult ptr %scevgep42, %scevgep47
  %bound176 = icmp ult ptr %scevgep46, %scevgep43
  %found.conflict77 = and i1 %bound075, %bound176
  %conflict.rdx78 = or i1 %conflict.rdx74, %found.conflict77
  %bound079 = icmp ult ptr %scevgep42, %scevgep49
  %bound180 = icmp ult ptr %scevgep48, %scevgep43
  %found.conflict81 = and i1 %bound079, %bound180
  %conflict.rdx82 = or i1 %conflict.rdx78, %found.conflict81
  %bound083 = icmp ult ptr %scevgep50, %scevgep53
  %bound184 = icmp ult ptr %scevgep52, %scevgep51
  %found.conflict85 = and i1 %bound083, %bound184
  %conflict.rdx86 = or i1 %conflict.rdx82, %found.conflict85
  %bound087 = icmp ult ptr %scevgep50, %scevgep55
  %bound188 = icmp ult ptr %scevgep54, %scevgep51
  %found.conflict89 = and i1 %bound087, %bound188
  %conflict.rdx90 = or i1 %conflict.rdx86, %found.conflict89
  %bound091 = icmp ult ptr %scevgep50, %scevgep57
  %bound192 = icmp ult ptr %scevgep56, %scevgep51
  %found.conflict93 = and i1 %bound091, %bound192
  %conflict.rdx94 = or i1 %conflict.rdx90, %found.conflict93
  %bound095 = icmp ult ptr %scevgep50, %scevgep59
  %bound196 = icmp ult ptr %scevgep58, %scevgep51
  %found.conflict97 = and i1 %bound095, %bound196
  %conflict.rdx98 = or i1 %conflict.rdx94, %found.conflict97
  %bound099 = icmp ult ptr %scevgep52, %scevgep55
  %bound1100 = icmp ult ptr %scevgep54, %scevgep53
  %found.conflict101 = and i1 %bound099, %bound1100
  %conflict.rdx102 = or i1 %conflict.rdx98, %found.conflict101
  %bound0103 = icmp ult ptr %scevgep52, %scevgep57
  %bound1104 = icmp ult ptr %scevgep56, %scevgep53
  %found.conflict105 = and i1 %bound0103, %bound1104
  %conflict.rdx106 = or i1 %conflict.rdx102, %found.conflict105
  %bound0107 = icmp ult ptr %scevgep52, %scevgep59
  %bound1108 = icmp ult ptr %scevgep58, %scevgep53
  %found.conflict109 = and i1 %bound0107, %bound1108
  %conflict.rdx110 = or i1 %conflict.rdx106, %found.conflict109
  br i1 %conflict.rdx110, label %.lr.ph.preheader114, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.j = add i64 %index, %i.b                     ; 5 uses
  %i.k = getelementptr inbounds [16 x i8], ptr %2, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds [16 x i8], ptr %3, i64 %i.j
  %wide.load = load <2 x double>, ptr %i.l, align 8, !noalias !263
  %i.m = fmul <2 x double> %broadcast.splat, %wide.load
  %wide.load111 = load <2 x double>, ptr %i.k, align 8, !noalias !266
  %i.n = fadd <2 x double> %i.m, %wide.load111    ; 2 uses
  %i.o = getelementptr inbounds [16 x i8], ptr %6, i64 %i.j
  store <2 x double> %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds [16 x i8], ptr %1, i64 %i.j
  %wide.load112 = load <2 x double>, ptr %i.k, align 8, !noalias !269
  %i.q = fadd <2 x double> %i.n, %wide.load112
  %i.r = fmul <2 x double> %i.q, splat (double 5.000000e-01)
  %i.s = fmul <2 x double> %broadcast.splat, %i.r
  %wide.load113 = load <2 x double>, ptr %i.p, align 8, !noalias !272
  %i.t = fadd <2 x double> %wide.load113, %i.s
  %i.u = getelementptr inbounds [16 x i8], ptr %5, i64 %i.j
  store <2 x double> %i.t, ptr %i.u, align 8
  %index.next = add nuw i64 %index, 1             ; 2 uses
  %i.v = icmp eq i64 %index.next, %i.c
  br i1 %i.v, label %._crit_edge, label %vector.body, !llvm.loop !275

._crit_edge:                                      ; preds = %vector.body, %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader114, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.b, %.lr.ph.preheader114 ] ; 6 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %3, i64 %indvars.iv
  %i.y = getelementptr inbounds [16 x i8], ptr %6, i64 %indvars.iv
  %i.z = load <2 x double>, ptr %i.x, align 8, !tbaa !50, !noalias !263
  %i.aa = fmul <2 x double> %i.e, %i.z
  %i.ab = load <2 x double>, ptr %i.w, align 8, !tbaa !50, !noalias !266
  %i.ac = fadd <2 x double> %i.aa, %i.ab          ; 2 uses
  store <2 x double> %i.ac, ptr %i.y, align 8, !tbaa !50
  %i.ad = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv
  %i.ae = getelementptr inbounds [16 x i8], ptr %5, i64 %indvars.iv
  %i.af = load <2 x double>, ptr %i.w, align 8, !tbaa !50, !noalias !269
  %i.ag = fadd <2 x double> %i.ac, %i.af
  %i.ah = fmul <2 x double> %i.ag, splat (double 5.000000e-01)
  %i.ai = fmul <2 x double> %i.e, %i.ah
  %i.aj = load <2 x double>, ptr %i.ad, align 8, !tbaa !50, !noalias !272
  %i.ak = fadd <2 x double> %i.aj, %i.ai
  store <2 x double> %i.ak, ptr %i.ae, align 8, !tbaa !50
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !276
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5Hydro8calcWorkEPK7double2S2_S2_S2_S2_dPdS3_ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, double noundef %6, ptr nofree noundef captures(none) %7, ptr nofree noundef captures(none) %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %9, %10
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !207
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !161
  %i.i = fmul double %6, -5.000000e-01
  %i.j = sext i32 %9 to i64
  %wide.trip.count = sext i32 %10 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.j, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 6 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %i.m = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %i.o = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4
  %i.q = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.s = load double, ptr %i.q, align 8, !tbaa !112, !noalias !277
  %i.t = load double, ptr %i.r, align 8, !tbaa !112, !noalias !277
  %i.u = fadd double %i.s, %i.t                   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load double, ptr %i.v, align 8, !tbaa !114, !noalias !277
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.y = load double, ptr %i.x, align 8, !tbaa !114, !noalias !277
  %i.z = fadd double %i.w, %i.y                   ; 2 uses
  %i.aa = sext i32 %i.l to i64                    ; 3 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %3, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %4, i64 %i.aa ; 2 uses
  %i.ad = load double, ptr %i.ab, align 8, !tbaa !112, !noalias !280
  %i.ae = load double, ptr %i.ac, align 8, !tbaa !112, !noalias !280
  %i.af = fadd double %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !114, !noalias !280
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !114, !noalias !280
  %i.ak = fadd double %i.ah, %i.aj
  %i.al = fmul double %i.z, %i.ak
  %i.am = tail call noundef double @llvm.fmuladd.f64(double %i.u, double %i.af, double %i.al)
  %i.an = fneg double %i.u
  %i.ao = fneg double %i.z
  %i.ap = sext i32 %i.n to i64                    ; 3 uses
  %i.aq = getelementptr inbounds [16 x i8], ptr %3, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ap ; 2 uses
  %i.as = load double, ptr %i.aq, align 8, !tbaa !112, !noalias !283
  %i.at = load double, ptr %i.ar, align 8, !tbaa !112, !noalias !283
  %i.au = fadd double %i.as, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.aw = load double, ptr %i.av, align 8, !tbaa !114, !noalias !283
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !114, !noalias !283
  %i.az = fadd double %i.aw, %i.ay
  %i.ba = fmul double %i.az, %i.ao
  %i.bb = tail call noundef double @llvm.fmuladd.f64(double %i.an, double %i.au, double %i.ba)
  %i.bc = getelementptr inbounds [16 x i8], ptr %5, i64 %i.aa
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !112
  %i.be = getelementptr inbounds [16 x i8], ptr %5, i64 %i.ap
  %i.bf = load double, ptr %i.be, align 8, !tbaa !112
  %i.bg = fmul double %i.bf, %i.bb
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.am, double %i.bd, double %i.bg)
  %i.bi = fmul double %i.i, %i.bh                 ; 2 uses
  %i.bj = sext i32 %i.p to i64                    ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %8, i64 %i.bj ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !50
  %i.bm = fadd double %i.bl, %i.bi
  store double %i.bm, ptr %i.bk, align 8, !tbaa !50
  %i.bn = getelementptr inbounds [8 x i8], ptr %7, i64 %i.bj ; 2 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !50
  %i.bp = fadd double %i.bo, %i.bi
  store double %i.bp, ptr %i.bn, align 8, !tbaa !50
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !217
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN5Hydro12calcWorkRateEPKdS1_S1_S1_dPdii(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(408) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, double noundef %5, ptr nofree noundef writeonly captures(none) %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = ptrtoaddr ptr %3 to i64
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = ptrtoaddr ptr %2 to i64
  %i.e = ptrtoaddr ptr %6 to i64                  ; 4 uses
  %i.f = fdiv double 1.000000e+00, %5             ; 4 uses
  %i.g = icmp slt i32 %7, %8
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = sext i32 %7 to i64                       ; 5 uses
  %wide.trip.count = sext i32 %8 to i64           ; 4 uses
  %i.i = sub nsw i64 %wide.trip.count, %i.h       ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 8
  br i1 %min.iters.check, label %.lr.ph.preheader31, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.j = sub i64 %i.e, %i.d
  %diff.check = icmp ult i64 %i.j, 32
  %i.k = sub i64 %i.e, %i.c
  %diff.check19 = icmp ult i64 %i.k, 32
  %conflict.rdx = or i1 %diff.check, %diff.check19
  %i.l = sub i64 %i.e, %i.b
  %diff.check20 = icmp ult i64 %i.l, 32
  %conflict.rdx21 = or i1 %conflict.rdx, %diff.check20
  %i.m = sub i64 %i.e, %i.a
  %diff.check22 = icmp ult i64 %i.m, 32
  %conflict.rdx23 = or i1 %conflict.rdx21, %diff.check22
  br i1 %conflict.rdx23, label %.lr.ph.preheader31, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 3 uses
  %i.n = add nsw i64 %n.vec, %i.h
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.f, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = add i64 %index, %i.h                     ; 5 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %2, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <2 x double>, ptr %i.p, align 8, !tbaa !50
  %wide.load24 = load <2 x double>, ptr %i.q, align 8, !tbaa !50
  %i.r = getelementptr inbounds [8 x i8], ptr %1, i64 %i.o ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load25 = load <2 x double>, ptr %i.r, align 8, !tbaa !50
  %wide.load26 = load <2 x double>, ptr %i.s, align 8, !tbaa !50
  %i.t = fsub <2 x double> %wide.load, %wide.load25
  %i.u = fsub <2 x double> %wide.load24, %wide.load26
  %i.v = getelementptr inbounds [8 x i8], ptr %3, i64 %i.o ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load27 = load <2 x double>, ptr %i.v, align 8, !tbaa !50
  %wide.load28 = load <2 x double>, ptr %i.w, align 8, !tbaa !50
  %i.x = getelementptr inbounds [8 x i8], ptr %4, i64 %i.o ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load29 = load <2 x double>, ptr %i.x, align 8, !tbaa !50
  %wide.load30 = load <2 x double>, ptr %i.y, align 8, !tbaa !50
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load29, <2 x double> %i.t, <2 x double> %wide.load27)
  %i.aa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load30, <2 x double> %i.u, <2 x double> %wide.load28)
  %i.ab = fmul <2 x double> %broadcast.splat, %i.z
  %i.ac = fmul <2 x double> %broadcast.splat, %i.aa
  %i.ad = getelementptr inbounds [8 x i8], ptr %6, i64 %i.o ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <2 x double> %i.ab, ptr %i.ad, align 8, !tbaa !50
  store <2 x double> %i.ac, ptr %i.ae, align 8, !tbaa !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !286

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader31

.lr.ph.preheader31:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.preheader ], [ %i.n, %middle.block ] ; 9 uses
  %i.ag = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.ag, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader31
  %i.ah = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv.ph
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !50
  %i.aj = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.ph
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !50
  %i.al = fsub double %i.ai, %i.ak
  %i.am = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.ph
  %i.an = load double, ptr %i.am, align 8, !tbaa !50
  %i.ao = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.ph
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !50
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.al, double %i.an)
  %i.ar = fmul double %i.f, %i.aq
  %i.as = getelementptr inbounds [8 x i8], ptr %6, i64 %indvars.iv.ph
  store double %i.ar, ptr %i.as, align 8, !tbaa !50
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader31
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader31 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.at = add nsw i64 %wide.trip.count, -1
  %i.au = icmp eq i64 %indvars.iv.ph, %i.at
  br i1 %i.au, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv
  %i.aw = load double, ptr %i.av, align 8, !tbaa !50
  %i.ax = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !50
  %i.az = fsub double %i.aw, %i.ay
  %i.ba = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !50
  %i.bc = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !50
  %i.be = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.az, double %i.bb)
  %i.bf = fmul double %i.f, %i.be
  %i.bg = getelementptr inbounds [8 x i8], ptr %6, i64 %indvars.iv
  store double %i.bf, ptr %i.bg, align 8, !tbaa !50
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 5 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !50
  %i.bj = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !50
  %i.bl = fsub double %i.bi, %i.bk
  %i.bm = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !50
  %i.bo = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !50
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.bl, double %i.bn)
  %i.br = fmul double %i.f, %i.bq
  %i.bs = getelementptr inbounds [8 x i8], ptr %6, i64 %indvars.iv.next
  store double %i.br, ptr %i.bs, align 8, !tbaa !50
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !287
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN5Hydro10calcEnergyEPKdS1_Pdii(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(408) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.d = icmp slt i32 %4, %5
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = sext i32 %4 to i64                       ; 5 uses
  %wide.trip.count = sext i32 %5 to i64           ; 4 uses
  %i.f = sub nsw i64 %wide.trip.count, %i.e       ; 3 uses
  %min.iters.check = icmp ult i64 %i.f, 2
  br i1 %min.iters.check, label %.lr.ph.preheader14, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.g = sub i64 %i.c, %i.b
  %diff.check = icmp ult i64 %i.g, 16
  %i.h = sub i64 %i.c, %i.a
  %diff.check12 = icmp ult i64 %i.h, 16
  %conflict.rdx = or i1 %diff.check, %diff.check12
  br i1 %conflict.rdx, label %.lr.ph.preheader14, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.f, -2                       ; 3 uses
  %i.i = add nsw i64 %n.vec, %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.j = add i64 %index, %i.e                     ; 3 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %1, i64 %i.j
  %wide.load = load <2 x double>, ptr %i.k, align 8, !tbaa !50
  %i.l = getelementptr inbounds [8 x i8], ptr %2, i64 %i.j
  %wide.load13 = load <2 x double>, ptr %i.l, align 8, !tbaa !50
  %i.m = fadd <2 x double> %wide.load13, splat (double 1.000000e-99)
  %i.n = fdiv <2 x double> %wide.load, %i.m
  %i.o = getelementptr inbounds [8 x i8], ptr %3, i64 %i.j
  store <2 x double> %i.n, ptr %i.o, align 8, !tbaa !50
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !288

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader14

.lr.ph.preheader14:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.e, %vector.memcheck ], [ %i.e, %.lr.ph.preheader ], [ %i.i, %middle.block ] ; 7 uses
  %i.q = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.q, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader14
  %i.r = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.ph
  %i.s = load double, ptr %i.r, align 8, !tbaa !50
  %i.t = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv.ph
  %i.u = load double, ptr %i.t, align 8, !tbaa !50
  %i.v = fadd double %i.u, 1.000000e-99
  %i.w = fdiv double %i.s, %i.v
  %i.x = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.ph
  store double %i.w, ptr %i.x, align 8, !tbaa !50
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader14
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader14 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.y = add nsw i64 %wide.trip.count, -1
  %i.z = icmp eq i64 %indvars.iv.ph, %i.y
  br i1 %i.z, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !50
  %i.ac = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !50
  %i.ae = fadd double %i.ad, 1.000000e-99
  %i.af = fdiv double %i.ab, %i.ae
  %i.ag = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv
  store double %i.af, ptr %i.ag, align 8, !tbaa !50
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !50
  %i.aj = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !50
  %i.al = fadd double %i.ak, 1.000000e-99
  %i.am = fdiv double %i.ai, %i.al
  %i.an = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next
  store double %i.am, ptr %i.an, align 8, !tbaa !50
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !289
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN5Hydro11calcDtHydroEPKdS1_S1_dii(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, double noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = icmp slt i32 %5, %6
  br i1 %i.b, label %.lr.ph.i, label %._crit_edge.i8

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !93
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !92
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load double, ptr %i.g, align 8, !tbaa !35
  %i.i = sext i32 %5 to i64                       ; 5 uses
  %wide.trip.count.i = sext i32 %6 to i64         ; 3 uses
  br label %bb.b

._crit_edge.i:                                    ; preds = %bb.b
  %i.j = fcmp olt double %i.z, f0x547D42AEA2879F2E
  br i1 %i.j, label %bb.c, label %.lr.ph.preheader.i

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.i, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 5 uses
  %.030.i = phi double [ f0x547D42AEA2879F2E, %.lr.ph.i ], [ %i.z, %bb.b ] ; 2 uses
  %.02329.i = phi i32 [ -1, %.lr.ph.i ], [ %i.y, %bb.b ]
  %i.k = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.l = getelementptr inbounds [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.m = load double, ptr %i.l, align 8, !tbaa !50 ; 2 uses
  %i.n = fcmp olt double %i.m, 1.000000e-99
  %i.o = load double, ptr %i.k, align 8, !tbaa !50 ; 2 uses
  %i.p = select i1 %i.n, double 1.000000e-99, double %i.m ; 2 uses
  %i.q = fcmp olt double %i.o, %i.p
  %i.r = select i1 %i.q, double %i.p, double %i.o
  %i.s = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.t = load double, ptr %i.s, align 8, !tbaa !50
  %i.u = fmul double %i.h, %i.t
  %i.v = fdiv double %i.u, %i.r                   ; 2 uses
  %i.w = fcmp olt double %i.v, %.030.i            ; 2 uses
  %i.x = trunc nsw i64 %indvars.iv.i to i32
  %i.y = select i1 %i.w, i32 %i.x, i32 %.02329.i  ; 2 uses
  %i.z = select i1 %i.w, double %i.v, double %.030.i ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !290

bb.c:                                             ; preds = %._crit_edge.i
  %i.aa = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 80, ptr noundef nonnull @.str.9, i32 noundef %i.y) #21 ; 0 uses
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge.i, %bb.c
  %.0.ph = phi double [ f0x547D42AEA2879F2E, %._crit_edge.i ], [ %i.z, %bb.c ] ; 2 uses
  %i.ab = sub nsw i64 %wide.trip.count.i, %i.i    ; 3 uses
  %xtraiter = and i64 %i.ab, 1
  %i.ac = add nsw i64 %wide.trip.count.i, -1
  %i.ad = icmp eq i64 %i.ac, %i.i
  br i1 %i.ad, label %.lr.ph.i11.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.ab, -2
  br label %.lr.ph.i11

._crit_edge.i8.loopexit.unr-lcssa:                ; preds = %.lr.ph.i11
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i8, label %.lr.ph.i11.epil.preheader

.lr.ph.i11.epil.preheader:                        ; preds = %._crit_edge.i8.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i12.epil.init = phi i64 [ %i.i, %.lr.ph.preheader.i ], [ %indvars.iv.next.i13.1, %._crit_edge.i8.loopexit.unr-lcssa ] ; 3 uses
  %.031.i.epil.init = phi double [ 1.000000e-99, %.lr.ph.preheader.i ], [ %i.bp, %._crit_edge.i8.loopexit.unr-lcssa ] ; 2 uses
  %.02630.i.epil.init = phi i32 [ -1, %.lr.ph.preheader.i ], [ %i.bo, %._crit_edge.i8.loopexit.unr-lcssa ]
  %lcmp.mod42 = trunc i64 %i.ab to i1
  tail call void @llvm.assume(i1 %lcmp.mod42)
  %i.ae = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv.i12.epil.init
  %i.af = load double, ptr %i.ae, align 8, !tbaa !50
  %i.ag = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.i12.epil.init
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !50 ; 2 uses
  %i.ai = fsub double %i.af, %i.ah
  %i.aj = fdiv double %i.ai, %i.ah
  %i.ak = tail call noundef double @llvm.fabs.f64(double %i.aj) ; 2 uses
  %i.al = fcmp ogt double %i.ak, %.031.i.epil.init ; 2 uses
  %i.am = trunc nsw i64 %indvars.iv.i12.epil.init to i32
  %i.an = select i1 %i.al, i32 %i.am, i32 %.02630.i.epil.init
  %i.ao = select i1 %i.al, double %i.ak, double %.031.i.epil.init
  br label %._crit_edge.i8

._crit_edge.i8:                                   ; preds = %.lr.ph.i11.epil.preheader, %._crit_edge.i8.loopexit.unr-lcssa, %bb.a
  %.020 = phi double [ f0x547D42AEA2879F2E, %bb.a ], [ %.0.ph, %._crit_edge.i8.loopexit.unr-lcssa ], [ %.0.ph, %.lr.ph.i11.epil.preheader ] ; 2 uses
  %.026.lcssa.i = phi i32 [ -1, %bb.a ], [ %i.bo, %._crit_edge.i8.loopexit.unr-lcssa ], [ %i.an, %.lr.ph.i11.epil.preheader ]
  %.0.lcssa.i9 = phi double [ 1.000000e-99, %bb.a ], [ %i.bp, %._crit_edge.i8.loopexit.unr-lcssa ], [ %i.ao, %.lr.ph.i11.epil.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !37
  %i.ar = fmul double %4, %i.aq
  %i.as = fdiv double %i.ar, %.0.lcssa.i9         ; 2 uses
  %i.at = fcmp olt double %i.as, %.020
  br i1 %i.at, label %bb.d, label %_ZN5Hydro12calcDtVolumeEPKdS1_dRdPcii.exit

.lr.ph.i11:                                       ; preds = %.lr.ph.i11, %.lr.ph.preheader.i.new
  %indvars.iv.i12 = phi i64 [ %i.i, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i13.1, %.lr.ph.i11 ] ; 5 uses
  %.031.i = phi double [ 1.000000e-99, %.lr.ph.preheader.i.new ], [ %i.bp, %.lr.ph.i11 ] ; 2 uses
  %.02630.i = phi i32 [ -1, %.lr.ph.preheader.i.new ], [ %i.bo, %.lr.ph.i11 ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i11 ]
  %i.au = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv.i12
  %i.av = load double, ptr %i.au, align 8, !tbaa !50
  %i.aw = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.i12
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !50 ; 2 uses
  %i.ay = fsub double %i.av, %i.ax
  %i.az = fdiv double %i.ay, %i.ax
  %i.ba = tail call noundef double @llvm.fabs.f64(double %i.az) ; 2 uses
  %i.bb = fcmp ogt double %i.ba, %.031.i          ; 2 uses
  %i.bc = trunc nsw i64 %indvars.iv.i12 to i32
  %i.bd = select i1 %i.bb, i32 %i.bc, i32 %.02630.i
  %i.be = select i1 %i.bb, double %i.ba, double %.031.i ; 2 uses
  %indvars.iv.next.i13 = add nsw i64 %indvars.iv.i12, 1 ; 3 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv.next.i13
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !50
  %i.bh = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next.i13
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !50 ; 2 uses
  %i.bj = fsub double %i.bg, %i.bi
  %i.bk = fdiv double %i.bj, %i.bi
  %i.bl = tail call noundef double @llvm.fabs.f64(double %i.bk) ; 2 uses
end_hunk_3
