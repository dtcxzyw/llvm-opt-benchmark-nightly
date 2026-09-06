Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/pass?download=true
inline.NumInlined: 1291
inline.NumDeleted: 682
begin_hunk_0_@_ZN7jsonnet8internal9ClonePass4exprERPNS0_3ASTE:bb.a
  %i.if = getelementptr inbounds nuw i8, ptr %i.hz, i64 112 ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !105
  %i.ih = add i64 %i.ig, 1
  store i64 %i.ih, ptr %i.if, align 8, !tbaa !105
  br label %bb.bg

bb.au:                                            ; preds = %bb.a
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !178, !nonnull !58, !align !179 ; 2 uses
  %i.ik = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #22 ; 6 uses
  invoke void @_ZN7jsonnet8internal3ASTC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(160) %i.ik, ptr noundef nonnull align 8 dereferenceable(160) %i.a)
          to label %_ZN7jsonnet8internal9Allocator5cloneINS0_25ObjectComprehensionSimpleEEEPT_S5_.exit unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.il = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ik, i64 noundef 160) #23
  br label %common.resume

_ZN7jsonnet8internal9Allocator5cloneINS0_25ObjectComprehensionSimpleEEEPT_S5_.exit: ; preds = %bb.au
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal25ObjectComprehensionSimpleE, i64 16), ptr %i.ik, align 8, !tbaa !28
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 128
  %i.in = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.im, ptr noundef nonnull align 8 dereferenceable(32) %i.in, i64 32, i1 false)
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 96
  %i.ip = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store ptr %i.ik, ptr %i.iq, align 8, !tbaa !62
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ip, ptr noundef nonnull align 8 dereferenceable(24) %i.io) #21
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ij, i64 112 ; 2 uses
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !105
  %i.it = add i64 %i.is, 1
  store i64 %i.it, ptr %i.ir, align 8, !tbaa !105
  br label %bb.bg

bb.aw:                                            ; preds = %bb.a
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !178, !nonnull !58, !align !179
  %i.iw = tail call noundef ptr @_ZN7jsonnet8internal9Allocator5cloneINS0_6ParensEEEPT_S5_(ptr noundef nonnull align 8 dereferenceable(120) %i.iv, ptr noundef nonnull %i.a)
  br label %bb.bg

bb.ax:                                            ; preds = %bb.a
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !178, !nonnull !58, !align !179 ; 2 uses
  %i.iz = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #22 ; 5 uses
  invoke void @_ZN7jsonnet8internal3ASTC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(128) %i.iz, ptr noundef nonnull align 8 dereferenceable(128) %i.a)
          to label %_ZN7jsonnet8internal9Allocator5cloneINS0_4SelfEEEPT_S5_.exit unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ja = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.iz, i64 noundef 128) #23
  br label %common.resume

_ZN7jsonnet8internal9Allocator5cloneINS0_4SelfEEEPT_S5_.exit: ; preds = %bb.ax
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal4SelfE, i64 16), ptr %i.iz, align 8, !tbaa !28
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 96
  %i.jc = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  store ptr %i.iz, ptr %i.jd, align 8, !tbaa !62
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.jc, ptr noundef nonnull align 8 dereferenceable(24) %i.jb) #21
  %i.je = getelementptr inbounds nuw i8, ptr %i.iy, i64 112 ; 2 uses
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !105
  %i.jg = add i64 %i.jf, 1
  store i64 %i.jg, ptr %i.je, align 8, !tbaa !105
  br label %bb.bg

bb.az:                                            ; preds = %bb.a
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !178, !nonnull !58, !align !179 ; 2 uses
  %i.jj = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #22 ; 4 uses
  invoke void @_ZN7jsonnet8internal10SuperIndexC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(192) %i.jj, ptr noundef nonnull align 8 dereferenceable(192) %i.a)
          to label %_ZN7jsonnet8internal9Allocator5cloneINS0_10SuperIndexEEEPT_S5_.exit unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jk = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.jj, i64 noundef 192) #23
  br label %common.resume

_ZN7jsonnet8internal9Allocator5cloneINS0_10SuperIndexEEEPT_S5_.exit: ; preds = %bb.az
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 96
  %i.jm = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  store ptr %i.jj, ptr %i.jn, align 8, !tbaa !62
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.jm, ptr noundef nonnull align 8 dereferenceable(24) %i.jl) #21
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ji, i64 112 ; 2 uses
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !105
  %i.jq = add i64 %i.jp, 1
  store i64 %i.jq, ptr %i.jo, align 8, !tbaa !105
  br label %bb.bg

bb.bb:                                            ; preds = %bb.a
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !178, !nonnull !58, !align !179 ; 2 uses
  %i.jt = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #22 ; 6 uses
  invoke void @_ZN7jsonnet8internal3ASTC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(144) %i.jt, ptr noundef nonnull align 8 dereferenceable(144) %i.a)
          to label %_ZN7jsonnet8internal9Allocator5cloneINS0_5UnaryEEEPT_S5_.exit unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ju = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.jt, i64 noundef 144) #23
  br label %common.resume

_ZN7jsonnet8internal9Allocator5cloneINS0_5UnaryEEEPT_S5_.exit: ; preds = %bb.bb
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal5UnaryE, i64 16), ptr %i.jt, align 8, !tbaa !28
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 128
  %i.jw = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jv, ptr noundef nonnull align 8 dereferenceable(16) %i.jw, i64 16, i1 false)
  %i.jx = getelementptr inbounds nuw i8, ptr %i.js, i64 96
  %i.jy = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  store ptr %i.jt, ptr %i.jz, align 8, !tbaa !62
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.jy, ptr noundef nonnull align 8 dereferenceable(24) %i.jx) #21
  %i.ka = getelementptr inbounds nuw i8, ptr %i.js, i64 112 ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !105
  %i.kc = add i64 %i.kb, 1
  store i64 %i.kc, ptr %i.ka, align 8, !tbaa !105
  br label %bb.bg

bb.bd:                                            ; preds = %bb.a
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !178, !nonnull !58, !align !179 ; 2 uses
  %i.kf = tail call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #22 ; 6 uses
  invoke void @_ZN7jsonnet8internal3ASTC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(136) %i.kf, ptr noundef nonnull align 8 dereferenceable(136) %i.a)
          to label %_ZN7jsonnet8internal9Allocator5cloneINS0_3VarEEEPT_S5_.exit unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kg = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kf, i64 noundef 136) #23
  br label %common.resume

_ZN7jsonnet8internal9Allocator5cloneINS0_3VarEEEPT_S5_.exit: ; preds = %bb.bd
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal3VarE, i64 16), ptr %i.kf, align 8, !tbaa !28
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 128
  %i.ki = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !188
  store ptr %i.kj, ptr %i.kh, align 8, !tbaa !188
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ke, i64 96
  %i.kl = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  store ptr %i.kf, ptr %i.km, align 8, !tbaa !62
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.kl, ptr noundef nonnull align 8 dereferenceable(24) %i.kk) #21
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ke, i64 112 ; 2 uses
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !105
  %i.kp = add i64 %i.ko, 1
  store i64 %i.kp, ptr %i.kn, align 8, !tbaa !105
  br label %bb.bg

bb.bf:                                            ; preds = %bb.a
  %i.kq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str)
  %i.kr = load ptr, ptr %1, align 8, !tbaa !62
  %i.ks = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPKv(ptr noundef nonnull align 8 dereferenceable(8) %i.kq, ptr noundef %i.kr)
  %i.kt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.ks), !inline_history !0 ; 0 uses
  tail call void @abort() #20
  unreachable

bb.bg:                                            ; preds = %_ZN7jsonnet8internal9Allocator5cloneINS0_3VarEEEPT_S5_.exit, %_ZN7jsonnet8internal9Allocator5cloneINS0_5UnaryEEEPT_S5_.exit, %_ZN7jsonnet8internal9Allocator5cloneINS0_10SuperIndexEEEPT_S5_.exit, %_ZN7jsonnet8internal9Allocator5cloneINS0_4SelfEEEPT_S5_.exit, %bb.aw, %_ZN7jsonnet8internal9Allocator5cloneINS0_25ObjectComprehensionSimpleEEEPT_S5_.exit, %_ZN7jsonnet8internal9Allocator5cloneINS0_19ObjectComprehensionEEEPT_S5_.exit, %_ZN7jsonnet8internal9Allocator5cloneINS0_6ObjectEEEPT_S5_.exit, %bb.ap, %_ZN7jsonnet8internal9Allocator5cloneINS0_13LiteralStringEEEPT_S5_.exit, %bb.am, %_ZN7jsonnet8internal9Allocator5cloneINS0_11LiteralNullEEEPT_S5_.exit, %_ZN7jsonnet8internal9Allocator5cloneINS0_14LiteralBooleanEEEPT_S5_.exit, %_ZN7jsonnet8internal9Allocator5cloneINS0_7InSuperEEEPT_S5_.exit, %_ZN7jsonnet8internal9Allocator5cloneINS0_5IndexEEEPT_S5_.exit, %_ZN7jsonnet8internal9Allocator5cloneINS0_9ImportbinEEEPT_S5_.exit, %_ZN7jsonnet8internal9Allocator5cloneINS0_9ImportstrEEEPT_S5_.exit, %_ZN7jsonnet8internal9Allocator5cloneINS0_6ImportEEEPT_S5_.exit, %_ZN7jsonnet8internal9Allocator5cloneINS0_8FunctionEEEPT_S5_.exit, %_ZN7jsonnet8internal9Allocator5cloneINS0_5ErrorEEEPT_S5_.exit, %_ZN7jsonnet8internal9Allocator5cloneINS0_6DollarEEEPT_S5_.exit, %_ZN7jsonnet8internal9Allocator5cloneINS0_15DesugaredObjectEEEPT_S5_.exit, %_ZN7jsonnet8internal9Allocator5cloneINS0_11ConditionalEEEPT_S5_.exit, %_ZN7jsonnet8internal9Allocator5cloneINS0_15BuiltinFunctionEEEPT_S5_.exit, %bb.l, %_ZN7jsonnet8internal9Allocator5cloneINS0_6AssertEEEPT_S5_.exit, %_ZN7jsonnet8internal9Allocator5cloneINS0_18ArrayComprehensionEEEPT_S5_.exit, %_ZN7jsonnet8internal9Allocator5cloneINS0_5ArrayEEEPT_S5_.exit, %_ZN7jsonnet8internal9Allocator5cloneINS0_10ApplyBraceEEEPT_S5_.exit, %_ZN7jsonnet8internal9Allocator5cloneINS0_5ApplyEEEPT_S5_.exit
  %.sink = phi ptr [ %i.kf, %_ZN7jsonnet8internal9Allocator5cloneINS0_3VarEEEPT_S5_.exit ], [ %i.jt, %_ZN7jsonnet8internal9Allocator5cloneINS0_5UnaryEEEPT_S5_.exit ], [ %i.jj, %_ZN7jsonnet8internal9Allocator5cloneINS0_10SuperIndexEEEPT_S5_.exit ], [ %i.iz, %_ZN7jsonnet8internal9Allocator5cloneINS0_4SelfEEEPT_S5_.exit ], [ %i.iw, %bb.aw ], [ %i.ik, %_ZN7jsonnet8internal9Allocator5cloneINS0_25ObjectComprehensionSimpleEEEPT_S5_.exit ], [ %i.ia, %_ZN7jsonnet8internal9Allocator5cloneINS0_19ObjectComprehensionEEEPT_S5_.exit ], [ %i.hq, %_ZN7jsonnet8internal9Allocator5cloneINS0_6ObjectEEEPT_S5_.exit ], [ %i.hn, %bb.ap ], [ %i.hd, %_ZN7jsonnet8internal9Allocator5cloneINS0_13LiteralStringEEEPT_S5_.exit ], [ %i.ha, %bb.am ], [ %i.gq, %_ZN7jsonnet8internal9Allocator5cloneINS0_11LiteralNullEEEPT_S5_.exit ], [ %i.gd, %_ZN7jsonnet8internal9Allocator5cloneINS0_14LiteralBooleanEEEPT_S5_.exit ], [ %i.ft, %_ZN7jsonnet8internal9Allocator5cloneINS0_7InSuperEEEPT_S5_.exit ], [ %i.fj, %_ZN7jsonnet8internal9Allocator5cloneINS0_5IndexEEEPT_S5_.exit ], [ %i.ew, %_ZN7jsonnet8internal9Allocator5cloneINS0_9ImportbinEEEPT_S5_.exit ], [ %i.ej, %_ZN7jsonnet8internal9Allocator5cloneINS0_9ImportstrEEEPT_S5_.exit ], [ %i.dw, %_ZN7jsonnet8internal9Allocator5cloneINS0_6ImportEEEPT_S5_.exit ], [ %i.dm, %_ZN7jsonnet8internal9Allocator5cloneINS0_8FunctionEEEPT_S5_.exit ], [ %i.cz, %_ZN7jsonnet8internal9Allocator5cloneINS0_5ErrorEEEPT_S5_.exit ], [ %i.cp, %_ZN7jsonnet8internal9Allocator5cloneINS0_6DollarEEEPT_S5_.exit ], [ %i.cf, %_ZN7jsonnet8internal9Allocator5cloneINS0_15DesugaredObjectEEEPT_S5_.exit ], [ %i.bv, %_ZN7jsonnet8internal9Allocator5cloneINS0_11ConditionalEEEPT_S5_.exit ], [ %i.bi, %_ZN7jsonnet8internal9Allocator5cloneINS0_15BuiltinFunctionEEEPT_S5_.exit ], [ %i.bf, %bb.l ], [ %i.av, %_ZN7jsonnet8internal9Allocator5cloneINS0_6AssertEEEPT_S5_.exit ], [ %i.al, %_ZN7jsonnet8internal9Allocator5cloneINS0_18ArrayComprehensionEEEPT_S5_.exit ], [ %i.ab, %_ZN7jsonnet8internal9Allocator5cloneINS0_5ArrayEEEPT_S5_.exit ], [ %i.p, %_ZN7jsonnet8internal9Allocator5cloneINS0_10ApplyBraceEEEPT_S5_.exit ], [ %i.f, %_ZN7jsonnet8internal9Allocator5cloneINS0_5ApplyEEEPT_S5_.exit ] ; 2 uses
  store ptr %.sink, ptr %1, align 8, !tbaa !62
  %i.ku = getelementptr inbounds nuw i8, ptr %.sink, i64 80
  %i.kv = load ptr, ptr %0, align 8, !tbaa !28
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.kx = load ptr, ptr %i.kw, align 8
  tail call void %i.kx(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ku), !inline_history !189
  %i.ky = load ptr, ptr %0, align 8, !tbaa !28
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 304
  %i.la = load ptr, ptr %i.kz, align 8
  tail call void %i.la(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !189
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7jsonnet8internal9Allocator5cloneINS0_6BinaryEEEPT_S5_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #22 ; 11 uses
  invoke void @_ZN7jsonnet8internal3ASTC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(176) %i.a, ptr noundef nonnull align 8 dereferenceable(176) %1)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal6BinaryE, i64 16), ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !191
  store ptr %i.d, ptr %i.b, align 8, !tbaa !191
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !107  ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !108  ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i.i, label %.noexc6.i, label %bb.b

bb.b:                                             ; preds = %.noexc
  %2 = sdiv exact i64 %i.l, 40
  %i.m = icmp ugt i64 %2, 230584300921369395
  br i1 %i.m, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i, !prof !109

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #22
          to label %.noexc6.i unwind label %bb.e

.noexc6.i:                                        ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc
  %i.o = phi ptr [ null, %.noexc ], [ %i.n, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.o, ptr %i.e, align 8, !tbaa !108
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !107
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !110
  %i.s = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.i, ptr %i.h, ptr noundef %i.o)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %.noexc6.i
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !108  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %.body.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !110
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #23
  br label %.body.i

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.d, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.z, %bb.e ], [ %i.t, %bb.d ], [ %i.t, %bb.c ]
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(176) %i.a) #21
  br label %.body

bb.f:                                             ; preds = %.noexc6.i
  store ptr %i.s, ptr %i.p, align 8, !tbaa !107
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ad = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.a, ptr %i.ae, align 8, !tbaa !62
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ac) #21
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !105
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !105
  ret ptr %i.a

bb.g:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.g ], [ %eh.lpad-body.i, %.body.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 176) #23
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7jsonnet8internal9Allocator5cloneINS0_13LiteralNumberEEEPT_S5_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #22 ; 10 uses
  invoke void @_ZN7jsonnet8internal3ASTC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef nonnull align 8 dereferenceable(168) %1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal13LiteralNumberE, i64 16), ptr %i.b, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.e = load double, ptr %i.d, align 8, !tbaa !194
  store double %i.e, ptr %i.c, align 8, !tbaa !194
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !111
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !112  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.k = load i64, ptr %i.j, align 8, !tbaa !113  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.k, ptr %i.a, align 8, !tbaa !114
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %bb.d   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.m, ptr %i.f, align 8, !tbaa !112
  %i.n = load i64, ptr %i.a, align 8, !tbaa !114
  store i64 %i.n, ptr %i.h, align 8, !tbaa !115
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %.noexc
  %i.o = phi ptr [ %i.m, %.noexc.i ], [ %i.h, %.noexc ] ; 2 uses
  switch i64 %i.k, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.e
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !115
  store i8 %i.p, ptr %i.o, align 1, !tbaa !115
  br label %bb.e

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(168) %i.b) #21
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !114  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store i64 %i.r, ptr %i.s, align 8, !tbaa !113
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !112
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.w = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.b, ptr %i.x, align 8, !tbaa !62
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.v) #21
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !105
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !105
  ret ptr %i.b

bb.f:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ab, %bb.f ], [ %i.q, %bb.d ]
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 168) #23
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7jsonnet8internal9Allocator5cloneINS0_5LocalEEEPT_S5_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #22 ; 8 uses
  invoke void @_ZN7jsonnet8internal3ASTC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef nonnull align 8 dereferenceable(160) %1)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal5LocalE, i64 16), ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke void @_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(160) %i.a) #21
  br label %.body

bb.c:                                             ; preds = %.noexc
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !199
  store ptr %i.g, ptr %i.e, align 8, !tbaa !199
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.a, ptr %i.j, align 8, !tbaa !62
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h) #21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !105
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !105
  ret ptr %i.a

bb.d:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.d, %bb.b ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 160) #23
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7jsonnet8internal9Allocator5cloneINS0_6ParensEEEPT_S5_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #22 ; 10 uses
  invoke void @_ZN7jsonnet8internal3ASTC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef nonnull align 8 dereferenceable(160) %1)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal6ParensE, i64 16), ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !201
  store ptr %i.d, ptr %i.b, align 8, !tbaa !201
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !107  ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !108  ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i.i, label %.noexc5.i, label %bb.b

bb.b:                                             ; preds = %.noexc
  %2 = sdiv exact i64 %i.l, 40
  %i.m = icmp ugt i64 %2, 230584300921369395
  br i1 %i.m, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i, !prof !109

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #22
          to label %.noexc5.i unwind label %bb.e

.noexc5.i:                                        ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc
  %i.o = phi ptr [ null, %.noexc ], [ %i.n, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.o, ptr %i.e, align 8, !tbaa !108
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !107
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !110
  %i.s = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.i, ptr %i.h, ptr noundef %i.o)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %.noexc5.i
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !108  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %.body.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !110
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #23
  br label %.body.i

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.d, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.z, %bb.e ], [ %i.t, %bb.d ], [ %i.t, %bb.c ]
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(160) %i.a) #21
  br label %.body

bb.f:                                             ; preds = %.noexc5.i
  store ptr %i.s, ptr %i.p, align 8, !tbaa !107
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ab = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.a, ptr %i.ac, align 8, !tbaa !62
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.aa) #21
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !105
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !105
  ret ptr %i.a

bb.g:                                             ; preds = %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.g ], [ %eh.lpad-body.i, %.body.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 160) #23
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN7jsonnet8internal9clone_astERNS0_9AllocatorEPNS0_3ASTE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"class.jsonnet::internal::ClonePass", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %1, ptr %i.a, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !202
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTVN7jsonnet8internal9ClonePassE, i64 16), ptr %2, align 8, !tbaa !28
  call void @_ZN7jsonnet8internal9ClonePass4exprERPNS0_3ASTE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal12CompilerPass13fodderElementERNS0_13FodderElementE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_15BuiltinFunctionE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_19BuiltinFunctionBodyE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_6DollarE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_14LiteralBooleanE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_13LiteralNumberE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_13LiteralStringE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_11LiteralNullE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_4SelfE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_3VarE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIN7jsonnet8internal8BinaryOpEiSt4lessIS2_ESaISt4pairIKS2_iEEEixEOS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  %.pre = load i32, ptr %1, align 4, !tbaa !117   ; 3 uses
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load i32, ptr %i.d, align 4, !tbaa !117
  %i.f = icmp slt i32 %i.e, %.pre                 ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !118 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIN7jsonnet8internal8BinaryOpEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !203

_ZNSt3mapIN7jsonnet8internal8BinaryOpEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIN7jsonnet8internal8BinaryOpEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load i32, ptr %i.h, align 4, !tbaa !117
  %i.j = icmp slt i32 %.pre, %i.i
  br i1 %i.j, label %.critedge, label %_ZNSt8_Rb_treeIN7jsonnet8internal8BinaryOpESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS2_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIN7jsonnet8internal8BinaryOpEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit, %bb.b
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.b ], [ %.19.i.i.i, %_ZNSt3mapIN7jsonnet8internal8BinaryOpEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit ], [ %i.c, %bb.a ]
  %i.k = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  store i32 %.pre, ptr %i.l, align 4, !tbaa !205
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  store i32 0, ptr %i.m, align 4, !tbaa !206
  %i.n = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN7jsonnet8internal8BinaryOpESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
          to label %bb.c unwind label %_ZNSt8_Rb_treeIN7jsonnet8internal8BinaryOpESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.c:                                             ; preds = %.critedge
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.f, label %bb.d

end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal8BinaryOpEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS7_:bb.a
bb.m:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45
  %i.bu = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal8BinaryOpEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.bv = extractvalue { ptr, ptr } %i.bu, 0
  %i.bw = extractvalue { ptr, ptr } %i.bu, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.h, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36, %bb.m, %bb.j, %bb.i, %bb.f, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %bb.d
  %.sroa.066.2 = phi ptr [ %i.s, %bb.d ], [ %spec.select, %bb.h ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %spec.select74, %bb.l ], [ %i.az, %bb.i ], [ %i.aj, %bb.f ], [ %1, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36 ], [ %i.bv, %bb.m ], [ null, %bb.j ]
  %.sroa.12.2 = phi ptr [ %i.t, %bb.d ], [ %spec.select73, %bb.h ], [ %i.f, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %spec.select75, %bb.l ], [ %i.ba, %bb.i ], [ %i.aj, %bb.f ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36 ], [ %i.bw, %bb.m ], [ %i.bf, %bb.j ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.066.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal8BinaryOpEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal8BinaryOpEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !115
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #23
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal8BinaryOpEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal8BinaryOpEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 72) #23
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal8BinaryOpEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal8BinaryOpEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8, !tbaa !118 ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !113  ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !113  ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !112
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #21 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !118 ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !225

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !121
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !113  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !113  ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !112
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !112
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #21 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal8BinaryOpEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal8BinaryOpEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal8BinaryOpEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal8BinaryOpEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !123  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !112  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal8BinaryOpEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !115
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #23
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal8BinaryOpEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal8BinaryOpEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #23
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !226

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal8BinaryOpEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal5ApplyC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(241) %0, ptr noundef nonnull align 8 dereferenceable(241) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal5ApplyE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !227
  store ptr %i.c, ptr %i.a, align 8, !tbaa !227
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !107  ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !108  ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.i, label %.noexc16, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.k, 40
  %i.l = icmp ugt i64 %2, 230584300921369395
  br i1 %i.l, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !109

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #22
          to label %.noexc16 unwind label %bb.o

.noexc16:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.n = phi ptr [ null, %bb.a ], [ %i.m, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.n, ptr %i.d, align 8, !tbaa !108
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !107
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !110
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.t = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.r, ptr %i.s, ptr noundef %i.n)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc16
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !108  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !110
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #23
  br label %.body

bb.e:                                             ; preds = %.noexc16
  store ptr %i.t, ptr %i.o, align 8, !tbaa !107
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 160
  invoke void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !228, !range !57, !noundef !58
  store i8 %i.ae, ptr %i.ac, align 8, !tbaa !228
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !107 ; 2 uses
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !108 ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %.not.i.i.i.i17 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i.i.i.i17, label %.noexc23, label %bb.g

bb.g:                                             ; preds = %bb.f
  %3 = sdiv exact i64 %i.am, 40
  %i.an = icmp ugt i64 %3, 230584300921369395
  br i1 %i.an, label %.noexc.i.i21, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i18, !prof !109

.noexc.i.i21:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc22 unwind label %bb.q

.noexc22:                                         ; preds = %.noexc.i.i21
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i18: ; preds = %bb.g
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #22
          to label %.noexc23 unwind label %bb.q

.noexc23:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i18, %bb.f
  %i.ap = phi ptr [ null, %bb.f ], [ %i.ao, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i18 ] ; 4 uses
  store ptr %i.ap, ptr %i.af, align 8, !tbaa !108
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !107
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.am
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !110
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !26
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !26
  %i.av = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.at, ptr %i.au, ptr noundef %i.ap)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc23
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %i.af, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i19, label %.body24, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !110
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bb) #23
  br label %.body24

bb.j:                                             ; preds = %.noexc23
  store ptr %i.av, ptr %i.aq, align 8, !tbaa !107
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !107 ; 2 uses
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !108 ; 2 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false)
  %.not.i.i.i.i27 = icmp eq ptr %i.bf, %i.bg
  br i1 %.not.i.i.i.i27, label %.noexc33, label %bb.k

bb.k:                                             ; preds = %bb.j
  %4 = sdiv exact i64 %i.bj, 40
  %i.bk = icmp ugt i64 %4, 230584300921369395
  br i1 %i.bk, label %.noexc.i.i31, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i28, !prof !109

.noexc.i.i31:                                     ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc32 unwind label %bb.r

.noexc32:                                         ; preds = %.noexc.i.i31
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i28: ; preds = %bb.k
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #22
          to label %.noexc33 unwind label %bb.r

.noexc33:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i28, %bb.j
  %i.bm = phi ptr [ null, %bb.j ], [ %i.bl, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i28 ] ; 4 uses
  store ptr %i.bm, ptr %i.bc, align 8, !tbaa !108
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !107
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bj
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !110
  %i.bq = load ptr, ptr %i.bd, align 8, !tbaa !26
  %i.br = load ptr, ptr %i.be, align 8, !tbaa !26
  %i.bs = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.bq, ptr %i.br, ptr noundef %i.bm)
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %.noexc33
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %i.bc, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i29, label %.body34, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !110
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.by) #23
  br label %.body34

bb.n:                                             ; preds = %.noexc33
  store ptr %i.bs, ptr %i.bn, align 8, !tbaa !107
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !72, !range !57, !noundef !58
  store i8 %i.cb, ptr %i.bz, align 8, !tbaa !72
  ret void

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.e
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.q:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i18, %.noexc.i.i21
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body24

bb.r:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i28, %.noexc.i.i31
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.body34

.body34:                                          ; preds = %bb.l, %bb.m, %bb.r
  %eh.lpad-body35 = phi { ptr, i32 } [ %i.cf, %bb.r ], [ %i.bt, %bb.m ], [ %i.bt, %bb.l ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.af) #21
  br label %.body24

.body24:                                          ; preds = %bb.q, %bb.i, %bb.h, %.body34
  %.pn = phi { ptr, i32 } [ %eh.lpad-body35, %.body34 ], [ %i.ce, %bb.q ], [ %i.aw, %bb.i ], [ %i.aw, %bb.h ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aa) #21
  br label %bb.s

bb.s:                                             ; preds = %.body24, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body24 ], [ %i.cd, %bb.p ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #21
  br label %.body

.body:                                            ; preds = %bb.o, %bb.d, %bb.c, %bb.s
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.s ], [ %i.cc, %bb.o ], [ %i.u, %bb.d ], [ %i.u, %bb.c ]
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #21
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal3ASTC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal3ASTE, i64 16), ptr %0, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !111
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !112  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !113  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.g, ptr %i.a, align 8, !tbaa !114
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !112
  %i.j = load i64, ptr %i.a, align 8, !tbaa !114
  store i64 %i.j, ptr %i.d, align 8, !tbaa !115
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN7jsonnet8internal13LocationRangeC2ERKS1_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !115
  store i8 %i.l, ptr %i.k, align 1, !tbaa !115
  br label %_ZN7jsonnet8internal13LocationRangeC2ERKS1_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZN7jsonnet8internal13LocationRangeC2ERKS1_.exit

_ZN7jsonnet8internal13LocationRangeC2ERKS1_.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !114  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !113
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !112
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load i32, ptr %i.t, align 8, !tbaa !100
  store i32 %i.u, ptr %i.s, align 8, !tbaa !100
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !107  ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !108  ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i, label %.noexc9, label %bb.d

bb.d:                                             ; preds = %_ZN7jsonnet8internal13LocationRangeC2ERKS1_.exit
  %2 = sdiv exact i64 %i.ac, 40
  %i.ad = icmp ugt i64 %2, 230584300921369395
  br i1 %i.ad, label %.noexc.i.i8, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !109

.noexc.i.i8:                                      ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i8
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #22
          to label %.noexc9 unwind label %bb.m

.noexc9:                                          ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %_ZN7jsonnet8internal13LocationRangeC2ERKS1_.exit
  %i.af = phi ptr [ null, %_ZN7jsonnet8internal13LocationRangeC2ERKS1_.exit ], [ %i.ae, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.af, ptr %i.v, align 8, !tbaa !108
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !107
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !110
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !26
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.aj, ptr %i.ak, ptr noundef %i.af)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %.noexc9
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !110
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #23
  br label %.body

bb.g:                                             ; preds = %.noexc9
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !107
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !229 ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !135 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %.not.i.i.i.i10 = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i.i.i10, label %.noexc13, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = icmp ugt i64 %i.az, 9223372036854775800
  br i1 %i.ba, label %.noexc.i.i11, label %_ZNSt15__new_allocatorIPKN7jsonnet8internal10IdentifierEE8allocateEmPKv.exit.i.i.i.i, !prof !109

.noexc.i.i11:                                     ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc12 unwind label %bb.n

.noexc12:                                         ; preds = %.noexc.i.i11
  unreachable

_ZNSt15__new_allocatorIPKN7jsonnet8internal10IdentifierEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.h
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #22
          to label %.noexc13 unwind label %bb.n

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIPKN7jsonnet8internal10IdentifierEE8allocateEmPKv.exit.i.i.i.i, %bb.g
  %i.bc = phi ptr [ null, %bb.g ], [ %i.bb, %_ZNSt15__new_allocatorIPKN7jsonnet8internal10IdentifierEE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.bc, ptr %i.as, align 8, !tbaa !135
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !229
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !136
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !230 ; 3 uses
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !230
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 4 uses
  %i.bl = icmp sgt i64 %i.bk, 8
  br i1 %i.bl, label %bb.i, label %bb.j, !prof !231

bb.i:                                             ; preds = %.noexc13
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bc, ptr align 8 %i.bg, i64 %i.bk, i1 false)
  br label %bb.l

bb.j:                                             ; preds = %.noexc13
  %i.bm = icmp eq i64 %i.bk, 8
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bn = load ptr, ptr %i.bg, align 8, !tbaa !232
  store ptr %i.bn, ptr %i.bc, align 8, !tbaa !232
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.bo = getelementptr inbounds i8, ptr %i.bc, i64 %i.bk
  store ptr %i.bo, ptr %i.bd, align 8, !tbaa !229
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i8
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZNSt15__new_allocatorIPKN7jsonnet8internal10IdentifierEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i11
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.v) #21
  br label %.body

.body:                                            ; preds = %bb.m, %bb.f, %bb.e, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.n ], [ %i.bp, %bb.m ], [ %i.am, %bb.f ], [ %i.am, %bb.e ]
  %i.br = load ptr, ptr %i.b, align 8, !tbaa !112 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.d
  br i1 %i.bs, label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.body
  %i.bt = load i64, ptr %i.d, align 8, !tbaa !115
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #23
  br label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit

_ZN7jsonnet8internal13LocationRangeD2Ev.exit:     ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !138    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 88
  %i.g = icmp ugt i64 %2, 104811045873349725
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal8ArgParamEE8allocateEmPKv.exit.i.i.i, !prof !109

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal8ArgParamEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #22
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal8ArgParamEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7jsonnet8internal8ArgParamEE8allocateEmPKv.exit.i.i.i ] ; 7 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !138
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !137
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !139
  %i.m = load ptr, ptr %1, align 8, !tbaa !41     ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal8ArgParamESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 4 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN7jsonnet8internal8ArgParamC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 88 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal8ArgParamESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !233

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #21 ; 0 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.i, %.014.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %bb.d ] ; 2 uses
  tail call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.05.i.i.i.i.i.i) #21
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, %.014.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  invoke void @__cxa_rethrow() #24
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #20
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamEEvT_S4_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal8ArgParamESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructIN7jsonnet8internal8ArgParamEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !137
  ret void

.body:                                            ; preds = %bb.e
  %i.x = load ptr, ptr %0, align 8, !tbaa !138    ; 3 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !139
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ab) #23
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.u
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !108    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !107  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.t, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !141  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !142  ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.e, %.lr.ph.i.i ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !115
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.g
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i
  %i.n = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.e, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !143
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.u = phi ptr [ %.pr, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.u, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !110
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #23
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !138    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !137  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.05.i.i) #21
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 88 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !138
  br label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_1
begin_hunk_2_@_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_:bb.a
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN7jsonnet8internal13FodderElementEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN7jsonnet8internal13FodderElementEEEvT_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i
  %.05.i = phi ptr [ %i.q, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !141  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !142  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.b, %.lr.ph.i ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !115
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, %.lr.ph.i
  %i.k = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.b, %.lr.ph.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !143
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN7jsonnet8internal13FodderElementEEEvT_S6_.exit, label %.lr.ph.i, !llvm.loop !3

_ZNSt12_Destroy_auxILb0EE9__destroyIPN7jsonnet8internal13FodderElementEEEvT_S6_.exit: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.sroa.08.013 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.b, ptr %.014, align 8, !tbaa !111
  %i.c = load ptr, ptr %.sroa.08.013, align 8, !tbaa !112 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !113  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.e, ptr %i.a, align 8, !tbaa !114
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.014, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.014, align 8, !tbaa !112
  %i.h = load i64, ptr %i.a, align 8, !tbaa !114
  store i64 %i.h, ptr %i.b, align 8, !tbaa !115
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !115
  store i8 %i.j, ptr %i.i, align 1, !tbaa !115
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !114  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !113
  %i.m = load ptr, ptr %.014, align 8, !tbaa !112
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !235

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #21 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #24
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #20
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !112 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.d = load i64, ptr %i.b, align 8, !tbaa !115
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !2

_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal8ArgParamC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !108    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %2, 230584300921369395
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !109

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #22
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !108
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !107
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !110
  %i.m = load ptr, ptr %1, align 8, !tbaa !26
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !108    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !110
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #23
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn, %.body ], [ %i.p, %bb.e ], [ %i.p, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !107
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !236
  store ptr %i.x, ptr %i.v, align 8, !tbaa !236
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !107 ; 2 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !108 ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %.not.i.i.i.i9 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i.i.i9, label %.noexc14, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit
  %3 = sdiv exact i64 %i.af, 40
  %i.ag = icmp ugt i64 %3, 230584300921369395
  br i1 %i.ag, label %.noexc.i.i13, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i10, !prof !109

.noexc.i.i13:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %.noexc.i.i13
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i10: ; preds = %bb.f
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #22
          to label %.noexc14 unwind label %bb.n

.noexc14:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i10, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit
  %i.ai = phi ptr [ null, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit ], [ %i.ah, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i10 ] ; 4 uses
  store ptr %i.ai, ptr %i.y, align 8, !tbaa !108
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !107
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !110
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !26
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !26
  %i.ao = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.am, ptr %i.an, ptr noundef %i.ai)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc14
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %i.y, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i11, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !110
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.au) #23
  br label %.body

bb.i:                                             ; preds = %.noexc14
  store ptr %i.ao, ptr %i.aj, align 8, !tbaa !107
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !43
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !43
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !107 ; 2 uses
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !108 ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  %.not.i.i.i.i16 = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i.i.i.i16, label %.noexc22, label %bb.j

bb.j:                                             ; preds = %bb.i
  %4 = sdiv exact i64 %i.bf, 40
  %i.bg = icmp ugt i64 %4, 230584300921369395
  br i1 %i.bg, label %.noexc.i.i20, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i17, !prof !109

.noexc.i.i20:                                     ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc21 unwind label %bb.o

.noexc21:                                         ; preds = %.noexc.i.i20
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i17: ; preds = %bb.j
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #22
          to label %.noexc22 unwind label %bb.o

.noexc22:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i17, %bb.i
  %i.bi = phi ptr [ null, %bb.i ], [ %i.bh, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i17 ] ; 4 uses
  store ptr %i.bi, ptr %i.ay, align 8, !tbaa !108
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !107
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bf
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !110
  %i.bm = load ptr, ptr %i.az, align 8, !tbaa !26
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !26
  %i.bo = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.bm, ptr %i.bn, ptr noundef %i.bi)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %.noexc22
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %i.ay, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i18, label %.body23, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !110
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = sub i64 %i.bs, %i.bt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bu) #23
  br label %.body23

bb.m:                                             ; preds = %.noexc22
  store ptr %i.bo, ptr %i.bj, align 8, !tbaa !107
  ret void

bb.n:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i10, %.noexc.i.i13
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i17, %.noexc.i.i20
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body23

.body23:                                          ; preds = %bb.k, %bb.l, %bb.o
  %eh.lpad-body24 = phi { ptr, i32 } [ %i.bw, %bb.o ], [ %i.bp, %bb.l ], [ %i.bp, %bb.k ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.y) #21
  br label %.body

.body:                                            ; preds = %bb.n, %bb.h, %bb.g, %.body23
  %.pn = phi { ptr, i32 } [ %eh.lpad-body24, %.body23 ], [ %i.bv, %bb.n ], [ %i.ap, %bb.h ], [ %i.ap, %bb.g ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #21
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !141  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !115
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !143
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !110
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #23
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !108 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !107 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14
  %.05.i.i.i3 = phi ptr [ %i.av, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14 ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !141 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !142 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i4 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not4.i.i.i.i.i.i.i.i4, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12, label %.lr.ph.i.i.i.i.i.i.i.i5

.lr.ph.i.i.i.i.i.i.i.i5:                          ; preds = %.lr.ph.i.i.i2, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8
  %.05.i.i.i.i.i.i.i.i6 = phi ptr [ %i.ao, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8 ], [ %i.ag, %.lr.ph.i.i.i2 ] ; 3 uses
  %i.aj = load ptr, ptr %.05.i.i.i.i.i.i.i.i6, align 8, !tbaa !112 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i6, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7: ; preds = %.lr.ph.i.i.i.i.i.i.i.i5
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !115
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8: ; preds = %.lr.ph.i.i.i.i.i.i.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i6, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i9 = icmp eq ptr %i.ao, %i.ai
  br i1 %.not.i.i.i.i.i.i.i.i9, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10, label %.lr.ph.i.i.i.i.i.i.i.i5, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8
  %.pr.i.i.i.i.i.i11 = load ptr, ptr %i.af, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10, %.lr.ph.i.i.i2
  %i.ap = phi ptr [ %.pr.i.i.i.i.i.i11, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10 ], [ %i.ag, %.lr.ph.i.i.i2 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i13 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1.i.i.i.i.i.i13, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !143
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14: ; preds = %bb.d, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 40 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.av, %i.ae
  br i1 %.not.i.i.i15, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16, label %.lr.ph.i.i.i2, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14
  %.pr.i17 = load ptr, ptr %i.ab, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit
  %i.aw = phi ptr [ %.pr.i17, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16 ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i19 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i1.i19, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !110
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #23
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18, %bb.e
  %i.bc = load ptr, ptr %0, align 8, !tbaa !108   ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !107 ; 2 uses
  %.not4.i.i.i22 = icmp eq ptr %i.bc, %i.be
  br i1 %.not4.i.i.i22, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i39, label %.lr.ph.i.i.i23

.lr.ph.i.i.i23:                                   ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i35
  %.05.i.i.i24 = phi ptr [ %i.bv, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i35 ], [ %i.bc, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21 ] ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i24, i64 16 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !141 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.05.i.i.i24, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !142 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i25 = icmp eq ptr %i.bg, %i.bi
  br i1 %.not4.i.i.i.i.i.i.i.i25, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i33, label %.lr.ph.i.i.i.i.i.i.i.i26

.lr.ph.i.i.i.i.i.i.i.i26:                         ; preds = %.lr.ph.i.i.i23, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i29
  %.05.i.i.i.i.i.i.i.i27 = phi ptr [ %i.bo, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i29 ], [ %i.bg, %.lr.ph.i.i.i23 ] ; 3 uses
  %i.bj = load ptr, ptr %.05.i.i.i.i.i.i.i.i27, align 8, !tbaa !112 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i27, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i28: ; preds = %.lr.ph.i.i.i.i.i.i.i.i26
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !115
  %i.bn = add i64 %i.bm, 1
  tail call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i29

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i29: ; preds = %.lr.ph.i.i.i.i.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i28
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i27, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i30 = icmp eq ptr %i.bo, %i.bi
  br i1 %.not.i.i.i.i.i.i.i.i30, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i31, label %.lr.ph.i.i.i.i.i.i.i.i26, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i31: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i29
  %.pr.i.i.i.i.i.i32 = load ptr, ptr %i.bf, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i33

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i33: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i31, %.lr.ph.i.i.i23
  %i.bp = phi ptr [ %.pr.i.i.i.i.i.i32, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i31 ], [ %i.bg, %.lr.ph.i.i.i23 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i34 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i1.i.i.i.i.i.i34, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i35, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i33
  %i.bq = getelementptr inbounds nuw i8, ptr %.05.i.i.i24, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !143
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i35

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i35: ; preds = %bb.f, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i33
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i24, i64 40 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.bv, %i.be
  br i1 %.not.i.i.i36, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i37, label %.lr.ph.i.i.i23, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i37: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i35
  %.pr.i38 = load ptr, ptr %0, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i39

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i39: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i37, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21
  %i.bw = phi ptr [ %.pr.i38, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i37 ], [ %i.bc, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21 ] ; 3 uses
  %.not.i.i1.i40 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i1.i40, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit42, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i39
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !110
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.bz, %i.ca
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.cb) #23
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit42

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit42: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i39, %bb.g
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal10ApplyBraceD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal5ArrayC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(184) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal5ArrayE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !145  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !146  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.h, 9223372036854775776
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal5Array7ElementEE8allocateEmPKv.exit.i.i.i.i, !prof !109

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal5Array7ElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #22
          to label %.noexc8 unwind label %bb.j

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal5Array7ElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorIN7jsonnet8internal5Array7ElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !146
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !145
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !147
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !74
  %i.q = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal5Array7ElementESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_(ptr %i.o, ptr %i.p, ptr noundef %i.k)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc8
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !146  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !147
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #23
  br label %.body

bb.e:                                             ; preds = %.noexc8
  store ptr %i.q, ptr %i.l, align 8, !tbaa !145
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.z = load i8, ptr %i.y, align 8, !tbaa !241, !range !57, !noundef !58
  store i8 %i.z, ptr %i.x, align 8, !tbaa !241
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !107 ; 2 uses
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !108 ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  %.not.i.i.i.i9 = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i.i.i.i9, label %.noexc13, label %bb.f

bb.f:                                             ; preds = %bb.e
  %2 = sdiv exact i64 %i.ah, 40
  %i.ai = icmp ugt i64 %2, 230584300921369395
  br i1 %i.ai, label %.noexc.i.i11, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !109

.noexc.i.i11:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc12 unwind label %bb.k

.noexc12:                                         ; preds = %.noexc.i.i11
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.f
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #22
          to label %.noexc13 unwind label %bb.k

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.e
  %i.ak = phi ptr [ null, %bb.e ], [ %i.aj, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.ak, ptr %i.aa, align 8, !tbaa !108
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !107
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !110
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !26
  %i.ap = load ptr, ptr %i.ac, align 8, !tbaa !26
  %i.aq = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.ao, ptr %i.ap, ptr noundef %i.ak)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc13
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %i.aa, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i10, label %.body14, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !110
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.aw) #23
  br label %.body14

bb.i:                                             ; preds = %.noexc13
  store ptr %i.aq, ptr %i.al, align 8, !tbaa !107
  ret void

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal5Array7ElementEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i11
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body14

.body14:                                          ; preds = %bb.g, %bb.h, %bb.k
  %eh.lpad-body15 = phi { ptr, i32 } [ %i.ay, %bb.k ], [ %i.ar, %bb.h ], [ %i.ar, %bb.g ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #21
  br label %.body

.body:                                            ; preds = %bb.j, %bb.d, %bb.c, %.body14
  %.pn = phi { ptr, i32 } [ %eh.lpad-body15, %.body14 ], [ %i.ax, %bb.j ], [ %i.r, %bb.d ], [ %i.r, %bb.c ]
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !146    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !145  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal5Array7ElementES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal5Array7ElementEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ae, %_ZSt8_DestroyIN7jsonnet8internal5Array7ElementEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !108  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !107  ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.e, %.lr.ph.i.i ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !141  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !142  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.l = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !115
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, %i.k
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.r = phi ptr [ %.pr.i.i.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i ], [ %i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !143
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.x, %i.g
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i
  %i.y = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.e, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal5Array7ElementEEvPT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !110
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal5Array7ElementEEvPT_.exit.i.i

_ZSt8_DestroyIN7jsonnet8internal5Array7ElementEEvPT_.exit.i.i: ; preds = %bb.c, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal5Array7ElementES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !4

_ZSt8_DestroyIPN7jsonnet8internal5Array7ElementES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7jsonnet8internal5Array7ElementEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !146
  br label %_ZSt8_DestroyIPN7jsonnet8internal5Array7ElementES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPN7jsonnet8internal5Array7ElementES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal5Array7ElementES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.af = phi ptr [ %.pr, %_ZSt8_DestroyIPN7jsonnet8internal5Array7ElementES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.af, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7jsonnet8internal5Array7ElementESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal5Array7ElementES3_EvT_S5_RSaIT0_E.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !147
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #23
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal5Array7ElementESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN7jsonnet8internal5Array7ElementESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal5Array7ElementES3_EvT_S5_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal5ArrayD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal5ArrayE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !141  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !115
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !143
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !110
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #23
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ab) #21
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal5ArrayD0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal5ArrayE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !141  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !115
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #23, !inline_history !242
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !143
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #23, !inline_history !242
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN7jsonnet8internal5ArrayD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !110
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #23, !inline_history !242
  br label %_ZN7jsonnet8internal5ArrayD2Ev.exit

_ZN7jsonnet8internal5ArrayD2Ev.exit:              ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZNSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ab) #21, !inline_history !242
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(184) %0) #21, !inline_history !242
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 184) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal5Array7ElementESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not21 = icmp eq ptr %0, %1
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.023 = phi ptr [ %i.aa, %bb.e ], [ %2, %bb.a ] ; 7 uses
  %.sroa.09.022 = phi ptr [ %i.z, %bb.e ], [ %0, %bb.a ] ; 4 uses
  %i.a = load ptr, ptr %.sroa.09.022, align 8, !tbaa !245
  store ptr %i.a, ptr %.023, align 8, !tbaa !245
  %i.b = getelementptr inbounds nuw i8, ptr %.023, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.09.022, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.09.022, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !107  ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !108  ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %3 = sdiv exact i64 %i.i, 40
  %i.j = icmp ugt i64 %3, 230584300921369395
  br i1 %i.j, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !109

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #22
          to label %.noexc8 unwind label %.loopexit

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i.i, %.lr.ph
  %i.l = phi ptr [ null, %.lr.ph ], [ %i.k, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 4 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !108
  %i.m = getelementptr inbounds nuw i8, ptr %.023, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !107
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.023, i64 24
  store ptr %i.n, ptr %i.o, align 8, !tbaa !110
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.r = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.p, ptr %i.q, ptr noundef %i.l)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc8
  %i.s = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !108  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.023, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !110
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #23
  br label %.body

bb.e:                                             ; preds = %.noexc8
  store ptr %i.r, ptr %i.m, align 8, !tbaa !107
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.09.022, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.023, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.z, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !243

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.c, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.s, %bb.c ], [ %i.s, %bb.d ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ab = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ac = tail call ptr @__cxa_begin_catch(ptr %i.ab) #21 ; 0 uses
  invoke void @_ZSt8_DestroyIPN7jsonnet8internal5Array7ElementEEvT_S5_(ptr noundef %2, ptr noundef nonnull %.023)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #24
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.aa, %bb.e ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %.body
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.ad

bb.i:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #20
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN7jsonnet8internal5Array7ElementEEvT_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN7jsonnet8internal5Array7ElementEEEvT_S7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal5Array7ElementEEvPT_.exit.i
  %.05.i = phi ptr [ %i.ab, %_ZSt8_DestroyIN7jsonnet8internal5Array7ElementEEvPT_.exit.i ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i.i.i ], [ %i.b, %.lr.ph.i ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !141  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !115
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !143
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i, %.lr.ph.i
  %i.v = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.b, %.lr.ph.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal5Array7ElementEEvPT_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !110
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal5Array7ElementEEvPT_.exit.i

_ZSt8_DestroyIN7jsonnet8internal5Array7ElementEEvPT_.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN7jsonnet8internal5Array7ElementEEEvT_S7_.exit, label %.lr.ph.i, !llvm.loop !4

_ZNSt12_Destroy_auxILb0EE9__destroyIPN7jsonnet8internal5Array7ElementEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIN7jsonnet8internal5Array7ElementEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal18ArrayComprehensionC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(216) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal18ArrayComprehensionE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !247
  store ptr %i.c, ptr %i.a, align 8, !tbaa !247
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !107  ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !108  ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.i, label %.noexc12, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.k, 40
  %i.l = icmp ugt i64 %2, 230584300921369395
  br i1 %i.l, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !109

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #22
          to label %.noexc12 unwind label %bb.k

.noexc12:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.n = phi ptr [ null, %bb.a ], [ %i.m, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.n, ptr %i.d, align 8, !tbaa !108
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !107
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !110
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.t = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.r, ptr %i.s, ptr noundef %i.n)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc12
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !108  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !110
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #23
  br label %.body

bb.e:                                             ; preds = %.noexc12
  store ptr %i.t, ptr %i.o, align 8, !tbaa !107
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !248, !range !57, !noundef !58
  store i8 %i.ac, ptr %i.aa, align 8, !tbaa !248
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 168
  invoke void @_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !107 ; 2 uses
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !108 ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %.not.i.i.i.i13 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i.i.i.i13, label %.noexc19, label %bb.g

bb.g:                                             ; preds = %bb.f
  %3 = sdiv exact i64 %i.am, 40
  %i.an = icmp ugt i64 %3, 230584300921369395
  br i1 %i.an, label %.noexc.i.i17, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i14, !prof !109

.noexc.i.i17:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc18 unwind label %bb.m

.noexc18:                                         ; preds = %.noexc.i.i17
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i14: ; preds = %bb.g
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #22
          to label %.noexc19 unwind label %bb.m

.noexc19:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i14, %bb.f
  %i.ap = phi ptr [ null, %bb.f ], [ %i.ao, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i14 ] ; 4 uses
  store ptr %i.ap, ptr %i.af, align 8, !tbaa !108
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !107
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.am
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !110
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !26
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !26
  %i.av = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.at, ptr %i.au, ptr noundef %i.ap)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc19
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %i.af, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i15, label %.body20, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !110
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bb) #23
  br label %.body20

bb.j:                                             ; preds = %.noexc19
  store ptr %i.av, ptr %i.aq, align 8, !tbaa !107
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.e
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i14, %.noexc.i.i17
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body20

.body20:                                          ; preds = %bb.h, %bb.i, %bb.m
  %eh.lpad-body21 = phi { ptr, i32 } [ %i.be, %bb.m ], [ %i.aw, %bb.i ], [ %i.aw, %bb.h ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ad) #21
  br label %bb.n

bb.n:                                             ; preds = %.body20, %bb.l
  %.pn = phi { ptr, i32 } [ %eh.lpad-body21, %.body20 ], [ %i.bd, %bb.l ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #21
  br label %.body

.body:                                            ; preds = %bb.k, %bb.d, %bb.c, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.bc, %bb.k ], [ %i.u, %bb.d ], [ %i.u, %bb.c ]
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #21
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !152  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !153    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 96
  %i.g = icmp ugt i64 %2, 96076792050570581
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal17ComprehensionSpecEE8allocateEmPKv.exit.i.i.i, !prof !109

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal17ComprehensionSpecEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #22
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal17ComprehensionSpecEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7jsonnet8internal17ComprehensionSpecEE8allocateEmPKv.exit.i.i.i ] ; 7 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !153
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !152
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !154
  %i.m = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal17ComprehensionSpecESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN7jsonnet8internal17ComprehensionSpecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN7jsonnet8internal17ComprehensionSpecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 4 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN7jsonnet8internal17ComprehensionSpecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN7jsonnet8internal17ComprehensionSpecC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN7jsonnet8internal17ComprehensionSpecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN7jsonnet8internal17ComprehensionSpecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 96 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal17ComprehensionSpecESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !249

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #21 ; 0 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.i, %.014.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecEEvT_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %bb.d ] ; 2 uses
  tail call void @_ZN7jsonnet8internal17ComprehensionSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %.05.i.i.i.i.i.i) #21
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, %.014.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecEEvT_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecEEvT_S4_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  invoke void @__cxa_rethrow() #24
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecEEvT_S4_.exit.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #20
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecEEvT_S4_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal17ComprehensionSpecESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN7jsonnet8internal17ComprehensionSpecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructIN7jsonnet8internal17ComprehensionSpecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !152
  ret void

.body:                                            ; preds = %bb.e
  %i.x = load ptr, ptr %0, align 8, !tbaa !153    ; 3 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !154
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ab) #23
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.u
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !153    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !152  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN7jsonnet8internal17ComprehensionSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %.05.i.i) #21
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !5

_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !153
  br label %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !154
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #23
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal18ArrayComprehensionD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal18ArrayComprehensionE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !141  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !115
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !143
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !110
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #23
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !153 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !152 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, %.lr.ph.i.i.i2
  %.05.i.i.i3 = phi ptr [ %i.af, %.lr.ph.i.i.i2 ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 2 uses
  tail call void @_ZN7jsonnet8internal17ComprehensionSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %.05.i.i.i3) #21
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 96 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.af, %i.ae
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !5

_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i2
  %.pr.i5 = load ptr, ptr %i.ab, align 8, !tbaa !153
  br label %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit
  %i.ag = phi ptr [ %.pr.i5, %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i6 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i1.i6, label %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !154
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #23
  br label %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exit.i, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !108 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !107 ; 2 uses
  %.not4.i.i.i7 = icmp eq ptr %i.an, %i.ap
  br i1 %.not4.i.i.i7, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i24, label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i20
  %.05.i.i.i9 = phi ptr [ %i.bg, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i20 ], [ %i.an, %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i9, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !141 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i.i9, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !142 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i10 = icmp eq ptr %i.ar, %i.at
  br i1 %.not4.i.i.i.i.i.i.i.i10, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i18, label %.lr.ph.i.i.i.i.i.i.i.i11

.lr.ph.i.i.i.i.i.i.i.i11:                         ; preds = %.lr.ph.i.i.i8, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i14
  %.05.i.i.i.i.i.i.i.i12 = phi ptr [ %i.az, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i14 ], [ %i.ar, %.lr.ph.i.i.i8 ] ; 3 uses
  %i.au = load ptr, ptr %.05.i.i.i.i.i.i.i.i12, align 8, !tbaa !112 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i12, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i13: ; preds = %.lr.ph.i.i.i.i.i.i.i.i11
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !115
  %i.ay = add i64 %i.ax, 1
  tail call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i14

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i14: ; preds = %.lr.ph.i.i.i.i.i.i.i.i11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i13
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i12, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i15 = icmp eq ptr %i.az, %i.at
  br i1 %.not.i.i.i.i.i.i.i.i15, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i16, label %.lr.ph.i.i.i.i.i.i.i.i11, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i16: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i14
  %.pr.i.i.i.i.i.i17 = load ptr, ptr %i.aq, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i18

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i18: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i16, %.lr.ph.i.i.i8
  %i.ba = phi ptr [ %.pr.i.i.i.i.i.i17, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i16 ], [ %i.ar, %.lr.ph.i.i.i8 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i19 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i1.i.i.i.i.i.i19, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i20, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i18
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i9, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !143
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i20

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i20: ; preds = %bb.e, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i18
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i9, i64 40 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.bg, %i.ap
  br i1 %.not.i.i.i21, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i22, label %.lr.ph.i.i.i8, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i22: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i20
  %.pr.i23 = load ptr, ptr %i.am, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i24

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i24: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i22, %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit
  %i.bh = phi ptr [ %.pr.i23, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i22 ], [ %i.an, %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i25 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i1.i25, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit27, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i24
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !110
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #23
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit27

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit27: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i24, %bb.f
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal18ArrayComprehensionD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @_ZN7jsonnet8internal18ArrayComprehensionD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal17ComprehensionSpecC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !39
  store i32 %i.a, ptr %0, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !107  ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !108  ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.i, 40
  %i.j = icmp ugt i64 %2, 230584300921369395
  br i1 %i.j, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !109

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #22
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.l = phi ptr [ null, %bb.a ], [ %i.k, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !108
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !107
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !110
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.r = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.p, ptr %i.q, ptr noundef %i.l)
          to label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !108  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !110
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.x) #23
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn, %.body ], [ %i.s, %bb.e ], [ %i.s, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit: ; preds = %bb.c
  store ptr %i.r, ptr %i.m, align 8, !tbaa !107
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !107 ; 2 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !108 ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %.not.i.i.i.i10 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i.i.i10, label %.noexc15, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit
  %3 = sdiv exact i64 %i.af, 40
  %i.ag = icmp ugt i64 %3, 230584300921369395
  br i1 %i.ag, label %.noexc.i.i14, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i11, !prof !109

.noexc.i.i14:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %.noexc.i.i14
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i11: ; preds = %bb.f
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #22
          to label %.noexc15 unwind label %bb.n

.noexc15:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i11, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit
  %i.ai = phi ptr [ null, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit ], [ %i.ah, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i11 ] ; 4 uses
  store ptr %i.ai, ptr %i.y, align 8, !tbaa !108
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !107
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !110
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !26
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !26
  %i.ao = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.am, ptr %i.an, ptr noundef %i.ai)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc15
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %i.y, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i12, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !110
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.au) #23
  br label %.body

bb.i:                                             ; preds = %.noexc15
  store ptr %i.ao, ptr %i.aj, align 8, !tbaa !107
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !250
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !250
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !107 ; 2 uses
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !108 ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  %.not.i.i.i.i17 = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i.i.i.i17, label %.noexc23, label %bb.j

bb.j:                                             ; preds = %bb.i
  %4 = sdiv exact i64 %i.bf, 40
  %i.bg = icmp ugt i64 %4, 230584300921369395
  br i1 %i.bg, label %.noexc.i.i21, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i18, !prof !109

.noexc.i.i21:                                     ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc22 unwind label %bb.o

.noexc22:                                         ; preds = %.noexc.i.i21
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i18: ; preds = %bb.j
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #22
          to label %.noexc23 unwind label %bb.o

.noexc23:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i18, %bb.i
  %i.bi = phi ptr [ null, %bb.i ], [ %i.bh, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i18 ] ; 4 uses
  store ptr %i.bi, ptr %i.ay, align 8, !tbaa !108
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !107
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bf
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !110
  %i.bm = load ptr, ptr %i.az, align 8, !tbaa !26
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !26
  %i.bo = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.bm, ptr %i.bn, ptr noundef %i.bi)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %.noexc23
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %i.ay, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i19, label %.body24, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !110
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = sub i64 %i.bs, %i.bt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bu) #23
  br label %.body24

bb.m:                                             ; preds = %.noexc23
  store ptr %i.bo, ptr %i.bj, align 8, !tbaa !107
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !251
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !251
  ret void

bb.n:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i11, %.noexc.i.i14
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i18, %.noexc.i.i21
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body24

.body24:                                          ; preds = %bb.k, %bb.l, %bb.o
  %eh.lpad-body25 = phi { ptr, i32 } [ %i.bz, %bb.o ], [ %i.bp, %bb.l ], [ %i.bp, %bb.k ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.y) #21
  br label %.body

.body:                                            ; preds = %bb.n, %bb.h, %bb.g, %.body24
  %.pn = phi { ptr, i32 } [ %eh.lpad-body25, %.body24 ], [ %i.by, %bb.n ], [ %i.ap, %bb.h ], [ %i.ap, %bb.g ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #21
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal17ComprehensionSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !141  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !115
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !143
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !110
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #23
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !108 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !107 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14
  %.05.i.i.i3 = phi ptr [ %i.av, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14 ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !141 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !142 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i4 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not4.i.i.i.i.i.i.i.i4, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12, label %.lr.ph.i.i.i.i.i.i.i.i5

.lr.ph.i.i.i.i.i.i.i.i5:                          ; preds = %.lr.ph.i.i.i2, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8
  %.05.i.i.i.i.i.i.i.i6 = phi ptr [ %i.ao, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8 ], [ %i.ag, %.lr.ph.i.i.i2 ] ; 3 uses
  %i.aj = load ptr, ptr %.05.i.i.i.i.i.i.i.i6, align 8, !tbaa !112 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i6, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7: ; preds = %.lr.ph.i.i.i.i.i.i.i.i5
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !115
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8: ; preds = %.lr.ph.i.i.i.i.i.i.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i6, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i9 = icmp eq ptr %i.ao, %i.ai
  br i1 %.not.i.i.i.i.i.i.i.i9, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10, label %.lr.ph.i.i.i.i.i.i.i.i5, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8
  %.pr.i.i.i.i.i.i11 = load ptr, ptr %i.af, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10, %.lr.ph.i.i.i2
  %i.ap = phi ptr [ %.pr.i.i.i.i.i.i11, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10 ], [ %i.ag, %.lr.ph.i.i.i2 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i13 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1.i.i.i.i.i.i13, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !143
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14: ; preds = %bb.d, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 40 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.av, %i.ae
  br i1 %.not.i.i.i15, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16, label %.lr.ph.i.i.i2, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14
  %.pr.i17 = load ptr, ptr %i.ab, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit
  %i.aw = phi ptr [ %.pr.i17, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16 ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i19 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i1.i19, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !110
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #23
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18, %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !108 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !107 ; 2 uses
  %.not4.i.i.i22 = icmp eq ptr %i.bd, %i.bf
  br i1 %.not4.i.i.i22, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i39, label %.lr.ph.i.i.i23

.lr.ph.i.i.i23:                                   ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i35
  %.05.i.i.i24 = phi ptr [ %i.bw, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i35 ], [ %i.bd, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21 ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i24, i64 16 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !141 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i24, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !142 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i25 = icmp eq ptr %i.bh, %i.bj
  br i1 %.not4.i.i.i.i.i.i.i.i25, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i33, label %.lr.ph.i.i.i.i.i.i.i.i26

.lr.ph.i.i.i.i.i.i.i.i26:                         ; preds = %.lr.ph.i.i.i23, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i29
  %.05.i.i.i.i.i.i.i.i27 = phi ptr [ %i.bp, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i29 ], [ %i.bh, %.lr.ph.i.i.i23 ] ; 3 uses
  %i.bk = load ptr, ptr %.05.i.i.i.i.i.i.i.i27, align 8, !tbaa !112 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i27, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i28: ; preds = %.lr.ph.i.i.i.i.i.i.i.i26
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !115
  %i.bo = add i64 %i.bn, 1
  tail call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i29

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i29: ; preds = %.lr.ph.i.i.i.i.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i28
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i27, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i30 = icmp eq ptr %i.bp, %i.bj
  br i1 %.not.i.i.i.i.i.i.i.i30, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i31, label %.lr.ph.i.i.i.i.i.i.i.i26, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i31: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i29
  %.pr.i.i.i.i.i.i32 = load ptr, ptr %i.bg, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i33

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i33: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i31, %.lr.ph.i.i.i23
  %i.bq = phi ptr [ %.pr.i.i.i.i.i.i32, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i31 ], [ %i.bh, %.lr.ph.i.i.i23 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i34 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i1.i.i.i.i.i.i34, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i35, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i33
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i.i.i24, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !143
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bv) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i35

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i35: ; preds = %bb.f, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i33
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i24, i64 40 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.bw, %i.bf
  br i1 %.not.i.i.i36, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i37, label %.lr.ph.i.i.i23, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i37: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i35
  %.pr.i38 = load ptr, ptr %i.bc, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i39

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i39: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i37, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21
  %i.bx = phi ptr [ %.pr.i38, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i37 ], [ %i.bd, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21 ] ; 3 uses
  %.not.i.i1.i40 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i1.i40, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit42, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i39
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !110
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #23
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit42

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit42: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i39, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal6AssertC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal6AssertE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !252
  store ptr %i.c, ptr %i.a, align 8, !tbaa !252
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !107  ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !108  ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.i, label %.noexc10, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.k, 40
  %i.l = icmp ugt i64 %2, 230584300921369395
  br i1 %i.l, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !109

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #22
          to label %.noexc10 unwind label %bb.j

.noexc10:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.n = phi ptr [ null, %bb.a ], [ %i.m, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.n, ptr %i.d, align 8, !tbaa !108
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !107
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !110
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.t = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.r, ptr %i.s, ptr noundef %i.n)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc10
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !108  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !110
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #23
  br label %.body

bb.e:                                             ; preds = %.noexc10
  store ptr %i.t, ptr %i.o, align 8, !tbaa !107
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !76
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !76
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !107 ; 2 uses
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !108 ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %.not.i.i.i.i11 = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i.i.i.i11, label %.noexc17, label %bb.f

bb.f:                                             ; preds = %bb.e
  %3 = sdiv exact i64 %i.ak, 40
  %i.al = icmp ugt i64 %3, 230584300921369395
  br i1 %i.al, label %.noexc.i.i15, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i12, !prof !109

.noexc.i.i15:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc16 unwind label %bb.k

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i12: ; preds = %bb.f
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #22
          to label %.noexc17 unwind label %bb.k

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i12, %bb.e
  %i.an = phi ptr [ null, %bb.e ], [ %i.am, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i12 ] ; 4 uses
  store ptr %i.an, ptr %i.ad, align 8, !tbaa !108
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !107
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ak
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !110
  %i.ar = load ptr, ptr %i.ae, align 8, !tbaa !26
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !26
  %i.at = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.ar, ptr %i.as, ptr noundef %i.an)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc17
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %i.ad, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i13, label %.body18, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !110
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.az) #23
  br label %.body18

bb.i:                                             ; preds = %.noexc17
  store ptr %i.at, ptr %i.ao, align 8, !tbaa !107
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !253
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !253
  ret void

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i12, %.noexc.i.i15
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body18

.body18:                                          ; preds = %bb.g, %bb.h, %bb.k
  %eh.lpad-body19 = phi { ptr, i32 } [ %i.be, %bb.k ], [ %i.au, %bb.h ], [ %i.au, %bb.g ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #21
  br label %.body

.body:                                            ; preds = %bb.j, %bb.d, %bb.c, %.body18
  %.pn = phi { ptr, i32 } [ %eh.lpad-body19, %.body18 ], [ %i.bd, %bb.j ], [ %i.u, %bb.d ], [ %i.u, %bb.c ]
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal6AssertD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal6AssertE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !141  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !115
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !143
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !110
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #23
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !108 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !107 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14
  %.05.i.i.i3 = phi ptr [ %i.av, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14 ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !141 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !142 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i4 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not4.i.i.i.i.i.i.i.i4, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12, label %.lr.ph.i.i.i.i.i.i.i.i5

.lr.ph.i.i.i.i.i.i.i.i5:                          ; preds = %.lr.ph.i.i.i2, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8
  %.05.i.i.i.i.i.i.i.i6 = phi ptr [ %i.ao, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8 ], [ %i.ag, %.lr.ph.i.i.i2 ] ; 3 uses
  %i.aj = load ptr, ptr %.05.i.i.i.i.i.i.i.i6, align 8, !tbaa !112 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i6, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7: ; preds = %.lr.ph.i.i.i.i.i.i.i.i5
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !115
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8: ; preds = %.lr.ph.i.i.i.i.i.i.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i6, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i9 = icmp eq ptr %i.ao, %i.ai
  br i1 %.not.i.i.i.i.i.i.i.i9, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10, label %.lr.ph.i.i.i.i.i.i.i.i5, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8
  %.pr.i.i.i.i.i.i11 = load ptr, ptr %i.af, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10, %.lr.ph.i.i.i2
  %i.ap = phi ptr [ %.pr.i.i.i.i.i.i11, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10 ], [ %i.ag, %.lr.ph.i.i.i2 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i13 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1.i.i.i.i.i.i13, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !143
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #23
end_hunk_2
begin_hunk_3_@_ZN7jsonnet8internal6AssertD0Ev:bb.a

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal6BinaryD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal6BinaryE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !141  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !115
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !143
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !110
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #23
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal6BinaryD0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal6BinaryE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !141  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !115
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #23, !inline_history !254
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !143
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #23, !inline_history !254
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN7jsonnet8internal6BinaryD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !110
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #23, !inline_history !254
  br label %_ZN7jsonnet8internal6BinaryD2Ev.exit

_ZN7jsonnet8internal6BinaryD2Ev.exit:             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.c
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(176) %0) #21, !inline_history !254
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal15BuiltinFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal11ConditionalC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal11ConditionalE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !255
  store ptr %i.c, ptr %i.a, align 8, !tbaa !255
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !107  ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !108  ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.i, label %.noexc10, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.k, 40
  %i.l = icmp ugt i64 %2, 230584300921369395
  br i1 %i.l, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !109

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #22
          to label %.noexc10 unwind label %bb.j

.noexc10:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.n = phi ptr [ null, %bb.a ], [ %i.m, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.n, ptr %i.d, align 8, !tbaa !108
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !107
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !110
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.t = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.r, ptr %i.s, ptr noundef %i.n)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc10
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !108  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !110
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #23
  br label %.body

bb.e:                                             ; preds = %.noexc10
  store ptr %i.t, ptr %i.o, align 8, !tbaa !107
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !256
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !256
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !107 ; 2 uses
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !108 ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %.not.i.i.i.i11 = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i.i.i.i11, label %.noexc17, label %bb.f

bb.f:                                             ; preds = %bb.e
  %3 = sdiv exact i64 %i.ak, 40
  %i.al = icmp ugt i64 %3, 230584300921369395
  br i1 %i.al, label %.noexc.i.i15, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i12, !prof !109

.noexc.i.i15:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc16 unwind label %bb.k

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i12: ; preds = %bb.f
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #22
          to label %.noexc17 unwind label %bb.k

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i12, %bb.e
  %i.an = phi ptr [ null, %bb.e ], [ %i.am, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i12 ] ; 4 uses
  store ptr %i.an, ptr %i.ad, align 8, !tbaa !108
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !107
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ak
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !110
  %i.ar = load ptr, ptr %i.ae, align 8, !tbaa !26
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !26
  %i.at = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.ar, ptr %i.as, ptr noundef %i.an)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc17
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %i.ad, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i13, label %.body18, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !110
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.az) #23
  br label %.body18

bb.i:                                             ; preds = %.noexc17
  store ptr %i.at, ptr %i.ao, align 8, !tbaa !107
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !78
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !78
  ret void

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i12, %.noexc.i.i15
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body18

.body18:                                          ; preds = %bb.g, %bb.h, %bb.k
  %eh.lpad-body19 = phi { ptr, i32 } [ %i.be, %bb.k ], [ %i.au, %bb.h ], [ %i.au, %bb.g ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #21
  br label %.body

.body:                                            ; preds = %bb.j, %bb.d, %bb.c, %.body18
  %.pn = phi { ptr, i32 } [ %eh.lpad-body19, %.body18 ], [ %i.bd, %bb.j ], [ %i.u, %bb.d ], [ %i.u, %bb.c ]
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal11ConditionalD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal11ConditionalE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !141  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !115
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !143
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !110
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #23
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !108 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !107 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14
  %.05.i.i.i3 = phi ptr [ %i.av, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14 ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !141 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !142 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i4 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not4.i.i.i.i.i.i.i.i4, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12, label %.lr.ph.i.i.i.i.i.i.i.i5

.lr.ph.i.i.i.i.i.i.i.i5:                          ; preds = %.lr.ph.i.i.i2, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8
  %.05.i.i.i.i.i.i.i.i6 = phi ptr [ %i.ao, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8 ], [ %i.ag, %.lr.ph.i.i.i2 ] ; 3 uses
  %i.aj = load ptr, ptr %.05.i.i.i.i.i.i.i.i6, align 8, !tbaa !112 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i6, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7: ; preds = %.lr.ph.i.i.i.i.i.i.i.i5
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !115
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8: ; preds = %.lr.ph.i.i.i.i.i.i.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i6, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i9 = icmp eq ptr %i.ao, %i.ai
  br i1 %.not.i.i.i.i.i.i.i.i9, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10, label %.lr.ph.i.i.i.i.i.i.i.i5, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8
  %.pr.i.i.i.i.i.i11 = load ptr, ptr %i.af, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10, %.lr.ph.i.i.i2
  %i.ap = phi ptr [ %.pr.i.i.i.i.i.i11, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10 ], [ %i.ag, %.lr.ph.i.i.i2 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i13 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1.i.i.i.i.i.i13, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !143
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14: ; preds = %bb.d, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 40 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.av, %i.ae
  br i1 %.not.i.i.i15, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16, label %.lr.ph.i.i.i2, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14
  %.pr.i17 = load ptr, ptr %i.ab, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit
  %i.aw = phi ptr [ %.pr.i17, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16 ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i19 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i1.i19, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !110
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #23
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18, %bb.e
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal11ConditionalD0Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @_ZN7jsonnet8internal11ConditionalD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 200) #23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal15DesugaredObjectC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(176) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal15DesugaredObjectE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.a, ptr %i.c, align 8, !tbaa !259
  store ptr %i.a, ptr %i.a, align 8, !tbaa !95
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  store i64 0, ptr %i.d, align 8, !tbaa !260
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !95   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.e, %i.b
  br i1 %.not4.i.i, label %_ZNSt7__cxx114listIPN7jsonnet8internal3ASTESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.noexc.i
  %.sroa.01.05.i.i = phi ptr [ %i.l, %.noexc.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.f = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %.noexc.i unwind label %bb.b   ; 2 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !62
  store ptr %i.i, ptr %i.h, align 8, !tbaa !62
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.a) #21
  %i.j = load i64, ptr %i.d, align 8, !tbaa !105
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.d, align 8, !tbaa !105
  %i.l = load ptr, ptr %.sroa.01.05.i.i, align 8, !tbaa !95 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.b
  br i1 %.not.i.i, label %_ZNSt7__cxx114listIPN7jsonnet8internal3ASTESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i, !llvm.loop !257

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.n, %i.a
  br i1 %.not8.i.i.i, label %.body, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %i.n, %bb.b ] ; 2 uses
  %i.o = load ptr, ptr %.09.i.i.i, align 8, !tbaa !95 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #23
  %.not.i.i.i = icmp eq ptr %i.o, %i.a
  br i1 %.not.i.i.i, label %.body, label %.lr.ph.i.i.i, !llvm.loop !6

_ZNSt7__cxx114listIPN7jsonnet8internal3ASTESaIS4_EEC2ERKS6_.exit: ; preds = %.noexc.i, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !261  ; 2 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !156  ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i, label %.noexc7, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx114listIPN7jsonnet8internal3ASTESaIS4_EEC2ERKS6_.exit
  %2 = sdiv exact i64 %i.w, 24
  %i.x = icmp ugt i64 %2, 384307168202282325
  br i1 %i.x, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal15DesugaredObject5FieldEE8allocateEmPKv.exit.i.i.i.i, !prof !109

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal15DesugaredObject5FieldEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #22
          to label %.noexc7 unwind label %bb.d

.noexc7:                                          ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal15DesugaredObject5FieldEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt7__cxx114listIPN7jsonnet8internal3ASTESaIS4_EEC2ERKS6_.exit
  %i.z = phi ptr [ null, %_ZNSt7__cxx114listIPN7jsonnet8internal3ASTESaIS4_EEC2ERKS6_.exit ], [ %i.y, %_ZNSt15__new_allocatorIN7jsonnet8internal15DesugaredObject5FieldEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.z, ptr %i.p, align 8, !tbaa !156
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !261
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !157
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !97  ; 2 uses
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !97  ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not7.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc7, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %i.z, %.noexc7 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %i.ad, %.noexc7 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !263
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.af, %i.ae
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !258

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.noexc7
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.z, %.noexc7 ], [ %i.ag, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.aa, align 8, !tbaa !261
  ret void

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal15DesugaredObject5FieldEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !95  ; 2 uses
  %.not8.i.i = icmp eq ptr %i.ai, %i.a
  br i1 %.not8.i.i, label %.body, label %.lr.ph.i.i8

.lr.ph.i.i8:                                      ; preds = %bb.d, %.lr.ph.i.i8
  %.09.i.i = phi ptr [ %i.aj, %.lr.ph.i.i8 ], [ %i.ai, %bb.d ] ; 2 uses
  %i.aj = load ptr, ptr %.09.i.i, align 8, !tbaa !95 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #23
  %.not.i.i9 = icmp eq ptr %i.aj, %i.a
  br i1 %.not.i.i9, label %.body, label %.lr.ph.i.i8, !llvm.loop !6

.body:                                            ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i8, %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.m, %bb.b ], [ %i.ah, %bb.d ], [ %i.ah, %.lr.ph.i.i8 ], [ %i.m, %.lr.ph.i.i.i ]
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal15DesugaredObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal15DesugaredObjectE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !156  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !157
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #23
  br label %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !95   ; 2 uses
  %.not8.i.i = icmp eq ptr %i.i, %i.h
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIPN7jsonnet8internal3ASTESaIS4_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EED2Ev.exit, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.j, %.lr.ph.i.i ], [ %i.i, %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EED2Ev.exit ] ; 2 uses
  %i.j = load ptr, ptr %.09.i.i, align 8, !tbaa !95 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #23
  %.not.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseIPN7jsonnet8internal3ASTESaIS4_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !6

_ZNSt7__cxx1110_List_baseIPN7jsonnet8internal3ASTESaIS4_EED2Ev.exit: ; preds = %.lr.ph.i.i, %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EED2Ev.exit
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal15DesugaredObjectD0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal15DesugaredObjectE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !156  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !157
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #23, !inline_history !264
  br label %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !95   ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.i, %i.h
  br i1 %.not8.i.i.i, label %_ZN7jsonnet8internal15DesugaredObjectD2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EED2Ev.exit.i, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i ], [ %i.i, %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EED2Ev.exit.i ] ; 2 uses
  %i.j = load ptr, ptr %.09.i.i.i, align 8, !tbaa !95 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #23, !inline_history !264
  %.not.i.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i.i, label %_ZN7jsonnet8internal15DesugaredObjectD2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !6

_ZN7jsonnet8internal15DesugaredObjectD2Ev.exit:   ; preds = %.lr.ph.i.i.i, %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EED2Ev.exit.i
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(176) %0) #21, !inline_history !264
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal6DollarD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal5ErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal8FunctionC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(216) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal8FunctionE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !108  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %.noexc12, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.h, 40
  %i.i = icmp ugt i64 %2, 230584300921369395
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !109

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #22
          to label %.noexc12 unwind label %bb.k

.noexc12:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !108
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !107
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !110
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.q = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.o, ptr %i.p, ptr noundef %i.k)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc12
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !110
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #23
  br label %.body

bb.e:                                             ; preds = %.noexc12
  store ptr %i.q, ptr %i.l, align 8, !tbaa !107
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 152
  invoke void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !266, !range !57, !noundef !58
  store i8 %i.ab, ptr %i.z, align 8, !tbaa !266
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !107 ; 2 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !108 ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  %.not.i.i.i.i13 = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i.i.i.i13, label %.noexc19, label %bb.g

bb.g:                                             ; preds = %bb.f
  %3 = sdiv exact i64 %i.aj, 40
  %i.ak = icmp ugt i64 %3, 230584300921369395
  br i1 %i.ak, label %.noexc.i.i17, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i14, !prof !109

.noexc.i.i17:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc18 unwind label %bb.m

.noexc18:                                         ; preds = %.noexc.i.i17
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i14: ; preds = %bb.g
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #22
          to label %.noexc19 unwind label %bb.m

.noexc19:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i14, %bb.f
  %i.am = phi ptr [ null, %bb.f ], [ %i.al, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i14 ] ; 4 uses
  store ptr %i.am, ptr %i.ac, align 8, !tbaa !108
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !107
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aj
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !110
  %i.aq = load ptr, ptr %i.ad, align 8, !tbaa !26
  %i.ar = load ptr, ptr %i.ae, align 8, !tbaa !26
  %i.as = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.aq, ptr %i.ar, ptr noundef %i.am)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc19
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %i.ac, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i15, label %.body20, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !110
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #23
  br label %.body20

bb.j:                                             ; preds = %.noexc19
  store ptr %i.as, ptr %i.an, align 8, !tbaa !107
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !267
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !267
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.e
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i14, %.noexc.i.i17
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body20

.body20:                                          ; preds = %bb.h, %bb.i, %bb.m
  %eh.lpad-body21 = phi { ptr, i32 } [ %i.be, %bb.m ], [ %i.at, %bb.i ], [ %i.at, %bb.h ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.x) #21
  br label %bb.n

bb.n:                                             ; preds = %.body20, %bb.l
  %.pn = phi { ptr, i32 } [ %eh.lpad-body21, %.body20 ], [ %i.bd, %bb.l ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #21
  br label %.body

.body:                                            ; preds = %bb.k, %bb.d, %bb.c, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.bc, %bb.k ], [ %i.r, %bb.d ], [ %i.r, %bb.c ]
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #21
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal8FunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal8FunctionE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !141  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !115
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !143
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !110
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #23
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !138 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !137 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, %.lr.ph.i.i.i2
  %.05.i.i.i3 = phi ptr [ %i.af, %.lr.ph.i.i.i2 ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 2 uses
  tail call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.05.i.i.i3) #21
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 88 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.af, %i.ae
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i2
  %.pr.i5 = load ptr, ptr %i.ab, align 8, !tbaa !138
  br label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit
  %i.ag = phi ptr [ %.pr.i5, %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i6 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i1.i6, label %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !139
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #23
  br label %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !108 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !107 ; 2 uses
  %.not4.i.i.i7 = icmp eq ptr %i.an, %i.ap
  br i1 %.not4.i.i.i7, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i24, label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i20
  %.05.i.i.i9 = phi ptr [ %i.bg, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i20 ], [ %i.an, %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i9, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !141 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i.i9, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !142 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i10 = icmp eq ptr %i.ar, %i.at
  br i1 %.not4.i.i.i.i.i.i.i.i10, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i18, label %.lr.ph.i.i.i.i.i.i.i.i11

.lr.ph.i.i.i.i.i.i.i.i11:                         ; preds = %.lr.ph.i.i.i8, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i14
  %.05.i.i.i.i.i.i.i.i12 = phi ptr [ %i.az, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i14 ], [ %i.ar, %.lr.ph.i.i.i8 ] ; 3 uses
  %i.au = load ptr, ptr %.05.i.i.i.i.i.i.i.i12, align 8, !tbaa !112 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i12, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i13: ; preds = %.lr.ph.i.i.i.i.i.i.i.i11
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !115
  %i.ay = add i64 %i.ax, 1
  tail call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i14

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i14: ; preds = %.lr.ph.i.i.i.i.i.i.i.i11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i13
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i12, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i15 = icmp eq ptr %i.az, %i.at
  br i1 %.not.i.i.i.i.i.i.i.i15, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i16, label %.lr.ph.i.i.i.i.i.i.i.i11, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i16: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i14
  %.pr.i.i.i.i.i.i17 = load ptr, ptr %i.aq, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i18

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i18: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i16, %.lr.ph.i.i.i8
  %i.ba = phi ptr [ %.pr.i.i.i.i.i.i17, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i16 ], [ %i.ar, %.lr.ph.i.i.i8 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i19 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i1.i.i.i.i.i.i19, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i20, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i18
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i9, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !143
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i20

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i20: ; preds = %bb.e, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i18
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i9, i64 40 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.bg, %i.ap
  br i1 %.not.i.i.i21, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i22, label %.lr.ph.i.i.i8, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i22: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i20
  %.pr.i23 = load ptr, ptr %i.am, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i24

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i24: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i22, %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit
  %i.bh = phi ptr [ %.pr.i23, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i22 ], [ %i.an, %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i25 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i1.i25, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit27, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i24
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !110
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #23
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit27

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit27: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i24, %bb.f
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal8FunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @_ZN7jsonnet8internal8FunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal6ImportD0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal9ImportstrD0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal9ImportbinD0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal5IndexC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(272) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal5IndexE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !268
  store ptr %i.c, ptr %i.a, align 8, !tbaa !268
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !107  ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !108  ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.i, label %.noexc18, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.k, 40
  %i.l = icmp ugt i64 %2, 230584300921369395
  br i1 %i.l, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !109

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #22
          to label %.noexc18 unwind label %bb.r

.noexc18:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.n = phi ptr [ null, %bb.a ], [ %i.m, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.n, ptr %i.d, align 8, !tbaa !108
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !107
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !110
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.t = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.r, ptr %i.s, ptr noundef %i.n)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc18
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !108  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !110
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #23
  br label %.body

bb.e:                                             ; preds = %.noexc18
  store ptr %i.t, ptr %i.o, align 8, !tbaa !107
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !107 ; 2 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !108 ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  %.not.i.i.i.i19 = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i.i.i.i19, label %.noexc25, label %bb.f

bb.f:                                             ; preds = %bb.e
  %3 = sdiv exact i64 %i.aj, 40
  %i.ak = icmp ugt i64 %3, 230584300921369395
  br i1 %i.ak, label %.noexc.i.i23, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i20, !prof !109

.noexc.i.i23:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc24 unwind label %bb.s

.noexc24:                                         ; preds = %.noexc.i.i23
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i20: ; preds = %bb.f
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #22
          to label %.noexc25 unwind label %bb.s

.noexc25:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i20, %bb.e
  %i.am = phi ptr [ null, %bb.e ], [ %i.al, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i20 ] ; 4 uses
  store ptr %i.am, ptr %i.ac, align 8, !tbaa !108
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !107
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aj
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !110
  %i.aq = load ptr, ptr %i.ad, align 8, !tbaa !26
  %i.ar = load ptr, ptr %i.ae, align 8, !tbaa !26
  %i.as = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.aq, ptr %i.ar, ptr noundef %i.am)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc25
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %i.ac, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i21, label %.body26, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !110
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #23
  br label %.body26

bb.i:                                             ; preds = %.noexc25
  store ptr %i.as, ptr %i.an, align 8, !tbaa !107
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !88
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !88
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !107 ; 2 uses
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !108 ; 2 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false)
  %.not.i.i.i.i29 = icmp eq ptr %i.bf, %i.bg
  br i1 %.not.i.i.i.i29, label %.noexc35, label %bb.j

bb.j:                                             ; preds = %bb.i
  %4 = sdiv exact i64 %i.bj, 40
  %i.bk = icmp ugt i64 %4, 230584300921369395
  br i1 %i.bk, label %.noexc.i.i33, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i30, !prof !109

.noexc.i.i33:                                     ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc34 unwind label %bb.t

.noexc34:                                         ; preds = %.noexc.i.i33
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i30: ; preds = %bb.j
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #22
          to label %.noexc35 unwind label %bb.t

.noexc35:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i30, %bb.i
  %i.bm = phi ptr [ null, %bb.i ], [ %i.bl, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i30 ] ; 4 uses
  store ptr %i.bm, ptr %i.bc, align 8, !tbaa !108
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !107
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bj
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !110
  %i.bq = load ptr, ptr %i.bd, align 8, !tbaa !26
  %i.br = load ptr, ptr %i.be, align 8, !tbaa !26
  %i.bs = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.bq, ptr %i.br, ptr noundef %i.bm)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %.noexc35
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %i.bc, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i31 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i31, label %.body36, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !110
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.by) #23
  br label %.body36

bb.m:                                             ; preds = %.noexc35
  store ptr %i.bs, ptr %i.bn, align 8, !tbaa !107
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !89
  store ptr %i.cb, ptr %i.bz, align 8, !tbaa !89
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !107 ; 2 uses
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !108 ; 2 uses
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i8 0, i64 24, i1 false)
  %.not.i.i.i.i39 = icmp eq ptr %i.cf, %i.cg
  br i1 %.not.i.i.i.i39, label %.noexc45, label %bb.n

bb.n:                                             ; preds = %bb.m
  %5 = sdiv exact i64 %i.cj, 40
  %i.ck = icmp ugt i64 %5, 230584300921369395
  br i1 %i.ck, label %.noexc.i.i43, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i40, !prof !109

.noexc.i.i43:                                     ; preds = %bb.n
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc44 unwind label %bb.u

.noexc44:                                         ; preds = %.noexc.i.i43
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i40: ; preds = %bb.n
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #22
          to label %.noexc45 unwind label %bb.u

.noexc45:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i40, %bb.m
  %i.cm = phi ptr [ null, %bb.m ], [ %i.cl, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i40 ] ; 4 uses
  store ptr %i.cm, ptr %i.cc, align 8, !tbaa !108
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !107
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cj
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !110
  %i.cq = load ptr, ptr %i.cd, align 8, !tbaa !26
  %i.cr = load ptr, ptr %i.ce, align 8, !tbaa !26
  %i.cs = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.cq, ptr %i.cr, ptr noundef %i.cm)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %.noexc45
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = load ptr, ptr %i.cc, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i41 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i41, label %.body46, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cv = load ptr, ptr %i.cp, align 8, !tbaa !110
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.cu to i64
  %i.cy = sub i64 %i.cw, %i.cx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cy) #23
  br label %.body46

bb.q:                                             ; preds = %.noexc45
  store ptr %i.cs, ptr %i.cn, align 8, !tbaa !107
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !87
  store ptr %i.db, ptr %i.cz, align 8, !tbaa !87
  ret void

bb.r:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i20, %.noexc.i.i23
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %.body26

bb.t:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i30, %.noexc.i.i33
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.body36

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i40, %.noexc.i.i43
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.body46

.body46:                                          ; preds = %bb.o, %bb.p, %bb.u
  %eh.lpad-body47 = phi { ptr, i32 } [ %i.df, %bb.u ], [ %i.ct, %bb.p ], [ %i.ct, %bb.o ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bc) #21
  br label %.body36

.body36:                                          ; preds = %bb.t, %bb.l, %bb.k, %.body46
  %.pn = phi { ptr, i32 } [ %eh.lpad-body47, %.body46 ], [ %i.de, %bb.t ], [ %i.bt, %bb.l ], [ %i.bt, %bb.k ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ac) #21
  br label %.body26

.body26:                                          ; preds = %bb.s, %bb.h, %bb.g, %.body36
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body36 ], [ %i.dd, %bb.s ], [ %i.at, %bb.h ], [ %i.at, %bb.g ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #21
  br label %.body

.body:                                            ; preds = %bb.r, %bb.d, %bb.c, %.body26
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body26 ], [ %i.dc, %bb.r ], [ %i.u, %bb.d ], [ %i.u, %bb.c ]
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #21
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal5IndexD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal5IndexE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !141  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !115
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !143
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !110
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #23
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !108 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !107 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14
  %.05.i.i.i3 = phi ptr [ %i.av, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14 ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !141 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !142 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i4 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not4.i.i.i.i.i.i.i.i4, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12, label %.lr.ph.i.i.i.i.i.i.i.i5

.lr.ph.i.i.i.i.i.i.i.i5:                          ; preds = %.lr.ph.i.i.i2, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8
  %.05.i.i.i.i.i.i.i.i6 = phi ptr [ %i.ao, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8 ], [ %i.ag, %.lr.ph.i.i.i2 ] ; 3 uses
  %i.aj = load ptr, ptr %.05.i.i.i.i.i.i.i.i6, align 8, !tbaa !112 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i6, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7: ; preds = %.lr.ph.i.i.i.i.i.i.i.i5
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !115
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8: ; preds = %.lr.ph.i.i.i.i.i.i.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7
end_hunk_3
begin_hunk_4_@_ZN7jsonnet8internal5IndexD2Ev:bb.a
  %i.aw = phi ptr [ %.pr.i17, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i16 ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i19 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i1.i19, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !110
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #23
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18, %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !108 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !107 ; 2 uses
  %.not4.i.i.i22 = icmp eq ptr %i.bd, %i.bf
  br i1 %.not4.i.i.i22, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i39, label %.lr.ph.i.i.i23

.lr.ph.i.i.i23:                                   ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i35
  %.05.i.i.i24 = phi ptr [ %i.bw, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i35 ], [ %i.bd, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21 ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i24, i64 16 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !141 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i24, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !142 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i25 = icmp eq ptr %i.bh, %i.bj
  br i1 %.not4.i.i.i.i.i.i.i.i25, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i33, label %.lr.ph.i.i.i.i.i.i.i.i26

.lr.ph.i.i.i.i.i.i.i.i26:                         ; preds = %.lr.ph.i.i.i23, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i29
  %.05.i.i.i.i.i.i.i.i27 = phi ptr [ %i.bp, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i29 ], [ %i.bh, %.lr.ph.i.i.i23 ] ; 3 uses
  %i.bk = load ptr, ptr %.05.i.i.i.i.i.i.i.i27, align 8, !tbaa !112 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i27, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i28: ; preds = %.lr.ph.i.i.i.i.i.i.i.i26
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !115
  %i.bo = add i64 %i.bn, 1
  tail call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i29

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i29: ; preds = %.lr.ph.i.i.i.i.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i28
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i27, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i30 = icmp eq ptr %i.bp, %i.bj
  br i1 %.not.i.i.i.i.i.i.i.i30, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i31, label %.lr.ph.i.i.i.i.i.i.i.i26, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i31: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i29
  %.pr.i.i.i.i.i.i32 = load ptr, ptr %i.bg, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i33

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i33: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i31, %.lr.ph.i.i.i23
  %i.bq = phi ptr [ %.pr.i.i.i.i.i.i32, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i31 ], [ %i.bh, %.lr.ph.i.i.i23 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i34 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i1.i.i.i.i.i.i34, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i35, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i33
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i.i.i24, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !143
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bv) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i35

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i35: ; preds = %bb.f, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i33
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i24, i64 40 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.bw, %i.bf
  br i1 %.not.i.i.i36, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i37, label %.lr.ph.i.i.i23, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i37: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i35
  %.pr.i38 = load ptr, ptr %i.bc, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i39

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i39: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i37, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21
  %i.bx = phi ptr [ %.pr.i38, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i37 ], [ %i.bd, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21 ] ; 3 uses
  %.not.i.i1.i40 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i1.i40, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit42, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i39
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !110
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #23
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit42

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit42: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i39, %bb.g
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !108 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !107 ; 2 uses
  %.not4.i.i.i43 = icmp eq ptr %i.ce, %i.cg
  br i1 %.not4.i.i.i43, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i60, label %.lr.ph.i.i.i44

.lr.ph.i.i.i44:                                   ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit42, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i56
  %.05.i.i.i45 = phi ptr [ %i.cx, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i56 ], [ %i.ce, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit42 ] ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.05.i.i.i45, i64 16 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !141 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.05.i.i.i45, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !142 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i46 = icmp eq ptr %i.ci, %i.ck
  br i1 %.not4.i.i.i.i.i.i.i.i46, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i54, label %.lr.ph.i.i.i.i.i.i.i.i47

.lr.ph.i.i.i.i.i.i.i.i47:                         ; preds = %.lr.ph.i.i.i44, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i50
  %.05.i.i.i.i.i.i.i.i48 = phi ptr [ %i.cq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i50 ], [ %i.ci, %.lr.ph.i.i.i44 ] ; 3 uses
  %i.cl = load ptr, ptr %.05.i.i.i.i.i.i.i.i48, align 8, !tbaa !112 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i48, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i49: ; preds = %.lr.ph.i.i.i.i.i.i.i.i47
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !115
  %i.cp = add i64 %i.co, 1
  tail call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i50

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i50: ; preds = %.lr.ph.i.i.i.i.i.i.i.i47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i49
  %i.cq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i48, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i51 = icmp eq ptr %i.cq, %i.ck
  br i1 %.not.i.i.i.i.i.i.i.i51, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i52, label %.lr.ph.i.i.i.i.i.i.i.i47, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i52: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i50
  %.pr.i.i.i.i.i.i53 = load ptr, ptr %i.ch, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i54

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i54: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i52, %.lr.ph.i.i.i44
  %i.cr = phi ptr [ %.pr.i.i.i.i.i.i53, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i52 ], [ %i.ci, %.lr.ph.i.i.i44 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i55 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i1.i.i.i.i.i.i55, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i56, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i54
  %i.cs = getelementptr inbounds nuw i8, ptr %.05.i.i.i45, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !143
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = sub i64 %i.cu, %i.cv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cw) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i56

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i56: ; preds = %bb.h, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i54
  %i.cx = getelementptr inbounds nuw i8, ptr %.05.i.i.i45, i64 40 ; 2 uses
  %.not.i.i.i57 = icmp eq ptr %i.cx, %i.cg
  br i1 %.not.i.i.i57, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i58, label %.lr.ph.i.i.i44, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i58: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i56
  %.pr.i59 = load ptr, ptr %i.cd, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i60

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i60: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i58, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit42
  %i.cy = phi ptr [ %.pr.i59, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i58 ], [ %i.ce, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit42 ] ; 3 uses
  %.not.i.i1.i61 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i1.i61, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit63, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i60
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !110
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cy to i64
  %i.dd = sub i64 %i.db, %i.dc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dd) #23
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit63

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit63: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i60, %bb.i
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal5IndexD0Ev(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @_ZN7jsonnet8internal5IndexD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 272) #23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal7InSuperC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(184) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal7InSuperE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !270
  store ptr %i.c, ptr %i.a, align 8, !tbaa !270
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !107  ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !108  ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.k, 40
  %i.l = icmp ugt i64 %2, 230584300921369395
  br i1 %i.l, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !109

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #22
          to label %.noexc8 unwind label %bb.j

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.n = phi ptr [ null, %bb.a ], [ %i.m, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.n, ptr %i.d, align 8, !tbaa !108
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !107
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !110
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.t = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.r, ptr %i.s, ptr noundef %i.n)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc8
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !108  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !110
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #23
  br label %.body

bb.e:                                             ; preds = %.noexc8
  store ptr %i.t, ptr %i.o, align 8, !tbaa !107
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !107 ; 2 uses
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !108 ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  %.not.i.i.i.i9 = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i.i.i.i9, label %.noexc15, label %bb.f

bb.f:                                             ; preds = %bb.e
  %3 = sdiv exact i64 %i.ah, 40
  %i.ai = icmp ugt i64 %3, 230584300921369395
  br i1 %i.ai, label %.noexc.i.i13, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i10, !prof !109

.noexc.i.i13:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc14 unwind label %bb.k

.noexc14:                                         ; preds = %.noexc.i.i13
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i10: ; preds = %bb.f
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #22
          to label %.noexc15 unwind label %bb.k

.noexc15:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i10, %bb.e
  %i.ak = phi ptr [ null, %bb.e ], [ %i.aj, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i10 ] ; 4 uses
  store ptr %i.ak, ptr %i.aa, align 8, !tbaa !108
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !107
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !110
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !26
  %i.ap = load ptr, ptr %i.ac, align 8, !tbaa !26
  %i.aq = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.ao, ptr %i.ap, ptr noundef %i.ak)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc15
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %i.aa, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i11, label %.body16, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !110
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.aw) #23
  br label %.body16

bb.i:                                             ; preds = %.noexc15
  store ptr %i.aq, ptr %i.al, align 8, !tbaa !107
  ret void

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i10, %.noexc.i.i13
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body16

.body16:                                          ; preds = %bb.g, %bb.h, %bb.k
  %eh.lpad-body17 = phi { ptr, i32 } [ %i.ay, %bb.k ], [ %i.ar, %bb.h ], [ %i.ar, %bb.g ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #21
  br label %.body

.body:                                            ; preds = %bb.j, %bb.d, %bb.c, %.body16
  %.pn = phi { ptr, i32 } [ %eh.lpad-body17, %.body16 ], [ %i.ax, %bb.j ], [ %i.u, %bb.d ], [ %i.u, %bb.c ]
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal7InSuperD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal7InSuperE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !141  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !115
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !143
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !110
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #23
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !108 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !107 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14
  %.05.i.i.i3 = phi ptr [ %i.av, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14 ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !141 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !142 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i4 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not4.i.i.i.i.i.i.i.i4, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12, label %.lr.ph.i.i.i.i.i.i.i.i5

.lr.ph.i.i.i.i.i.i.i.i5:                          ; preds = %.lr.ph.i.i.i2, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8
  %.05.i.i.i.i.i.i.i.i6 = phi ptr [ %i.ao, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8 ], [ %i.ag, %.lr.ph.i.i.i2 ] ; 3 uses
  %i.aj = load ptr, ptr %.05.i.i.i.i.i.i.i.i6, align 8, !tbaa !112 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i6, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7: ; preds = %.lr.ph.i.i.i.i.i.i.i.i5
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !115
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8: ; preds = %.lr.ph.i.i.i.i.i.i.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i6, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i9 = icmp eq ptr %i.ao, %i.ai
  br i1 %.not.i.i.i.i.i.i.i.i9, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10, label %.lr.ph.i.i.i.i.i.i.i.i5, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8
  %.pr.i.i.i.i.i.i11 = load ptr, ptr %i.af, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10, %.lr.ph.i.i.i2
  %i.ap = phi ptr [ %.pr.i.i.i.i.i.i11, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10 ], [ %i.ag, %.lr.ph.i.i.i2 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i13 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1.i.i.i.i.i.i13, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !143
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14: ; preds = %bb.d, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 40 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN7jsonnet8internal13LiteralStringC2ERKS1_:bb.a
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !112 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.am = load i64, ptr %i.al, align 8, !tbaa !113 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.am, ptr %i.a, align 8, !tbaa !114
  %i.an = icmp ugt i64 %i.am, 15
  br i1 %i.an, label %.noexc.i16, label %._crit_edge.i.i15

.noexc.i16:                                       ; preds = %bb.h
  %i.ao = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc17 unwind label %bb.n   ; 2 uses

.noexc17:                                         ; preds = %.noexc.i16
  store ptr %i.ao, ptr %i.ah, align 8, !tbaa !112
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !114
  store i64 %i.ap, ptr %i.aj, align 8, !tbaa !115
  br label %._crit_edge.i.i15

._crit_edge.i.i15:                                ; preds = %.noexc17, %bb.h
  %i.aq = phi ptr [ %i.ao, %.noexc17 ], [ %i.aj, %bb.h ] ; 2 uses
  switch i64 %i.am, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i15
  %i.ar = load i8, ptr %i.ak, align 1, !tbaa !115
  store i8 %i.ar, ptr %i.aq, align 1, !tbaa !115
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr align 1 %i.ak, i64 %i.am, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i15
  %i.as = load i64, ptr %i.a, align 8, !tbaa !114 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 %i.as, ptr %i.at, align 8, !tbaa !113
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !112
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as
  store i8 0, ptr %i.av, align 1, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i, %.noexc.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit

bb.m:                                             ; preds = %.noexc.i13
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %.noexc.i16
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %i.s, align 8, !tbaa !112 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.u
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.bb = load i64, ptr %i.u, align 8, !tbaa !115
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.m ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ay, %bb.n ] ; 2 uses
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !161 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.e
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bf = load i64, ptr %i.e, align 8, !tbaa !115
  %i.bg = shl i64 %i.bf, 2
  %i.bh = add i64 %i.bg, 4
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #23
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.l ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #21
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal13LiteralStringD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal13LiteralStringE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !115
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !112  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !115
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !161  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8, !tbaa !115
  %i.r = shl i64 %i.q, 2
  %i.s = add i64 %i.r, 4
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.s) #23
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal13LiteralStringD0Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal13LiteralStringE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !115
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #23, !inline_history !279
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !112  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !115
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #23, !inline_history !279
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !161  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN7jsonnet8internal13LiteralStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !115
  %i.r = shl i64 %i.q, 2
  %i.s = add i64 %i.r, 4
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.s) #23, !inline_history !279
  br label %_ZN7jsonnet8internal13LiteralStringD2Ev.exit

_ZN7jsonnet8internal13LiteralStringD2Ev.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(232) %0) #21, !inline_history !279
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #23
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !163    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 176
  %i.g = icmp ugt i64 %2, 52405522936674862
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal5Local4BindEE8allocateEmPKv.exit.i.i.i, !prof !109

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal5Local4BindEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #22
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal5Local4BindEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7jsonnet8internal5Local4BindEE8allocateEmPKv.exit.i.i.i ] ; 7 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !163
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !162
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !164
  %i.m = load ptr, ptr %1, align 8, !tbaa !91     ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal5Local4BindESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN7jsonnet8internal5Local4BindEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN7jsonnet8internal5Local4BindEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 4 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN7jsonnet8internal5Local4BindEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN7jsonnet8internal5Local4BindC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(176) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN7jsonnet8internal5Local4BindEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN7jsonnet8internal5Local4BindEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 176 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 176 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal5Local4BindESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !280

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #21 ; 0 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.i, %.014.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindEEvT_S5_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %bb.d ] ; 2 uses
  tail call void @_ZN7jsonnet8internal5Local4BindD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %.05.i.i.i.i.i.i) #21
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 176 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, %.014.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindEEvT_S5_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPN7jsonnet8internal5Local4BindEEvT_S5_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  invoke void @__cxa_rethrow() #24
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindEEvT_S5_.exit.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #20
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindEEvT_S5_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal5Local4BindESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN7jsonnet8internal5Local4BindEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructIN7jsonnet8internal5Local4BindEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !162
  ret void

.body:                                            ; preds = %bb.e
  %i.x = load ptr, ptr %0, align 8, !tbaa !163    ; 3 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7jsonnet8internal5Local4BindESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !164
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ab) #23
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal5Local4BindESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN7jsonnet8internal5Local4BindESaIS3_EED2Ev.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.u
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal5LocalD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal5LocalE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !162  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZN7jsonnet8internal5Local4BindD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %.05.i.i.i) #21
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 176 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !163
  br label %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.f = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !164
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #23
  br label %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exit.i, %bb.b
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal5LocalD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal5LocalE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !162  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZN7jsonnet8internal5Local4BindD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %.05.i.i.i.i) #21, !inline_history !281
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 176 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !163
  br label %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.f = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i.i, label %_ZN7jsonnet8internal5LocalD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !164
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #23, !inline_history !281
  br label %_ZN7jsonnet8internal5LocalD2Ev.exit

_ZN7jsonnet8internal5LocalD2Ev.exit:              ; preds = %_ZSt8_DestroyIPN7jsonnet8internal5Local4BindES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.b
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(160) %0) #21, !inline_history !281
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal5Local4BindC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(176) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !108    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %2, 230584300921369395
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !109

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #22
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !108
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !107
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !110
  %i.m = load ptr, ptr %1, align 8, !tbaa !26
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !108    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !110
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #23
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.pn, %.body ], [ %i.p, %bb.e ], [ %i.p, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !107
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !282
  store ptr %i.x, ptr %i.v, align 8, !tbaa !282
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !107 ; 2 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !108 ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %.not.i.i.i.i19 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i.i.i19, label %.noexc24, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit
  %3 = sdiv exact i64 %i.af, 40
  %i.ag = icmp ugt i64 %3, 230584300921369395
  br i1 %i.ag, label %.noexc.i.i23, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i20, !prof !109

.noexc.i.i23:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %.noexc.i.i23
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i20: ; preds = %bb.f
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #22
          to label %.noexc24 unwind label %bb.w

.noexc24:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i20, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit
  %i.ai = phi ptr [ null, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit ], [ %i.ah, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i20 ] ; 4 uses
  store ptr %i.ai, ptr %i.y, align 8, !tbaa !108
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !107
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !110
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !26
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !26
  %i.ao = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.am, ptr %i.an, ptr noundef %i.ai)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc24
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %i.y, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i21, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !110
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.au) #23
  br label %.body

bb.i:                                             ; preds = %.noexc24
  store ptr %i.ao, ptr %i.aj, align 8, !tbaa !107
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.av, ptr noundef nonnull align 8 dereferenceable(9) %i.aw, i64 9, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !107 ; 2 uses
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !108 ; 2 uses
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false)
  %.not.i.i.i.i26 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not.i.i.i.i26, label %.noexc32, label %bb.j

bb.j:                                             ; preds = %bb.i
  %4 = sdiv exact i64 %i.be, 40
  %i.bf = icmp ugt i64 %4, 230584300921369395
  br i1 %i.bf, label %.noexc.i.i30, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i27, !prof !109

.noexc.i.i30:                                     ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc31 unwind label %bb.x

.noexc31:                                         ; preds = %.noexc.i.i30
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i27: ; preds = %bb.j
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #22
          to label %.noexc32 unwind label %bb.x

.noexc32:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i27, %bb.i
  %i.bh = phi ptr [ null, %bb.i ], [ %i.bg, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i27 ] ; 4 uses
  store ptr %i.bh, ptr %i.ax, align 8, !tbaa !108
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !107
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.be
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !110
  %i.bl = load ptr, ptr %i.ay, align 8, !tbaa !26
  %i.bm = load ptr, ptr %i.az, align 8, !tbaa !26
  %i.bn = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.bl, ptr %i.bm, ptr noundef %i.bh)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %.noexc32
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %i.ax, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i28, label %.body33, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !110
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bp to i64
  %i.bt = sub i64 %i.br, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bt) #23
  br label %.body33

bb.m:                                             ; preds = %.noexc32
  store ptr %i.bn, ptr %i.bi, align 8, !tbaa !107
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %bb.n unwind label %bb.y

bb.n:                                             ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !283, !range !57, !noundef !58
  store i8 %i.by, ptr %i.bw, align 8, !tbaa !283
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !107 ; 2 uses
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !108 ; 2 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i8 0, i64 24, i1 false)
  %.not.i.i.i.i36 = icmp eq ptr %i.cc, %i.cd
  br i1 %.not.i.i.i.i36, label %.noexc42, label %bb.o

bb.o:                                             ; preds = %bb.n
  %5 = sdiv exact i64 %i.cg, 40
  %i.ch = icmp ugt i64 %5, 230584300921369395
  br i1 %i.ch, label %.noexc.i.i40, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i37, !prof !109

.noexc.i.i40:                                     ; preds = %bb.o
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc41 unwind label %bb.z

.noexc41:                                         ; preds = %.noexc.i.i40
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i37: ; preds = %bb.o
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #22
          to label %.noexc42 unwind label %bb.z

.noexc42:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i37, %bb.n
  %i.cj = phi ptr [ null, %bb.n ], [ %i.ci, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i37 ] ; 4 uses
  store ptr %i.cj, ptr %i.bz, align 8, !tbaa !108
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !107
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cg
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !110
  %i.cn = load ptr, ptr %i.ca, align 8, !tbaa !26
  %i.co = load ptr, ptr %i.cb, align 8, !tbaa !26
  %i.cp = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.cn, ptr %i.co, ptr noundef %i.cj)
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %.noexc42
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = load ptr, ptr %i.bz, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i38 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i38, label %.body43, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cs = load ptr, ptr %i.cm, align 8, !tbaa !110
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cr to i64
  %i.cv = sub i64 %i.ct, %i.cu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cv) #23
  br label %.body43

bb.r:                                             ; preds = %.noexc42
  store ptr %i.cp, ptr %i.ck, align 8, !tbaa !107
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !107 ; 2 uses
  %i.da = load ptr, ptr %i.cx, align 8, !tbaa !108 ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i8 0, i64 24, i1 false)
  %.not.i.i.i.i46 = icmp eq ptr %i.cz, %i.da
  br i1 %.not.i.i.i.i46, label %.noexc52, label %bb.s

bb.s:                                             ; preds = %bb.r
  %6 = sdiv exact i64 %i.dd, 40
  %i.de = icmp ugt i64 %6, 230584300921369395
  br i1 %i.de, label %.noexc.i.i50, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i47, !prof !109

.noexc.i.i50:                                     ; preds = %bb.s
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc51 unwind label %bb.aa

.noexc51:                                         ; preds = %.noexc.i.i50
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i47: ; preds = %bb.s
  %i.df = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #22
          to label %.noexc52 unwind label %bb.aa

.noexc52:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i47, %bb.r
  %i.dg = phi ptr [ null, %bb.r ], [ %i.df, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i47 ] ; 4 uses
  store ptr %i.dg, ptr %i.cw, align 8, !tbaa !108
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !107
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dd
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !110
  %i.dk = load ptr, ptr %i.cx, align 8, !tbaa !26
  %i.dl = load ptr, ptr %i.cy, align 8, !tbaa !26
  %i.dm = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.dk, ptr %i.dl, ptr noundef %i.dg)
          to label %bb.v unwind label %bb.t

bb.t:                                             ; preds = %.noexc52
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = load ptr, ptr %i.cw, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i48 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i48, label %.body53, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dp = load ptr, ptr %i.dj, align 8, !tbaa !110
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.do to i64
  %i.ds = sub i64 %i.dq, %i.dr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.ds) #23
  br label %.body53

bb.v:                                             ; preds = %.noexc52
  store ptr %i.dm, ptr %i.dh, align 8, !tbaa !107
  ret void

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i20, %.noexc.i.i23
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i27, %.noexc.i.i30
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body33

bb.y:                                             ; preds = %bb.m
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.z:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i37, %.noexc.i.i40
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body43

bb.aa:                                            ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i47, %.noexc.i.i50
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.body53

.body53:                                          ; preds = %bb.t, %bb.u, %bb.aa
  %eh.lpad-body54 = phi { ptr, i32 } [ %i.dx, %bb.aa ], [ %i.dn, %bb.u ], [ %i.dn, %bb.t ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bz) #21
  br label %.body43

.body43:                                          ; preds = %bb.z, %bb.q, %bb.p, %.body53
  %.pn = phi { ptr, i32 } [ %eh.lpad-body54, %.body53 ], [ %i.dw, %bb.z ], [ %i.cq, %bb.q ], [ %i.cq, %bb.p ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bu) #21
  br label %bb.ab

bb.ab:                                            ; preds = %.body43, %bb.y
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body43 ], [ %i.dv, %bb.y ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ax) #21
  br label %.body33

.body33:                                          ; preds = %bb.x, %bb.l, %bb.k, %bb.ab
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ab ], [ %i.du, %bb.x ], [ %i.bo, %bb.l ], [ %i.bo, %bb.k ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.y) #21
  br label %.body

.body:                                            ; preds = %bb.w, %bb.h, %bb.g, %.body33
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body33 ], [ %i.dt, %bb.w ], [ %i.ap, %bb.h ], [ %i.ap, %bb.g ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #21
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal5Local4BindD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !141  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !115
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !143
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !110
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #23
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !108 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !107 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14
  %.05.i.i.i3 = phi ptr [ %i.av, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14 ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !141 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !142 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i4 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not4.i.i.i.i.i.i.i.i4, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12, label %.lr.ph.i.i.i.i.i.i.i.i5

.lr.ph.i.i.i.i.i.i.i.i5:                          ; preds = %.lr.ph.i.i.i2, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8
  %.05.i.i.i.i.i.i.i.i6 = phi ptr [ %i.ao, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8 ], [ %i.ag, %.lr.ph.i.i.i2 ] ; 3 uses
  %i.aj = load ptr, ptr %.05.i.i.i.i.i.i.i.i6, align 8, !tbaa !112 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i6, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7: ; preds = %.lr.ph.i.i.i.i.i.i.i.i5
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !115
end_hunk_5
begin_hunk_6_@_ZN7jsonnet8internal5Local4BindD2Ev:bb.a
  %.pr.i44 = load ptr, ptr %i.bn, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i45

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i45: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i43, %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit
  %i.ci = phi ptr [ %.pr.i44, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i43 ], [ %i.bo, %_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i46 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i1.i46, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit48, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i45
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !110
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.ci to i64
  %i.cn = sub i64 %i.cl, %i.cm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cn) #23
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit48

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit48: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i45, %bb.h
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !108 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !107 ; 2 uses
  %.not4.i.i.i49 = icmp eq ptr %i.cp, %i.cr
  br i1 %.not4.i.i.i49, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i66, label %.lr.ph.i.i.i50

.lr.ph.i.i.i50:                                   ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit48, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i62
  %.05.i.i.i51 = phi ptr [ %i.di, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i62 ], [ %i.cp, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit48 ] ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.05.i.i.i51, i64 16 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !141 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.05.i.i.i51, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !142 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i52 = icmp eq ptr %i.ct, %i.cv
  br i1 %.not4.i.i.i.i.i.i.i.i52, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i60, label %.lr.ph.i.i.i.i.i.i.i.i53

.lr.ph.i.i.i.i.i.i.i.i53:                         ; preds = %.lr.ph.i.i.i50, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i56
  %.05.i.i.i.i.i.i.i.i54 = phi ptr [ %i.db, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i56 ], [ %i.ct, %.lr.ph.i.i.i50 ] ; 3 uses
  %i.cw = load ptr, ptr %.05.i.i.i.i.i.i.i.i54, align 8, !tbaa !112 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i54, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i55: ; preds = %.lr.ph.i.i.i.i.i.i.i.i53
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !115
  %i.da = add i64 %i.cz, 1
  tail call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i56

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i56: ; preds = %.lr.ph.i.i.i.i.i.i.i.i53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i55
  %i.db = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i54, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i57 = icmp eq ptr %i.db, %i.cv
  br i1 %.not.i.i.i.i.i.i.i.i57, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i58, label %.lr.ph.i.i.i.i.i.i.i.i53, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i58: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i56
  %.pr.i.i.i.i.i.i59 = load ptr, ptr %i.cs, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i60

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i60: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i58, %.lr.ph.i.i.i50
  %i.dc = phi ptr [ %.pr.i.i.i.i.i.i59, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i58 ], [ %i.ct, %.lr.ph.i.i.i50 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i61 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i1.i.i.i.i.i.i61, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i62, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i60
  %i.dd = getelementptr inbounds nuw i8, ptr %.05.i.i.i51, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !143
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = sub i64 %i.df, %i.dg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dh) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i62

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i62: ; preds = %bb.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i60
  %i.di = getelementptr inbounds nuw i8, ptr %.05.i.i.i51, i64 40 ; 2 uses
  %.not.i.i.i63 = icmp eq ptr %i.di, %i.cr
  br i1 %.not.i.i.i63, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i64, label %.lr.ph.i.i.i50, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i64: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i62
  %.pr.i65 = load ptr, ptr %i.co, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i66

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i66: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i64, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit48
  %i.dj = phi ptr [ %.pr.i65, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i64 ], [ %i.cp, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit48 ] ; 3 uses
  %.not.i.i1.i67 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i1.i67, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit69, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i66
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !110
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dj to i64
  %i.do = sub i64 %i.dm, %i.dn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %i.do) #23
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit69

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit69: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i66, %bb.j
  %i.dp = load ptr, ptr %0, align 8, !tbaa !108   ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !107 ; 2 uses
  %.not4.i.i.i70 = icmp eq ptr %i.dp, %i.dr
  br i1 %.not4.i.i.i70, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i87, label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit69, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i83
  %.05.i.i.i72 = phi ptr [ %i.ei, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i83 ], [ %i.dp, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit69 ] ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.05.i.i.i72, i64 16 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !141 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.05.i.i.i72, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !142 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i73 = icmp eq ptr %i.dt, %i.dv
  br i1 %.not4.i.i.i.i.i.i.i.i73, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i81, label %.lr.ph.i.i.i.i.i.i.i.i74

.lr.ph.i.i.i.i.i.i.i.i74:                         ; preds = %.lr.ph.i.i.i71, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i77
  %.05.i.i.i.i.i.i.i.i75 = phi ptr [ %i.eb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i77 ], [ %i.dt, %.lr.ph.i.i.i71 ] ; 3 uses
  %i.dw = load ptr, ptr %.05.i.i.i.i.i.i.i.i75, align 8, !tbaa !112 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i75, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i76: ; preds = %.lr.ph.i.i.i.i.i.i.i.i74
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !115
  %i.ea = add i64 %i.dz, 1
  tail call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i77

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i77: ; preds = %.lr.ph.i.i.i.i.i.i.i.i74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i76
  %i.eb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i75, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i78 = icmp eq ptr %i.eb, %i.dv
  br i1 %.not.i.i.i.i.i.i.i.i78, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i79, label %.lr.ph.i.i.i.i.i.i.i.i74, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i79: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i77
  %.pr.i.i.i.i.i.i80 = load ptr, ptr %i.ds, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i81

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i81: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i79, %.lr.ph.i.i.i71
  %i.ec = phi ptr [ %.pr.i.i.i.i.i.i80, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i79 ], [ %i.dt, %.lr.ph.i.i.i71 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i82 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i1.i.i.i.i.i.i82, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i83, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i81
  %i.ed = getelementptr inbounds nuw i8, ptr %.05.i.i.i72, i64 32
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !143
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = ptrtoint ptr %i.ec to i64
  %i.eh = sub i64 %i.ef, %i.eg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.eh) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i83

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i83: ; preds = %bb.k, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i81
  %i.ei = getelementptr inbounds nuw i8, ptr %.05.i.i.i72, i64 40 ; 2 uses
  %.not.i.i.i84 = icmp eq ptr %i.ei, %i.dr
  br i1 %.not.i.i.i84, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i85, label %.lr.ph.i.i.i71, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i85: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i83
  %.pr.i86 = load ptr, ptr %0, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i87

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i87: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i85, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit69
  %i.ej = phi ptr [ %.pr.i86, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i85 ], [ %i.dp, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit69 ] ; 3 uses
  %.not.i.i1.i88 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i1.i88, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit90, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i87
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !110
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %i.ej to i64
  %i.eo = sub i64 %i.em, %i.en
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.eo) #23
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit90

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit90: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i87, %bb.l
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal6ObjectC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(184) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal6ObjectE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke void @_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.e = load i8, ptr %i.d, align 8, !tbaa !285, !range !57, !noundef !58
  store i8 %i.e, ptr %i.c, align 8, !tbaa !285
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !107  ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !108  ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i.i.i, label %.noexc8, label %bb.c

bb.c:                                             ; preds = %bb.b
  %2 = sdiv exact i64 %i.m, 40
  %i.n = icmp ugt i64 %2, 230584300921369395
  br i1 %i.n, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !109

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #22
          to label %.noexc8 unwind label %bb.h

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.b
  %i.p = phi ptr [ null, %bb.b ], [ %i.o, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.p, ptr %i.f, align 8, !tbaa !108
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !107
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !110
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.v = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.t, ptr %i.u, ptr noundef %i.p)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %.noexc8
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !108  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !110
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ab) #23
  br label %.body

bb.f:                                             ; preds = %.noexc8
  store ptr %i.v, ptr %i.q, align 8, !tbaa !107
  ret void

bb.g:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %i.w, %bb.e ], [ %i.w, %bb.d ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #21
  br label %bb.i

bb.i:                                             ; preds = %.body, %bb.g
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ac, %bb.g ]
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !170    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 288
  %i.g = icmp ugt i64 %2, 32025597350190193
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal11ObjectFieldEE8allocateEmPKv.exit.i.i.i, !prof !109

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal11ObjectFieldEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #22
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal11ObjectFieldEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7jsonnet8internal11ObjectFieldEE8allocateEmPKv.exit.i.i.i ] ; 7 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !170
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !169
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !171
  %i.m = load ptr, ptr %1, align 8, !tbaa !60     ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal11ObjectFieldESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN7jsonnet8internal11ObjectFieldEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN7jsonnet8internal11ObjectFieldEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 4 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN7jsonnet8internal11ObjectFieldEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN7jsonnet8internal11ObjectFieldC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(288) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN7jsonnet8internal11ObjectFieldEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN7jsonnet8internal11ObjectFieldEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 288 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 288 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal11ObjectFieldESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !286

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #21 ; 0 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.i, %.014.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldEEvT_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %bb.d ] ; 2 uses
  tail call void @_ZN7jsonnet8internal11ObjectFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %.05.i.i.i.i.i.i) #21
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 288 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, %.014.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldEEvT_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldEEvT_S4_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  invoke void @__cxa_rethrow() #24
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldEEvT_S4_.exit.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #20
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldEEvT_S4_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal11ObjectFieldESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN7jsonnet8internal11ObjectFieldEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructIN7jsonnet8internal11ObjectFieldEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !169
  ret void

.body:                                            ; preds = %bb.e
  %i.x = load ptr, ptr %0, align 8, !tbaa !170    ; 3 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7jsonnet8internal11ObjectFieldESaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !171
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ab) #23
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal11ObjectFieldESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN7jsonnet8internal11ObjectFieldESaIS2_EED2Ev.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.u
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !170    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !169  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN7jsonnet8internal11ObjectFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %.05.i.i) #21
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 288 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !8

_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !170
  br label %_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7jsonnet8internal11ObjectFieldESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldES2_EvT_S4_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !171
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #23
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal11ObjectFieldESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN7jsonnet8internal11ObjectFieldESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldES2_EvT_S4_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal6ObjectE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !141  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !115
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !143
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !110
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #23
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !170 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !169 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, %.lr.ph.i.i.i2
  %.05.i.i.i3 = phi ptr [ %i.af, %.lr.ph.i.i.i2 ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 2 uses
  tail call void @_ZN7jsonnet8internal11ObjectFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %.05.i.i.i3) #21
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 288 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.af, %i.ae
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !8

_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i2
  %.pr.i5 = load ptr, ptr %i.ab, align 8, !tbaa !170
  br label %_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit
  %i.ag = phi ptr [ %.pr.i5, %_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i6 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i1.i6, label %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldES2_EvT_S4_RSaIT0_E.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !171
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #23
  br label %_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldES2_EvT_S4_RSaIT0_E.exit.i, %bb.d
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal6ObjectD0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @_ZN7jsonnet8internal6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 184) #23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal11ObjectFieldC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(288) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !61
  store i32 %i.b, ptr %0, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !107  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !108  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.j, 40
  %i.k = icmp ugt i64 %2, 230584300921369395
  br i1 %i.k, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !109

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #22
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.m = phi ptr [ null, %bb.a ], [ %i.l, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.m, ptr %i.c, align 8, !tbaa !108
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !107
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !110
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.s = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.q, ptr %i.r, ptr noundef %i.m)
          to label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !108  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !110
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #23
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %.body ], [ %i.t, %bb.e ], [ %i.t, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit: ; preds = %bb.c
  store ptr %i.s, ptr %i.n, align 8, !tbaa !107
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !107 ; 2 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !108 ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %.not.i.i.i.i26 = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i.i.i.i26, label %.noexc31, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit
  %3 = sdiv exact i64 %i.ag, 40
  %i.ah = icmp ugt i64 %3, 230584300921369395
  br i1 %i.ah, label %.noexc.i.i30, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i27, !prof !109

.noexc.i.i30:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %.noexc.i.i30
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i27: ; preds = %bb.f
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #22
          to label %.noexc31 unwind label %bb.ad

.noexc31:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i27, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit
  %i.aj = phi ptr [ null, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EEC2ERKS4_.exit ], [ %i.ai, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i27 ] ; 4 uses
  store ptr %i.aj, ptr %i.z, align 8, !tbaa !108
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !107
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !110
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !26
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !26
  %i.ap = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.an, ptr %i.ao, ptr noundef %i.aj)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc31
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %i.z, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i28, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !110
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.av) #23
  br label %.body

bb.i:                                             ; preds = %.noexc31
  store ptr %i.ap, ptr %i.ak, align 8, !tbaa !107
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !107 ; 2 uses
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !108 ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  %.not.i.i.i.i33 = icmp eq ptr %i.az, %i.ba
  br i1 %.not.i.i.i.i33, label %.noexc39, label %bb.j

bb.j:                                             ; preds = %bb.i
  %4 = sdiv exact i64 %i.bd, 40
  %i.be = icmp ugt i64 %4, 230584300921369395
  br i1 %i.be, label %.noexc.i.i37, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i34, !prof !109

.noexc.i.i37:                                     ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc38 unwind label %bb.ae

.noexc38:                                         ; preds = %.noexc.i.i37
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i34: ; preds = %bb.j
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #22
          to label %.noexc39 unwind label %bb.ae

.noexc39:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i34, %bb.i
  %i.bg = phi ptr [ null, %bb.i ], [ %i.bf, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i34 ] ; 4 uses
  store ptr %i.bg, ptr %i.aw, align 8, !tbaa !108
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !107
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bd
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !110
  %i.bk = load ptr, ptr %i.ax, align 8, !tbaa !26
  %i.bl = load ptr, ptr %i.ay, align 8, !tbaa !26
  %i.bm = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.bk, ptr %i.bl, ptr noundef %i.bg)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %.noexc39
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %i.aw, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i35 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i35, label %.body40, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !110
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = sub i64 %i.bq, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bs) #23
  br label %.body40

bb.m:                                             ; preds = %.noexc39
  store ptr %i.bm, ptr %i.bh, align 8, !tbaa !107
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !107 ; 2 uses
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !108 ; 2 uses
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i8 0, i64 24, i1 false)
  %.not.i.i.i.i43 = icmp eq ptr %i.bw, %i.bx
  br i1 %.not.i.i.i.i43, label %.noexc49, label %bb.n

bb.n:                                             ; preds = %bb.m
  %5 = sdiv exact i64 %i.ca, 40
  %i.cb = icmp ugt i64 %5, 230584300921369395
  br i1 %i.cb, label %.noexc.i.i47, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i44, !prof !109

.noexc.i.i47:                                     ; preds = %bb.n
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc48 unwind label %bb.af

.noexc48:                                         ; preds = %.noexc.i.i47
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i44: ; preds = %bb.n
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #22
          to label %.noexc49 unwind label %bb.af

.noexc49:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i44, %bb.m
  %i.cd = phi ptr [ null, %bb.m ], [ %i.cc, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i44 ] ; 4 uses
  store ptr %i.cd, ptr %i.bt, align 8, !tbaa !108
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !107
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ca
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !110
  %i.ch = load ptr, ptr %i.bu, align 8, !tbaa !26
  %i.ci = load ptr, ptr %i.bv, align 8, !tbaa !26
  %i.cj = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.ch, ptr %i.ci, ptr noundef %i.cd)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %.noexc49
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %i.bt, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i45 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i45, label %.body50, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = load ptr, ptr %i.cg, align 8, !tbaa !110
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.cl to i64
  %i.cp = sub i64 %i.cn, %i.co
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cp) #23
  br label %.body50

bb.q:                                             ; preds = %.noexc49
  store ptr %i.cj, ptr %i.ce, align 8, !tbaa !107
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 24, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  store ptr %i.cu, ptr %i.cs, align 8, !tbaa !111
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !112 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !113 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.cx, ptr %i.a, align 8, !tbaa !114
  %i.cy = icmp ugt i64 %i.cx, 15
  br i1 %i.cy, label %.noexc.i.i53, label %._crit_edge.i.i.i

.noexc.i.i53:                                     ; preds = %bb.q
  %i.cz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(64) %i.cs, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc54 unwind label %bb.ag  ; 2 uses

.noexc54:                                         ; preds = %.noexc.i.i53
  store ptr %i.cz, ptr %i.cs, align 8, !tbaa !112
  %i.da = load i64, ptr %i.a, align 8, !tbaa !114
  store i64 %i.da, ptr %i.cu, align 8, !tbaa !115
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc54, %bb.q
  %i.db = phi ptr [ %i.cz, %.noexc54 ], [ %i.cu, %bb.q ] ; 2 uses
  switch i64 %i.cx, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %bb.t
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i
  %i.dc = load i8, ptr %i.cv, align 1, !tbaa !115
  store i8 %i.dc, ptr %i.db, align 1, !tbaa !115
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.db, ptr align 1 %i.cv, i64 %i.cx, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %._crit_edge.i.i.i
  %i.dd = load i64, ptr %i.a, align 8, !tbaa !114 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !113
  %i.df = load ptr, ptr %i.cs, align 8, !tbaa !112
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dd
  store i8 0, ptr %i.dg, align 1, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %i.di, i64 32, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 192
  invoke void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, ptr noundef nonnull align 8 dereferenceable(24) %i.dk)
          to label %bb.u unwind label %bb.ah

bb.u:                                             ; preds = %bb.t
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.dn = load i8, ptr %i.dm, align 8, !tbaa !287, !range !57, !noundef !58
  store i8 %i.dn, ptr %i.dl, align 8, !tbaa !287
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !107 ; 2 uses
  %i.ds = load ptr, ptr %i.dp, align 8, !tbaa !108 ; 2 uses
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.do, i8 0, i64 24, i1 false)
  %.not.i.i.i.i55 = icmp eq ptr %i.dr, %i.ds
  br i1 %.not.i.i.i.i55, label %.noexc61, label %bb.v

bb.v:                                             ; preds = %bb.u
  %6 = sdiv exact i64 %i.dv, 40
  %i.dw = icmp ugt i64 %6, 230584300921369395
  br i1 %i.dw, label %.noexc.i.i59, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i56, !prof !109

.noexc.i.i59:                                     ; preds = %bb.v
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc60 unwind label %bb.ai

.noexc60:                                         ; preds = %.noexc.i.i59
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i56: ; preds = %bb.v
  %i.dx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dv) #22
          to label %.noexc61 unwind label %bb.ai

.noexc61:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i56, %bb.u
  %i.dy = phi ptr [ null, %bb.u ], [ %i.dx, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i56 ] ; 4 uses
  store ptr %i.dy, ptr %i.do, align 8, !tbaa !108
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !107
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dv
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !110
  %i.ec = load ptr, ptr %i.dp, align 8, !tbaa !26
  %i.ed = load ptr, ptr %i.dq, align 8, !tbaa !26
  %i.ee = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.ec, ptr %i.ed, ptr noundef %i.dy)
          to label %bb.y unwind label %bb.w

bb.w:                                             ; preds = %.noexc61
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eg = load ptr, ptr %i.do, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i57 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i57, label %.body62, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eh = load ptr, ptr %i.eb, align 8, !tbaa !110
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.eg to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.ek) #23
  br label %.body62

bb.y:                                             ; preds = %.noexc61
  store ptr %i.ee, ptr %i.dz, align 8, !tbaa !107
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.el, ptr noundef nonnull align 8 dereferenceable(16) %i.em, i64 16, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !107 ; 2 uses
  %i.er = load ptr, ptr %i.eo, align 8, !tbaa !108 ; 2 uses
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = sub i64 %i.es, %i.et                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, i8 0, i64 24, i1 false)
  %.not.i.i.i.i65 = icmp eq ptr %i.eq, %i.er
  br i1 %.not.i.i.i.i65, label %.noexc71, label %bb.z

bb.z:                                             ; preds = %bb.y
  %7 = sdiv exact i64 %i.eu, 40
  %i.ev = icmp ugt i64 %7, 230584300921369395
  br i1 %i.ev, label %.noexc.i.i69, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i66, !prof !109

.noexc.i.i69:                                     ; preds = %bb.z
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc70 unwind label %bb.aj

.noexc70:                                         ; preds = %.noexc.i.i69
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i66: ; preds = %bb.z
  %i.ew = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eu) #22
          to label %.noexc71 unwind label %bb.aj

.noexc71:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i66, %bb.y
  %i.ex = phi ptr [ null, %bb.y ], [ %i.ew, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i66 ] ; 4 uses
  store ptr %i.ex, ptr %i.en, align 8, !tbaa !108
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !107
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.eu
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !110
  %i.fb = load ptr, ptr %i.eo, align 8, !tbaa !26
  %i.fc = load ptr, ptr %i.ep, align 8, !tbaa !26
  %i.fd = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.fb, ptr %i.fc, ptr noundef %i.ex)
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %.noexc71
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ff = load ptr, ptr %i.en, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i67 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i67, label %.body72, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fg = load ptr, ptr %i.fa, align 8, !tbaa !110
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = ptrtoint ptr %i.ff to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.fj) #23
  br label %.body72

bb.ac:                                            ; preds = %.noexc71
  store ptr %i.fd, ptr %i.ey, align 8, !tbaa !107
  ret void

bb.ad:                                            ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i27, %.noexc.i.i30
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i34, %.noexc.i.i37
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.body40

bb.af:                                            ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i44, %.noexc.i.i47
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %.body50

bb.ag:                                            ; preds = %.noexc.i.i53
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit

bb.ah:                                            ; preds = %bb.t
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ai:                                            ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i56, %.noexc.i.i59
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.body62

bb.aj:                                            ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i66, %.noexc.i.i69
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %.body72

.body72:                                          ; preds = %bb.aa, %bb.ab, %bb.aj
  %eh.lpad-body73 = phi { ptr, i32 } [ %i.fq, %bb.aj ], [ %i.fe, %bb.ab ], [ %i.fe, %bb.aa ]
  call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.do) #21
  br label %.body62

.body62:                                          ; preds = %bb.ai, %bb.x, %bb.w, %.body72
  %.pn = phi { ptr, i32 } [ %eh.lpad-body73, %.body72 ], [ %i.fp, %bb.ai ], [ %i.ef, %bb.x ], [ %i.ef, %bb.w ]
  call void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dj) #21
  br label %bb.ak

bb.ak:                                            ; preds = %.body62, %bb.ah
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body62 ], [ %i.fo, %bb.ah ] ; 2 uses
  %i.fr = load ptr, ptr %i.cs, align 8, !tbaa !112 ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.cu
  br i1 %i.fs, label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ak
  %i.ft = load i64, ptr %i.cu, align 8, !tbaa !115
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #23
  br label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit

_ZN7jsonnet8internal13LocationRangeD2Ev.exit:     ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.ag
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fn, %bb.ag ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.pn.pn, %bb.ak ]
  call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bt) #21
  br label %.body50

.body50:                                          ; preds = %bb.af, %bb.p, %bb.o, %_ZN7jsonnet8internal13LocationRangeD2Ev.exit
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZN7jsonnet8internal13LocationRangeD2Ev.exit ], [ %i.fm, %bb.af ], [ %i.ck, %bb.p ], [ %i.ck, %bb.o ]
  call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aw) #21
  br label %.body40

.body40:                                          ; preds = %bb.ae, %bb.l, %bb.k, %.body50
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %.body50 ], [ %i.fl, %bb.ae ], [ %i.bn, %bb.l ], [ %i.bn, %bb.k ]
  call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.z) #21
  br label %.body

.body:                                            ; preds = %bb.ad, %bb.h, %bb.g, %.body40
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %.body40 ], [ %i.fk, %bb.ad ], [ %i.aq, %bb.h ], [ %i.aq, %bb.g ]
  call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #21
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal11ObjectFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !141  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !115
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !143
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !110
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #23
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit
end_hunk_6
begin_hunk_7_@_ZN7jsonnet8internal11ObjectFieldD2Ev:bb.a

bb.j:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i66
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !110
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dp to i64
  %i.du = sub i64 %i.ds, %i.dt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.du) #23
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit69

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit69: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i66, %bb.j
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !108 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !107 ; 2 uses
  %.not4.i.i.i70 = icmp eq ptr %i.dw, %i.dy
  br i1 %.not4.i.i.i70, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i87, label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit69, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i83
  %.05.i.i.i72 = phi ptr [ %i.ep, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i83 ], [ %i.dw, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit69 ] ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.05.i.i.i72, i64 16 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !141 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.05.i.i.i72, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !142 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i73 = icmp eq ptr %i.ea, %i.ec
  br i1 %.not4.i.i.i.i.i.i.i.i73, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i81, label %.lr.ph.i.i.i.i.i.i.i.i74

.lr.ph.i.i.i.i.i.i.i.i74:                         ; preds = %.lr.ph.i.i.i71, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i77
  %.05.i.i.i.i.i.i.i.i75 = phi ptr [ %i.ei, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i77 ], [ %i.ea, %.lr.ph.i.i.i71 ] ; 3 uses
  %i.ed = load ptr, ptr %.05.i.i.i.i.i.i.i.i75, align 8, !tbaa !112 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i75, i64 16 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i76: ; preds = %.lr.ph.i.i.i.i.i.i.i.i74
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !115
  %i.eh = add i64 %i.eg, 1
  tail call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eh) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i77

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i77: ; preds = %.lr.ph.i.i.i.i.i.i.i.i74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i76
  %i.ei = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i75, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i78 = icmp eq ptr %i.ei, %i.ec
  br i1 %.not.i.i.i.i.i.i.i.i78, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i79, label %.lr.ph.i.i.i.i.i.i.i.i74, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i79: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i77
  %.pr.i.i.i.i.i.i80 = load ptr, ptr %i.dz, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i81

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i81: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i79, %.lr.ph.i.i.i71
  %i.ej = phi ptr [ %.pr.i.i.i.i.i.i80, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i79 ], [ %i.ea, %.lr.ph.i.i.i71 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i82 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i1.i.i.i.i.i.i82, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i83, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i81
  %i.ek = getelementptr inbounds nuw i8, ptr %.05.i.i.i72, i64 32
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !143
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %i.ej to i64
  %i.eo = sub i64 %i.em, %i.en
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.eo) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i83

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i83: ; preds = %bb.k, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i81
  %i.ep = getelementptr inbounds nuw i8, ptr %.05.i.i.i72, i64 40 ; 2 uses
  %.not.i.i.i84 = icmp eq ptr %i.ep, %i.dy
  br i1 %.not.i.i.i84, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i85, label %.lr.ph.i.i.i71, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i85: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i83
  %.pr.i86 = load ptr, ptr %i.dv, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i87

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i87: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i85, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit69
  %i.eq = phi ptr [ %.pr.i86, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i85 ], [ %i.dw, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit69 ] ; 3 uses
  %.not.i.i1.i88 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i1.i88, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit90, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i87
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !110
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = ptrtoint ptr %i.eq to i64
  %i.ev = sub i64 %i.et, %i.eu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.ev) #23
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit90

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit90: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i87, %bb.l
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !108 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !107 ; 2 uses
  %.not4.i.i.i91 = icmp eq ptr %i.ex, %i.ez
  br i1 %.not4.i.i.i91, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i108, label %.lr.ph.i.i.i92

.lr.ph.i.i.i92:                                   ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit90, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i104
  %.05.i.i.i93 = phi ptr [ %i.fq, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i104 ], [ %i.ex, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit90 ] ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.05.i.i.i93, i64 16 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !141 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.05.i.i.i93, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !142 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i94 = icmp eq ptr %i.fb, %i.fd
  br i1 %.not4.i.i.i.i.i.i.i.i94, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i102, label %.lr.ph.i.i.i.i.i.i.i.i95

.lr.ph.i.i.i.i.i.i.i.i95:                         ; preds = %.lr.ph.i.i.i92, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i98
  %.05.i.i.i.i.i.i.i.i96 = phi ptr [ %i.fj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i98 ], [ %i.fb, %.lr.ph.i.i.i92 ] ; 3 uses
  %i.fe = load ptr, ptr %.05.i.i.i.i.i.i.i.i96, align 8, !tbaa !112 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i96, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i97: ; preds = %.lr.ph.i.i.i.i.i.i.i.i95
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !115
  %i.fi = add i64 %i.fh, 1
  tail call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i98

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i98: ; preds = %.lr.ph.i.i.i.i.i.i.i.i95, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i97
  %i.fj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i96, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i99 = icmp eq ptr %i.fj, %i.fd
  br i1 %.not.i.i.i.i.i.i.i.i99, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i100, label %.lr.ph.i.i.i.i.i.i.i.i95, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i100: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i98
  %.pr.i.i.i.i.i.i101 = load ptr, ptr %i.fa, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i102

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i102: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i100, %.lr.ph.i.i.i92
  %i.fk = phi ptr [ %.pr.i.i.i.i.i.i101, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i100 ], [ %i.fb, %.lr.ph.i.i.i92 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i103 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i1.i.i.i.i.i.i103, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i104, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i102
  %i.fl = getelementptr inbounds nuw i8, ptr %.05.i.i.i93, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !143
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = ptrtoint ptr %i.fk to i64
  %i.fp = sub i64 %i.fn, %i.fo
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.fp) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i104

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i104: ; preds = %bb.m, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i102
  %i.fq = getelementptr inbounds nuw i8, ptr %.05.i.i.i93, i64 40 ; 2 uses
  %.not.i.i.i105 = icmp eq ptr %i.fq, %i.ez
  br i1 %.not.i.i.i105, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i106, label %.lr.ph.i.i.i92, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i106: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i104
  %.pr.i107 = load ptr, ptr %i.ew, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i108

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i108: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i106, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit90
  %i.fr = phi ptr [ %.pr.i107, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i106 ], [ %i.ex, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit90 ] ; 3 uses
  %.not.i.i1.i109 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i1.i109, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit111, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i108
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !110
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %i.fr to i64
  %i.fw = sub i64 %i.fu, %i.fv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %i.fw) #23
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit111

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit111: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i108, %bb.n
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal19ObjectComprehensionC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal19ObjectComprehensionE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke void @_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.e = load i8, ptr %i.d, align 8, !tbaa !289, !range !57, !noundef !58
  store i8 %i.e, ptr %i.c, align 8, !tbaa !289
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160
  invoke void @_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !107  ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !108  ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i.i, label %.noexc11, label %bb.d

bb.d:                                             ; preds = %bb.c
  %2 = sdiv exact i64 %i.o, 40
  %i.p = icmp ugt i64 %2, 230584300921369395
  br i1 %i.p, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !109

.noexc.i.i:                                       ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #22
          to label %.noexc11 unwind label %bb.j

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.c
  %i.r = phi ptr [ null, %bb.c ], [ %i.q, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.r, ptr %i.h, align 8, !tbaa !108
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !107
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !110
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.x = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.v, ptr %i.w, ptr noundef %i.r)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %.noexc11
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !108  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !110
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #23
  br label %.body

bb.g:                                             ; preds = %.noexc11
  store ptr %i.x, ptr %i.s, align 8, !tbaa !107
  ret void

bb.h:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.i:                                             ; preds = %bb.b
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.f, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.j ], [ %i.y, %bb.f ], [ %i.y, %bb.e ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.f) #21
  br label %bb.k

bb.k:                                             ; preds = %.body, %bb.i
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.af, %bb.i ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.k ], [ %i.ae, %bb.h ]
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #21
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal19ObjectComprehensionD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal19ObjectComprehensionE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !141  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !115
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !143
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !110
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #23
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !153 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !152 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, %.lr.ph.i.i.i2
  %.05.i.i.i3 = phi ptr [ %i.af, %.lr.ph.i.i.i2 ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 2 uses
  tail call void @_ZN7jsonnet8internal17ComprehensionSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %.05.i.i.i3) #21
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 96 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.af, %i.ae
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !5

_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i2
  %.pr.i5 = load ptr, ptr %i.ab, align 8, !tbaa !153
  br label %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit
  %i.ag = phi ptr [ %.pr.i5, %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i6 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i1.i6, label %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !154
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #23
  br label %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal17ComprehensionSpecES2_EvT_S4_RSaIT0_E.exit.i, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !170 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !169 ; 2 uses
  %.not4.i.i.i7 = icmp eq ptr %i.an, %i.ap
  br i1 %.not4.i.i.i7, label %_ZSt8_DestroyIPN7jsonnet8internal11ObjectFieldES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit, %.lr.ph.i.i.i8
  %.05.i.i.i9 = phi ptr [ %i.aq, %.lr.ph.i.i.i8 ], [ %i.an, %_ZNSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EED2Ev.exit ] ; 2 uses
  tail call void @_ZN7jsonnet8internal11ObjectFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %.05.i.i.i9) #21
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i9, i64 288 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN7jsonnet8internal25ObjectComprehensionSimpleD0Ev:bb.a
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal6ParensD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal6ParensE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !141  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !115
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !143
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !110
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #23
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal6ParensD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal6ParensE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !141  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !115
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #23, !inline_history !290
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !143
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #23, !inline_history !290
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN7jsonnet8internal6ParensD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !110
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #23, !inline_history !290
  br label %_ZN7jsonnet8internal6ParensD2Ev.exit

_ZN7jsonnet8internal6ParensD2Ev.exit:             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.c
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(160) %0) #21, !inline_history !290
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal4SelfD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal10SuperIndexC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(192) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal10SuperIndexE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !108  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %.noexc9, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.h, 40
  %i.i = icmp ugt i64 %2, 230584300921369395
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !109

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #22
          to label %.noexc9 unwind label %bb.j

.noexc9:                                          ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !108
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !107
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !110
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.q = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.o, ptr %i.p, ptr noundef %i.k)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc9
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !110
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #23
  br label %.body

bb.e:                                             ; preds = %.noexc9
  store ptr %i.q, ptr %i.l, align 8, !tbaa !107
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !291
  store ptr %i.z, ptr %i.x, align 8, !tbaa !291
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !107 ; 2 uses
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !108 ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  %.not.i.i.i.i10 = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i.i.i.i10, label %.noexc16, label %bb.f

bb.f:                                             ; preds = %bb.e
  %3 = sdiv exact i64 %i.ah, 40
  %i.ai = icmp ugt i64 %3, 230584300921369395
  br i1 %i.ai, label %.noexc.i.i14, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i11, !prof !109

.noexc.i.i14:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc15 unwind label %bb.k

.noexc15:                                         ; preds = %.noexc.i.i14
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i11: ; preds = %bb.f
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #22
          to label %.noexc16 unwind label %bb.k

.noexc16:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i11, %bb.e
  %i.ak = phi ptr [ null, %bb.e ], [ %i.aj, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i11 ] ; 4 uses
  store ptr %i.ak, ptr %i.aa, align 8, !tbaa !108
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !107
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !110
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !26
  %i.ap = load ptr, ptr %i.ac, align 8, !tbaa !26
  %i.aq = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.ao, ptr %i.ap, ptr noundef %i.ak)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc16
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %i.aa, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i12, label %.body17, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !110
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.aw) #23
  br label %.body17

bb.i:                                             ; preds = %.noexc16
  store ptr %i.aq, ptr %i.al, align 8, !tbaa !107
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !99
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !99
  ret void

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i11, %.noexc.i.i14
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body17

.body17:                                          ; preds = %bb.g, %bb.h, %bb.k
  %eh.lpad-body18 = phi { ptr, i32 } [ %i.bb, %bb.k ], [ %i.ar, %bb.h ], [ %i.ar, %bb.g ]
  tail call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #21
  br label %.body

.body:                                            ; preds = %bb.j, %bb.d, %bb.c, %.body17
  %.pn = phi { ptr, i32 } [ %eh.lpad-body18, %.body17 ], [ %i.ba, %bb.j ], [ %i.r, %bb.d ], [ %i.r, %bb.c ]
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal10SuperIndexD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal10SuperIndexE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !141  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !115
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !143
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #23
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !110
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #23
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !108 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !107 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i18, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14
  %.05.i.i.i3 = phi ptr [ %i.av, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14 ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !141 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !142 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i4 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not4.i.i.i.i.i.i.i.i4, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12, label %.lr.ph.i.i.i.i.i.i.i.i5

.lr.ph.i.i.i.i.i.i.i.i5:                          ; preds = %.lr.ph.i.i.i2, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8
  %.05.i.i.i.i.i.i.i.i6 = phi ptr [ %i.ao, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8 ], [ %i.ag, %.lr.ph.i.i.i2 ] ; 3 uses
  %i.aj = load ptr, ptr %.05.i.i.i.i.i.i.i.i6, align 8, !tbaa !112 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i6, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7: ; preds = %.lr.ph.i.i.i.i.i.i.i.i5
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !115
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8: ; preds = %.lr.ph.i.i.i.i.i.i.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i7
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i6, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i9 = icmp eq ptr %i.ao, %i.ai
  br i1 %.not.i.i.i.i.i.i.i.i9, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10, label %.lr.ph.i.i.i.i.i.i.i.i5, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i8
  %.pr.i.i.i.i.i.i11 = load ptr, ptr %i.af, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10, %.lr.ph.i.i.i2
  %i.ap = phi ptr [ %.pr.i.i.i.i.i.i11, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i10 ], [ %i.ag, %.lr.ph.i.i.i2 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i13 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1.i.i.i.i.i.i13, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i14, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i12
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !143
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #23
end_hunk_8
