Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/gmock-gtest-all?download=true
inline.NumInlined: 10506
inline.NumDeleted: 2794
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN7testing8internalL22ExecDeathTestChildMainEPv:bb.a
.noexc263:                                        ; preds = %bb.bw
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i251: ; preds = %bb.bv
  %i.pb = load ptr, ptr %20, align 8, !tbaa !66, !noalias !2528
  %i.pc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef %i.pb, i64 noundef %i.ny)
          to label %.noexc264 unwind label %bb.cd, !noalias !2528 ; 5 uses

.noexc264:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i251
  %i.pd = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store ptr %i.pd, ptr %14, align 8, !tbaa !68, !alias.scope !2528
  %i.pe = load ptr, ptr %i.pc, align 8, !tbaa !66 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pc, i64 16 ; 5 uses
  %i.pg = icmp eq ptr %i.pe, %i.pf
  br i1 %i.pg, label %bb.bx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i252

bb.bx:                                            ; preds = %.noexc264
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !69 ; 2 uses
  %i.pj = icmp ult i64 %i.pi, 16
  call void @llvm.assume(i1 %i.pj)
  %i.pk = add nuw nsw i64 %i.pi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.pd, ptr noundef nonnull align 8 dereferenceable(1) %i.pf, i64 %i.pk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i252: ; preds = %.noexc264
  store ptr %i.pe, ptr %14, align 8, !tbaa !66, !alias.scope !2528
  %i.pl = load i64, ptr %i.pf, align 8, !tbaa !67
  store i64 %i.pl, ptr %i.pd, align 8, !tbaa !67, !alias.scope !2528
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i253

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i253: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i252, %bb.bx
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pc, i64 8 ; 2 uses
  %i.pn = load i64, ptr %i.pm, align 8, !tbaa !69
  %i.po = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.pn, ptr %i.po, align 8, !tbaa !69, !alias.scope !2528
  store ptr %i.pf, ptr %i.pc, align 8, !tbaa !66
  store i64 0, ptr %i.pm, align 8, !tbaa !69
  store i8 0, ptr %i.pf, align 8, !tbaa !67
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit265

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit265: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i253, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i259
  invoke fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %.unreachable310 unwind label %bb.ce

.unreachable310:                                  ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit265
  unreachable

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i217, %bb.bg
  %i.pp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304

bb.bz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i225, %bb.bj
  %i.pq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301

bb.ca:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i233, %bb.bm
  %i.pr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i241, %bb.bp
  %i.ps = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295

bb.cc:                                            ; preds = %bb.br
  %i.pt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292

bb.cd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i251, %bb.bw, %.critedge.i257
  %i.pu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289

bb.ce:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit265
  %i.pv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pw = load ptr, ptr %14, align 8, !tbaa !66   ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.py = icmp eq ptr %i.pw, %i.px
  br i1 %i.py, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287: ; preds = %bb.ce
  %i.pz = load i64, ptr %i.px, align 8, !tbaa !67
  %i.qa = add i64 %i.pz, 1
  call void @_ZdlPvm(ptr noundef %i.pw, i64 noundef %i.qa) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287, %bb.cd
  %.pn43 = phi { ptr, i32 } [ %i.pu, %bb.cd ], [ %i.pv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287 ], [ %i.pv, %bb.ce ] ; 2 uses
  %i.qb = load ptr, ptr %20, align 8, !tbaa !66   ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.qd = icmp eq ptr %i.qb, %i.qc
  br i1 %i.qd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289
  %i.qe = load i64, ptr %i.qc, align 8, !tbaa !67
  %i.qf = add i64 %i.qe, 1
  call void @_ZdlPvm(ptr noundef %i.qb, i64 noundef %i.qf) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290, %bb.cc
  %.pn43.pn = phi { ptr, i32 } [ %i.pt, %bb.cc ], [ %.pn43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290 ], [ %.pn43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #56
  %i.qg = load ptr, ptr %15, align 8, !tbaa !66   ; 2 uses
  %i.qh = icmp eq ptr %i.qg, %i.nk
  br i1 %i.qh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292
  %i.qi = load i64, ptr %i.nk, align 8, !tbaa !67
  %i.qj = add i64 %i.qi, 1
  call void @_ZdlPvm(ptr noundef %i.qg, i64 noundef %i.qj) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293, %bb.cb
  %.pn43.pn.pn = phi { ptr, i32 } [ %i.ps, %bb.cb ], [ %.pn43.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293 ], [ %.pn43.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292 ] ; 2 uses
  %i.qk = load ptr, ptr %16, align 8, !tbaa !66   ; 2 uses
  %i.ql = icmp eq ptr %i.qk, %i.mu
  br i1 %i.ql, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295
  %i.qm = load i64, ptr %i.mu, align 8, !tbaa !67
  %i.qn = add i64 %i.qm, 1
  call void @_ZdlPvm(ptr noundef %i.qk, i64 noundef %i.qn) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296, %bb.ca
  %.pn43.pn.pn.pn = phi { ptr, i32 } [ %i.pr, %bb.ca ], [ %.pn43.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296 ], [ %.pn43.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295 ] ; 2 uses
  %i.qo = load ptr, ptr %17, align 8, !tbaa !66   ; 2 uses
  %i.qp = icmp eq ptr %i.qo, %i.md
  br i1 %i.qp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298
  %i.qq = load i64, ptr %i.md, align 8, !tbaa !67
  %i.qr = add i64 %i.qq, 1
  call void @_ZdlPvm(ptr noundef %i.qo, i64 noundef %i.qr) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299, %bb.bz
  %.pn43.pn.pn.pn.pn = phi { ptr, i32 } [ %i.pq, %bb.bz ], [ %.pn43.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299 ], [ %.pn43.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298 ] ; 2 uses
  %i.qs = load ptr, ptr %18, align 8, !tbaa !66   ; 2 uses
  %i.qt = icmp eq ptr %i.qs, %i.ln
  br i1 %i.qt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301
  %i.qu = load i64, ptr %i.ln, align 8, !tbaa !67
  %i.qv = add i64 %i.qu, 1
  call void @_ZdlPvm(ptr noundef %i.qs, i64 noundef %i.qv) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302, %bb.by
  %.pn43.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.pp, %bb.by ], [ %.pn43.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302 ], [ %.pn43.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301 ]
  %i.qw = load ptr, ptr %19, align 8, !tbaa !66   ; 2 uses
  %i.qx = icmp eq ptr %i.qw, %i.lf
  br i1 %i.qx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304
  %i.qy = load i64, ptr %i.lf, align 8, !tbaa !67
  %i.qz = add i64 %i.qy, 1
  call void @_ZdlPvm(ptr noundef %i.qw, i64 noundef %i.qz) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #56
  br label %common.resume
}

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal fastcc void @_ZN7testing8internalL21StackLowerThanAddressEPKvPb(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 1)) %1) unnamed_addr #48 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  %i.b = icmp ult ptr %i.a, %0
  %i.c = zext i1 %i.b to i8
  store i8 %i.c, ptr %1, align 1, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  ret void
}

; Function Attrs: nounwind
declare i32 @chdir(ptr noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare i32 @execv(ptr noundef, ptr noundef) local_unnamed_addr #28

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #28

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #49

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal14CapturedStreamC2Ei(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [28 x i8], align 16               ; 9 uses
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  store i32 %1, ptr %0, align 8, !tbaa !673
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = tail call i32 @dup(i32 noundef %1) #56
  store i32 %i.c, ptr %i.b, align 4, !tbaa !674
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !69
  store i8 0, ptr %i.e, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.a, ptr noundef nonnull align 16 dereferenceable(28) @__const.CapturedStream.name_template, i64 28, i1 false)
  %i.g = invoke i32 @mkstemp(ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.e       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #56
  invoke void @_ZN7testing8internal8GTestLogC2ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 1, ptr noundef nonnull @.str.37, i32 noundef 11447)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.549, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #56
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.a, i64 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.550, i64 noundef 59)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  call void @_ZN7testing8internal8GTestLogD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  br label %bb.i

bb.e:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.f:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #56
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.n, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  br label %bb.k

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13, %bb.b
  %i.p = load i64, ptr %i.f, align 8, !tbaa !69
  %i.q = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #56
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 0, i64 noundef %i.p, ptr noundef nonnull %i.a, i64 noundef %i.q)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.e ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.i
  %i.s = call i32 @fflush(ptr noundef null)       ; 0 uses
  %i.t = load i32, ptr %0, align 8, !tbaa !673
  %i.u = call i32 @dup2(i32 noundef %i.g, i32 noundef %i.t) #56 ; 0 uses
  %i.v = invoke i32 @close(i32 noundef %i.g)
          to label %bb.j unwind label %bb.e       ; 0 uses

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  ret void

bb.k:                                             ; preds = %bb.h, %bb.e
  %.pn10 = phi { ptr, i32 } [ %i.m, %bb.e ], [ %.pn, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !66   ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.e
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.y = load i64, ptr %i.e, align 8, !tbaa !67
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn10
}

; Function Attrs: nounwind
declare i32 @dup(i32 noundef) local_unnamed_addr #15

declare i32 @mkstemp(ptr noundef) local_unnamed_addr #22

; Function Attrs: nounwind
declare i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal14CapturedStream17GetCapturedStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !674
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @fflush(ptr noundef null)  ; 0 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !674
  %i.e = load i32, ptr %1, align 8, !tbaa !673
  %i.f = tail call i32 @dup2(i32 noundef %i.d, i32 noundef %i.e) #56 ; 0 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !674
  %i.h = tail call i32 @close(i32 noundef %i.g)   ; 0 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !674
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !66
  %i.k = tail call noalias noundef ptr @fopen(ptr noundef %i.j, ptr noundef nonnull @.str.551) ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %.split

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #56
  call void @_ZN7testing8internal8GTestLogC2ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.37, i32 noundef 11473)
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.552, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !66
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !69
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.n, i64 noundef %i.p)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.553, i64 noundef 22)
          to label %.split8 unwind label %bb.e    ; 0 uses

.split8:                                          ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @_ZN7testing8internal8GTestLogD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  br label %.split

bb.e:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  resume { ptr, i32 } %i.s

.split:                                           ; preds = %bb.c, %.split8
  %.sink = phi ptr [ null, %.split8 ], [ %i.k, %bb.c ]
  tail call void @_ZN7testing8internal14ReadEntireFileB5cxx11EP8_IO_FILE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %.sink)
  %i.t = tail call noundef i32 @fclose(ptr noundef %i.k) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @toupper(i32 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7testing12_GLOBAL__N_126PrintByteSegmentInObjectToEPKhmmPSo(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 68, 1) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca [5 x i8], align 1                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.c, i8 0, i64 5, i1 false)
  %.not16 = icmp eq i64 %2, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph.preheader._crit_edge

.lr.ph.preheader._crit_edge:                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !67
  %i.d = zext i8 %.pre to i32
  %i.e = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 5, ptr noundef nonnull @.str.556, i32 noundef %i.d) #56 ; 0 uses
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #56
  %i.g = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.c, i64 noundef %i.f) ; 0 uses
  %.not.peel = icmp eq i64 %2, 1
  br i1 %.not.peel, label %._crit_edge, label %.lr.ph.peel.next

._crit_edge:                                      ; preds = %bb.h, %.lr.ph.preheader._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #56
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_gmock_gtest_all.cc:bb.a
  %i.iw = icmp eq ptr %i.ir, null
  %i.ix = select i1 %i.iw, ptr @_ZN7testingL22kDefaultDeathTestStyleE, ptr %i.ir ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #56
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E, i64 16), ptr @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E, align 8, !tbaa !68
  %i.iy = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ix) #56 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  store i64 %i.iy, ptr %i.a, align 8, !tbaa !94
  %i.iz = icmp ugt i64 %i.iy, 15
  br i1 %i.iz, label %.noexc.i.i80, label %._crit_edge.i.i.i79

.noexc.i.i80:                                     ; preds = %_ZN7testing8internal18StringFromGTestEnvEPKcS2_.exit.i78
  %i.ja = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ja, ptr @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E, align 8, !tbaa !66
  %i.jb = load i64, ptr %i.a, align 8, !tbaa !94
  store i64 %i.jb, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E, i64 16), align 8, !tbaa !67
  br label %._crit_edge.i.i.i79

._crit_edge.i.i.i79:                              ; preds = %.noexc.i.i80, %_ZN7testing8internal18StringFromGTestEnvEPKcS2_.exit.i78
  %i.jc = phi ptr [ %i.ja, %.noexc.i.i80 ], [ getelementptr inbounds nuw (i8, ptr @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E, i64 16), %_ZN7testing8internal18StringFromGTestEnvEPKcS2_.exit.i78 ] ; 2 uses
  switch i64 %i.iy, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %__cxx_global_var_init.307.exit
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i79
  %i.jd = load i8, ptr %i.ix, align 1, !tbaa !67
  store i8 %i.jd, ptr %i.jc, align 1, !tbaa !67
  br label %__cxx_global_var_init.307.exit

bb.q:                                             ; preds = %._crit_edge.i.i.i79
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jc, ptr nonnull align 1 %i.ix, i64 %i.iy, i1 false)
  br label %__cxx_global_var_init.307.exit

__cxx_global_var_init.307.exit:                   ; preds = %._crit_edge.i.i.i79, %bb.p, %bb.q
  %i.je = load i64, ptr %i.a, align 8, !tbaa !94  ; 2 uses
  store i64 %i.je, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E, i64 8), align 8, !tbaa !69
  %i.jf = load ptr, ptr @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E, align 8, !tbaa !66
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.je
  store i8 0, ptr %i.jg, align 1, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  %i.jh = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E, ptr nonnull @__dso_handle) #56 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #56
  call fastcc void @_ZN7testing8internalL12FlagToEnvVarB5cxx11EPKc(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.310)
  %i.ji = load ptr, ptr %0, align 8, !tbaa !66    ; 3 uses
  %i.jj = call noundef ptr @getenv(ptr noundef %i.ji) #56 ; 3 uses
  %i.jk = icmp eq ptr %i.jj, null
  br i1 %i.jk, label %.tail.i.i84, label %sub_0.i.i82

sub_0.i.i82:                                      ; preds = %__cxx_global_var_init.307.exit
  %i.jl = load i8, ptr %i.jj, align 1
  %.not.i.i83 = icmp eq i8 %i.jl, 48
  br i1 %.not.i.i83, label %sub_1.i.i87, label %.tail.i.i84

sub_1.i.i87:                                      ; preds = %sub_0.i.i82
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 1
  %i.jn = load i8, ptr %i.jm, align 1
  %i.jo = icmp ne i8 %i.jn, 0
  %i.jp = zext i1 %i.jo to i8
  br label %.tail.i.i84

.tail.i.i84:                                      ; preds = %sub_1.i.i87, %sub_0.i.i82, %__cxx_global_var_init.307.exit
  %i.jq = phi i8 [ 0, %__cxx_global_var_init.307.exit ], [ 1, %sub_0.i.i82 ], [ %i.jp, %sub_1.i.i87 ]
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.js = icmp eq ptr %i.ji, %i.jr
  br i1 %i.js, label %__cxx_global_var_init.309.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i85: ; preds = %.tail.i.i84
  %i.jt = load i64, ptr %i.jr, align 8, !tbaa !67
  %i.ju = add i64 %i.jt, 1
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.ju) #57
  br label %__cxx_global_var_init.309.exit

__cxx_global_var_init.309.exit:                   ; preds = %.tail.i.i84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #56
  store i8 %i.jq, ptr @_ZN7testing31FLAGS_gtest_death_test_use_forkE, align 1, !tbaa !116
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internal35FLAGS_gtest_internal_run_death_testB5cxx11E, i64 16), ptr @_ZN7testing8internal35FLAGS_gtest_internal_run_death_testB5cxx11E, align 8, !tbaa !68
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internal35FLAGS_gtest_internal_run_death_testB5cxx11E, i64 8), align 8, !tbaa !69
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internal35FLAGS_gtest_internal_run_death_testB5cxx11E, i64 16), align 8, !tbaa !67
  %i.jv = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7testing8internal35FLAGS_gtest_internal_run_death_testB5cxx11E, ptr nonnull @__dso_handle) #56 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internal9DeathTest24last_death_test_message_B5cxx11E, i64 16), ptr @_ZN7testing8internal9DeathTest24last_death_test_message_B5cxx11E, align 8, !tbaa !68
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internal9DeathTest24last_death_test_message_B5cxx11E, i64 8), align 8, !tbaa !69
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internal9DeathTest24last_death_test_message_B5cxx11E, i64 16), align 8, !tbaa !67
  %i.jw = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7testing8internal9DeathTest24last_death_test_message_B5cxx11E, ptr nonnull @__dso_handle) #56 ; 0 uses
  %i.jx = call noundef i32 @_ZN7testing8internal11ThreadLocalIPNS_8SequenceEE9CreateKeyEv()
  store i32 %i.jx, ptr @_ZN7testing8internal25g_gmock_implicit_sequenceE, align 8, !tbaa !603
  %i.jy = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #59 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal11ThreadLocalIPNS_8SequenceEE25DefaultValueHolderFactoryE, i64 16), ptr %i.jy, align 8, !tbaa !75
  store ptr %i.jy, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internal25g_gmock_implicit_sequenceE, i64 8), align 8, !tbaa !604
  %i.jz = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8internal11ThreadLocalIPNS_8SequenceEED2Ev, ptr nonnull @_ZN7testing8internal25g_gmock_implicit_sequenceE, ptr nonnull @__dso_handle) #56 ; 0 uses
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, i64 8), align 8, !tbaa !320
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, i64 16), align 8, !tbaa !209
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, i64 24), align 8, !tbaa !217
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, i64 32), align 8, !tbaa !321
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, i64 40), align 8, !tbaa !208
  %i.ka = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing12_GLOBAL__N_118MockObjectRegistryD2Ev, ptr nonnull @_ZN7testing12_GLOBAL__N_122g_mock_object_registryE, ptr nonnull @__dso_handle) #56 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, i64 16), ptr @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, align 8, !tbaa !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(7) @_ZN7testing8internalL17kWarningVerbosityE, i64 7, i1 false)
  store i64 7, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, i64 8), align 8, !tbaa !69
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, i64 23), align 1, !tbaa !67
  %i.kb = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, ptr nonnull @__dso_handle) #56 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #53

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #54

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #55

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v16i8(<16 x i8>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v4i8(<4 x i8>) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { inlinehint mustprogress noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #27 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #31 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { cold noreturn }
attributes #33 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { nocallback nofree nosync nounwind willreturn }
attributes #46 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #47 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #48 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #49 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #50 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #51 = { nounwind memory(none) }
attributes #52 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #53 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #54 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #55 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #56 = { nounwind }
attributes #57 = { builtin nounwind }
attributes #58 = { noreturn }
attributes #59 = { builtin allocsize(0) }
attributes #60 = { noreturn nounwind }
attributes #61 = { nounwind willreturn memory(read) }
attributes #62 = { nounwind willreturn memory(none) }
attributes #63 = { cold noreturn nounwind }
attributes #64 = { cold }
attributes #65 = { cold nounwind }

!llvm.module.flags = !{!52, !53, !54}
!llvm.ident = !{!55}
!llvm.errno.tbaa = !{!60}

!0 = distinct !{null, null, null}
!1 = distinct !{!1, !113}
!2 = distinct !{null, ptr @_ZN7testing8UnitTest11GetInstanceEv}
!3 = distinct !{!3, !113}
!4 = distinct !{!4, !113}
!5 = distinct !{null, null, null, null}
!6 = distinct !{!6, !224}
!7 = distinct !{!7, !113}
!8 = distinct !{!8, !113, !224}
!9 = distinct !{!9, !113}
!10 = distinct !{!10, !113}
!11 = distinct !{!11, !113}
!12 = distinct !{!12, !113}
!13 = distinct !{!13, !113}
!14 = distinct !{!14, !113}
!15 = distinct !{!15, !113}
!16 = distinct !{!16, !113}
!17 = distinct !{null, null, null, null, null}
!18 = distinct !{!18, !113}
!19 = distinct !{!19, !113}
!20 = distinct !{!20, !113}
!21 = distinct !{null, null, null, null}
!22 = distinct !{!22, !113}
!23 = distinct !{!23, !113}
!24 = distinct !{!24, !113}
!25 = distinct !{!25, !113}
!26 = distinct !{null, null}
!27 = distinct !{!27, !113}
!28 = distinct !{null, null}
!29 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, null}
!30 = distinct !{!30, !113}
!31 = distinct !{null, null, null}
!32 = distinct !{null, null, null}
!33 = distinct !{null, null, null}
!34 = distinct !{null, null, null}
!35 = distinct !{null, null, null, null}
!36 = distinct !{null}
!37 = distinct !{null}
!38 = distinct !{null, null}
!39 = distinct !{!39, !113}
!40 = distinct !{null}
!41 = distinct !{null, null}
!42 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EED2Ev, null, null, null, null, null, null}
!43 = distinct !{!43, !113}
!44 = distinct !{!44, !113}
!45 = distinct !{!45, !113}
!46 = distinct !{!46, !113}
!47 = distinct !{!47, !113}
!48 = distinct !{ptr @_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, null}
!49 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev, null}
!50 = distinct !{ptr @_ZN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEED2Ev, null}
!51 = distinct !{!51, !113}
!52 = !{i32 8, !"PIC Level", i32 2}
!53 = !{i32 7, !"PIE Level", i32 2}
!54 = !{i32 7, !"uwtable", i32 2}
!55 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!56 = !{!"Simple C++ TBAA"}
!57 = !{!"omnipotent char", !56, i64 0}
!58 = !{!"int", !57, i64 0}
!59 = !{!"__libc_errno", !58, i64 0}
!60 = !{!59, !58, i64 0}
!61 = !{!"any pointer", !57, i64 0}
!62 = !{!"p1 omnipotent char", !61, i64 0}
!63 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !62, i64 0}
!64 = !{!"long", !57, i64 0}
!65 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !63, i64 0, !64, i64 8, !57, i64 16}
!66 = !{!65, !62, i64 0}
!67 = !{!57, !57, i64 0}
!68 = !{!63, !62, i64 0}
!69 = !{!65, !64, i64 8}
!70 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!71 = !{!58, !58, i64 0}
!72 = !{!"p1 _ZTSNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE", !61, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!"vtable pointer", !56, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!"_ZTSSt13_Ios_Fmtflags", !57, i64 0}
!77 = !{!"_ZTSSt12_Ios_Iostate", !57, i64 0}
!78 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !61, i64 0}
!79 = !{!"_ZTSNSt8ios_base6_WordsE", !61, i64 0, !64, i64 8}
!80 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !61, i64 0}
!81 = !{!"p1 _ZTSNSt6locale5_ImplE", !61, i64 0}
!82 = !{!"_ZTSSt6locale", !81, i64 0}
!83 = !{!"_ZTSSt8ios_base", !64, i64 8, !64, i64 16, !76, i64 24, !77, i64 28, !77, i64 32, !78, i64 40, !79, i64 48, !57, i64 64, !58, i64 192, !80, i64 200, !82, i64 208}
!84 = !{!83, !64, i64 8}
!85 = !{!"p1 _ZTS8_IO_FILE", !61, i64 0}
!86 = !{!85, !85, i64 0}
!87 = !{!"_ZTSN7testing8internal6RandomE", !58, i64 0}
!88 = !{!87, !58, i64 0}
!89 = !{!"_ZTSN7testing14TestPartResult4TypeE", !57, i64 0}
!90 = !{!"_ZTSN7testing8internal12AssertHelper16AssertHelperDataE", !89, i64 0, !62, i64 8, !58, i64 16, !65, i64 24}
!91 = !{!90, !89, i64 0}
!92 = !{!90, !62, i64 8}
!93 = !{!90, !58, i64 16}
!94 = !{!64, !64, i64 0}
!95 = !{!"p1 _ZTSN7testing8internal12AssertHelper16AssertHelperDataE", !61, i64 0}
!96 = !{!"_ZTSN7testing8internal12AssertHelperE", !95, i64 0}
!97 = !{!96, !95, i64 0}
!98 = !{!"branch_weights", i32 1, i32 1048575}
!99 = !{ptr @_ZN7testing8UnitTest11GetInstanceEv}
!100 = !{!"bool", !57, i64 0}
!101 = !{!"_ZTSN7testing8internal9MutexBaseE", !57, i64 0, !100, i64 40, !64, i64 48}
!102 = !{!"_ZTSN7testing8internal5MutexE", !101, i64 0}
!103 = !{!"p1 _ZTSN7testing8internal12UnitTestImplE", !61, i64 0}
!104 = !{!"_ZTSN7testing8UnitTestE", !102, i64 8, !103, i64 64}
!105 = !{!104, !103, i64 64}
!106 = !{!"p1 _ZTSN7testing8internal9TraceInfoE", !61, i64 0}
!107 = !{!"_ZTSNSt12_Vector_baseIN7testing8internal9TraceInfoESaIS2_EE17_Vector_impl_dataE", !106, i64 0, !106, i64 8, !106, i64 16}
!108 = !{!107, !106, i64 8}
!109 = !{!107, !106, i64 0}
!110 = !{!"_ZTSN7testing8internal9TraceInfoE", !62, i64 0, !58, i64 8, !65, i64 16}
!111 = !{!110, !62, i64 0}
!112 = !{!110, !58, i64 8}
!113 = !{!"llvm.loop.mustprogress"}
!114 = !{!"p1 _ZTSN7testing31TestPartResultReporterInterfaceE", !61, i64 0}
!115 = !{!114, !114, i64 0}
!116 = !{!100, !100, i64 0}
!117 = !{i8 0, i8 2}
!118 = !{}
!119 = !{!"p1 _ZTSN7testing8UnitTestE", !61, i64 0}
!120 = !{!"_ZTSN7testing8internal8FilePathE", !65, i64 0}
!121 = !{!"_ZTSN7testing31TestPartResultReporterInterfaceE"}
!122 = !{!"_ZTSN7testing8internal35DefaultGlobalTestPartResultReporterE", !121, i64 0, !103, i64 8}
!123 = !{!"_ZTSN7testing8internal38DefaultPerThreadTestPartResultReporterE", !121, i64 0, !103, i64 8}
!124 = !{!"p1 _ZTSN7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE18ValueHolderFactoryE", !61, i64 0}
!125 = !{!"_ZTSSt10_Head_baseILm0EPN7testing8internal11ThreadLocalIPNS0_31TestPartResultReporterInterfaceEE18ValueHolderFactoryELb0EE", !124, i64 0}
!126 = !{!"_ZTSSt11_Tuple_implILm0EJPN7testing8internal11ThreadLocalIPNS0_31TestPartResultReporterInterfaceEE18ValueHolderFactoryESt14default_deleteIS6_EEE", !125, i64 0}
!127 = !{!"_ZTSSt5tupleIJPN7testing8internal11ThreadLocalIPNS0_31TestPartResultReporterInterfaceEE18ValueHolderFactoryESt14default_deleteIS6_EEE", !126, i64 0}
!128 = !{!"_ZTSSt15__uniq_ptr_implIN7testing8internal11ThreadLocalIPNS0_31TestPartResultReporterInterfaceEE18ValueHolderFactoryESt14default_deleteIS6_EE", !127, i64 0}
!129 = !{!"_ZTSSt15__uniq_ptr_dataIN7testing8internal11ThreadLocalIPNS0_31TestPartResultReporterInterfaceEE18ValueHolderFactoryESt14default_deleteIS6_ELb1ELb1EE", !128, i64 0}
!130 = !{!"_ZTSSt10unique_ptrIN7testing8internal11ThreadLocalIPNS0_31TestPartResultReporterInterfaceEE18ValueHolderFactoryESt14default_deleteIS6_EE", !129, i64 0}
!131 = !{!"_ZTSN7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEEE", !58, i64 0, !130, i64 8}
!132 = !{!"any p2 pointer", !61, i64 0}
!133 = !{!"p2 _ZTSN7testing11EnvironmentE", !132, i64 0}
!134 = !{!"_ZTSNSt12_Vector_baseIPN7testing11EnvironmentESaIS2_EE17_Vector_impl_dataE", !133, i64 0, !133, i64 8, !133, i64 16}
!135 = !{!"_ZTSNSt12_Vector_baseIPN7testing11EnvironmentESaIS2_EE12_Vector_implE", !134, i64 0}
!136 = !{!"_ZTSSt12_Vector_baseIPN7testing11EnvironmentESaIS2_EE", !135, i64 0}
!137 = !{!"_ZTSSt6vectorIPN7testing11EnvironmentESaIS2_EE", !136, i64 0}
!138 = !{!"p2 _ZTSN7testing9TestSuiteE", !132, i64 0}
!139 = !{!"_ZTSNSt12_Vector_baseIPN7testing9TestSuiteESaIS2_EE17_Vector_impl_dataE", !138, i64 0, !138, i64 8, !138, i64 16}
!140 = !{!"_ZTSNSt12_Vector_baseIPN7testing9TestSuiteESaIS2_EE12_Vector_implE", !139, i64 0}
!141 = !{!"_ZTSSt12_Vector_baseIPN7testing9TestSuiteESaIS2_EE", !140, i64 0}
!142 = !{!"_ZTSSt6vectorIPN7testing9TestSuiteESaIS2_EE", !141, i64 0}
!143 = !{!"p1 int", !61, i64 0}
!144 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !143, i64 0, !143, i64 8, !143, i64 16}
!145 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !144, i64 0}
!146 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !145, i64 0}
!147 = !{!"_ZTSSt6vectorIiSaIiEE", !146, i64 0}
!148 = !{!"p2 _ZTSN7testing8internal30ParameterizedTestSuiteInfoBaseE", !132, i64 0}
!149 = !{!"_ZTSNSt12_Vector_baseIPN7testing8internal30ParameterizedTestSuiteInfoBaseESaIS3_EE17_Vector_impl_dataE", !148, i64 0, !148, i64 8, !148, i64 16}
!150 = !{!"_ZTSNSt12_Vector_baseIPN7testing8internal30ParameterizedTestSuiteInfoBaseESaIS3_EE12_Vector_implE", !149, i64 0}
!151 = !{!"_ZTSSt12_Vector_baseIPN7testing8internal30ParameterizedTestSuiteInfoBaseESaIS3_EE", !150, i64 0}
!152 = !{!"_ZTSSt6vectorIPN7testing8internal30ParameterizedTestSuiteInfoBaseESaIS3_EE", !151, i64 0}
!153 = !{!"_ZTSN7testing8internal30ParameterizedTestSuiteRegistryE", !152, i64 0}
!154 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!155 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !154, i64 0}
!156 = !{!"_ZTSSt14_Rb_tree_color", !57, i64 0}
!157 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !61, i64 0}
!158 = !{!"_ZTSSt18_Rb_tree_node_base", !156, i64 0, !157, i64 8, !157, i64 16, !157, i64 24}
!159 = !{!"_ZTSSt15_Rb_tree_header", !158, i64 0, !64, i64 32}
!160 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE13_Rb_tree_implISG_Lb1EEE", !155, i64 0, !159, i64 8}
!161 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE", !160, i64 0}
!162 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE", !161, i64 0}
!163 = !{!"_ZTSN7testing8internal34TypeParameterizedTestSuiteRegistryE", !162, i64 0}
!164 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !155, i64 0, !159, i64 8}
!165 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE", !164, i64 0}
!166 = !{!"_ZTSSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE", !165, i64 0}
!167 = !{!"p1 _ZTSN7testing9TestSuiteE", !61, i64 0}
!168 = !{!"p1 _ZTSN7testing8TestInfoE", !61, i64 0}
!169 = !{!"p1 _ZTSN7testing14TestPartResultE", !61, i64 0}
!170 = !{!"_ZTSNSt12_Vector_baseIN7testing14TestPartResultESaIS1_EE17_Vector_impl_dataE", !169, i64 0, !169, i64 8, !169, i64 16}
!171 = !{!"_ZTSNSt12_Vector_baseIN7testing14TestPartResultESaIS1_EE12_Vector_implE", !170, i64 0}
!172 = !{!"_ZTSSt12_Vector_baseIN7testing14TestPartResultESaIS1_EE", !171, i64 0}
!173 = !{!"_ZTSSt6vectorIN7testing14TestPartResultESaIS1_EE", !172, i64 0}
!174 = !{!"p1 _ZTSN7testing12TestPropertyE", !61, i64 0}
!175 = !{!"_ZTSNSt12_Vector_baseIN7testing12TestPropertyESaIS1_EE17_Vector_impl_dataE", !174, i64 0, !174, i64 8, !174, i64 16}
!176 = !{!"_ZTSNSt12_Vector_baseIN7testing12TestPropertyESaIS1_EE12_Vector_implE", !175, i64 0}
!177 = !{!"_ZTSSt12_Vector_baseIN7testing12TestPropertyESaIS1_EE", !176, i64 0}
!178 = !{!"_ZTSSt6vectorIN7testing12TestPropertyESaIS1_EE", !177, i64 0}
end_hunk_1
