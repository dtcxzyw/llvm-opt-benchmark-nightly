Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/singular_cord?download=true
inline.NumInlined: 844
inline.NumDeleted: 320
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK6google8protobuf8compiler4rust12SingularCord9InMsgImplERNS2_7ContextERKNS0_15FieldDescriptorENS2_12AccessorCaseE:bb.a
  store i64 15, ptr %i.fc, align 8, !tbaa !123
  store ptr %i.ey, ptr %16, align 8, !tbaa !125
  store i64 0, ptr %i.ez, align 8, !tbaa !123
  store i8 0, ptr %i.ey, align 8, !tbaa !124
  %i.fd = getelementptr inbounds nuw i8, ptr %9, i64 768 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.fe = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %.noexc.i177 unwind label %bb.t, !noalias !189 ; 4 uses

.noexc.i177:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i171
  store ptr %i.f, ptr %i.fe, align 16, !tbaa !140, !noalias !189
  %.sroa.0.i.i.i169.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store ptr %1, ptr %.sroa.0.i.i.i169.sroa.4.0..sroa_idx, align 8, !tbaa !142, !noalias !189
  %.sroa.4.0..sroa_idx.i.i.i178 = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i.i178, align 16, !tbaa !121, !noalias !189
  %i.ff = getelementptr inbounds nuw i8, ptr %9, i64 792
  store ptr @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS2_8compiler4rust12SingularCord9InMsgImplERNS9_7ContextERKNS2_15FieldDescriptorENS9_12AccessorCaseEE3$_1vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data", ptr %i.ff, align 8, !tbaa !145, !alias.scope !189
  %i.fg = getelementptr inbounds nuw i8, ptr %9, i64 784
  store ptr %i.fe, ptr %i.fd, align 8, !tbaa !124
  %.sroa.4.0..sroa_idx.i.i179 = getelementptr inbounds nuw i8, ptr %9, i64 776
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i179, align 8, !tbaa !124
  store ptr @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS2_8compiler4rust12SingularCord9InMsgImplERNS9_7ContextERKNS2_15FieldDescriptorENS9_12AccessorCaseEE3$_1vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSX_St18_Manager_operation", ptr %i.fg, align 8, !tbaa !146, !alias.scope !189
  %i.fh = getelementptr inbounds nuw i8, ptr %9, i64 800
  store i8 1, ptr %i.fh, align 8, !tbaa !127, !alias.scope !189
  %i.fi = getelementptr inbounds nuw i8, ptr %9, i64 808 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %9, i64 824 ; 4 uses
  store ptr %i.fj, ptr %i.fi, align 8, !tbaa !122
  %i.fk = getelementptr inbounds nuw i8, ptr %9, i64 816
  store i64 0, ptr %i.fk, align 8, !tbaa !123
  store i8 0, ptr %i.fj, align 8, !tbaa !124
  %i.fl = getelementptr inbounds nuw i8, ptr %9, i64 840
  store i8 0, ptr %i.fl, align 8, !tbaa !135
  %i.fm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.fi, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.28, i64 noundef 2)
          to label %bb.u unwind label %bb.s       ; 0 uses

bb.s:                                             ; preds = %.noexc.i177
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = load ptr, ptr %i.fi, align 8, !tbaa !125 ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.fj
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i180: ; preds = %bb.s
  %i.fq = load i64, ptr %i.fj, align 8, !tbaa !124
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i181: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i180
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(73) %i.fd) #15
  br label %.body.i172

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i171
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i172

.body.i172:                                       ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i181
  %eh.lpad-body.i173 = phi { ptr, i32 } [ %i.fs, %bb.t ], [ %i.fn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i181 ] ; 2 uses
  %i.ft = load ptr, ptr %i.ex, align 8, !tbaa !125 ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.fb
  br i1 %i.fu, label %.body183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i174: ; preds = %.body.i172
  %i.fv = load i64, ptr %i.fb, align 8, !tbaa !124
  br label %.body183.sink.split

bb.u:                                             ; preds = %.noexc.i177
  %i.fw = getelementptr inbounds nuw i8, ptr %9, i64 912
  store i8 0, ptr %i.fw, align 8, !tbaa !137
  %i.fx = getelementptr inbounds nuw i8, ptr %9, i64 920 ; 6 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 11 uses
  store ptr %i.fy, ptr %17, align 8, !tbaa !122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.fy, ptr noundef nonnull align 1 dereferenceable(13) @.str.7, i64 13, i1 false)
  %i.fz = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  store i64 13, ptr %i.fz, align 8, !tbaa !123
  %i.ga = getelementptr inbounds nuw i8, ptr %17, i64 29
  store i8 0, ptr %i.ga, align 1, !tbaa !124
  %i.gb = load i32, ptr %i.e, align 4, !tbaa !72
  %i.gc = invoke { i64, ptr } @_ZN6google8protobuf8compiler4rust12ViewLifetimeENS2_12AccessorCaseE(i32 noundef %i.gb)
          to label %bb.v unwind label %bb.az      ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.gd = extractvalue { i64, ptr } %i.gc, 0      ; 5 uses
  %i.ge = extractvalue { i64, ptr } %i.gc, 1      ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %9, i64 936 ; 5 uses
  store ptr %i.gf, ptr %i.fx, align 8, !tbaa !122
  %i.gg = load ptr, ptr %17, align 8, !tbaa !125  ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.fy
  br i1 %i.gh, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189

bb.w:                                             ; preds = %bb.v
  %i.gi = load i64, ptr %i.fz, align 8, !tbaa !123 ; 3 uses
  %i.gj = icmp ult i64 %i.gi, 16
  call void @llvm.assume(i1 %i.gj)
  %i.gk = add nuw nsw i64 %i.gi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gf, ptr noundef nonnull align 8 dereferenceable(1) %i.fy, i64 %i.gk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189: ; preds = %bb.v
  store ptr %i.gg, ptr %i.fx, align 8, !tbaa !125
  %i.gl = load i64, ptr %i.fy, align 8, !tbaa !124
  store i64 %i.gl, ptr %i.gf, align 8, !tbaa !124
  %.pre439 = load i64, ptr %i.fz, align 8, !tbaa !123
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i190: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189, %bb.w
  %i.gm = phi i64 [ %.pre439, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189 ], [ %i.gi, %bb.w ]
  %i.gn = getelementptr inbounds nuw i8, ptr %9, i64 928
  store i64 %i.gm, ptr %i.gn, align 8, !tbaa !123
  store ptr %i.fy, ptr %17, align 8, !tbaa !125
  store i64 0, ptr %i.fz, align 8, !tbaa !123
  store i8 0, ptr %i.fy, align 8, !tbaa !124
  %i.go = getelementptr inbounds nuw i8, ptr %9, i64 952 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !190)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15, !noalias !190
  %i.gp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.gp, ptr %5, align 8, !tbaa !122, !noalias !190
  %i.gq = icmp eq ptr %i.ge, null
  %i.gr = icmp ne i64 %i.gd, 0
  %or.cond.i.i.i.i.i = and i1 %i.gr, %i.gq
  br i1 %or.cond.i.i.i.i.i, label %.noexc.i.i, label %bb.x

.noexc.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i190
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.27) #20
          to label %.noexc392 unwind label %bb.ac, !noalias !190

.noexc392:                                        ; preds = %.noexc.i.i
  unreachable

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15, !noalias !190
  store i64 %i.gd, ptr %i.b, align 8, !tbaa !138, !noalias !190
  %i.gs = icmp ugt i64 %i.gd, 15
  br i1 %i.gs, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %bb.x
  %i.gt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc393 unwind label %bb.ac, !noalias !190 ; 2 uses

.noexc393:                                        ; preds = %.noexc.i.i.i.i.i
  store ptr %i.gt, ptr %5, align 8, !tbaa !125, !noalias !190
  %i.gu = load i64, ptr %i.b, align 8, !tbaa !138, !noalias !190
  store i64 %i.gu, ptr %i.gp, align 8, !tbaa !124, !noalias !190
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc393, %bb.x
  %i.gv = phi ptr [ %i.gt, %.noexc393 ], [ %i.gp, %bb.x ] ; 2 uses
  switch i64 %i.gd, label %bb.z [
    i64 1, label %bb.y
    i64 0, label %bb.aa
  ]

bb.y:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.gw = load i8, ptr %i.ge, align 1, !tbaa !124, !noalias !190
  store i8 %i.gw, ptr %i.gv, align 1, !tbaa !124, !noalias !190
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gv, ptr align 1 %i.ge, i64 %i.gd, i1 false), !noalias !190
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %._crit_edge.i.i.i.i.i.i
  %i.gx = load i64, ptr %i.b, align 8, !tbaa !138, !noalias !190 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 %i.gx, ptr %i.gy, align 8, !tbaa !123, !noalias !190
  %i.gz = load ptr, ptr %5, align 8, !tbaa !125, !noalias !190
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gx
  store i8 0, ptr %i.ha, align 1, !tbaa !124, !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15, !noalias !190
  %i.hb = getelementptr inbounds nuw i8, ptr %9, i64 968 ; 3 uses
  store ptr %i.hb, ptr %i.go, align 8, !tbaa !122, !alias.scope !190
  %i.hc = load ptr, ptr %5, align 8, !tbaa !125, !noalias !190 ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.gp
  br i1 %i.hd, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.he = load i64, ptr %i.gy, align 8, !tbaa !123, !noalias !190 ; 3 uses
  %i.hf = icmp ult i64 %i.he, 16
  call void @llvm.assume(i1 %i.hf)
  %i.hg = add nuw nsw i64 %i.he, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hb, ptr noundef nonnull align 8 dereferenceable(1) %i.gp, i64 %i.hg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aa
  store ptr %i.hc, ptr %i.go, align 8, !tbaa !125, !alias.scope !190
  %i.hh = load i64, ptr %i.gp, align 8, !tbaa !124, !noalias !190
  store i64 %i.hh, ptr %i.hb, align 8, !tbaa !124, !alias.scope !190
  %.pre.i.i391 = load i64, ptr %i.gy, align 8, !tbaa !123, !noalias !190
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i202

bb.ac:                                            ; preds = %.noexc.i.i.i.i.i, %.noexc.i.i
  %i.hi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hj = load ptr, ptr %i.fx, align 8, !tbaa !125 ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.gf
  br i1 %i.hk, label %.body194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i191: ; preds = %bb.ac
  %i.hl = load i64, ptr %i.gf, align 8, !tbaa !124
  %24 = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %24) #19
  br label %.body194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i202: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hm = phi i64 [ %i.he, %bb.ab ], [ %.pre.i.i391, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.hn = getelementptr inbounds nuw i8, ptr %9, i64 960
  store i64 %i.hm, ptr %i.hn, align 8, !tbaa !123, !alias.scope !190
  %i.ho = getelementptr inbounds nuw i8, ptr %9, i64 984
  store i8 0, ptr %i.ho, align 8, !tbaa !127, !alias.scope !190
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15, !noalias !190
  %i.hp = getelementptr inbounds nuw i8, ptr %9, i64 992
  %i.hq = getelementptr inbounds nuw i8, ptr %9, i64 1008 ; 2 uses
  store ptr %i.hq, ptr %i.hp, align 8, !tbaa !122
  %i.hr = getelementptr inbounds nuw i8, ptr %9, i64 1000
  store i64 0, ptr %i.hr, align 8, !tbaa !123
  store i8 0, ptr %i.hq, align 8, !tbaa !124
  %i.hs = getelementptr inbounds nuw i8, ptr %9, i64 1024
  store i8 0, ptr %i.hs, align 8, !tbaa !135
  %i.ht = getelementptr inbounds nuw i8, ptr %9, i64 1096
  store i8 0, ptr %i.ht, align 8, !tbaa !137
  %i.hu = getelementptr inbounds nuw i8, ptr %9, i64 1104 ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.hv, ptr noundef nonnull align 1 dereferenceable(9) @.str.8, i64 9, i1 false)
  %i.hw = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.hx = getelementptr inbounds nuw i8, ptr %18, i64 25
  store i8 0, ptr %i.hx, align 1, !tbaa !124
  %i.hy = getelementptr inbounds nuw i8, ptr %9, i64 1120 ; 4 uses
  store ptr %i.hy, ptr %i.hu, align 8, !tbaa !122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.hy, ptr noundef nonnull align 8 dereferenceable(10) %i.hv, i64 10, i1 false)
  %i.hz = getelementptr inbounds nuw i8, ptr %9, i64 1112
  store i64 9, ptr %i.hz, align 8, !tbaa !123
  store ptr %i.hv, ptr %18, align 8, !tbaa !125
  store i64 0, ptr %i.hw, align 8, !tbaa !123
  store i8 0, ptr %i.hv, align 8, !tbaa !124
  %i.ia = getelementptr inbounds nuw i8, ptr %9, i64 1136 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.ib = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %.noexc.i208 unwind label %bb.ae, !noalias !191 ; 4 uses

.noexc.i208:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i202
  store ptr %i.f, ptr %i.ib, align 16, !tbaa !140, !noalias !191
  %.sroa.0.i.i.i200.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  store ptr %1, ptr %.sroa.0.i.i.i200.sroa.4.0..sroa_idx, align 8, !tbaa !142, !noalias !191
  %.sroa.4.0..sroa_idx.i.i.i209 = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i.i209, align 16, !tbaa !121, !noalias !191
  %i.ic = getelementptr inbounds nuw i8, ptr %9, i64 1160
  store ptr @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS2_8compiler4rust12SingularCord9InMsgImplERNS9_7ContextERKNS2_15FieldDescriptorENS9_12AccessorCaseEE3$_2vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data", ptr %i.ic, align 8, !tbaa !145, !alias.scope !191
  %i.id = getelementptr inbounds nuw i8, ptr %9, i64 1152
  store ptr %i.ib, ptr %i.ia, align 8, !tbaa !124
  %.sroa.4.0..sroa_idx.i.i210 = getelementptr inbounds nuw i8, ptr %9, i64 1144
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i210, align 8, !tbaa !124
  store ptr @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS2_8compiler4rust12SingularCord9InMsgImplERNS9_7ContextERKNS2_15FieldDescriptorENS9_12AccessorCaseEE3$_2vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSX_St18_Manager_operation", ptr %i.id, align 8, !tbaa !146, !alias.scope !191
  %i.ie = getelementptr inbounds nuw i8, ptr %9, i64 1168
  store i8 1, ptr %i.ie, align 8, !tbaa !127, !alias.scope !191
  %i.if = getelementptr inbounds nuw i8, ptr %9, i64 1176 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %9, i64 1192 ; 4 uses
  store ptr %i.ig, ptr %i.if, align 8, !tbaa !122
  %i.ih = getelementptr inbounds nuw i8, ptr %9, i64 1184
  store i64 0, ptr %i.ih, align 8, !tbaa !123
  store i8 0, ptr %i.ig, align 8, !tbaa !124
  %i.ii = getelementptr inbounds nuw i8, ptr %9, i64 1208
  store i8 0, ptr %i.ii, align 8, !tbaa !135
  %i.ij = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.if, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.28, i64 noundef 2)
          to label %bb.af unwind label %bb.ad     ; 0 uses

bb.ad:                                            ; preds = %.noexc.i208
  %i.ik = landingpad { ptr, i32 }
          cleanup
  %i.il = load ptr, ptr %i.if, align 8, !tbaa !125 ; 2 uses
  %i.im = icmp eq ptr %i.il, %i.ig
  br i1 %i.im, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i211: ; preds = %bb.ad
  %i.in = load i64, ptr %i.ig, align 8, !tbaa !124
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.io) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i212

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i212: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i211
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(73) %i.ia) #15
  br label %.body.i203

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i202
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %.body.i203

.body.i203:                                       ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i212
  %eh.lpad-body.i204 = phi { ptr, i32 } [ %i.ip, %bb.ae ], [ %i.ik, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i212 ] ; 2 uses
  %i.iq = load ptr, ptr %i.hu, align 8, !tbaa !125 ; 2 uses
  %i.ir = icmp eq ptr %i.iq, %i.hy
  br i1 %i.ir, label %.body214, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i205: ; preds = %.body.i203
  %i.is = load i64, ptr %i.hy, align 8, !tbaa !124
  br label %.body214.sink.split

bb.af:                                            ; preds = %.noexc.i208
  %i.it = getelementptr inbounds nuw i8, ptr %9, i64 1280
  store i8 0, ptr %i.it, align 8, !tbaa !137
  %i.iu = getelementptr inbounds nuw i8, ptr %9, i64 1288 ; 6 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 11 uses
  store ptr %i.iv, ptr %19, align 8, !tbaa !122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.iv, ptr noundef nonnull align 1 dereferenceable(9) @.str.9, i64 9, i1 false)
  %i.iw = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  store i64 9, ptr %i.iw, align 8, !tbaa !123
  %i.ix = getelementptr inbounds nuw i8, ptr %19, i64 25
  store i8 0, ptr %i.ix, align 1, !tbaa !124
  %i.iy = load i32, ptr %i.e, align 4, !tbaa !72
  %i.iz = invoke { i64, ptr } @_ZN6google8protobuf8compiler4rust12ViewReceiverENS2_12AccessorCaseE(i32 noundef %i.iy)
          to label %bb.ag unwind label %bb.ba     ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %i.ja = extractvalue { i64, ptr } %i.iz, 0      ; 5 uses
  %i.jb = extractvalue { i64, ptr } %i.iz, 1      ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %9, i64 1304 ; 5 uses
  store ptr %i.jc, ptr %i.iu, align 8, !tbaa !122
  %i.jd = load ptr, ptr %19, align 8, !tbaa !125  ; 2 uses
  %i.je = icmp eq ptr %i.jd, %i.iv
  br i1 %i.je, label %bb.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220

bb.ah:                                            ; preds = %bb.ag
  %i.jf = load i64, ptr %i.iw, align 8, !tbaa !123 ; 3 uses
  %i.jg = icmp ult i64 %i.jf, 16
  call void @llvm.assume(i1 %i.jg)
  %i.jh = add nuw nsw i64 %i.jf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jc, ptr noundef nonnull align 8 dereferenceable(1) %i.iv, i64 %i.jh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220: ; preds = %bb.ag
  store ptr %i.jd, ptr %i.iu, align 8, !tbaa !125
  %i.ji = load i64, ptr %i.iv, align 8, !tbaa !124
  store i64 %i.ji, ptr %i.jc, align 8, !tbaa !124
  %.pre440 = load i64, ptr %i.iw, align 8, !tbaa !123
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i221

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i221: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220, %bb.ah
  %i.jj = phi i64 [ %.pre440, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220 ], [ %i.jf, %bb.ah ]
  %i.jk = getelementptr inbounds nuw i8, ptr %9, i64 1296
  store i64 %i.jj, ptr %i.jk, align 8, !tbaa !123
  store ptr %i.iv, ptr %19, align 8, !tbaa !125
  store i64 0, ptr %i.iw, align 8, !tbaa !123
  store i8 0, ptr %i.iv, align 8, !tbaa !124
  %i.jl = getelementptr inbounds nuw i8, ptr %9, i64 1320 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !192)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15, !noalias !192
  %i.jm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.jm, ptr %4, align 8, !tbaa !122, !noalias !192
  %i.jn = icmp eq ptr %i.jb, null
  %i.jo = icmp ne i64 %i.ja, 0
  %or.cond.i.i.i.i.i397 = and i1 %i.jo, %i.jn
  br i1 %or.cond.i.i.i.i.i397, label %.noexc.i.i402, label %bb.ai

.noexc.i.i402:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i221
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.27) #20
          to label %.noexc403 unwind label %bb.an, !noalias !192

.noexc403:                                        ; preds = %.noexc.i.i402
  unreachable

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15, !noalias !192
  store i64 %i.ja, ptr %i.a, align 8, !tbaa !138, !noalias !192
  %i.jp = icmp ugt i64 %i.ja, 15
  br i1 %i.jp, label %.noexc.i.i.i.i.i401, label %._crit_edge.i.i.i.i.i.i398

.noexc.i.i.i.i.i401:                              ; preds = %bb.ai
  %i.jq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc404 unwind label %bb.an, !noalias !192 ; 2 uses

.noexc404:                                        ; preds = %.noexc.i.i.i.i.i401
  store ptr %i.jq, ptr %4, align 8, !tbaa !125, !noalias !192
  %i.jr = load i64, ptr %i.a, align 8, !tbaa !138, !noalias !192
  store i64 %i.jr, ptr %i.jm, align 8, !tbaa !124, !noalias !192
  br label %._crit_edge.i.i.i.i.i.i398

._crit_edge.i.i.i.i.i.i398:                       ; preds = %.noexc404, %bb.ai
  %i.js = phi ptr [ %i.jq, %.noexc404 ], [ %i.jm, %bb.ai ] ; 2 uses
  switch i64 %i.ja, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %bb.al
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i.i.i398
  %i.jt = load i8, ptr %i.jb, align 1, !tbaa !124, !noalias !192
  store i8 %i.jt, ptr %i.js, align 1, !tbaa !124, !noalias !192
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i.i.i398
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.js, ptr align 1 %i.jb, i64 %i.ja, i1 false), !noalias !192
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i.i.i.i.i398
  %i.ju = load i64, ptr %i.a, align 8, !tbaa !138, !noalias !192 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.ju, ptr %i.jv, align 8, !tbaa !123, !noalias !192
  %i.jw = load ptr, ptr %4, align 8, !tbaa !125, !noalias !192
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.ju
  store i8 0, ptr %i.jx, align 1, !tbaa !124, !noalias !192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !192
  %i.jy = getelementptr inbounds nuw i8, ptr %9, i64 1336 ; 3 uses
  store ptr %i.jy, ptr %i.jl, align 8, !tbaa !122, !alias.scope !192
  %i.jz = load ptr, ptr %4, align 8, !tbaa !125, !noalias !192 ; 2 uses
  %i.ka = icmp eq ptr %i.jz, %i.jm
  br i1 %i.ka, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i399

bb.am:                                            ; preds = %bb.al
  %i.kb = load i64, ptr %i.jv, align 8, !tbaa !123, !noalias !192 ; 3 uses
  %i.kc = icmp ult i64 %i.kb, 16
  call void @llvm.assume(i1 %i.kc)
  %i.kd = add nuw nsw i64 %i.kb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jy, ptr noundef nonnull align 8 dereferenceable(1) %i.jm, i64 %i.kd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i399: ; preds = %bb.al
  store ptr %i.jz, ptr %i.jl, align 8, !tbaa !125, !alias.scope !192
  %i.ke = load i64, ptr %i.jm, align 8, !tbaa !124, !noalias !192
  store i64 %i.ke, ptr %i.jy, align 8, !tbaa !124, !alias.scope !192
  %.pre.i.i400 = load i64, ptr %i.jv, align 8, !tbaa !123, !noalias !192
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i234

bb.an:                                            ; preds = %.noexc.i.i.i.i.i401, %.noexc.i.i402
  %i.kf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kg = load ptr, ptr %i.iu, align 8, !tbaa !125 ; 2 uses
  %i.kh = icmp eq ptr %i.kg, %i.jc
  br i1 %i.kh, label %.body225, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i222: ; preds = %bb.an
  %i.ki = load i64, ptr %i.jc, align 8, !tbaa !124
  %25 = add i64 %i.ki, 1
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %25) #19
  br label %.body225

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i234: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i399
  %i.kj = phi i64 [ %i.kb, %bb.am ], [ %.pre.i.i400, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i399 ]
  %i.kk = getelementptr inbounds nuw i8, ptr %9, i64 1328
  store i64 %i.kj, ptr %i.kk, align 8, !tbaa !123, !alias.scope !192
  %i.kl = getelementptr inbounds nuw i8, ptr %9, i64 1352
  store i8 0, ptr %i.kl, align 8, !tbaa !127, !alias.scope !192
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15, !noalias !192
  %i.km = getelementptr inbounds nuw i8, ptr %9, i64 1360
  %i.kn = getelementptr inbounds nuw i8, ptr %9, i64 1376 ; 2 uses
  store ptr %i.kn, ptr %i.km, align 8, !tbaa !122
  %i.ko = getelementptr inbounds nuw i8, ptr %9, i64 1368
  store i64 0, ptr %i.ko, align 8, !tbaa !123
  store i8 0, ptr %i.kn, align 8, !tbaa !124
  %i.kp = getelementptr inbounds nuw i8, ptr %9, i64 1392
  store i8 0, ptr %i.kp, align 8, !tbaa !135
  %i.kq = getelementptr inbounds nuw i8, ptr %9, i64 1464
  store i8 0, ptr %i.kq, align 8, !tbaa !137
  %i.kr = getelementptr inbounds nuw i8, ptr %9, i64 1472 ; 4 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.ks, ptr noundef nonnull align 1 dereferenceable(11) @.str.10, i64 11, i1 false)
  %i.kt = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ku = getelementptr inbounds nuw i8, ptr %20, i64 27
  store i8 0, ptr %i.ku, align 1, !tbaa !124
  %i.kv = getelementptr inbounds nuw i8, ptr %9, i64 1488 ; 4 uses
  store ptr %i.kv, ptr %i.kr, align 8, !tbaa !122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.kv, ptr noundef nonnull align 8 dereferenceable(12) %i.ks, i64 12, i1 false)
  %i.kw = getelementptr inbounds nuw i8, ptr %9, i64 1480
  store i64 11, ptr %i.kw, align 8, !tbaa !123
  store ptr %i.ks, ptr %20, align 8, !tbaa !125
  store i64 0, ptr %i.kt, align 8, !tbaa !123
  store i8 0, ptr %i.ks, align 8, !tbaa !124
  %i.kx = getelementptr inbounds nuw i8, ptr %9, i64 1504 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.ky = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %.noexc.i240 unwind label %bb.ap, !noalias !193 ; 4 uses

.noexc.i240:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i234
  store ptr %1, ptr %i.ky, align 16, !tbaa !142, !noalias !193
  %.sroa.0.i.i.i232.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  store ptr %2, ptr %.sroa.0.i.i.i232.sroa.4.0..sroa_idx, align 8, !tbaa !148, !noalias !193
  %.sroa.4.0..sroa_idx.i.i.i241 = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i.i241, align 16, !tbaa !121, !noalias !193
  %i.kz = getelementptr inbounds nuw i8, ptr %9, i64 1528
  store ptr @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS2_8compiler4rust12SingularCord9InMsgImplERNS9_7ContextERKNS2_15FieldDescriptorENS9_12AccessorCaseEE3$_3vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data", ptr %i.kz, align 8, !tbaa !145, !alias.scope !193
  %i.la = getelementptr inbounds nuw i8, ptr %9, i64 1520
  store ptr %i.ky, ptr %i.kx, align 8, !tbaa !124
  %.sroa.4.0..sroa_idx.i.i242 = getelementptr inbounds nuw i8, ptr %9, i64 1512
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i242, align 8, !tbaa !124
  store ptr @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS2_8compiler4rust12SingularCord9InMsgImplERNS9_7ContextERKNS2_15FieldDescriptorENS9_12AccessorCaseEE3$_3vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSX_St18_Manager_operation", ptr %i.la, align 8, !tbaa !146, !alias.scope !193
  %i.lb = getelementptr inbounds nuw i8, ptr %9, i64 1536
  store i8 1, ptr %i.lb, align 8, !tbaa !127, !alias.scope !193
  %i.lc = getelementptr inbounds nuw i8, ptr %9, i64 1544 ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %9, i64 1560 ; 4 uses
  store ptr %i.ld, ptr %i.lc, align 8, !tbaa !122
  %i.le = getelementptr inbounds nuw i8, ptr %9, i64 1552
  store i64 0, ptr %i.le, align 8, !tbaa !123
  store i8 0, ptr %i.ld, align 8, !tbaa !124
  %i.lf = getelementptr inbounds nuw i8, ptr %9, i64 1576
  store i8 0, ptr %i.lf, align 8, !tbaa !135
  %i.lg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.lc, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.28, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i253 unwind label %bb.ao ; 0 uses

bb.ao:                                            ; preds = %.noexc.i240
  %i.lh = landingpad { ptr, i32 }
          cleanup
  %i.li = load ptr, ptr %i.lc, align 8, !tbaa !125 ; 2 uses
  %i.lj = icmp eq ptr %i.li, %i.ld
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i243: ; preds = %bb.ao
  %i.lk = load i64, ptr %i.ld, align 8, !tbaa !124
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.ll) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i244

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i244: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i243
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(73) %i.kx) #15
  br label %.body.i235

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i234
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i235

.body.i235:                                       ; preds = %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i244
  %eh.lpad-body.i236 = phi { ptr, i32 } [ %i.lm, %bb.ap ], [ %i.lh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i244 ] ; 2 uses
  %i.ln = load ptr, ptr %i.kr, align 8, !tbaa !125 ; 2 uses
  %i.lo = icmp eq ptr %i.ln, %i.kv
  br i1 %i.lo, label %.body246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i237: ; preds = %.body.i235
  %i.lp = load i64, ptr %i.kv, align 8, !tbaa !124
  br label %.body246.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i253: ; preds = %.noexc.i240
  %i.lq = getelementptr inbounds nuw i8, ptr %9, i64 1648
  store i8 0, ptr %i.lq, align 8, !tbaa !137
  %i.lr = getelementptr inbounds nuw i8, ptr %9, i64 1656 ; 4 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ls, ptr noundef nonnull align 1 dereferenceable(6) @.str.11, i64 6, i1 false)
  %i.lt = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.lu = getelementptr inbounds nuw i8, ptr %21, i64 22
  store i8 0, ptr %i.lu, align 2, !tbaa !124
  %i.lv = ptrtoint ptr %1 to i64
  %i.lw = getelementptr inbounds nuw i8, ptr %9, i64 1672 ; 4 uses
  store ptr %i.lw, ptr %i.lr, align 8, !tbaa !122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.lw, ptr noundef nonnull align 8 dereferenceable(7) %i.ls, i64 7, i1 false)
  %i.lx = getelementptr inbounds nuw i8, ptr %9, i64 1664
  store i64 6, ptr %i.lx, align 8, !tbaa !123
  store ptr %i.ls, ptr %21, align 8, !tbaa !125
  store i64 0, ptr %i.lt, align 8, !tbaa !123
  store i8 0, ptr %i.ls, align 8, !tbaa !124
  %i.ly = getelementptr inbounds nuw i8, ptr %9, i64 1688 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %9, i64 1712
  store ptr @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS2_8compiler4rust12SingularCord9InMsgImplERNS9_7ContextERKNS2_15FieldDescriptorENS9_12AccessorCaseEE3$_4vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data", ptr %i.lz, align 8, !tbaa !145, !alias.scope !194
  %i.ma = getelementptr inbounds nuw i8, ptr %9, i64 1704
  store i64 %i.lv, ptr %i.ly, align 8, !tbaa !124, !alias.scope !194
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 1696
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !194
  store ptr @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS2_8compiler4rust12SingularCord9InMsgImplERNS9_7ContextERKNS2_15FieldDescriptorENS9_12AccessorCaseEE3$_4vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSX_St18_Manager_operation", ptr %i.ma, align 8, !tbaa !146, !alias.scope !194
  %i.mb = getelementptr inbounds nuw i8, ptr %9, i64 1720
  store i8 1, ptr %i.mb, align 8, !tbaa !127, !alias.scope !194
  %i.mc = getelementptr inbounds nuw i8, ptr %9, i64 1728 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %9, i64 1744 ; 4 uses
  store ptr %i.md, ptr %i.mc, align 8, !tbaa !122
  %i.me = getelementptr inbounds nuw i8, ptr %9, i64 1736
  store i64 0, ptr %i.me, align 8, !tbaa !123
  store i8 0, ptr %i.md, align 8, !tbaa !124
  %i.mf = getelementptr inbounds nuw i8, ptr %9, i64 1760
  store i8 0, ptr %i.mf, align 8, !tbaa !135
  %i.mg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.mc, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.28, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i268 unwind label %bb.aq ; 0 uses

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i253
  %i.mh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mi = load ptr, ptr %i.mc, align 8, !tbaa !125 ; 2 uses
  %i.mj = icmp eq ptr %i.mi, %i.md
  br i1 %i.mj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i255, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i254: ; preds = %bb.aq
  %i.mk = load i64, ptr %i.md, align 8, !tbaa !124
  %i.ml = add i64 %i.mk, 1
  call void @_ZdlPvm(ptr noundef %i.mi, i64 noundef %i.ml) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i255

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i255: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i254
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(73) %i.ly) #15
  %i.mm = load ptr, ptr %i.lr, align 8, !tbaa !125 ; 2 uses
  %i.mn = icmp eq ptr %i.mm, %i.lw
  br i1 %i.mn, label %.body260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i256

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i256: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i255
  %i.mo = load i64, ptr %i.lw, align 8, !tbaa !124
  br label %.body260.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i268: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i253
  %i.mp = getelementptr inbounds nuw i8, ptr %9, i64 1832
  store i8 0, ptr %i.mp, align 8, !tbaa !137
  %i.mq = getelementptr inbounds nuw i8, ptr %9, i64 1840 ; 4 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.mr, ptr noundef nonnull align 1 dereferenceable(11) @.str.12, i64 11, i1 false)
  %i.ms = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.mt = getelementptr inbounds nuw i8, ptr %22, i64 27
  store i8 0, ptr %i.mt, align 1, !tbaa !124
  %i.mu = getelementptr inbounds nuw i8, ptr %9, i64 1856 ; 4 uses
  store ptr %i.mu, ptr %i.mq, align 8, !tbaa !122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.mu, ptr noundef nonnull align 8 dereferenceable(12) %i.mr, i64 12, i1 false)
  %i.mv = getelementptr inbounds nuw i8, ptr %9, i64 1848
  store i64 11, ptr %i.mv, align 8, !tbaa !123
  store ptr %i.mr, ptr %22, align 8, !tbaa !125
  store i64 0, ptr %i.ms, align 8, !tbaa !123
  store i8 0, ptr %i.mr, align 8, !tbaa !124
  %i.mw = getelementptr inbounds nuw i8, ptr %9, i64 1872 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.mx = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %.noexc.i274 unwind label %bb.as, !noalias !195 ; 4 uses

.noexc.i274:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i268
  store ptr %1, ptr %i.mx, align 16, !tbaa !142, !noalias !195
  %.sroa.0.i.i.i266.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  store ptr %2, ptr %.sroa.0.i.i.i266.sroa.4.0..sroa_idx, align 8, !tbaa !148, !noalias !195
  %.sroa.4.0..sroa_idx.i.i.i275 = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i.i275, align 16, !tbaa !121, !noalias !195
  %i.my = getelementptr inbounds nuw i8, ptr %9, i64 1896
  store ptr @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS2_8compiler4rust12SingularCord9InMsgImplERNS9_7ContextERKNS2_15FieldDescriptorENS9_12AccessorCaseEE3$_5vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data", ptr %i.my, align 8, !tbaa !145, !alias.scope !195
  %i.mz = getelementptr inbounds nuw i8, ptr %9, i64 1888
  store ptr %i.mx, ptr %i.mw, align 8, !tbaa !124
  %.sroa.4.0..sroa_idx.i.i276 = getelementptr inbounds nuw i8, ptr %9, i64 1880
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i276, align 8, !tbaa !124
  store ptr @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNKS2_8compiler4rust12SingularCord9InMsgImplERNS9_7ContextERKNS2_15FieldDescriptorENS9_12AccessorCaseEE3$_5vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSX_St18_Manager_operation", ptr %i.mz, align 8, !tbaa !146, !alias.scope !195
  %i.na = getelementptr inbounds nuw i8, ptr %9, i64 1904
  store i8 1, ptr %i.na, align 8, !tbaa !127, !alias.scope !195
  %i.nb = getelementptr inbounds nuw i8, ptr %9, i64 1912 ; 3 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %9, i64 1928 ; 4 uses
  store ptr %i.nc, ptr %i.nb, align 8, !tbaa !122
  %i.nd = getelementptr inbounds nuw i8, ptr %9, i64 1920
  store i64 0, ptr %i.nd, align 8, !tbaa !123
  store i8 0, ptr %i.nc, align 8, !tbaa !124
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf8compiler4rust12SingularCord9InMsgImplERNS2_7ContextERKNS0_15FieldDescriptorENS2_12AccessorCaseE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325
  %i.qo = load ptr, ptr %14, align 8, !tbaa !125  ; 2 uses
  %i.qp = icmp eq ptr %i.qo, %i.cw
  br i1 %i.qp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327
  %i.qq = load i64, ptr %i.cw, align 8, !tbaa !124
  %i.qr = add i64 %i.qq, 1
  call void @_ZdlPvm(ptr noundef %i.qo, i64 noundef %i.qr) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  %i.qs = load ptr, ptr %13, align 8, !tbaa !125  ; 2 uses
  %i.qt = icmp eq ptr %i.qs, %i.cj
  br i1 %i.qt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330
  %i.qu = load i64, ptr %i.cj, align 8, !tbaa !124
  %i.qv = add i64 %i.qu, 1
  call void @_ZdlPvm(ptr noundef %i.qs, i64 noundef %i.qv) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331
  %i.qw = load ptr, ptr %12, align 8, !tbaa !125  ; 2 uses
  %i.qx = icmp eq ptr %i.qw, %i.ax
  br i1 %i.qx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333
  %i.qy = load i64, ptr %i.ax, align 8, !tbaa !124
  %i.qz = add i64 %i.qy, 1
  call void @_ZdlPvm(ptr noundef %i.qw, i64 noundef %i.qz) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334
  %i.ra = load ptr, ptr %11, align 8, !tbaa !125  ; 2 uses
  %i.rb = icmp eq ptr %i.ra, %i.af
  br i1 %i.rb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336
  %i.rc = load i64, ptr %i.af, align 8, !tbaa !124
  %i.rd = add i64 %i.rc, 1
  call void @_ZdlPvm(ptr noundef %i.ra, i64 noundef %i.rd) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  %i.re = load ptr, ptr %10, align 8, !tbaa !125  ; 2 uses
  %i.rf = icmp eq ptr %i.re, %i.p
  br i1 %i.rf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339
  %i.rg = load i64, ptr %i.p, align 8, !tbaa !124
  %i.rh = add i64 %i.rg, 1
  call void @_ZdlPvm(ptr noundef %i.re, i64 noundef %i.rh) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  %i.ri = load ptr, ptr %8, align 8, !tbaa !125   ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.rk = icmp eq ptr %i.ri, %i.rj
  br i1 %i.rk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342
  %i.rl = load i64, ptr %i.rj, align 8, !tbaa !124
  %i.rm = add i64 %i.rl, 1
  call void @_ZdlPvm(ptr noundef %i.ri, i64 noundef %i.rm) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  ret void

bb.aw:                                            ; preds = %bb.e
  %i.rn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384

bb.ax:                                            ; preds = %bb.l
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375

bb.ay:                                            ; preds = %.noexc.i154
  %i.rp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372

bb.az:                                            ; preds = %bb.u
  %i.rq = landingpad { ptr, i32 }
          cleanup
  br label %.body194

bb.ba:                                            ; preds = %bb.af
  %i.rr = landingpad { ptr, i32 }
          cleanup
  br label %.body225

.body300.loopexit:                                ; preds = %bb.av
  %i.rs = landingpad { ptr, i32 }
          cleanup
  %i.rt = getelementptr inbounds nuw i8, ptr %9, i64 2024
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.rt) #15
  %i.ru = getelementptr inbounds nuw i8, ptr %9, i64 1840
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.ru) #15
  %i.rv = getelementptr inbounds nuw i8, ptr %9, i64 1656
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.rv) #15
  %i.rw = getelementptr inbounds nuw i8, ptr %9, i64 1472
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.rw) #15
  %i.rx = getelementptr inbounds nuw i8, ptr %9, i64 1288
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.rx) #15
  %i.ry = getelementptr inbounds nuw i8, ptr %9, i64 1104
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.ry) #15
  %i.rz = getelementptr inbounds nuw i8, ptr %9, i64 920
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.rz) #15
  %i.sa = getelementptr inbounds nuw i8, ptr %9, i64 736
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.sa) #15
  %i.sb = getelementptr inbounds nuw i8, ptr %9, i64 552
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.sb) #15
  %i.sc = getelementptr inbounds nuw i8, ptr %9, i64 368
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.sc) #15
  %i.sd = getelementptr inbounds nuw i8, ptr %9, i64 184
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.sd) #15
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %9) #15
  br label %.body300

.body300:                                         ; preds = %.body.i289, %.body300.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i291
  %.pn = phi { ptr, i32 } [ %eh.lpad-body.i290, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i291 ], [ %i.rs, %.body300.loopexit ], [ %eh.lpad-body.i290, %.body.i289 ] ; 2 uses
  %i.se = phi i1 [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i291 ], [ true, %.body300.loopexit ], [ false, %.body.i289 ] ; 2 uses
  %i.sf = load ptr, ptr %23, align 8, !tbaa !125  ; 2 uses
  %i.sg = icmp eq ptr %i.sf, %i.nr
  br i1 %i.sg, label %.body280, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346: ; preds = %.body300
  %i.sh = load i64, ptr %i.nr, align 8, !tbaa !124
  br label %.body280.sink.split

.body280.sink.split:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i271, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346
  %.sink564 = phi i64 [ %i.sh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346 ], [ %i.no, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i271 ]
  %.sink = phi ptr [ %i.sf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346 ], [ %i.nm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i271 ]
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346 ], [ %eh.lpad-body.i270, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i271 ]
  %.030.ph = phi ptr [ %i.nq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346 ], [ %i.mq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i271 ]
  %.2.ph = phi i1 [ %i.se, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346 ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i271 ]
  %i.si = add i64 %.sink564, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.si) #19
  br label %.body280

.body280:                                         ; preds = %.body280.sink.split, %.body300, %.body.i269
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %.body300 ], [ %eh.lpad-body.i270, %.body.i269 ], [ %.pn.pn.pn.ph, %.body280.sink.split ] ; 2 uses
  %.030 = phi ptr [ %i.nq, %.body300 ], [ %i.mq, %.body.i269 ], [ %.030.ph, %.body280.sink.split ] ; 2 uses
  %.2 = phi i1 [ %i.se, %.body300 ], [ false, %.body.i269 ], [ %.2.ph, %.body280.sink.split ] ; 2 uses
  %i.sj = load ptr, ptr %22, align 8, !tbaa !125  ; 2 uses
  %i.sk = icmp eq ptr %i.sj, %i.mr
  br i1 %i.sk, label %.body260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349: ; preds = %.body280
  %i.sl = load i64, ptr %i.mr, align 8, !tbaa !124
  br label %.body260.sink.split

.body260.sink.split:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i256, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349
  %.sink567 = phi i64 [ %i.sl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349 ], [ %i.mo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i256 ]
  %.sink565 = phi ptr [ %i.sj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349 ], [ %i.mm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i256 ]
  %.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349 ], [ %i.mh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i256 ]
  %.232.ph = phi ptr [ %.030, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349 ], [ %i.lr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i256 ]
  %.4.ph = phi i1 [ %.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349 ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i256 ]
  %i.sm = add i64 %.sink567, 1
  call void @_ZdlPvm(ptr noundef %.sink565, i64 noundef %i.sm) #19
  br label %.body260

.body260:                                         ; preds = %.body260.sink.split, %.body280, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i255
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body280 ], [ %i.mh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i255 ], [ %.pn.pn.pn.pn.pn.ph, %.body260.sink.split ] ; 2 uses
  %.232 = phi ptr [ %.030, %.body280 ], [ %i.lr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i255 ], [ %.232.ph, %.body260.sink.split ] ; 2 uses
  %.4 = phi i1 [ %.2, %.body280 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i255 ], [ %.4.ph, %.body260.sink.split ] ; 2 uses
  %i.sn = load ptr, ptr %21, align 8, !tbaa !125  ; 2 uses
  %i.so = icmp eq ptr %i.sn, %i.ls
  br i1 %i.so, label %.body246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352: ; preds = %.body260
  %i.sp = load i64, ptr %i.ls, align 8, !tbaa !124
  br label %.body246.sink.split

.body246.sink.split:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i237, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352
  %.sink570 = phi i64 [ %i.sp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352 ], [ %i.lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i237 ]
  %.sink568 = phi ptr [ %i.sn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352 ], [ %i.ln, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i237 ]
  %.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352 ], [ %eh.lpad-body.i236, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i237 ]
  %.434.ph = phi ptr [ %.232, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352 ], [ %i.kr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i237 ]
  %.6.ph = phi i1 [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352 ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i237 ]
  %i.sq = add i64 %.sink570, 1
  call void @_ZdlPvm(ptr noundef %.sink568, i64 noundef %i.sq) #19
  br label %.body246

.body246:                                         ; preds = %.body246.sink.split, %.body260, %.body.i235
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %.body260 ], [ %eh.lpad-body.i236, %.body.i235 ], [ %.pn.pn.pn.pn.pn.pn.pn.ph, %.body246.sink.split ] ; 2 uses
  %.434 = phi ptr [ %.232, %.body260 ], [ %i.kr, %.body.i235 ], [ %.434.ph, %.body246.sink.split ] ; 2 uses
  %.6 = phi i1 [ %.4, %.body260 ], [ false, %.body.i235 ], [ %.6.ph, %.body246.sink.split ] ; 2 uses
  %i.sr = load ptr, ptr %20, align 8, !tbaa !125  ; 2 uses
  %i.ss = icmp eq ptr %i.sr, %i.ks
  br i1 %i.ss, label %.body225, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355.a: ; preds = %.body246
  %26 = load i64, ptr %i.ks, align 8, !tbaa !124
  %i.st = add i64 %26, 1
  call void @_ZdlPvm(ptr noundef %i.sr, i64 noundef %i.st) #19
  br label %.body225

.body225:                                         ; preds = %.body246, %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355.a, %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i222
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.kf, %bb.an ], [ %i.rr, %bb.ba ], [ %i.kf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i222 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355.a ], [ %.pn.pn.pn.pn.pn.pn.pn, %.body246 ] ; 2 uses
  %.636 = phi ptr [ %i.iu, %bb.an ], [ %i.iu, %bb.ba ], [ %i.iu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i222 ], [ %.434, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355.a ], [ %.434, %.body246 ] ; 2 uses
  %.8 = phi i1 [ false, %bb.an ], [ false, %bb.ba ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i222 ], [ %.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355.a ], [ %.6, %.body246 ] ; 2 uses
  %i.su = load ptr, ptr %19, align 8, !tbaa !125  ; 2 uses
  %i.sv = icmp eq ptr %i.su, %i.iv
  br i1 %i.sv, label %.body214, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358: ; preds = %.body225
  %i.sw = load i64, ptr %i.iv, align 8, !tbaa !124
  br label %.body214.sink.split

.body214.sink.split:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i205, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358
  %.sink573.a = phi i64 [ %i.sw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358 ], [ %i.is, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i205 ]
  %.sink571.a = phi ptr [ %i.su, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358 ], [ %i.iq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i205 ]
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358 ], [ %eh.lpad-body.i204, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i205 ]
  %.838.ph = phi ptr [ %.636, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358 ], [ %i.hu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i205 ]
  %.10.ph = phi i1 [ %.8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358 ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i205 ]
  %i.sx = add i64 %.sink573.a, 1
  call void @_ZdlPvm(ptr noundef %.sink571.a, i64 noundef %i.sx) #19
  br label %.body214

.body214:                                         ; preds = %.body214.sink.split, %.body225, %.body.i203
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body225 ], [ %eh.lpad-body.i204, %.body.i203 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph, %.body214.sink.split ] ; 2 uses
  %.838 = phi ptr [ %.636, %.body225 ], [ %i.hu, %.body.i203 ], [ %.838.ph, %.body214.sink.split ] ; 2 uses
  %.10 = phi i1 [ %.8, %.body225 ], [ false, %.body.i203 ], [ %.10.ph, %.body214.sink.split ] ; 2 uses
  %i.sy = load ptr, ptr %18, align 8, !tbaa !125  ; 2 uses
  %i.sz = icmp eq ptr %i.sy, %i.hv
  br i1 %i.sz, label %.body194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361.a: ; preds = %.body214
  %27 = load i64, ptr %i.hv, align 8, !tbaa !124
  %i.ta = add i64 %27, 1
  call void @_ZdlPvm(ptr noundef %i.sy, i64 noundef %i.ta) #19
  br label %.body194

.body194:                                         ; preds = %.body214, %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361.a, %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i191
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hi, %bb.ac ], [ %i.rq, %bb.az ], [ %i.hi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i191 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361.a ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body214 ] ; 2 uses
  %.1040 = phi ptr [ %i.fx, %bb.ac ], [ %i.fx, %bb.az ], [ %i.fx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i191 ], [ %.838, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361.a ], [ %.838, %.body214 ] ; 2 uses
  %.12 = phi i1 [ false, %bb.ac ], [ false, %bb.az ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i191 ], [ %.10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361.a ], [ %.10, %.body214 ] ; 2 uses
  %i.tb = load ptr, ptr %17, align 8, !tbaa !125  ; 2 uses
  %i.tc = icmp eq ptr %i.tb, %i.fy
  br i1 %i.tc, label %.body183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364: ; preds = %.body194
  %i.td = load i64, ptr %i.fy, align 8, !tbaa !124
  br label %.body183.sink.split

.body183.sink.split:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i174, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364
  %.sink576 = phi i64 [ %i.td, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364 ], [ %i.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i174 ]
  %.sink574 = phi ptr [ %i.tb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364 ], [ %i.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i174 ]
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364 ], [ %eh.lpad-body.i173, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i174 ]
  %.1242.ph = phi ptr [ %.1040, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364 ], [ %i.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i174 ]
  %.14.ph = phi i1 [ %.12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364 ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i174 ]
  %i.te = add i64 %.sink576, 1
  call void @_ZdlPvm(ptr noundef %.sink574, i64 noundef %i.te) #19
  br label %.body183

.body183:                                         ; preds = %.body183.sink.split, %.body194, %.body.i172
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body194 ], [ %eh.lpad-body.i173, %.body.i172 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph, %.body183.sink.split ] ; 2 uses
  %.1242 = phi ptr [ %.1040, %.body194 ], [ %i.ex, %.body.i172 ], [ %.1242.ph, %.body183.sink.split ] ; 2 uses
  %.14 = phi i1 [ %.12, %.body194 ], [ false, %.body.i172 ], [ %.14.ph, %.body183.sink.split ] ; 2 uses
  %i.tf = load ptr, ptr %16, align 8, !tbaa !125  ; 2 uses
  %i.tg = icmp eq ptr %i.tf, %i.ey
  br i1 %i.tg, label %.body163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367: ; preds = %.body183
  %i.th = load i64, ptr %i.ey, align 8, !tbaa !124
  br label %.body163.sink.split

.body163.sink.split:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i159, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367
  %.sink579.a = phi i64 [ %i.th, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367 ], [ %i.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i159 ]
  %.sink577.a = phi ptr [ %i.tf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367 ], [ %i.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i159 ]
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367 ], [ %eh.lpad-body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i159 ]
  %.1444.ph = phi ptr [ %.1242, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367 ], [ %i.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i159 ]
  %.16.ph = phi i1 [ %.14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367 ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i159 ]
  %i.ti = add i64 %.sink579.a, 1
  call void @_ZdlPvm(ptr noundef %.sink577.a, i64 noundef %i.ti) #19
  br label %.body163

.body163:                                         ; preds = %.body163.sink.split, %.body183, %.body.i
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body183 ], [ %eh.lpad-body.i, %.body.i ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph, %.body163.sink.split ] ; 2 uses
  %.1444 = phi ptr [ %.1242, %.body183 ], [ %i.dn, %.body.i ], [ %.1444.ph, %.body163.sink.split ] ; 2 uses
  %.16 = phi i1 [ %.14, %.body183 ], [ false, %.body.i ], [ %.16.ph, %.body163.sink.split ] ; 2 uses
  %i.tj = load ptr, ptr %15, align 8, !tbaa !125  ; 2 uses
  %i.tk = icmp eq ptr %i.tj, %i.do
  br i1 %i.tk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370: ; preds = %.body163
  %i.tl = load i64, ptr %i.do, align 8, !tbaa !124
  %i.tm = add i64 %i.tl, 1
  call void @_ZdlPvm(ptr noundef %i.tj, i64 noundef %i.tm) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372: ; preds = %.body163, %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370 ], [ %i.rp, %bb.ay ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body163 ] ; 2 uses
  %.1646 = phi ptr [ %.1444, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370 ], [ %i.dn, %bb.ay ], [ %.1444, %.body163 ] ; 2 uses
  %.18 = phi i1 [ %.16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370 ], [ false, %bb.ay ], [ %.16, %.body163 ] ; 2 uses
  %i.tn = load ptr, ptr %14, align 8, !tbaa !125  ; 2 uses
  %i.to = icmp eq ptr %i.tn, %i.cw
  br i1 %i.to, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372
  %i.tp = load i64, ptr %i.cw, align 8, !tbaa !124
  %i.tq = add i64 %i.tp, 1
  call void @_ZdlPvm(ptr noundef %i.tn, i64 noundef %i.tq) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373, %bb.ax
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ro, %bb.ax ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372 ] ; 2 uses
  %.1747 = phi ptr [ %i.ci, %bb.ax ], [ %.1646, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373 ], [ %.1646, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372 ] ; 2 uses
  %.19 = phi i1 [ false, %bb.ax ], [ %.18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373 ], [ %.18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  %i.tr = load ptr, ptr %13, align 8, !tbaa !125  ; 2 uses
  %i.ts = icmp eq ptr %i.tr, %i.cj
  br i1 %i.ts, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375
  %i.tt = load i64, ptr %i.cj, align 8, !tbaa !124
  br label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376
  %.sink582 = phi i64 [ %i.tt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376 ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %.sink580 = phi ptr [ %i.tr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376 ], [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376 ], [ %i.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %.1949.ph = phi ptr [ %.1747, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376 ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %.21.ph = phi i1 [ %.19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376 ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.tu = add i64 %.sink582, 1
  call void @_ZdlPvm(ptr noundef %.sink580, i64 noundef %i.tu) #19
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375, %bb.k
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375 ], [ %i.bw, %bb.k ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph, %.body.sink.split ] ; 2 uses
  %.1949 = phi ptr [ %.1747, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375 ], [ %i.aw, %bb.k ], [ %.1949.ph, %.body.sink.split ] ; 2 uses
  %.21 = phi i1 [ %.19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375 ], [ false, %bb.k ], [ %.21.ph, %.body.sink.split ] ; 2 uses
  %i.tv = load ptr, ptr %12, align 8, !tbaa !125  ; 2 uses
  %i.tw = icmp eq ptr %i.tv, %i.ax
  br i1 %i.tw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379: ; preds = %.body
  %i.tx = load i64, ptr %i.ax, align 8, !tbaa !124
  %i.ty = add i64 %i.tx, 1
  call void @_ZdlPvm(ptr noundef %i.tv, i64 noundef %i.ty) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379
  %i.tz = load ptr, ptr %11, align 8, !tbaa !125  ; 2 uses
  %i.ua = icmp eq ptr %i.tz, %i.af
  br i1 %i.ua, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381
  %i.ub = load i64, ptr %i.af, align 8, !tbaa !124
  %i.uc = add i64 %i.ub, 1
  call void @_ZdlPvm(ptr noundef %i.tz, i64 noundef %i.uc) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382, %bb.aw
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.rn, %bb.aw ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381 ]
  %.2252 = phi ptr [ %9, %bb.aw ], [ %.1949, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382 ], [ %.1949, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381 ] ; 2 uses
  %.24 = phi i1 [ false, %bb.aw ], [ %.21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382 ], [ %.21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  %i.ud = load ptr, ptr %10, align 8, !tbaa !125  ; 2 uses
  %i.ue = icmp eq ptr %i.ud, %i.p
  br i1 %i.ue, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384
  %i.uf = load i64, ptr %i.p, align 8, !tbaa !124
  %i.ug = add i64 %i.uf, 1
  call void @_ZdlPvm(ptr noundef %i.ud, i64 noundef %i.ug) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385
  %i.uh = icmp eq ptr %9, %.2252
  %or.cond = select i1 %.24, i1 true, i1 %i.uh
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387, %.preheader
  %i.ui = phi ptr [ %i.uj, %.preheader ], [ %.2252, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387 ]
  %i.uj = getelementptr inbounds i8, ptr %i.ui, i64 -184 ; 3 uses
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.uj) #15
  %i.uk = icmp eq ptr %i.uj, %9
  br i1 %i.uk, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  %i.ul = load ptr, ptr %8, align 8, !tbaa !125   ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.un = icmp eq ptr %i.ul, %i.um
  br i1 %i.un, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388: ; preds = %.loopexit
  %i.uo = load i64, ptr %i.um, align 8, !tbaa !124
  %i.up = add i64 %i.uo, 1
  call void @_ZdlPvm(ptr noundef %i.ul, i64 noundef %i.up) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor12has_presenceEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #4

declare void @_ZN6google8protobuf8compiler4rust30WithPresenceAccessorsInMsgImplERNS2_7ContextERKNS0_15FieldDescriptorENS2_12AccessorCaseE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(88), i32 noundef) local_unnamed_addr #4

declare void @_ZN6google8protobuf8compiler4rust31FieldNameWithCollisionAvoidanceB5cxx11ERKNS0_15FieldDescriptorE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #4

declare void @_ZN6google8protobuf8compiler4rust10RsSafeNameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr) local_unnamed_addr #4

declare void @_ZN6google8protobuf8compiler4rust10RsTypePathB5cxx11ERNS2_7ContextERKNS0_15FieldDescriptorE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #4

declare { i64, ptr } @_ZN6google8protobuf8compiler4rust12ViewLifetimeENS2_12AccessorCaseE(i32 noundef) local_unnamed_addr #4

declare { i64, ptr } @_ZN6google8protobuf8compiler4rust12ViewReceiverENS2_12AccessorCaseE(i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !guid !197 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !137, !range !151, !noundef !152
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
end_hunk_1
