Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarbias_alb?download=true
inline.NumInlined: 975
inline.NumDeleted: 326
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN10colvarbias16clear_state_dataEv
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
  %i.bm = icmp eq ptr %i.ix, %i.iy
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.not165 = phi i1 [ true, %bb.a ], [ %i.bm, %._crit_edge.loopexit ]
  %.071.lcssa = phi i1 [ true, %bb.a ], [ %.2, %._crit_edge.loopexit ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 3 uses
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !61, !range !62, !noundef !63 ; 2 uses
  %i.bp = trunc nuw i8 %i.bo to i1
  %or.cond = select i1 %i.bp, i1 %.071.lcssa, i1 false
  br i1 %or.cond, label %.thread, label %bb.ai

bb.b:                                             ; preds = %.lr.ph, %bb.ah
  %i.bq = phi ptr [ %i.t, %.lr.ph ], [ %i.iy, %bb.ah ]
  %.070160 = phi i64 [ 0, %.lr.ph ], [ %i.iw, %bb.ah ] ; 20 uses
  %.071159 = phi i1 [ true, %.lr.ph ], [ %.2, %bb.ah ] ; 3 uses
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
end_hunk_0
begin_hunk_1_@_ZN14colvarbias_alb6updateEv:bb.a
  %i.gj = fsub double %i.gb, %i.gi                ; 2 uses
  %i.gk = fmul double %i.gj, %i.gj
  %i.gl = fmul double %i.ge, %i.ge
  %i.gm = fcmp olt double %i.gk, %i.gl
  br i1 %i.gm, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gn = fadd double %i.gb, %i.ge                ; 2 uses
  store double %i.gn, ptr %i.ga, align 8, !tbaa !64
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.v, %bb.w
  %i.go = phi double [ %i.gn, %bb.w ], [ %i.gb, %bb.v ], [ %i.gb, %bb.u ]
  %.1 = phi i1 [ false, %bb.w ], [ %.071159, %bb.v ], [ %.071159, %bb.u ] ; 3 uses
  %i.gp = load i8, ptr %i.ax, align 1, !tbaa !195, !range !62, !noundef !63
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.ah, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gr = call double @llvm.fabs.f64(double %i.go)
  %i.gs = load ptr, ptr %i.ay, align 8, !tbaa !65
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %.070160
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !64
  %i.gv = fcmp ogt double %i.gr, %i.gu
  br i1 %i.gv, label %bb.z, label %bb.ah

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.gw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.25, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.z
  %i.gx = load ptr, ptr %i.q, align 8, !tbaa !60
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %.070160
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !67 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 440
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !87
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 448
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !88
  %i.he = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.hb, i64 noundef %i.hd)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ae ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.hf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.he, ptr noundef nonnull @.str.26, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.hg = load ptr, ptr %i.ay, align 8, !tbaa !65
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %.070160
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !64
  %i.hj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.he, double noundef %i.hi)
          to label %_ZNSolsEd.exit unwind label %bb.ae

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121
  %i.hk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hj, ptr noundef nonnull @.str.27, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124: ; preds = %_ZNSolsEd.exit
  %i.hl = load ptr, ptr %i.ay, align 8, !tbaa !65
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %.070160 ; 2 uses
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !64
  %i.ho = fmul double %i.hn, 1.250000e+00
  store double %i.ho, ptr %i.hm, align 8, !tbaa !64
  %i.hp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.28, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit126 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit126: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124
  %i.hq = load ptr, ptr %i.ay, align 8, !tbaa !65
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %.070160
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !64
  %i.ht = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.hs)
          to label %_ZNSolsEd.exit128 unwind label %bb.ae

_ZNSolsEd.exit128:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit126
  %i.hu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ht, ptr noundef nonnull @.str.27, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130: ; preds = %_ZNSolsEd.exit128
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  store ptr %i.az, ptr %4, align 8, !tbaa !89, !alias.scope !198
  store i64 0, ptr %i.ba, align 8, !tbaa !88, !alias.scope !198
  store i8 0, ptr %i.az, align 8, !tbaa !90, !alias.scope !198
  %i.hv = load ptr, ptr %i.bb, align 8, !tbaa !94, !noalias !198 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.hv, null
  %i.hw = load ptr, ptr %i.bc, align 8, !noalias !198 ; 2 uses
  %i.hx = icmp ugt ptr %i.hv, %i.hw
  %.08.i.i.i = select i1 %i.hx, ptr %i.hv, ptr %i.hw ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130
  %i.hy = load ptr, ptr %i.bd, align 8, !tbaa !95, !noalias !198 ; 2 uses
  %i.hz = ptrtoint ptr %.08.i.i.i to i64
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = sub i64 %i.hz, %i.ia
  %i.ic = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.hy, i64 noundef %i.ib)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ab ; 0 uses

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  %i.id = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ie = load ptr, ptr %4, align 8, !tbaa !87, !alias.scope !198 ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.az
  br i1 %i.if, label %.body, label %.body.sink.split

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.be)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ab

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.ac, %bb.aa
  invoke void @_ZN12colvarmodule3logERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 10)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ig = load ptr, ptr %4, align 8, !tbaa !87    ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.az
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %bb.ad
  %i.ii = load i64, ptr %i.az, align 8, !tbaa !90
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  store ptr %i.bf, ptr %3, align 8, !tbaa !39
  %i.ik = load i64, ptr %i.bh, align 8
  %i.il = getelementptr inbounds i8, ptr %3, i64 %i.ik
  store ptr %i.bg, ptr %i.il, align 8, !tbaa !39
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bi, align 8, !tbaa !39
  %i.im = load ptr, ptr %i.be, align 8, !tbaa !87 ; 2 uses
  %i.in = icmp eq ptr %i.im, %i.bj
  br i1 %i.in, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135
  %i.io = load i64, ptr %i.bj, align 8, !tbaa !90
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.ip) #21
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bi, align 8, !tbaa !39
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bk) #20
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bl) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.ah

bb.ae:                                            ; preds = %_ZNSolsEd.exit128, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit126, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124, %_ZNSolsEd.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.z
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ir = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.is = load ptr, ptr %4, align 8, !tbaa !87    ; 2 uses
  %i.it = icmp eq ptr %i.is, %i.az
  br i1 %i.it, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.af, %bb.ab
  %.sink = phi ptr [ %i.ie, %bb.ab ], [ %i.is, %bb.af ]
  %.pn85.ph = phi { ptr, i32 } [ %i.id, %bb.ab ], [ %i.ir, %bb.af ]
  %i.iu = load i64, ptr %i.az, align 8, !tbaa !90
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.iv) #21
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.af, %bb.ab
  %.pn85 = phi { ptr, i32 } [ %i.id, %bb.ab ], [ %i.ir, %bb.af ], [ %.pn85.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.ag

bb.ag:                                            ; preds = %.body, %bb.ae
  %.pn85.pn = phi { ptr, i32 } [ %.pn85, %.body ], [ %i.iq, %bb.ae ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.aq

bb.ah:                                            ; preds = %bb.x, %bb.y, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.q
  %.2 = phi i1 [ %.071159, %bb.q ], [ %.1, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %.1, %bb.y ], [ %.1, %bb.x ] ; 2 uses
  %i.iw = add nuw i64 %.070160, 1                 ; 2 uses
  %i.ix = load ptr, ptr %i.r, align 8, !tbaa !59  ; 2 uses
  %i.iy = load ptr, ptr %i.q, align 8, !tbaa !60  ; 3 uses
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = sub i64 %i.iz, %i.ja
  %i.jc = ashr exact i64 %i.jb, 3
  %i.jd = icmp ult i64 %i.iw, %i.jc
  br i1 %i.jd, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !130

.thread:                                          ; preds = %._crit_edge
  store i8 0, ptr %i.bn, align 8, !tbaa !61
  store i32 0, ptr %i.n, align 8, !tbaa !58
  br label %bb.aj

bb.ai:                                            ; preds = %._crit_edge
  %5 = trunc nuw i8 %i.bo to i1
  br i1 %5, label %bb.ap, label %bb.aj

bb.aj:                                            ; preds = %.thread, %bb.ai
  %6 = load i32, ptr %i.n, align 8, !tbaa !58
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 388 ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !97
  %i.jg = icmp eq i32 %6, %i.jf
  br i1 %i.jg, label %.preheader, label %bb.ap

.preheader:                                       ; preds = %bb.aj
  br i1 %.not165, label %._crit_edge164, label %.lr.ph163

.lr.ph163:                                        ; preds = %.preheader
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.jk = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.jl = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 416
  br label %bb.ak

._crit_edge164:                                   ; preds = %bb.ao, %.preheader
  store i32 0, ptr %i.n, align 8, !tbaa !58
  store i8 1, ptr %i.bn, align 8, !tbaa !61
  br label %bb.ap

bb.ak:                                            ; preds = %.lr.ph163, %bb.ao
  %.0162 = phi i64 [ 0, %.lr.ph163 ], [ %i.mq, %bb.ao ] ; 12 uses
  %i.js = load ptr, ptr %i.jh, align 8, !tbaa !65
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %.0162
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !64
  %i.jv = load ptr, ptr %i.ji, align 8, !tbaa !77
  %i.jw = getelementptr inbounds nuw [168 x i8], ptr %i.jv, i64 %.0162
  %i.jx = call noundef double @_ZNK11colvarvaluecvdEv(ptr noundef nonnull align 8 dereferenceable(168) %i.jw)
  %i.jy = fdiv double %i.ju, %i.jx
  %i.jz = fadd double %i.jy, -1.000000e+00
  %i.ka = fmul double %i.jz, 2.000000e+00
  %i.kb = load ptr, ptr %i.jj, align 8, !tbaa !65
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %.0162 ; 2 uses
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !64
  %i.ke = fmul double %i.kd, %i.ka
  %i.kf = load i32, ptr %i.n, align 8, !tbaa !58
  %i.kg = load ptr, ptr %0, align 8, !tbaa !39
  %i.kh = getelementptr i8, ptr %i.kg, i64 -32
  %i.ki = load i64, ptr %i.kh, align 8
  %i.kj = getelementptr inbounds i8, ptr %0, i64 %i.ki
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 40
  %i.kl = load i32, ptr %i.kk, align 8, !tbaa !51
  %i.km = sub nsw i32 %i.kf, %i.kl
  %i.kn = sitofp i32 %i.km to double
  %i.ko = fdiv double %i.ke, %i.kn
  %i.kp = load double, ptr %i.jk, align 8, !tbaa !100 ; 2 uses
  %i.kq = fcmp ogt double %i.kp, 0.000000e+00
  %i.kr = load double, ptr %i.jl, align 8, !tbaa !101 ; 2 uses
  %i.ks = fmul double %i.kp, %i.kr
  %.pn82 = select i1 %i.kq, double %i.ks, double %i.kr
  %.069 = fdiv double %i.ko, %.pn82               ; 3 uses
  %i.kt = load ptr, ptr %i.jh, align 8, !tbaa !65
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %.0162
  store double 0.000000e+00, ptr %i.ku, align 8, !tbaa !64
  store double 0.000000e+00, ptr %i.kc, align 8, !tbaa !64
  %i.kv = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.kw = load ptr, ptr %i.q, align 8, !tbaa !60
  %i.kx = ptrtoint ptr %i.kv to i64
  %i.ky = ptrtoint ptr %i.kw to i64
  %i.kz = sub i64 %i.kx, %i.ky
  %i.la = icmp eq i64 %i.kz, 8
  br i1 %i.la, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.lb = call i32 @rand() #20
  %i.lc = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.ld = load ptr, ptr %i.q, align 8, !tbaa !60
  %i.le = ptrtoint ptr %i.lc to i64
  %i.lf = ptrtoint ptr %i.ld to i64
  %i.lg = sub i64 %i.le, %i.lf                    ; 3 uses
  %i.lh = lshr exact i64 %i.lg, 3
  %i.li = trunc i64 %i.lh to i32
  %i.lj = sdiv i32 2147483647, %i.li
  %i.lk = icmp slt i32 %i.lb, %i.lj
  br i1 %i.lk, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pre168.pre-phi = phi i64 [ %i.lg, %bb.al ], [ 8, %bb.ak ]
  %i.ll = load ptr, ptr %i.jn, align 8, !tbaa !65
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %.0162 ; 3 uses
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !64
  %i.lo = call double @llvm.fmuladd.f64(double %.069, double %.069, double %i.ln)
  store double %i.lo, ptr %i.lm, align 8, !tbaa !64
  %i.lp = load ptr, ptr %i.jo, align 8, !tbaa !65
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %.0162 ; 2 uses
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !64 ; 2 uses
  %i.ls = load ptr, ptr %i.jp, align 8, !tbaa !65
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %.0162 ; 2 uses
  store double %i.lr, ptr %i.lt, align 8, !tbaa !64
  %i.lu = load ptr, ptr %i.jq, align 8, !tbaa !65
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %.0162
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !64
  %i.lx = load double, ptr %i.lm, align 8, !tbaa !64
  %i.ly = call double @sqrt(double noundef %i.lx) #20
  %i.lz = fdiv double %i.lw, %i.ly
  %i.ma = call double @llvm.fmuladd.f64(double %i.lz, double %.069, double %i.lr) ; 2 uses
  store double %i.ma, ptr %i.lq, align 8, !tbaa !64
  %i.mb = load double, ptr %i.lt, align 8, !tbaa !64
  %i.mc = fsub double %i.ma, %i.mb
  %i.md = load i32, ptr %i.je, align 4, !tbaa !97
  %i.me = sitofp i32 %i.md to double
  %i.mf = fdiv double %i.mc, %i.me                ; 3 uses
  %i.mg = load ptr, ptr %i.jm, align 8, !tbaa !65
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %.0162 ; 2 uses
  store double %i.mf, ptr %i.mh, align 8, !tbaa !64
  %i.mi = call nsz double @llvm.fabs.f64(double %i.mf)
  %i.mj = load ptr, ptr %i.jr, align 8, !tbaa !65
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %.0162
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !64
  %i.mm = call nsz double @llvm.minnum.f64(double %i.mi, double %i.ml)
  %i.mn = call double @llvm.copysign.f64(double %i.mm, double %i.mf)
  store double %i.mn, ptr %i.mh, align 8, !tbaa !64
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.mo = load ptr, ptr %i.jm, align 8, !tbaa !65
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %.0162
  store double 0.000000e+00, ptr %i.mp, align 8, !tbaa !64
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %.pre-phi169 = phi i64 [ %.pre168.pre-phi, %bb.am ], [ %i.lg, %bb.an ]
  %i.mq = add nuw i64 %.0162, 1                   ; 2 uses
  %i.mr = ashr exact i64 %.pre-phi169, 3
  %i.ms = icmp ult i64 %i.mq, %i.mr
  br i1 %i.ms, label %bb.ak, label %._crit_edge164, !llvm.loop !131

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
  %i.p = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc unwind label %bb.af    ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.p, ptr %2, align 8, !tbaa !87
  %i.q = load i64, ptr %i.e, align 8, !tbaa !102  ; 3 uses
  store i64 %i.q, ptr %i.o, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.p, ptr noundef nonnull align 1 dereferenceable(30) @.str, i64 30, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !88
  %i.s = load ptr, ptr %2, align 8, !tbaa !87
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.u = invoke noundef i32 @_ZN12colvarmodule12cite_featureERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(632) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.ag      ; 0 uses

bb.b:                                             ; preds = %.noexc
  %i.v = load ptr, ptr %2, align 8, !tbaa !87     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.o
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.x = load i64, ptr %i.o, align 8, !tbaa !90
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.z = load ptr, ptr %0, align 8, !tbaa !39
  %i.aa = getelementptr i8, ptr %i.z, i64 -32
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %0, i64 %i.ab
  %i.ad = call noundef i32 @_ZN10colvardeps6enableEibbb(ptr noundef nonnull align 8 dereferenceable(120) %i.ac, i32 noundef 9, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false) ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 17 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 17 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !59
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !60
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3                 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 5 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !103 ; 3 uses
  %i.ap = load ptr, ptr %i.ae, align 8, !tbaa !77 ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 168               ; 3 uses
  %i.au = icmp ugt i64 %i.am, %i.at
  br i1 %i.au, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = sub nuw nsw i64 %i.am, %i.at
  call void @_ZNSt6vectorI11colvarvalueSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef %i.av)
  br label %_ZNSt6vectorI11colvarvalueSaIS0_EE6resizeEm.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aw = icmp ult i64 %i.am, %i.at
  br i1 %i.aw, label %bb.e, label %_ZNSt6vectorI11colvarvalueSaIS0_EE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw [168 x i8], ptr %i.ap, i64 %i.am ; 3 uses
  %.not.i.i = icmp eq ptr %i.ao, %i.ax
  br i1 %.not.i.i, label %_ZNSt6vectorI11colvarvalueSaIS0_EE6resizeEm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIP11colvarvalueEEvT_S4_(ptr noundef %i.ax, ptr noundef %i.ao)
          to label %_ZSt8_DestroyIP11colvarvalueS0_EvT_S2_RSaIT0_E.exit.i.i unwind label %bb.g

_ZSt8_DestroyIP11colvarvalueS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %bb.f
  store ptr %i.ax, ptr %i.an, align 8, !tbaa !103
  br label %_ZNSt6vectorI11colvarvalueSaIS0_EE6resizeEm.exit

bb.g:                                             ; preds = %bb.f
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #22
  unreachable

_ZNSt6vectorI11colvarvalueSaIS0_EE6resizeEm.exit: ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIP11colvarvalueS0_EvT_S2_RSaIT0_E.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.bb = load ptr, ptr %i.ag, align 8, !tbaa !59
  %i.bc = load ptr, ptr %i.af, align 8, !tbaa !60
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 5 uses
  %i.bg = ashr exact i64 %i.bf, 3                 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !85 ; 2 uses
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !65 ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 3                 ; 3 uses
  %i.bo = icmp ugt i64 %i.bg, %i.bn
  br i1 %i.bo, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorI11colvarvalueSaIS0_EE6resizeEm.exit
  %i.bp = sub nuw nsw i64 %i.bg, %i.bn
  call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef %i.bp)
  %.pre = load ptr, ptr %i.ag, align 8, !tbaa !59
  %.pre268 = load ptr, ptr %i.af, align 8, !tbaa !60
  %.pre286 = ptrtoint ptr %.pre to i64
  %.pre287 = ptrtoint ptr %.pre268 to i64
  %.pre289 = sub i64 %.pre286, %.pre287           ; 2 uses
  %.pre291 = ashr exact i64 %.pre289, 3
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.i:                                             ; preds = %_ZNSt6vectorI11colvarvalueSaIS0_EE6resizeEm.exit
  %i.bq = icmp ult i64 %i.bg, %i.bn
  br i1 %i.bq, label %bb.j, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.j:                                             ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bf ; 2 uses
  %.not.i.i100 = icmp eq ptr %i.bi, %i.br
  br i1 %.not.i.i100, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.j
  store ptr %i.br, ptr %i.bh, align 8, !tbaa !85
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.h, %bb.i, %bb.j, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  %.pre-phi292 = phi i64 [ %.pre291, %bb.h ], [ %i.bg, %bb.i ], [ %i.bg, %bb.j ], [ %i.bg, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ] ; 6 uses
  %.pre-phi290 = phi i64 [ %.pre289, %bb.h ], [ %i.bf, %bb.i ], [ %i.bf, %bb.j ], [ %i.bf, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ] ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !85 ; 2 uses
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !65 ; 2 uses
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = ashr exact i64 %i.by, 3                 ; 3 uses
  %i.ca = icmp ugt i64 %.pre-phi292, %i.bz
  br i1 %i.ca, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.cb = sub nuw nsw i64 %.pre-phi292, %i.bz
  call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 noundef %i.cb)
  %.pre269 = load ptr, ptr %i.ag, align 8, !tbaa !59
  %.pre270 = load ptr, ptr %i.af, align 8, !tbaa !60
  %.pre293 = ptrtoint ptr %.pre269 to i64
  %.pre295 = ptrtoint ptr %.pre270 to i64
  %.pre297 = sub i64 %.pre293, %.pre295           ; 2 uses
  %.pre299 = ashr exact i64 %.pre297, 3
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit103

bb.l:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.cc = icmp ult i64 %.pre-phi292, %i.bz
  br i1 %i.cc, label %bb.m, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit103

bb.m:                                             ; preds = %bb.l
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.pre-phi290 ; 2 uses
end_hunk_1
