Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/maxlex?download=true
inline.NumInlined: 439
inline.NumDeleted: 223
begin_hunk_0_@_ZN3opt4softD2Ev:bb.a
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.h, ptr noundef nonnull %i.f)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #17
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZN8rationalD2Ev.exit, %bb.c, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(52) ptr @_ZN3opt4softaSEOS0_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(52) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !59     ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57, !nonnull !49, !align !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !61
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.d, align 4, !tbaa !61
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.c, ptr noundef nonnull %i.a)
          to label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit.i unwind label %bb.e

_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.h = load ptr, ptr %1, align 8, !tbaa !59
  store ptr %i.h, ptr %0, align 8, !tbaa !59
  store ptr null, ptr %1, align 8, !tbaa !59
  br label %_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #17
  unreachable

_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit:      ; preds = %bb.a, %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = load i32, ptr %i.k, align 8, !tbaa !16
  %i.n = load i32, ptr %i.l, align 8, !tbaa !16
  store i32 %i.n, ptr %i.k, align 8, !tbaa !16
  store i32 %i.m, ptr %i.l, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !51
  store ptr %i.r, ptr %i.o, align 8, !tbaa !51
  store ptr %i.q, ptr %i.p, align 8, !tbaa !51
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.t = load i8, ptr %i.s, align 4               ; 2 uses
  %i.u = and i8 %i.t, 2
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  %i.w = load i8, ptr %i.v, align 4
  %i.x = and i8 %i.w, 2
  %i.y = and i8 %i.t, -3
  %i.z = or disjoint i8 %i.x, %i.y
  store i8 %i.z, ptr %i.s, align 4
  %i.aa = load i8, ptr %i.v, align 4              ; 2 uses
  %i.ab = and i8 %i.aa, -3
  %i.ac = or disjoint i8 %i.ab, %i.u
  store i8 %i.ac, ptr %i.v, align 4
  %i.ad = load i8, ptr %i.s, align 4              ; 2 uses
  %i.ae = and i8 %i.ad, 1
  %i.af = and i8 %i.aa, 1
  %i.ag = and i8 %i.ad, -2
  %i.ah = or disjoint i8 %i.ag, %i.af
  store i8 %i.ah, ptr %i.s, align 4
  %i.ai = load i8, ptr %i.v, align 4
  %i.aj = and i8 %i.ai, -2
  %i.ak = or disjoint i8 %i.aj, %i.ae
  store i8 %i.ak, ptr %i.v, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.an = load i32, ptr %i.al, align 8, !tbaa !16
  %i.ao = load i32, ptr %i.am, align 8, !tbaa !16
  store i32 %i.ao, ptr %i.al, align 8, !tbaa !16
  store i32 %i.an, ptr %i.am, align 8, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !51
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !51
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !51
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !51
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.au = load i8, ptr %i.at, align 4             ; 2 uses
  %i.av = and i8 %i.au, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 5 uses
  %i.ax = load i8, ptr %i.aw, align 4
  %i.ay = and i8 %i.ax, 2
  %i.az = and i8 %i.au, -3
  %i.ba = or disjoint i8 %i.ay, %i.az
  store i8 %i.ba, ptr %i.at, align 4
  %i.bb = load i8, ptr %i.aw, align 4             ; 2 uses
  %i.bc = and i8 %i.bb, -3
  %i.bd = or disjoint i8 %i.bc, %i.av
  store i8 %i.bd, ptr %i.aw, align 4
  %i.be = load i8, ptr %i.at, align 4             ; 2 uses
  %i.bf = and i8 %i.be, 1
  %i.bg = and i8 %i.bb, 1
  %i.bh = and i8 %i.be, -2
  %i.bi = or disjoint i8 %i.bh, %i.bg
  store i8 %i.bi, ptr %i.at, align 4
  %i.bj = load i8, ptr %i.aw, align 4
  %i.bk = and i8 %i.bj, -2
  %i.bl = or disjoint i8 %i.bk, %i.bf
  store i8 %i.bl, ptr %i.aw, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !56
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !56
  ret ptr %0
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

declare void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !59     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57, !nonnull !49, !align !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !61
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.d, align 4, !tbaa !61
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.c, ptr noundef nonnull %i.a)
          to label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit unwind label %bb.d

_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit:   ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #17
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt4swapIN3opt4softEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(52) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.opt::soft", align 16       ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load <2 x ptr>, ptr %0, align 8, !tbaa !58
  %i.c = load ptr, ptr %0, align 8, !tbaa !59
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !58
  store ptr null, ptr %0, align 8, !tbaa !59
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 3 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -4                          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.j = load i32, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  store i32 %i.j, ptr %i.d, align 16, !tbaa !16
  store i32 0, ptr %i.e, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51   ; 2 uses
  store ptr %i.l, ptr %i.i, align 8, !tbaa !51
  store ptr null, ptr %i.k, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.n = load i8, ptr %i.m, align 4               ; 3 uses
  %3 = and i8 %i.n, 2
  %4 = or disjoint i8 %3, %i.h
  store i8 %4, ptr %i.f, align 4
  %i.o = and i8 %i.n, -4
  store i8 %i.o, ptr %i.m, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 0, ptr %i.p, align 16, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 3 uses
  %i.s = load i8, ptr %i.r, align 4
  %i.t = and i8 %i.s, -4                          ; 2 uses
  store i8 %i.t, ptr %i.r, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store ptr null, ptr %i.u, align 8, !tbaa !20
  %i.v = load i32, ptr %i.q, align 8, !tbaa !16
  store i32 0, ptr %i.q, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !51
  store ptr null, ptr %i.w, align 8, !tbaa !51
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.z = load i8, ptr %i.y, align 4               ; 2 uses
  %i.aa = and i8 %i.z, -4
  store i8 %i.aa, ptr %i.y, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !56 ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 16, !tbaa !56
  %i.ae = tail call noundef nonnull align 8 dereferenceable(52) ptr @_ZN3opt4softaSEOS0_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(52) %1) #16 ; 0 uses
  %i.af = load ptr, ptr %1, align 8, !tbaa !59    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %_ZN3opt4softaSEOS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !57, !nonnull !49, !align !50
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !61
  %i.ak = add i32 %i.aj, -1                       ; 2 uses
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !61
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.c, label %_ZN3opt4softaSEOS0_.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ah, ptr noundef nonnull %i.af)
          to label %_ZN3opt4softaSEOS0_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #17
  unreachable

_ZN3opt4softaSEOS0_.exit:                         ; preds = %bb.a, %bb.b, %bb.c
  store ptr %i.c, ptr %1, align 8, !tbaa !59
  store ptr null, ptr %2, align 16, !tbaa !59
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !16
  store i32 %i.j, ptr %i.ao, align 8, !tbaa !16
  store i32 %i.ap, ptr %i.d, align 16, !tbaa !16
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !51
  store ptr %i.l, ptr %i.aq, align 8, !tbaa !51
  store ptr %i.ar, ptr %i.i, align 8, !tbaa !51
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.at = load i8, ptr %i.as, align 4             ; 2 uses
  %i.au = and i8 %i.at, -4
  %i.av = and i8 %i.n, 3
  %i.aw = or disjoint i8 %i.av, %i.au
  store i8 %i.aw, ptr %i.as, align 4
  %i.ax = and i8 %i.at, 3
  %i.ay = or disjoint i8 %i.h, %i.ax
  store i8 %i.ay, ptr %i.f, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !16
  store i32 %i.v, ptr %i.az, align 8, !tbaa !16
  store i32 %i.ba, ptr %i.p, align 16, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !51
  store ptr %i.x, ptr %i.bb, align 8, !tbaa !51
  store ptr %i.bc, ptr %i.u, align 8, !tbaa !51
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 4             ; 2 uses
  %i.bf = and i8 %i.be, -4
  %i.bg = and i8 %i.z, 3
  %i.bh = or disjoint i8 %i.bg, %i.bf
  store i8 %i.bh, ptr %i.bd, align 4
  %i.bi = and i8 %i.be, 3
  %i.bj = or disjoint i8 %i.t, %i.bi
  store i8 %i.bj, ptr %i.r, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %i.ad, ptr %i.bk, align 8, !tbaa !56
  %i.bl = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !23 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.noexc.i.i unwind label %bb.e

.noexc.i.i:                                       ; preds = %_ZN3opt4softaSEOS0_.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %_ZN8rationalD2Ev.exit.i unwind label %bb.e

bb.e:                                             ; preds = %.noexc.i.i, %_ZN3opt4softaSEOS0_.exit
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #17
  unreachable

_ZN8rationalD2Ev.exit.i:                          ; preds = %.noexc.i.i
  %i.bo = load ptr, ptr %2, align 16, !tbaa !59   ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i4, label %_ZN3opt4softD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN8rationalD2Ev.exit.i
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !57, !nonnull !49, !align !50
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !61
  %i.bs = add i32 %i.br, -1                       ; 2 uses
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !61
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.g, label %_ZN3opt4softD2Ev.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bp, ptr noundef nonnull %i.bo)
          to label %_ZN3opt4softD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #17
  unreachable

_ZN3opt4softD2Ev.exit:                            ; preds = %_ZN8rationalD2Ev.exit.i, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__insertion_sortIPN3opt4softEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_9is_maxlexERK6vectorIS1_Lb1EjEE3$_0EEEvT_SC_T0_"(ptr noundef %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.opt::soft", align 16       ; 15 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.023 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.not24 = icmp eq ptr %.023, %1
  br i1 %.not24, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.n = ptrtoint ptr %0 to i64
  %.not.i.i = icmp eq ptr %0, %2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.t
  %.026 = phi ptr [ %.023, %.lr.ph ], [ %.0, %bb.t ] ; 7 uses
  %.pn25 = phi ptr [ %0, %.lr.ph ], [ %.026, %bb.t ] ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.pn25, i64 72 ; 5 uses
  %i.t = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !23 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.pn25, i64 88 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.pn25, i64 92 ; 3 uses
  %i.w = load i8, ptr %i.v, align 4
  %i.x = and i8 %i.w, 1
  %i.y = icmp eq i8 %i.x, 0
  %i.z = load i32, ptr %i.u, align 8
  %i.aa = icmp eq i32 %i.z, 1
  %i.ab = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %i.ab, label %bb.c, label %.split

bb.c:                                             ; preds = %bb.b
  %i.ac = load i8, ptr %i.d, align 4
  %i.ad = and i8 %i.ac, 1
  %i.ae = icmp eq i8 %i.ad, 0
  %i.af = load i32, ptr %i.c, align 8
  %i.ag = icmp eq i32 %i.af, 1
  %i.ah = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %i.ah, label %bb.d, label %.split

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn25, i64 76
  %i.aj = load i8, ptr %i.ai, align 4
  %i.ak = and i8 %i.aj, 1
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.e, label %.split22

bb.e:                                             ; preds = %bb.d
  %i.am = load i8, ptr %i.e, align 4
  %i.an = and i8 %i.am, 1
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3opt9is_maxlexERK6vectorINS2_4softELb1EjEE3$_0EclIPS4_SB_EEbT_T0_.exit", label %.split22

.split22:                                         ; preds = %bb.e, %bb.d
  %i.ap = call noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
end_hunk_0
