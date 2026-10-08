Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/dataset?download=true
inline.NumInlined: 6241
inline.NumDeleted: 2000
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN8LightGBM7Dataset17SetFieldFromArrowEPKcP16ArrowArrayStream:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %._crit_edge.i.i119
  %i.eo = load ptr, ptr %3, align 8, !tbaa !47    ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 1
  %i.eq = load i64, ptr %i.ek, align 1
  %i.er = xor i64 %i.ep, %i.eq
  %i.es = getelementptr i8, ptr %i.eo, i64 8
  %i.et = getelementptr i8, ptr %i.ek, i64 8
  %i.eu = load i16, ptr %i.es, align 1
  %i.ev = load i16, ptr %i.et, align 1
  %i.ew = zext i16 %i.eu to i64
  %i.ex = zext i16 %i.ev to i64
  %i.ey = xor i64 %i.ew, %i.ex
  %i.ez = or i64 %i.er, %i.ey
  %i.fa = icmp ne i64 %i.ez, 0
  %i.fb = zext i1 %i.fa to i32
  %i.fc = icmp eq i32 %i.fb, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br i1 %i.fc, label %bb.s, label %._crit_edge.i.i149.sink.split

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke void @_ZN8LightGBM8Metadata12SetInitScoreEP16ArrowArrayStream(ptr noundef nonnull align 8 dereferenceable(300) %i.fd, ptr noundef %2)
          to label %bb.v unwind label %bb.r

._crit_edge.i.i128:                               ; preds = %._crit_edge.i.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.fe = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.fe, ptr %11, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.fe, ptr noundef nonnull align 1 dereferenceable(5) @.str.62, i64 5, i1 false)
  %i.ff = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 5, ptr %i.ff, align 8, !tbaa !49
  %i.fg = getelementptr inbounds nuw i8, ptr %11, i64 21
  store i8 0, ptr %i.fg, align 1, !tbaa !48
  br i1 %i.bg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit133, label %._crit_edge.i.i149

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit133: ; preds = %._crit_edge.i.i128
  %i.fh = load ptr, ptr %3, align 8, !tbaa !47    ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 1
  %i.fj = load i32, ptr %i.fe, align 1
  %i.fk = xor i32 %i.fi, %i.fj
  %i.fl = getelementptr i8, ptr %i.fh, i64 4
  %i.fm = getelementptr i8, ptr %i.fe, i64 4
  %i.fn = load i8, ptr %i.fl, align 1
  %i.fo = load i8, ptr %i.fm, align 1
  %i.fp = zext i8 %i.fn to i32
  %i.fq = zext i8 %i.fo to i32
  %i.fr = xor i32 %i.fp, %i.fq
  %i.fs = or i32 %i.fk, %i.fr
  %i.ft = icmp ne i32 %i.fs, 0
  %i.fu = zext i1 %i.ft to i32
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit133
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit133
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.fw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.fw, ptr %12, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.fw, ptr noundef nonnull align 1 dereferenceable(5) @.str.63, i64 5, i1 false)
  %i.fx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 5, ptr %i.fx, align 8, !tbaa !49
  %i.fy = getelementptr inbounds nuw i8, ptr %12, i64 21
  store i8 0, ptr %i.fy, align 1, !tbaa !48
  %i.fz = load ptr, ptr %3, align 8, !tbaa !47    ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 1
  %i.gb = load i32, ptr %i.fw, align 1
  %i.gc = xor i32 %i.ga, %i.gb
  %i.gd = getelementptr i8, ptr %i.fz, i64 4
  %i.ge = getelementptr i8, ptr %i.fw, i64 4
  %i.gf = load i8, ptr %i.gd, align 1
  %i.gg = load i8, ptr %i.ge, align 1
  %i.gh = zext i8 %i.gf to i32
  %i.gi = zext i8 %i.gg to i32
  %i.gj = xor i32 %i.gh, %i.gi
  %i.gk = or i32 %i.gc, %i.gj
  %i.gl = icmp ne i32 %i.gk, 0
  %i.gm = zext i1 %i.gl to i32
  %i.gn = icmp eq i32 %i.gm, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br i1 %i.gn, label %bb.t, label %._crit_edge.i.i149.thread

._crit_edge.i.i149.thread:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.thread

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke void @_ZN8LightGBM8Metadata8SetQueryEP16ArrowArrayStream(ptr noundef nonnull align 8 dereferenceable(300) %i.go, ptr noundef %2)
          to label %bb.v unwind label %bb.r

._crit_edge.i.i149.sink.split:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  br label %._crit_edge.i.i149

._crit_edge.i.i149:                               ; preds = %._crit_edge.i.i149.sink.split, %._crit_edge.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.gp = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr %i.gp, ptr %13, align 8, !tbaa !43
  store i64 7957695015293251440, ptr %i.gp, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 8, ptr %i.gq, align 8, !tbaa !49
  %i.gr = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i8 0, ptr %i.gr, align 8, !tbaa !48
  %i.gs = icmp eq i64 %i.bf, 8
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.thread: ; preds = %._crit_edge.i.i149, %._crit_edge.i.i149.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %._crit_edge.i.i149
  %i.gt = load ptr, ptr %3, align 8, !tbaa !47
  %i.gu = load i64, ptr %i.gt, align 1
  %i.gv = load i64, ptr %i.gp, align 1
  %i.gw = icmp ne i64 %i.gu, %i.gv
  %i.gx = zext i1 %i.gw to i32
  %i.gy = icmp eq i32 %i.gx, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br i1 %i.gy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke void @_ZN8LightGBM8Metadata11SetPositionEP16ArrowArrayStream(ptr noundef nonnull align 8 dereferenceable(300) %i.gz, ptr noundef %2)
          to label %bb.v unwind label %bb.r

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.thread, %bb.o, %bb.s, %bb.u, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  %.048 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.thread ], [ true, %bb.t ], [ true, %bb.u ], [ true, %bb.s ], [ true, %bb.o ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.thread ]
  %i.ha = load ptr, ptr %3, align 8, !tbaa !47    ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.c
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %bb.v
  %i.hc = load i64, ptr %i.c, align 8, !tbaa !48
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.hd) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret i1 %.048

bb.w:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %.pn56 = phi { ptr, i32 } [ %i.cw, %bb.r ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ]
  %i.he = load ptr, ptr %3, align 8, !tbaa !47    ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.c
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %bb.w
  %i.hg = load i64, ptr %i.c, align 8, !tbaa !48
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hh) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %.pn56
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN8LightGBM6CommonL4TrimENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #22 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !49
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !43
  %i.e = load ptr, ptr %1, align 8, !tbaa !47     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.f, align 8
  store i8 %i.h, ptr %i.d, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  store ptr %i.e, ptr %0, align 8, !tbaa !47
  %i.i = load i64, ptr %i.f, align 8, !tbaa !48
  store i64 %i.i, ptr %i.d, align 8, !tbaa !48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !49
  store ptr %i.f, ptr %1, align 8, !tbaa !47
  store i8 0, ptr %i.f, align 8, !tbaa !48
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.k = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.65, i64 noundef -1, i64 noundef 6) #19 ; 2 uses
  %i.l = add i64 %i.k, 1                          ; 3 uses
  %i.m = load i64, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, i64 noundef %i.l, i64 noundef %i.m) #38
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %bb.d
  store i64 %i.l, ptr %i.a, align 8, !tbaa !49
  %i.o = load ptr, ptr %1, align 8, !tbaa !47
  %2 = getelementptr i8, ptr %i.o, i64 %i.k
  %i.p = getelementptr i8, ptr %2, i64 1
  store i8 0, ptr %i.p, align 1, !tbaa !48
  %i.q = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.65, i64 noundef 0, i64 noundef 6) #19 ; 2 uses
  switch i64 %i.q, label %bb.g [
    i64 -1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1
  ]

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  store i64 0, ptr %i.a, align 8, !tbaa !49
  %i.r = load ptr, ptr %1, align 8, !tbaa !47
  store i8 0, ptr %i.r, align 1, !tbaa !48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  %i.s = load i64, ptr %i.a, align 8, !tbaa !49
  %spec.select.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.q, i64 %i.s)
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %spec.select.i.i)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, %bb.f, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !43
  %i.u = load ptr, ptr %1, align 8, !tbaa !47     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1
  %i.x = load i64, ptr %i.a, align 8, !tbaa !49   ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1
  store ptr %i.u, ptr %0, align 8, !tbaa !47
  %i.aa = load i64, ptr %i.v, align 8, !tbaa !48
  store i64 %i.aa, ptr %i.t, align 8, !tbaa !48
  %.pre = load i64, ptr %i.a, align 8, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2
  %i.ab = phi i64 [ %i.x, %bb.h ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !49
  store ptr %i.v, ptr %1, align 8, !tbaa !47
  store i64 0, ptr %i.a, align 8, !tbaa !49
  store i8 0, ptr %i.v, align 8, !tbaa !48
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  ret void
}

declare void @_ZN8LightGBM8Metadata8SetLabelEP16ArrowArrayStream(ptr noundef nonnull align 8 dereferenceable(300), ptr noundef) local_unnamed_addr #4

declare void @_ZN8LightGBM8Metadata10SetWeightsEP16ArrowArrayStream(ptr noundef nonnull align 8 dereferenceable(300), ptr noundef) local_unnamed_addr #4

declare void @_ZN8LightGBM8Metadata12SetInitScoreEP16ArrowArrayStream(ptr noundef nonnull align 8 dereferenceable(300), ptr noundef) local_unnamed_addr #4

declare void @_ZN8LightGBM8Metadata8SetQueryEP16ArrowArrayStream(ptr noundef nonnull align 8 dereferenceable(300), ptr noundef) local_unnamed_addr #4

declare void @_ZN8LightGBM8Metadata11SetPositionEP16ArrowArrayStream(ptr noundef nonnull align 8 dereferenceable(300), ptr noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8LightGBM7Dataset17SetFieldFromArrowEPKclP10ArrowArrayP11ArrowSchema(ptr noundef nonnull align 8 dereferenceable(864) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 24 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !43
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.7) #38
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.e, ptr %i.b, align 8, !tbaa !45
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %5, align 8, !tbaa !47
  %i.h = load i64, ptr %i.b, align 8, !tbaa !45
  store i64 %i.h, ptr %i.c, align 8, !tbaa !48
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %1, align 1, !tbaa !48
  store i8 %i.j, ptr %i.i, align 1, !tbaa !48
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %1, i64 %i.e, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.k = load i64, ptr %i.b, align 8, !tbaa !45   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !49
  %i.m = load ptr, ptr %5, align 8, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.o, ptr %7, align 8, !tbaa !43
  %i.p = load ptr, ptr %5, align 8, !tbaa !47     ; 2 uses
  %i.q = load i64, ptr %i.l, align 8, !tbaa !49   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.q, ptr %i.a, align 8, !tbaa !45
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %.noexc.i81, label %._crit_edge.i.i80

.noexc.i81:                                       ; preds = %bb.e
  %i.s = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc82 unwind label %bb.p   ; 2 uses

.noexc82:                                         ; preds = %.noexc.i81
  store ptr %i.s, ptr %7, align 8, !tbaa !47
  %i.t = load i64, ptr %i.a, align 8, !tbaa !45
  store i64 %i.t, ptr %i.o, align 8, !tbaa !48
  br label %._crit_edge.i.i80

._crit_edge.i.i80:                                ; preds = %.noexc82, %bb.e
  %i.u = phi ptr [ %i.s, %.noexc82 ], [ %i.o, %bb.e ] ; 2 uses
  switch i64 %i.q, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i80
  %i.v = load i8, ptr %i.p, align 1, !tbaa !48
  store i8 %i.v, ptr %i.u, align 1, !tbaa !48
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i80
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.p, i64 %i.q, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i80
  %i.w = load i64, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !49
  %i.y = load ptr, ptr %7, align 8, !tbaa !47
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  invoke fastcc void @_ZN8LightGBM6CommonL4TrimENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %6, ptr nofree noundef align 8 dereferenceable(32) %7)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %5, align 8, !tbaa !47    ; 6 uses
  %i.ab = icmp eq ptr %i.aa, %i.c
  %i.ac = load ptr, ptr %6, align 8, !tbaa !47    ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad                ; 2 uses
  br i1 %i.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.i
  br i1 %i.ae, label %bb.j, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.i
  br i1 %i.ae, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
end_hunk_0
