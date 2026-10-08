Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinyrenderer/original/model?download=true
inline.NumInlined: 459
inline.NumDeleted: 223
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5ModelC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %.not.i.i.i.i236 = icmp eq ptr %i.pg, null
  br i1 %.not.i.i.i.i236, label %_ZN8TGAImageD2Ev.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !95
  %i.pj = ptrtoint ptr %i.pi to i64
  %i.pk = ptrtoint ptr %i.pg to i64
  %i.pl = sub i64 %i.pj, %i.pk
  call void @_ZdlPvm(ptr noundef nonnull %i.pg, i64 noundef %i.pl) #22
  br label %_ZN8TGAImageD2Ev.exit

_ZN8TGAImageD2Ev.exit:                            ; preds = %bb.ci, %bb.cj
  %i.pm = load ptr, ptr %i.m, align 8, !tbaa !94  ; 3 uses
  %.not.i.i.i.i237 = icmp eq ptr %i.pm, null
  br i1 %.not.i.i.i.i237, label %_ZN8TGAImageD2Ev.exit238, label %bb.ck

bb.ck:                                            ; preds = %_ZN8TGAImageD2Ev.exit
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !95
  %i.pp = ptrtoint ptr %i.po to i64
  %i.pq = ptrtoint ptr %i.pm to i64
  %i.pr = sub i64 %i.pp, %i.pq
  call void @_ZdlPvm(ptr noundef nonnull %i.pm, i64 noundef %i.pr) #22
  br label %_ZN8TGAImageD2Ev.exit238

_ZN8TGAImageD2Ev.exit238:                         ; preds = %_ZN8TGAImageD2Ev.exit, %bb.ck
  %i.ps = load ptr, ptr %i.k, align 8, !tbaa !94  ; 3 uses
  %.not.i.i.i.i239 = icmp eq ptr %i.ps, null
  br i1 %.not.i.i.i.i239, label %_ZN8TGAImageD2Ev.exit240, label %bb.cl

bb.cl:                                            ; preds = %_ZN8TGAImageD2Ev.exit238
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !95
  %i.pv = ptrtoint ptr %i.pu to i64
  %i.pw = ptrtoint ptr %i.ps to i64
  %i.px = sub i64 %i.pv, %i.pw
  call void @_ZdlPvm(ptr noundef nonnull %i.ps, i64 noundef %i.px) #22
  br label %_ZN8TGAImageD2Ev.exit240

_ZN8TGAImageD2Ev.exit240:                         ; preds = %_ZN8TGAImageD2Ev.exit238, %bb.cl
  %i.py = load ptr, ptr %i.i, align 8, !tbaa !59  ; 3 uses
  %.not.i.i.i241 = icmp eq ptr %i.py, null
  br i1 %.not.i.i.i241, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.cm

bb.cm:                                            ; preds = %_ZN8TGAImageD2Ev.exit240
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !90
  %i.qb = ptrtoint ptr %i.qa to i64
  %i.qc = ptrtoint ptr %i.py to i64
  %i.qd = sub i64 %i.qb, %i.qc
  call void @_ZdlPvm(ptr noundef nonnull %i.py, i64 noundef %i.qd) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN8TGAImageD2Ev.exit240, %bb.cm
  %i.qe = load ptr, ptr %i.h, align 8, !tbaa !59  ; 3 uses
  %.not.i.i.i242 = icmp eq ptr %i.qe, null
  br i1 %.not.i.i.i242, label %_ZNSt6vectorIiSaIiEED2Ev.exit243, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !90
  %i.qh = ptrtoint ptr %i.qg to i64
  %i.qi = ptrtoint ptr %i.qe to i64
  %i.qj = sub i64 %i.qh, %i.qi
  call void @_ZdlPvm(ptr noundef nonnull %i.qe, i64 noundef %i.qj) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit243

_ZNSt6vectorIiSaIiEED2Ev.exit243:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.cn
  %i.qk = load ptr, ptr %i.g, align 8, !tbaa !59  ; 3 uses
  %.not.i.i.i244 = icmp eq ptr %i.qk, null
  br i1 %.not.i.i.i244, label %_ZNSt6vectorIiSaIiEED2Ev.exit245, label %bb.co

bb.co:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit243
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !90
  %i.qn = ptrtoint ptr %i.qm to i64
  %i.qo = ptrtoint ptr %i.qk to i64
  %i.qp = sub i64 %i.qn, %i.qo
  call void @_ZdlPvm(ptr noundef nonnull %i.qk, i64 noundef %i.qp) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit245

_ZNSt6vectorIiSaIiEED2Ev.exit245:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit243, %bb.co
  %i.qq = load ptr, ptr %i.f, align 8, !tbaa !55  ; 3 uses
  %.not.i.i.i246 = icmp eq ptr %i.qq, null
  br i1 %.not.i.i.i246, label %_ZNSt6vectorI3vecILi2EESaIS1_EED2Ev.exit, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit245
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !86
  %i.qt = ptrtoint ptr %i.qs to i64
  %i.qu = ptrtoint ptr %i.qq to i64
  %i.qv = sub i64 %i.qt, %i.qu
  call void @_ZdlPvm(ptr noundef nonnull %i.qq, i64 noundef %i.qv) #22
  br label %_ZNSt6vectorI3vecILi2EESaIS1_EED2Ev.exit

_ZNSt6vectorI3vecILi2EESaIS1_EED2Ev.exit:         ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit245, %bb.cp
  %i.qw = load ptr, ptr %i.e, align 8, !tbaa !51  ; 3 uses
  %.not.i.i.i247 = icmp eq ptr %i.qw, null
  br i1 %.not.i.i.i247, label %_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt6vectorI3vecILi2EESaIS1_EED2Ev.exit
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !80
  %i.qz = ptrtoint ptr %i.qy to i64
  %i.ra = ptrtoint ptr %i.qw to i64
  %i.rb = sub i64 %i.qz, %i.ra
  call void @_ZdlPvm(ptr noundef nonnull %i.qw, i64 noundef %i.rb) #22
  br label %_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit

_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit:         ; preds = %_ZNSt6vectorI3vecILi2EESaIS1_EED2Ev.exit, %bb.cq
  %i.rc = load ptr, ptr %0, align 8, !tbaa !51    ; 3 uses
  %.not.i.i.i248 = icmp eq ptr %i.rc, null
  br i1 %.not.i.i.i248, label %_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit249, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !80
  %i.rf = ptrtoint ptr %i.re to i64
  %i.rg = ptrtoint ptr %i.rc to i64
  %i.rh = sub i64 %i.rf, %i.rg
  call void @_ZdlPvm(ptr noundef nonnull %i.rc, i64 noundef %i.rh) #22
  br label %_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit249

_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit249:      ; preds = %_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit, %bb.cr
  resume { ptr, i32 } %.pn68.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #0 align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1EONS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #0 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK5Model6nvertsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.c = load ptr, ptr %0, align 8, !tbaa !51
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 5
  %i.h = trunc i64 %i.g to i32
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK5Model6nfacesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %i.i = udiv i64 %i.h, 3
  %i.j = trunc i64 %i.i to i32
  ret i32 %i.j
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN5ModelC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clES5_R8TGAImage"(ptr nofree readonly captures(none) %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %.0.val, align 8, !tbaa !16 ; 3 uses
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.c, %bb.b
  %.1.i.i.in = phi i64 [ %i.b, %bb.b ], [ %.1.i.i, %bb.c ] ; 3 uses
  %.1.i.i = add i64 %.1.i.i.in, -1                ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1.i.i
  %i.e = load i8, ptr %i.d, align 1, !tbaa !29
  %memchr.char0cmp.not = icmp eq i8 %i.e, 46
  br i1 %memchr.char0cmp.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.not17.i.i = icmp eq i64 %.1.i.i, 0
  br i1 %.not17.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !27, !alias.scope !101
  %i.g = icmp ugt i64 %.1.i.i, 15
  br i1 %i.g, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit
  %i.h = icmp slt i64 %.1.i.i, 0
  br i1 %i.h, label %.noexc10.i.i, label %bb.e

.noexc10.i.i:                                     ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #20
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.i = icmp slt i64 %.1.i.i.in, 0
  br i1 %i.i, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !44

.noexc11.i.i:                                     ; preds = %bb.e
  call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.e
  %i.j = call noalias noundef nonnull ptr @_Znwm(i64 noundef %.1.i.i.in) #21 ; 2 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !16, !alias.scope !101
  store i64 %.1.i.i, ptr %i.f, align 8, !tbaa !29, !alias.scope !101
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit
  %i.k = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit ] ; 3 uses
  switch i64 %.1.i.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %i.c, align 1, !tbaa !29
  store i8 %i.l, ptr %i.k, align 1, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull align 1 %i.c, i64 %.1.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i64 %.1.i.i, ptr %i.m, align 8, !tbaa !28, !alias.scope !101
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.1.i.i
  store i8 0, ptr %i.n, align 1, !tbaa !29
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.o = load ptr, ptr %0, align 8, !tbaa !16, !noalias !102 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !28, !noalias !102 ; 6 uses
  %i.r = load i64, ptr %i.m, align 8, !tbaa !28, !noalias !102 ; 5 uses
  %i.s = sub i64 9223372036854775807, %i.r
  %i.t = icmp ult i64 %i.s, %i.q
  br i1 %i.t, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #20
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.u = add i64 %i.r, %i.q                       ; 3 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !16, !noalias !102 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.f
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.x = icmp ult i64 %i.r, 16
  call void @llvm.assume(i1 %i.x)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.y = load i64, ptr %i.f, align 8, !tbaa !29, !noalias !102
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.z = phi i64 [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.u, %i.z
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.r ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.q, 1
  br i1 %cond.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = load i8, ptr %i.o, align 1, !tbaa !29, !noalias !102
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !29, !noalias !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.o, i64 %i.q, i1 false), !noalias !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.r, i64 noundef 0, ptr noundef %i.o, i64 noundef %i.q)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i unwind label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.i
  store i64 %i.u, ptr %i.m, align 8, !tbaa !28, !noalias !102
  %i.ac = load ptr, ptr %3, align 8, !tbaa !16, !noalias !102
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.u
  store i8 0, ptr %i.ad, align 1, !tbaa !29, !noalias !102
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.ae, ptr %2, align 8, !tbaa !27, !alias.scope !102
  %i.af = load ptr, ptr %3, align 8, !tbaa !16, !noalias !102 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.f
  br i1 %i.ag, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ah = load i64, ptr %i.m, align 8, !tbaa !28, !noalias !102 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.aj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.af, ptr %2, align 8, !tbaa !16, !alias.scope !102
  %i.ak = load i64, ptr %i.f, align 8, !tbaa !29, !noalias !102
  store i64 %i.ak, ptr %i.ae, align 8, !tbaa !29, !alias.scope !102
  %.pre.i = load i64, ptr %i.m, align 8, !tbaa !28, !noalias !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %i.al = phi i64 [ %i.ah, %bb.n ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.al, ptr %i.am, align 8, !tbaa !28, !alias.scope !102
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.16, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = load ptr, ptr %2, align 8, !tbaa !16
  %i.ap = load i64, ptr %i.am, align 8, !tbaa !28
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.ao, i64 noundef %i.ap)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.aa ; 5 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.17, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17 unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.as = load ptr, ptr %2, align 8, !tbaa !16    ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.at, ptr %4, align 8, !tbaa !27
  %i.au = icmp eq ptr %i.as, null
  br i1 %i.au, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #20
          to label %.noexc18 unwind label %bb.ab

.noexc18:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %i.av = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.as) #19 ; 8 uses
  %i.aw = icmp ugt i64 %i.av, 15
  br i1 %i.aw, label %bb.q, label %._crit_edge.i.i

bb.q:                                             ; preds = %bb.p
  %i.ax = icmp slt i64 %i.av, 0
  br i1 %i.ax, label %.noexc.i, label %bb.r

.noexc.i:                                         ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #20
          to label %.noexc19 unwind label %bb.ab

.noexc19:                                         ; preds = %.noexc.i
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.ay = add nuw i64 %i.av, 1                    ; 2 uses
  %i.az = icmp slt i64 %i.ay, 0
  br i1 %i.az, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !44

.noexc11.i:                                       ; preds = %bb.r
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc20 unwind label %bb.ab

.noexc20:                                         ; preds = %.noexc11.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.r
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #21
          to label %.noexc21 unwind label %bb.ab  ; 2 uses

.noexc21:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.ba, ptr %4, align 8, !tbaa !16
  store i64 %i.av, ptr %i.at, align 8, !tbaa !29
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc21, %bb.p
  %i.bb = phi ptr [ %i.ba, %.noexc21 ], [ %i.at, %bb.p ] ; 3 uses
  switch i64 %i.av, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.bc = load i8, ptr %i.as, align 1, !tbaa !29
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !29
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr nonnull align 1 %i.as, i64 %i.av, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.av, ptr %i.bd, align 8, !tbaa !28
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.av
  store i8 0, ptr %i.be, align 1, !tbaa !29
  %i.bf = invoke noundef zeroext i1 @_ZN8TGAImage13read_tga_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr nofree noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.v unwind label %bb.ac      ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.bg = select i1 %i.bf, ptr @.str.18, ptr @.str.19
  %i.bh = select i1 %i.bf, i64 2, i64 6
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull %i.bg, i64 noundef %i.bh)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23 unwind label %bb.ac ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23: ; preds = %bb.v
  %i.bj = load ptr, ptr %i.aq, align 8, !tbaa !18
  %i.bk = getelementptr i8, ptr %i.bj, i64 -24
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds i8, ptr %i.aq, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 240
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !37 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i, label %bb.w, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.w:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23
  invoke void @_ZSt16__throw_bad_castv() #20
          to label %.noexc40 unwind label %bb.ac

.noexc40:                                         ; preds = %bb.w
  unreachable
end_hunk_0
