inline.NumInlined: 516
inline.NumDeleted: 274
begin_hunk_0_@_ZN6hermes8oscompat12vm_footprintEPcS1_:bb.a
  %i.eh = getelementptr inbounds i8, ptr %7, i64 %i.eg
  store ptr %i.v, ptr %i.eh, align 8, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %7, align 8, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.dn, align 8, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.dz, align 8, !tbaa !26
  %i.ei = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEC2ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(104) %i.ei, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 24)
  %i.ej = load ptr, ptr %7, align 8, !tbaa !26
  %i.ek = getelementptr i8, ptr %i.ej, i64 -24
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = getelementptr inbounds i8, ptr %7, i64 %i.el
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.em, ptr noundef nonnull %i.ei) #22
  %i.en = load i64, ptr %i.cl, align 8, !tbaa !41
  %i.eo = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi6ignoreEli(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.en, i32 noundef 32) #22 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.ep = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.ep, ptr %8, align 8, !tbaa !38
  %i.eq = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.eq, align 8, !tbaa !41
  store i8 0, ptr %i.ep, align 8, !tbaa !43
  %i.er = load ptr, ptr %7, align 8, !tbaa !26
  %i.es = getelementptr i8, ptr %i.er, i64 -24
  %i.et = load i64, ptr %i.es, align 8
  %i.eu = getelementptr inbounds i8, ptr %7, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !58
  %i.ex = or i32 %i.ew, 4096
  store i32 %i.ex, ptr %i.ev, align 8, !tbaa !59
  %i.ey = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractImEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #22
  %i.ez = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %i.ey, ptr noundef nonnull align 8 dereferenceable(32) %8) #22 ; 0 uses
  %i.fa = load i64, ptr %i.c, align 8, !tbaa !60
  %i.fb = shl i64 %i.fa, 10
  %i.fc = tail call i32 @getpagesize() #21
  %i.fd = sext i32 %i.fc to i64
  %i.fe = udiv i64 %i.fb, %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 8
  %i.fh = and i8 %i.fg, -2
  store i8 %i.fh, ptr %i.ff, align 8
  store i64 %i.fe, ptr %0, align 8, !tbaa !60
  %i.fi = load ptr, ptr %8, align 8, !tbaa !61    ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.ep
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.j
  %i.fk = load i64, ptr %i.ep, align 8, !tbaa !43
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  store ptr %i.y, ptr %7, align 8, !tbaa !26
  %i.fm = load i64, ptr %i.aa, align 8
  %i.fn = getelementptr inbounds i8, ptr %7, i64 %i.fm
  store ptr %i.z, ptr %i.fn, align 8, !tbaa !26
  store ptr %i.ab, ptr %i.dz, align 8, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ei, align 8, !tbaa !26
  %i.fo = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !61 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  %i.fr = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fr, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.fs = load i64, ptr %i.fq, align 8, !tbaa !43
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.ft) #23
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit18

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i16
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ei, align 8, !tbaa !26
  %i.fu = getelementptr inbounds nuw i8, ptr %7, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fu) #22
  store ptr %i.m, ptr %7, align 8, !tbaa !26
  %i.fv = load i64, ptr %i.o, align 8
  %i.fw = getelementptr inbounds i8, ptr %7, i64 %i.fv
  store ptr %i.n, ptr %i.fw, align 8, !tbaa !26
  store i64 0, ptr %i.du, align 8, !tbaa !56
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.dn) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.fx = load ptr, ptr %6, align 8, !tbaa !61    ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.ck
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit18
  %i.fz = load i64, ptr %i.ck, align 8, !tbaa !43
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.ga) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.k

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %split
  %i.gb = tail call ptr @__errno_location() #21
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !3
  %i.gd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #21
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 8
  %i.gg = or i8 %i.gf, 1
  store i8 %i.gg, ptr %i.ge, align 8
  store i32 %i.gc, ptr %0, align 8, !tbaa !3
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gd, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !10
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %._crit_edge
  %i.gh = load ptr, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, align 8 ; 2 uses
  store ptr %i.gh, ptr %3, align 8, !tbaa !26
  %i.gi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 24), align 8
  %i.gj = getelementptr i8, ptr %i.gh, i64 -24
  %i.gk = load i64, ptr %i.gj, align 8
  %i.gl = getelementptr inbounds i8, ptr %3, i64 %i.gk
  store ptr %i.gi, ptr %i.gl, align 8, !tbaa !26
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt13basic_filebufIcSt11char_traitsIcEE, i64 16), ptr %i.gm, align 8, !tbaa !26
  %i.gn = call noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.gm) #22 ; 0 uses
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @_ZNSt12__basic_fileIcED1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.go) #22
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.gm, align 8, !tbaa !26
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gp) #22
  %i.gq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 8), align 8 ; 2 uses
  store ptr %i.gq, ptr %3, align 8, !tbaa !26
  %i.gr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 16), align 8
  %i.gs = getelementptr i8, ptr %i.gq, i64 -24
  %i.gt = load i64, ptr %i.gs, align 8
  %i.gu = getelementptr inbounds i8, ptr %3, i64 %i.gt
  store ptr %i.gr, ptr %i.gu, align 8, !tbaa !26
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.gv, align 8, !tbaa !56
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 256
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.gw) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef, i32 noundef) unnamed_addr #1 align 2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi6ignoreEli(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi6ignoreEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes8oscompat12pages_in_ramEPKvmPN4llvh15SmallVectorImplIiEE(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @getpagesize() #21
  %i.b = sext i32 %i.a to i64                     ; 4 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = urem i64 %i.c, %i.b                      ; 2 uses
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = add i64 %i.d, %1                         ; 2 uses
  %i.h = add nsw i64 %i.b, -1
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = udiv i64 %i.i, %i.b                      ; 4 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.b, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #24
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp ult i64 %i.i, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #25 ; 5 uses
  %i.m = getelementptr i8, ptr %i.l, i64 %i.j     ; 3 uses
  store i8 0, ptr %i.l, align 1, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  %i.o = add nsw i64 %i.j, -1                     ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit:               ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i, %bb.c, %bb.d
  %.sroa.10.0 = phi ptr [ %i.m, %bb.d ], [ %i.m, %bb.c ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.041.0 = phi ptr [ %i.l, %bb.d ], [ %i.l, %bb.c ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 11 uses
  %.0.i.i.i.i.i = phi ptr [ %i.m, %bb.d ], [ %i.n, %bb.c ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 5 uses
  %.0.i.i.i.i.i61 = ptrtoint ptr %.0.i.i.i.i.i to i64
  %.sroa.041.062 = ptrtoint ptr %.sroa.041.0 to i64
  %i.q = tail call i32 @mincore(ptr noundef %i.f, i64 noundef %i.g, ptr noundef %.sroa.041.0) #22
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %.not31 = icmp eq ptr %2, null
  br i1 %.not31, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !71   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !73
  %.not.i = icmp ult i32 %i.s, %i.u
  br i1 %.not.i, label %.thread, label %bb.g, !prof !74

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.v, i64 noundef 0, i64 noundef 4) #22
  %.pre.i = load i32, ptr %i.r, align 8, !tbaa !71
  br label %.thread

bb.h:                                             ; preds = %bb.e
  %.not4445 = icmp eq ptr %.sroa.041.0, %.0.i.i.i.i.i
  br i1 %.not4445, label %.loopexit, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %bb.h
  %i.w = sub i64 %.0.i.i.i.i.i61, %.sroa.041.062  ; 3 uses
  %min.iters.check = icmp ult i64 %i.w, 8
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader65, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us.preheader
  %n.vec = and i64 %i.w, -8                       ; 3 uses
  %i.x = getelementptr i8, ptr %.sroa.041.0, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ad, %vector.body ]
  %vec.phi63 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ae, %vector.body ]
  %next.gep = getelementptr i8, ptr %.sroa.041.0, i64 %index ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !43
  %wide.load64 = load <4 x i8>, ptr %i.y, align 1, !tbaa !43
  %i.z = and <4 x i8> %wide.load, splat (i8 1)
  %i.aa = and <4 x i8> %wide.load64, splat (i8 1)
  %i.ab = zext nneg <4 x i8> %i.z to <4 x i32>
  %i.ac = zext nneg <4 x i8> %i.aa to <4 x i32>
  %i.ad = add <4 x i32> %vec.phi, %i.ab           ; 2 uses
  %i.ae = add <4 x i32> %vec.phi63, %i.ac         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ae, %i.ad
  %i.ag = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.split.us.preheader65

.lr.ph.split.us.preheader65:                      ; preds = %.lr.ph.split.us.preheader, %middle.block
  %.02748.us.ph = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %i.ag, %middle.block ]
  %.sroa.036.046.us.ph = phi ptr [ %.sroa.041.0, %.lr.ph.split.us.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.split.us

.thread:                                          ; preds = %bb.g, %bb.f
  %i.ah = phi i32 [ %.pre.i, %bb.g ], [ %i.s, %bb.f ]
  %i.ai = load ptr, ptr %2, align 8, !tbaa !78
  %i.aj = zext i32 %i.ah to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aj
  store i32 0, ptr %i.ak, align 1
  %i.al = load i32, ptr %i.r, align 8, !tbaa !71
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.r, align 8, !tbaa !71
  %.not444556 = icmp eq ptr %.sroa.041.0, %.0.i.i.i.i.i
  br i1 %.not444556, label %.loopexit, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.thread
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader65, %.lr.ph.split.us
  %.02748.us = phi i32 [ %i.at, %.lr.ph.split.us ], [ %.02748.us.ph, %.lr.ph.split.us.preheader65 ]
  %.sroa.036.046.us = phi ptr [ %i.au, %.lr.ph.split.us ], [ %.sroa.036.046.us.ph, %.lr.ph.split.us.preheader65 ] ; 2 uses
  %i.aq = load i8, ptr %.sroa.036.046.us, align 1, !tbaa !43
  %i.ar = and i8 %i.aq, 1
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = add nuw nsw i32 %.02748.us, %i.as       ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.036.046.us, i64 1 ; 2 uses
  %.not44.us = icmp eq ptr %i.au, %.0.i.i.i.i.i
  br i1 %.not44.us, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !79

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.k
  %.02748 = phi i32 [ %i.ay, %bb.k ], [ 0, %.lr.ph.split.preheader ]
  %.02847 = phi i8 [ %i.aw, %bb.k ], [ 1, %.lr.ph.split.preheader ]
  %.sroa.036.046 = phi ptr [ %i.bn, %bb.k ], [ %.sroa.041.0, %.lr.ph.split.preheader ] ; 2 uses
  %i.av = load i8, ptr %.sroa.036.046, align 1, !tbaa !43
  %i.aw = and i8 %i.av, 1                         ; 3 uses
  %i.ax = zext nneg i8 %i.aw to i32
  %i.ay = add nuw nsw i32 %.02748, %i.ax          ; 2 uses
  %.not32 = icmp eq i8 %i.aw, %.02847
  %.pre = load i32, ptr %i.an, align 8, !tbaa !71 ; 3 uses
  br i1 %.not32, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
  %i.az = load i32, ptr %i.ao, align 4, !tbaa !73
  %.not.i33 = icmp ult i32 %.pre, %i.az
  br i1 %.not.i33, label %_ZN4llvh23SmallVectorTemplateBaseIiLb1EE9push_backERKi.exit35, label %bb.j, !prof !74

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.ap, i64 noundef 0, i64 noundef 4) #22
  %.pre.i34 = load i32, ptr %i.an, align 8, !tbaa !71
  br label %_ZN4llvh23SmallVectorTemplateBaseIiLb1EE9push_backERKi.exit35

_ZN4llvh23SmallVectorTemplateBaseIiLb1EE9push_backERKi.exit35: ; preds = %bb.i, %bb.j
  %i.ba = phi i32 [ %.pre.i34, %bb.j ], [ %.pre, %bb.i ]
  %i.bb = load ptr, ptr %2, align 8, !tbaa !78
  %i.bc = zext i32 %i.ba to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  store i32 0, ptr %i.bd, align 1
  %i.be = load i32, ptr %i.an, align 8, !tbaa !71
  %i.bf = add i32 %i.be, 1                        ; 2 uses
  store i32 %i.bf, ptr %i.an, align 8, !tbaa !71
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIiLb1EE9push_backERKi.exit35, %.lr.ph.split
  %i.bg = phi i32 [ %i.bf, %_ZN4llvh23SmallVectorTemplateBaseIiLb1EE9push_backERKi.exit35 ], [ %.pre, %.lr.ph.split ]
  %i.bh = load ptr, ptr %2, align 8, !tbaa !78
  %i.bi = zext i32 %i.bg to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -4 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !3
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.036.046, i64 1 ; 2 uses
  %.not44 = icmp eq ptr %i.bn, %.0.i.i.i.i.i
  br i1 %.not44, label %.loopexit, label %.lr.ph.split

.loopexit:                                        ; preds = %bb.k, %.lr.ph.split.us, %middle.block, %.thread, %bb.h, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %.0 = phi i32 [ -1, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ], [ 0, %bb.h ], [ 0, %.thread ], [ %i.at, %.lr.ph.split.us ], [ %i.ag, %middle.block ], [ %i.ay, %bb.k ]
  %.not.i.i.i = icmp eq ptr %.sroa.041.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.bo = ptrtoint ptr %.sroa.10.0 to i64
  %i.bp = ptrtoint ptr %.sroa.041.0 to i64
  %i.bq = sub i64 %i.bo, %i.bp
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.041.0, i64 noundef %i.bq) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %.loopexit, %bb.l
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @mincore(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i64 0, -1023) i64 @_ZN6hermes8oscompat8peak_rssEv() local_unnamed_addr #1 {
bb.a:
  %0 = alloca %struct.rusage, align 8             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  %i.a = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %0) #22
  %.not = icmp eq i32 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = shl i64 %i.c, 10
  %.0 = select i1 %.not, i64 %i.d, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  ret i64 %.0
}

; Function Attrs: nounwind
declare i32 @getrusage(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN6hermes8oscompat11current_rssEv() local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = tail call noalias ptr @fopen(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 0, ptr %i.a, align 8, !tbaa !60
  %i.c = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a) #22
  %.not5 = icmp eq i32 %i.c, 1
  %i.d = call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br i1 %.not5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %i.a, align 8, !tbaa !60
  %i.f = tail call i32 @getpagesize() #21
  %i.g = sext i32 %i.f to i64
  %i.h = mul i64 %i.e, %i.g
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i64 [ %i.h, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.1 = phi i64 [ %.0, %bb.d ], [ 0, %bb.a ]
  ret i64 %.1
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #7

declare i32 @__isoc23_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i64 0, -1023) i64 @_ZN6hermes8oscompat21current_private_dirtyEv() local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 7 uses
  %i.b = tail call noalias ptr @fopen(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.c = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 128, ptr noundef %i.b)
  %.not3 = icmp eq ptr %i.c, null
  br i1 %.not3, label %._crit_edge, label %.lr.ph

end_hunk_0
