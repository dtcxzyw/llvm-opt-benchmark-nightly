Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarbias_alb?download=true
inline.NumInlined: 975
inline.NumDeleted: 326
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN10colvarbias17init_dependenciesEv

declare noundef i32 @_ZN10colvarbias5resetEv(ptr noundef nonnull align 8 dereferenceable(312)) unnamed_addr #0

declare noundef i32 @_ZN10colvarbias5clearEv(ptr noundef nonnull align 8 dereferenceable(312)) unnamed_addr #0

declare noundef i32 @_ZN10colvarbias16clear_state_dataEv(ptr noundef nonnull align 8 dereferenceable(312)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN10colvarbiasD1Ev(ptr noundef nonnull align 8 dereferenceable(312)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN10colvarbiasD0Ev(ptr noundef nonnull align 8 dereferenceable(312)) unnamed_addr #2

declare void @_ZNK10colvarbias16get_state_paramsB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(312)) unnamed_addr #0

declare noundef i32 @_ZN10colvarbias16set_state_paramsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(312), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN10colvarbias16write_state_dataERSo(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 1 ptr @_ZN10colvarbias16write_state_dataERN12colvarmodule13memory_streamE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 1 %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN10colvarbias15read_state_dataERSi(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 1 ptr @_ZN10colvarbias15read_state_dataERN12colvarmodule13memory_streamE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 1 %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr %1
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN10colvarbias16write_traj_labelERSo(ptr noundef nonnull align 8 dereferenceable(312), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN10colvarbias10write_trajERSo(ptr noundef nonnull align 8 dereferenceable(312), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN10colvarbias12setup_outputEv(ptr noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN10colvarbias18write_output_filesEv(ptr noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN10colvarbias23write_state_to_replicasEv(ptr noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNK10colvarbias8featuresEv(ptr noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr @_ZN10colvarbias12cvb_featuresE
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN10colvarbias15modify_featuresEv(ptr noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr @_ZN10colvarbias12cvb_featuresE
}

declare void @_ZN12colvarparams15get_param_namesB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #0

declare void @_ZN12colvarparams20get_param_grad_namesB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #0

declare noundef ptr @_ZN12colvarparams13get_param_ptrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

declare noundef ptr @_ZN12colvarparams18get_param_grad_ptrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

declare noundef double @_ZN12colvarparams9get_paramERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

declare noundef i32 @_ZN12colvarparams9set_paramERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKv(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n72_N10colvarbiasD1Ev(ptr noundef) unnamed_addr #3 align 2

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n72_N10colvarbiasD0Ev(ptr noundef) unnamed_addr #3 align 2

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n24_N10colvarbiasD1Ev(ptr noundef) unnamed_addr #3 align 2

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n24_N10colvarbiasD0Ev(ptr noundef) unnamed_addr #3 align 2

; Function Attrs: uwtable
define linkonce_odr noundef ptr @_ZTv0_n32_NK10colvarbias8featuresEv(ptr noundef %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr @_ZN10colvarbias12cvb_featuresE
}

; Function Attrs: uwtable
define linkonce_odr noundef ptr @_ZTv0_n40_N10colvarbias15modify_featuresEv(ptr noundef %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr @_ZN10colvarbias12cvb_featuresE
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN10colvardeps23do_feature_side_effectsEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: uwtable
declare noundef i32 @_ZTv0_n56_N10colvarbias17init_dependenciesEv(ptr noundef) unnamed_addr #4 align 2

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN14colvarbias_alb6updateEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(541) initializes((248, 256)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %1 = alloca %class.colvarvalue, align 8         ; 19 uses
  %i.d = alloca double, align 8                   ; 5 uses
  %2 = alloca %class.colvarvalue, align 8         ; 15 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 19 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.e = tail call noundef ptr @_ZN12colvarmodule4mainEv() ; 0 uses
  %i.f = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  store double 0.000000e+00, ptr %i.g, align 8, !tbaa !37
  %i.h = load ptr, ptr %0, align 8, !tbaa !39
  %i.i = getelementptr i8, ptr %i.h, i64 -32
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %0, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !58
  %i.p = add nsw i32 %i.o, %i.m
  store i32 %i.p, ptr %i.n, align 8, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !60   ; 2 uses
  %.not = icmp eq ptr %i.s, %i.t
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 537
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.bf = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bh = getelementptr i8, ptr %i.bf, i64 -24
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 112
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.ah
  %5 = trunc nuw i8 %.2 to i1
  %i.bm = icmp eq ptr %i.iw, %i.ix
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.not165 = phi i1 [ true, %bb.a ], [ %i.bm, %._crit_edge.loopexit ]
  %.071.lcssa = phi i1 [ true, %bb.a ], [ %5, %._crit_edge.loopexit ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 3 uses
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !61, !range !62, !noundef !63 ; 2 uses
  %i.bp = trunc nuw i8 %i.bo to i1
  %or.cond = select i1 %i.bp, i1 %.071.lcssa, i1 false
  br i1 %or.cond, label %.thread, label %bb.ai

bb.b:                                             ; preds = %.lr.ph, %bb.ah
  %i.bq = phi ptr [ %i.t, %.lr.ph ], [ %i.ix, %bb.ah ]
  %.070160 = phi i64 [ 0, %.lr.ph ], [ %i.iv, %bb.ah ] ; 20 uses
  %.071159 = phi i8 [ 1, %.lr.ph ], [ %.2, %bb.ah ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store double -1.000000e+00, ptr %i.d, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.br = load ptr, ptr %i.u, align 8, !tbaa !65
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.070160
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.070160
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !67
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 472
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !191
  %i.by = fdiv double %i.bt, %i.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store double %i.by, ptr %i.c, align 8, !tbaa !64, !noalias !192
  call void @_ZN11colvarvalueC1ERKd(ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_ZmlRKdRK11colvarvalue(ptr dead_on_unwind nonnull writable sret(%class.colvarvalue) align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(168) %2)
          to label %bb.c unwind label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.bz = load ptr, ptr %i.w, align 8, !tbaa !77
  %i.ca = getelementptr inbounds nuw [168 x i8], ptr %i.bz, i64 %.070160 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !78
  store i32 %i.cb, ptr %i.a, align 4, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.cc = load i32, ptr %1, align 8, !tbaa !78
  store i32 %i.cc, ptr %i.b, align 4, !tbaa !79
  %i.cd = invoke noundef i32 @_ZN11colvarvalue18check_types_assignERKNS_4TypeES2_(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc101 unwind label %bb.s  ; 0 uses

.noexc101:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ce = load i32, ptr %1, align 8, !tbaa !78    ; 2 uses
  store i32 %i.ce, ptr %i.ca, align 8, !tbaa !78
  switch i32 %i.ce, label %bb.h [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.e
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.f
    i32 7, label %bb.g
  ]

bb.d:                                             ; preds = %.noexc101
  %i.cf = load double, ptr %i.ad, align 8, !tbaa !80
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store double %i.cf, ptr %i.cg, align 8, !tbaa !80
  br label %_ZN11colvarvalueaSERKS_.exit

bb.e:                                             ; preds = %.noexc101, %.noexc101, %.noexc101
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !tbaa.struct !193
  br label %_ZN11colvarvalueaSERKS_.exit

bb.f:                                             ; preds = %.noexc101, %.noexc101
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false), !tbaa.struct !194
  br label %_ZN11colvarvalueaSERKS_.exit

bb.g:                                             ; preds = %.noexc101
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  %i.ck = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.noexc102 unwind label %bb.s  ; 0 uses

.noexc102:                                        ; preds = %bb.g
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 96
  %i.cm = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.noexc103 unwind label %bb.s  ; 0 uses

.noexc103:                                        ; preds = %.noexc102
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 120
  %i.co = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %.noexc104 unwind label %bb.s  ; 0 uses

.noexc104:                                        ; preds = %.noexc103
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ca, i64 144
  %i.cq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_ZN11colvarvalueaSERKS_.exit unwind label %bb.s ; 0 uses

bb.h:                                             ; preds = %.noexc101
  invoke void @_ZNK11colvarvalue8undef_opEv(ptr noundef nonnull align 8 dereferenceable(168) %i.ca)
          to label %_ZN11colvarvalueaSERKS_.exit unwind label %bb.s

_ZN11colvarvalueaSERKS_.exit:                     ; preds = %bb.f, %bb.e, %bb.d, %.noexc104, %bb.h
  %i.cr = load ptr, ptr %i.aa, align 8, !tbaa !81 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZN11colvarvalueaSERKS_.exit
  %i.cs = load ptr, ptr %i.ae, align 8, !tbaa !82
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cr to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cv) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.i, %_ZN11colvarvalueaSERKS_.exit
  %i.cw = load ptr, ptr %i.z, align 8, !tbaa !81  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.cx = load ptr, ptr %i.af, align 8, !tbaa !82
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.da) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i

_ZNSt6vectorIiSaIiEED2Ev.exit2.i:                 ; preds = %bb.j, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.db = load ptr, ptr %i.y, align 8, !tbaa !83  ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i3.i, label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  %i.dc = load ptr, ptr %i.ag, align 8, !tbaa !84
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = sub i64 %i.dd, %i.de
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.df) #21
  br label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  %i.dg = load ptr, ptr %i.x, align 8, !tbaa !65  ; 5 uses
  %i.dh = load ptr, ptr %i.ah, align 8, !tbaa !85
  %.not.i.i.i4.i = icmp eq ptr %i.dh, %i.dg
  br i1 %.not.i.i.i4.i, label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i
  store ptr %i.dg, ptr %i.ah, align 8, !tbaa !85
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i

_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i:            ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i, %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i
  %.not.i.i.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i.i, label %_ZN11colvarvalueD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i
  %i.di = load ptr, ptr %i.ai, align 8, !tbaa !86
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dg to i64
  %i.dl = sub i64 %i.dj, %i.dk
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.dl) #21
  br label %_ZN11colvarvalueD2Ev.exit

_ZN11colvarvalueD2Ev.exit:                        ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i, %bb.l
  %i.dm = load ptr, ptr %i.aj, align 8, !tbaa !81 ; 3 uses
  %.not.i.i.i.i107 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i107, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i108, label %bb.m

bb.m:                                             ; preds = %_ZN11colvarvalueD2Ev.exit
  %i.dn = load ptr, ptr %i.ak, align 8, !tbaa !82
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = ptrtoint ptr %i.dm to i64
  %i.dq = sub i64 %i.do, %i.dp
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dq) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i108

_ZNSt6vectorIiSaIiEED2Ev.exit.i108:               ; preds = %bb.m, %_ZN11colvarvalueD2Ev.exit
  %i.dr = load ptr, ptr %i.al, align 8, !tbaa !81 ; 3 uses
  %.not.i.i.i1.i109 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i1.i109, label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i110, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i108
  %i.ds = load ptr, ptr %i.am, align 8, !tbaa !82
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dr to i64
  %i.dv = sub i64 %i.dt, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.dv) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i110

_ZNSt6vectorIiSaIiEED2Ev.exit2.i110:              ; preds = %bb.n, %_ZNSt6vectorIiSaIiEED2Ev.exit.i108
  %i.dw = load ptr, ptr %i.an, align 8, !tbaa !83 ; 3 uses
  %.not.i.i.i3.i111 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i3.i111, label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i112, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i110
  %i.dx = load ptr, ptr %i.ao, align 8, !tbaa !84
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dw to i64
  %i.ea = sub i64 %i.dy, %i.dz
  call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.ea) #21
  br label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i112

_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i112: ; preds = %bb.o, %_ZNSt6vectorIiSaIiEED2Ev.exit2.i110
  %i.eb = load ptr, ptr %i.ap, align 8, !tbaa !65 ; 5 uses
  %i.ec = load ptr, ptr %i.aq, align 8, !tbaa !85
  %.not.i.i.i4.i113 = icmp eq ptr %i.ec, %i.eb
  br i1 %.not.i.i.i4.i113, label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i115, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i114

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i114: ; preds = %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i112
  store ptr %i.eb, ptr %i.aq, align 8, !tbaa !85
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i115

_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i115:         ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i114, %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i112
  %.not.i.i.i.i.i116 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i.i.i116, label %_ZN11colvarvalueD2Ev.exit117, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i115
  %i.ed = load ptr, ptr %i.ar, align 8, !tbaa !86
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.eb to i64
  %i.eg = sub i64 %i.ee, %i.ef
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.eg) #21
  br label %_ZN11colvarvalueD2Ev.exit117

_ZN11colvarvalueD2Ev.exit117:                     ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i115, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.eh = load ptr, ptr %i.u, align 8, !tbaa !65
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.070160
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !64
  %i.ek = load ptr, ptr %i.q, align 8, !tbaa !60
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %.070160
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !67 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 472
  %i.eo = load double, ptr %i.en, align 8, !tbaa !191
  %i.ep = fdiv double %i.ej, %i.eo
  %i.eq = load ptr, ptr %i.v, align 8, !tbaa !77
  %i.er = getelementptr inbounds nuw [168 x i8], ptr %i.eq, i64 %.070160
  %i.es = call noundef double @_ZNK14colvarbias_alb19restraint_potentialEdPK6colvarRK11colvarvalue(ptr nonnull align 8 poison, double noundef %i.ep, ptr noundef %i.em, ptr noundef nonnull align 8 dereferenceable(168) %i.er)
  %i.et = load double, ptr %i.g, align 8, !tbaa !37
  %i.eu = fadd double %i.es, %i.et
  store double %i.eu, ptr %i.g, align 8, !tbaa !37
  %i.ev = load i8, ptr %i.as, align 8, !tbaa !61, !range !62, !noundef !63
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.u, label %bb.q

bb.q:                                             ; preds = %_ZN11colvarvalueD2Ev.exit117
  %i.ex = load ptr, ptr %i.q, align 8, !tbaa !60
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %.070160
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !67
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 672
  %i.fb = call noundef double @_ZNK11colvarvaluecvdEv(ptr noundef nonnull align 8 dereferenceable(168) %i.fa)
  %i.fc = load ptr, ptr %i.at, align 8, !tbaa !65
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %.070160 ; 2 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !64 ; 2 uses
  %i.ff = fsub double %i.fb, %i.fe                ; 2 uses
  %i.fg = load i32, ptr %i.n, align 8, !tbaa !58
  %i.fh = sitofp i32 %i.fg to double
  %i.fi = fdiv double %i.ff, %i.fh
  %i.fj = fadd double %i.fe, %i.fi
  store double %i.fj, ptr %i.fd, align 8, !tbaa !64
  %i.fk = load ptr, ptr %i.q, align 8, !tbaa !60
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %.070160
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !67
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 672
  %i.fo = call noundef double @_ZNK11colvarvaluecvdEv(ptr noundef nonnull align 8 dereferenceable(168) %i.fn)
  %i.fp = load ptr, ptr %i.at, align 8, !tbaa !65
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %.070160
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !64
  %i.fs = fsub double %i.fo, %i.fr
  %i.ft = load ptr, ptr %i.au, align 8, !tbaa !65
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.070160 ; 2 uses
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !64
  %i.fw = call double @llvm.fmuladd.f64(double %i.ff, double %i.fs, double %i.fv)
  store double %i.fw, ptr %i.fu, align 8, !tbaa !64
  br label %bb.ah

bb.r:                                             ; preds = %bb.b
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.h, %.noexc104, %.noexc103, %.noexc102, %bb.g, %bb.c
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11colvarvalueD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %1) #20
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn83 = phi { ptr, i32 } [ %i.fy, %bb.s ], [ %i.fx, %bb.r ]
  call void @_ZN11colvarvalueD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.aq

bb.u:                                             ; preds = %_ZN11colvarvalueD2Ev.exit117
  %i.fz = load ptr, ptr %i.u, align 8, !tbaa !65
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %.070160 ; 2 uses
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !64 ; 3 uses
  %i.gc = load ptr, ptr %i.av, align 8, !tbaa !65
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %.070160
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !64 ; 4 uses
  %i.gf = fcmp oeq double %i.ge, 0.000000e+00
  br i1 %i.gf, label %6, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gg = load ptr, ptr %i.aw, align 8, !tbaa !65
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.070160
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !64
  %i.gj = fsub double %i.gb, %i.gi                ; 2 uses
  %i.gk = fmul double %i.gj, %i.gj
  %i.gl = fmul double %i.ge, %i.ge
  %i.gm = fcmp olt double %i.gk, %i.gl
  br i1 %i.gm, label %6, label %bb.w

6:                                                ; preds = %bb.v, %bb.u
  %7 = icmp ne i8 %.071159, 0
  %8 = zext i1 %7 to i8
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gn = fadd double %i.gb, %i.ge                ; 2 uses
  store double %i.gn, ptr %i.ga, align 8, !tbaa !64
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %6
  %9 = phi double [ %i.gb, %6 ], [ %i.gn, %bb.w ]
  %.1 = phi i8 [ %8, %6 ], [ 0, %bb.w ]           ; 3 uses
  %i.go = load i8, ptr %i.ax, align 1, !tbaa !195, !range !62, !noundef !63
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %bb.ah, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gq = call double @llvm.fabs.f64(double %9)
  %i.gr = load ptr, ptr %i.ay, align 8, !tbaa !65
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %.070160
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !64
  %i.gu = fcmp ogt double %i.gq, %i.gt
  br i1 %i.gu, label %bb.z, label %bb.ah

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.gv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.25, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.z
  %i.gw = load ptr, ptr %i.q, align 8, !tbaa !60
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %.070160
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !67 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 440
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !87
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 448
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !88
  %i.hd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.ha, i64 noundef %i.hc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ae ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.he = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hd, ptr noundef nonnull @.str.26, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.hf = load ptr, ptr %i.ay, align 8, !tbaa !65
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %.070160
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !64
  %i.hi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hd, double noundef %i.hh)
          to label %_ZNSolsEd.exit unwind label %bb.ae

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121
  %i.hj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hi, ptr noundef nonnull @.str.27, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124: ; preds = %_ZNSolsEd.exit
  %i.hk = load ptr, ptr %i.ay, align 8, !tbaa !65
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %.070160 ; 2 uses
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !64
  %i.hn = fmul double %i.hm, 1.250000e+00
  store double %i.hn, ptr %i.hl, align 8, !tbaa !64
  %i.ho = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.28, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit126 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit126: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124
  %i.hp = load ptr, ptr %i.ay, align 8, !tbaa !65
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %.070160
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !64
  %i.hs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.hr)
          to label %_ZNSolsEd.exit128 unwind label %bb.ae

_ZNSolsEd.exit128:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit126
  %i.ht = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hs, ptr noundef nonnull @.str.27, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130: ; preds = %_ZNSolsEd.exit128
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  store ptr %i.az, ptr %4, align 8, !tbaa !89, !alias.scope !198
  store i64 0, ptr %i.ba, align 8, !tbaa !88, !alias.scope !198
  store i8 0, ptr %i.az, align 8, !tbaa !90, !alias.scope !198
  %i.hu = load ptr, ptr %i.bb, align 8, !tbaa !94, !noalias !198 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.hu, null
  %i.hv = load ptr, ptr %i.bc, align 8, !noalias !198 ; 2 uses
  %i.hw = icmp ugt ptr %i.hu, %i.hv
  %.08.i.i.i = select i1 %i.hw, ptr %i.hu, ptr %i.hv ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130
  %i.hx = load ptr, ptr %i.bd, align 8, !tbaa !95, !noalias !198 ; 2 uses
  %i.hy = ptrtoint ptr %.08.i.i.i to i64
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.hx, i64 noundef %i.ia)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ab ; 0 uses

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  %i.ic = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.id = load ptr, ptr %4, align 8, !tbaa !87, !alias.scope !198 ; 2 uses
  %i.ie = icmp eq ptr %i.id, %i.az
  br i1 %i.ie, label %.body, label %.body.sink.split

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.be)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ab

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.ac, %bb.aa
  invoke void @_ZN12colvarmodule3logERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 10)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.if = load ptr, ptr %4, align 8, !tbaa !87    ; 2 uses
  %i.ig = icmp eq ptr %i.if, %i.az
  br i1 %i.ig, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %bb.ad
  %i.ih = load i64, ptr %i.az, align 8, !tbaa !90
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ii) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  store ptr %i.bf, ptr %3, align 8, !tbaa !39
  %i.ij = load i64, ptr %i.bh, align 8
  %i.ik = getelementptr inbounds i8, ptr %3, i64 %i.ij
  store ptr %i.bg, ptr %i.ik, align 8, !tbaa !39
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bi, align 8, !tbaa !39
  %i.il = load ptr, ptr %i.be, align 8, !tbaa !87 ; 2 uses
  %i.im = icmp eq ptr %i.il, %i.bj
  br i1 %i.im, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135
  %i.in = load i64, ptr %i.bj, align 8, !tbaa !90
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.io) #21
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bi, align 8, !tbaa !39
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bk) #20
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bl) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.ah

bb.ae:                                            ; preds = %_ZNSolsEd.exit128, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit126, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124, %_ZNSolsEd.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.z
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.iq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ir = load ptr, ptr %4, align 8, !tbaa !87    ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.az
  br i1 %i.is, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.af, %bb.ab
  %.sink = phi ptr [ %i.id, %bb.ab ], [ %i.ir, %bb.af ]
  %.pn85.ph = phi { ptr, i32 } [ %i.ic, %bb.ab ], [ %i.iq, %bb.af ]
  %i.it = load i64, ptr %i.az, align 8, !tbaa !90
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.iu) #21
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.af, %bb.ab
  %.pn85 = phi { ptr, i32 } [ %i.ic, %bb.ab ], [ %i.iq, %bb.af ], [ %.pn85.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.ag

bb.ag:                                            ; preds = %.body, %bb.ae
  %.pn85.pn = phi { ptr, i32 } [ %.pn85, %.body ], [ %i.ip, %bb.ae ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.aq

bb.ah:                                            ; preds = %bb.x, %bb.y, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.q
  %.2 = phi i8 [ %.071159, %bb.q ], [ %.1, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %.1, %bb.y ], [ %.1, %bb.x ] ; 2 uses
  %i.iv = add nuw i64 %.070160, 1                 ; 2 uses
  %i.iw = load ptr, ptr %i.r, align 8, !tbaa !59  ; 2 uses
  %i.ix = load ptr, ptr %i.q, align 8, !tbaa !60  ; 3 uses
  %i.iy = ptrtoint ptr %i.iw to i64
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = sub i64 %i.iy, %i.iz
  %i.jb = ashr exact i64 %i.ja, 3
  %i.jc = icmp ult i64 %i.iv, %i.jb
  br i1 %i.jc, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !130

.thread:                                          ; preds = %._crit_edge
  store i8 0, ptr %i.bn, align 8, !tbaa !61
  store i32 0, ptr %i.n, align 8, !tbaa !58
  br label %bb.aj

bb.ai:                                            ; preds = %._crit_edge
  %i.jd = trunc nuw i8 %i.bo to i1
  br i1 %i.jd, label %bb.ap, label %bb.aj

bb.aj:                                            ; preds = %.thread, %bb.ai
  %i.je = load i32, ptr %i.n, align 8, !tbaa !58
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 388 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !97
  %i.jh = icmp eq i32 %i.je, %i.jg
  br i1 %i.jh, label %.preheader, label %bb.ap

.preheader:                                       ; preds = %bb.aj
  br i1 %.not165, label %._crit_edge164, label %.lr.ph163

.lr.ph163:                                        ; preds = %.preheader
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.jl = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.jm = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 416
  br label %bb.ak

._crit_edge164:                                   ; preds = %bb.ao, %.preheader
  store i32 0, ptr %i.n, align 8, !tbaa !58
  store i8 1, ptr %i.bn, align 8, !tbaa !61
  br label %bb.ap

bb.ak:                                            ; preds = %.lr.ph163, %bb.ao
  %.0162 = phi i64 [ 0, %.lr.ph163 ], [ %i.mr, %bb.ao ] ; 12 uses
  %i.jt = load ptr, ptr %i.ji, align 8, !tbaa !65
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %.0162
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !64
  %i.jw = load ptr, ptr %i.jj, align 8, !tbaa !77
  %i.jx = getelementptr inbounds nuw [168 x i8], ptr %i.jw, i64 %.0162
  %i.jy = call noundef double @_ZNK11colvarvaluecvdEv(ptr noundef nonnull align 8 dereferenceable(168) %i.jx)
  %i.jz = fdiv double %i.jv, %i.jy
  %i.ka = fadd double %i.jz, -1.000000e+00
  %i.kb = fmul double %i.ka, 2.000000e+00
  %i.kc = load ptr, ptr %i.jk, align 8, !tbaa !65
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %.0162 ; 2 uses
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !64
  %i.kf = fmul double %i.ke, %i.kb
  %i.kg = load i32, ptr %i.n, align 8, !tbaa !58
  %i.kh = load ptr, ptr %0, align 8, !tbaa !39
  %i.ki = getelementptr i8, ptr %i.kh, i64 -32
  %i.kj = load i64, ptr %i.ki, align 8
  %i.kk = getelementptr inbounds i8, ptr %0, i64 %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 40
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !51
  %i.kn = sub nsw i32 %i.kg, %i.km
  %i.ko = sitofp i32 %i.kn to double
  %i.kp = fdiv double %i.kf, %i.ko
  %i.kq = load double, ptr %i.jl, align 8, !tbaa !100 ; 2 uses
  %i.kr = fcmp ogt double %i.kq, 0.000000e+00
  %i.ks = load double, ptr %i.jm, align 8, !tbaa !101 ; 2 uses
  %i.kt = fmul double %i.kq, %i.ks
  %.pn82 = select i1 %i.kr, double %i.kt, double %i.ks
  %.069 = fdiv double %i.kp, %.pn82               ; 3 uses
  %i.ku = load ptr, ptr %i.ji, align 8, !tbaa !65
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %.0162
  store double 0.000000e+00, ptr %i.kv, align 8, !tbaa !64
  store double 0.000000e+00, ptr %i.kd, align 8, !tbaa !64
  %i.kw = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.kx = load ptr, ptr %i.q, align 8, !tbaa !60
  %i.ky = ptrtoint ptr %i.kw to i64
  %i.kz = ptrtoint ptr %i.kx to i64
  %i.la = sub i64 %i.ky, %i.kz
  %i.lb = icmp eq i64 %i.la, 8
  br i1 %i.lb, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.lc = call i32 @rand() #20
  %i.ld = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.le = load ptr, ptr %i.q, align 8, !tbaa !60
  %i.lf = ptrtoint ptr %i.ld to i64
  %i.lg = ptrtoint ptr %i.le to i64
  %i.lh = sub i64 %i.lf, %i.lg                    ; 3 uses
  %i.li = lshr exact i64 %i.lh, 3
  %i.lj = trunc i64 %i.li to i32
  %i.lk = sdiv i32 2147483647, %i.lj
  %i.ll = icmp slt i32 %i.lc, %i.lk
  br i1 %i.ll, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pre168.pre-phi = phi i64 [ %i.lh, %bb.al ], [ 8, %bb.ak ]
  %i.lm = load ptr, ptr %i.jo, align 8, !tbaa !65
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %.0162 ; 3 uses
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !64
  %i.lp = call double @llvm.fmuladd.f64(double %.069, double %.069, double %i.lo)
  store double %i.lp, ptr %i.ln, align 8, !tbaa !64
  %i.lq = load ptr, ptr %i.jp, align 8, !tbaa !65
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %.0162 ; 2 uses
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !64 ; 2 uses
  %i.lt = load ptr, ptr %i.jq, align 8, !tbaa !65
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %.0162 ; 2 uses
  store double %i.ls, ptr %i.lu, align 8, !tbaa !64
  %i.lv = load ptr, ptr %i.jr, align 8, !tbaa !65
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.lv, i64 %.0162
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !64
  %i.ly = load double, ptr %i.ln, align 8, !tbaa !64
  %i.lz = call double @sqrt(double noundef %i.ly) #20
  %i.ma = fdiv double %i.lx, %i.lz
  %i.mb = call double @llvm.fmuladd.f64(double %i.ma, double %.069, double %i.ls) ; 2 uses
  store double %i.mb, ptr %i.lr, align 8, !tbaa !64
  %i.mc = load double, ptr %i.lu, align 8, !tbaa !64
  %i.md = fsub double %i.mb, %i.mc
  %i.me = load i32, ptr %i.jf, align 4, !tbaa !97
  %i.mf = sitofp i32 %i.me to double
  %i.mg = fdiv double %i.md, %i.mf                ; 3 uses
  %i.mh = load ptr, ptr %i.jn, align 8, !tbaa !65
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %.0162 ; 2 uses
  store double %i.mg, ptr %i.mi, align 8, !tbaa !64
  %i.mj = call nsz double @llvm.fabs.f64(double %i.mg)
  %i.mk = load ptr, ptr %i.js, align 8, !tbaa !65
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.mk, i64 %.0162
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !64
  %i.mn = call nsz double @llvm.minnum.f64(double %i.mj, double %i.mm)
  %i.mo = call double @llvm.copysign.f64(double %i.mn, double %i.mg)
  store double %i.mo, ptr %i.mi, align 8, !tbaa !64
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.mp = load ptr, ptr %i.jn, align 8, !tbaa !65
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %.0162
  store double 0.000000e+00, ptr %i.mq, align 8, !tbaa !64
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %.pre-phi169 = phi i64 [ %.pre168.pre-phi, %bb.am ], [ %i.lh, %bb.an ]
  %i.mr = add nuw i64 %.0162, 1                   ; 2 uses
  %i.ms = ashr exact i64 %.pre-phi169, 3
  %i.mt = icmp ult i64 %i.mr, %i.ms
  br i1 %i.mt, label %bb.ak, label %._crit_edge164, !llvm.loop !131

bb.ap:                                            ; preds = %._crit_edge164, %bb.aj, %bb.ai
  ret i32 0

bb.aq:                                            ; preds = %bb.t, %bb.ag
  %.pn85.pn.pn.pn = phi { ptr, i32 } [ %.pn83, %bb.t ], [ %.pn85.pn, %bb.ag ]
  resume { ptr, i32 } %.pn85.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN14colvarbias_alb4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(541) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %i.k = tail call noundef ptr @_ZN12colvarmodule4mainEv() ; 0 uses
  %i.l = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !11 ; 2 uses
  %i.m = tail call noundef i32 @_ZN10colvarbias4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.noexc.i, label %.loopexit

.noexc.i:                                         ; preds = %bb.a
  %i.n = tail call noundef ptr @_ZN12colvarmodule4mainEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.o, ptr %2, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store i64 30, ptr %i.e, align 8, !tbaa !102
end_hunk_0
