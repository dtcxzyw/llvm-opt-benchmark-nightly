Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/TypeFunctionRuntime?download=true
inline.NumInlined: 3961
inline.NumDeleted: 1804
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4Luau19TypeFunctionRuntime27registerFunction_DEPRECATEDB5cxx11EPNS_19AstStatTypeFunctionE:bb.a
  invoke void @_ZN4Luau12AstStatBlockC1ERKNS_8LocationERKNS_8AstArrayIPNS_7AstStatEEEb(ptr noundef nonnull align 8 dereferenceable(49) %9, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %8, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  store ptr %9, ptr %11, align 8, !tbaa !179
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 1, ptr %i.w, align 8, !tbaa !180
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.x, i8 0, i64 104, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  invoke void @_ZN4Luau15BytecodeBuilderC1EPNS_15BytecodeEncoderE(ptr noundef nonnull align 8 dereferenceable(1048) %12, ptr noundef null)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  store i32 1, ptr %13, align 8, !tbaa !183
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 1, ptr %i.ab, align 4, !tbaa !184
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ac, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i8 0, i64 48, i1 false)
  invoke void @_ZN4Luau14compileOrThrowERNS_15BytecodeBuilderERKNS_11ParseResultERNS_12AstNameTableERKNS_14CompileOptionsE(ptr noundef nonnull align 8 dereferenceable(1048) %12, ptr noundef nonnull align 8 dereferenceable(128) %11, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(96) %13)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 912
  %i.af = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  store ptr %i.af, ptr %15, align 8, !tbaa !185
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !123 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 920
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !186 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.ai, ptr %i.a, align 8, !tbaa !187
  %i.aj = icmp ugt i64 %i.ai, 15
  br i1 %i.aj, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.l
  %i.ak = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.ag    ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ak, ptr %15, align 8, !tbaa !123
  %i.al = load i64, ptr %i.a, align 8, !tbaa !187
  store i64 %i.al, ptr %i.af, align 8, !tbaa !124
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.l
  %i.am = phi ptr [ %i.ak, %.noexc ], [ %i.af, %bb.l ] ; 2 uses
  switch i64 %i.ai, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.y
  ]

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.an = load i8, ptr %i.ag, align 1, !tbaa !124
  store i8 %i.an, ptr %i.am, align 1, !tbaa !124
  br label %bb.y

bb.n:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %i.ag, i64 %i.ai, i1 false)
  br label %bb.y

bb.o:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau12AstNameTableD2Ev.exit88

bb.p:                                             ; preds = %bb.h
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.bh

bb.q:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.bg

bb.r:                                             ; preds = %bb.j
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.s:                                             ; preds = %bb.k
  %i.as = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4Luau12CompileErrorE    ; 3 uses
  %i.at = extractvalue { ptr, i32 } %i.as, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %i.au = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4Luau12CompileErrorE) #30
  %i.av = icmp eq i32 %i.at, %i.au
  br i1 %i.av, label %bb.t, label %bb.be

bb.t:                                             ; preds = %bb.s
  %i.aw = extractvalue { ptr, i32 } %i.as, 0
  %i.ax = call ptr @__cxa_begin_catch(ptr %i.aw) #30 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !131
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call noundef ptr %i.ba(ptr noundef nonnull align 8 dereferenceable(56) %i.ax) #30
  invoke void (ptr, ptr, ...) @_ZN4Luau6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull @.str.77, ptr noundef %.sroa.0.0.copyload, ptr noundef %i.bb)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bc, ptr %0, align 8, !tbaa !185
  %i.bd = load ptr, ptr %14, align 8, !tbaa !123  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.bg = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !186 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i64 %i.bh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.be, i64 %i.bj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.u
  store ptr %i.bd, ptr %0, align 8, !tbaa !123
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !124
  store i64 %i.bk, ptr %i.bc, align 8, !tbaa !124
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !186
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.bl = phi i64 [ %i.bh, %bb.v ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !186
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.bn, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  invoke void @__cxa_end_catch()
          to label %bb.ay unwind label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  invoke void @__cxa_end_catch()
          to label %bb.be unwind label %bb.bk

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.y:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i
  %i.bq = load i64, ptr %i.a, align 8, !tbaa !187 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !186
  %i.bs = load ptr, ptr %15, align 8, !tbaa !123
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  store i8 0, ptr %i.bt, align 1, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.bu = invoke noundef ptr @_Z13lua_newthreadP9lua_State(ptr noundef %i.m)
          to label %bb.z unwind label %bb.ah      ; 11 uses

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  store ptr %i.m, ptr %16, align 8, !tbaa !50
  invoke void @_Z18luaL_sandboxthreadP9lua_State(ptr noundef %i.bu)
          to label %bb.aa unwind label %bb.ai

bb.aa:                                            ; preds = %bb.z
  invoke void @_Z13lua_pushvalueP9lua_Statei(ptr noundef %i.bu, i32 noundef -10002)
          to label %bb.ab unwind label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  invoke void @_Z15lua_setreadonlyP9lua_Stateii(ptr noundef %i.bu, i32 noundef -1, i32 noundef 1)
          to label %bb.ac unwind label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  invoke void @_Z10lua_settopP9lua_Statei(ptr noundef %i.bu, i32 noundef -2)
          to label %bb.ad unwind label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.bv = load ptr, ptr %15, align 8, !tbaa !123
  %i.bw = load i64, ptr %i.br, align 8, !tbaa !186
  %i.bx = invoke noundef i32 @_Z9luau_loadP9lua_StatePKcS2_mi(ptr noundef %i.bu, ptr noundef %.sroa.0.0.copyload, ptr noundef %i.bv, i64 noundef %i.bw, i32 noundef 0)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN4Luau30checkResultForError_DEPRECATEDB5cxx11EP9lua_StatePKci(ptr dead_on_unwind writable sret(%"class.std::optional") align 8 %0, ptr noundef %i.bu, ptr noundef %.sroa.0.0.copyload, i32 noundef %i.bx)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !134, !range !100, !noundef !101
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %.critedge, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.ag:                                            ; preds = %.noexc.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

bb.ah:                                            ; preds = %bb.y
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ai:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.am, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit73, %bb.aj, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.af
  store i8 0, ptr %i.by, align 8, !tbaa !134
  %i.ce = invoke noundef i32 @_Z10lua_resumeP9lua_StateS0_i(ptr noundef %i.bu, ptr noundef null, i32 noundef 0)
          to label %bb.aj unwind label %bb.ai

bb.aj:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  invoke void @_ZN4Luau30checkResultForError_DEPRECATEDB5cxx11EP9lua_StatePKci(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %0, ptr noundef %i.bu, ptr noundef %.sroa.0.0.copyload, i32 noundef %i.ce)
          to label %bb.ak unwind label %bb.ai

bb.ak:                                            ; preds = %bb.aj
  %i.cf = load i8, ptr %i.by, align 8, !tbaa !134, !range !100, !noundef !101
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %.critedge, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit73

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit73: ; preds = %bb.ak
  store i8 0, ptr %i.by, align 8, !tbaa !134
  %i.ch = invoke noundef i32 @_Z8lua_typeP9lua_Statei(ptr noundef %i.bu, i32 noundef -1)
          to label %bb.al unwind label %bb.ai

bb.al:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit73
  %i.ci = icmp eq i32 %i.ch, 8
  br i1 %i.ci, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke void @_Z10lua_settopP9lua_Statei(ptr noundef %i.bu, i32 noundef -2)
          to label %bb.an unwind label %bb.ai

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  invoke void (ptr, ptr, ...) @_ZN4Luau6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull @.str.78, ptr noundef %.sroa.0.0.copyload)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cj, ptr %0, align 8, !tbaa !185
  %i.ck = load ptr, ptr %17, align 8, !tbaa !123  ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i74

bb.ap:                                            ; preds = %bb.ao
  %i.cn = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !186 ; 3 uses
  %i.cp = icmp ult i64 %i.co, 16
  call void @llvm.assume(i1 %i.cp)
  %i.cq = add nuw nsw i64 %i.co, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cj, ptr noundef nonnull align 8 dereferenceable(1) %i.cl, i64 %i.cq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i74: ; preds = %bb.ao
  store ptr %i.ck, ptr %0, align 8, !tbaa !123
  %i.cr = load i64, ptr %i.cl, align 8, !tbaa !124
  store i64 %i.cr, ptr %i.cj, align 8, !tbaa !124
  %.phi.trans.insert89 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.pre90 = load i64, ptr %.phi.trans.insert89, align 8, !tbaa !186
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i74
  %i.cs = phi i64 [ %i.co, %bb.ap ], [ %.pre90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i74 ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !186
  store i8 1, ptr %i.by, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %.critedge

bb.aq:                                            ; preds = %bb.an
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %bb.aw

bb.ar:                                            ; preds = %bb.al
  invoke void @_Z27lua_pushlightuserdatataggedP9lua_StatePvi(ptr noundef %i.m, ptr noundef nonnull %2, i32 noundef 0)
          to label %bb.as unwind label %bb.ai

bb.as:                                            ; preds = %bb.ar
  invoke void @_Z9lua_xmoveP9lua_StateS0_i(ptr noundef %i.bu, ptr noundef %i.m, i32 noundef 1)
          to label %bb.at unwind label %bb.ai

bb.at:                                            ; preds = %bb.as
  invoke void @_Z12lua_settableP9lua_Statei(ptr noundef %i.m, i32 noundef -10000)
          to label %bb.au unwind label %bb.ai

bb.au:                                            ; preds = %bb.at
  store i8 0, ptr %i.by, align 8, !tbaa !134
  br label %.critedge

.critedge:                                        ; preds = %bb.ak, %bb.af, %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  invoke void @_Z10lua_settopP9lua_Statei(ptr noundef %i.m, i32 noundef -2)
          to label %_ZN4Luau20LuauTempThreadPopperD2Ev.exit unwind label %bb.av

bb.av:                                            ; preds = %.critedge
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #31
  unreachable

_ZN4Luau20LuauTempThreadPopperD2Ev.exit:          ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %i.cx = load ptr, ptr %15, align 8, !tbaa !123  ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.af
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZN4Luau20LuauTempThreadPopperD2Ev.exit
  %i.cz = load i64, ptr %i.af, align 8, !tbaa !124
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZN4Luau20LuauTempThreadPopperD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %bb.ay

bb.aw:                                            ; preds = %bb.aq, %bb.ai
  %.pn60 = phi { ptr, i32 } [ %i.cd, %bb.ai ], [ %i.cu, %bb.aq ]
  call void @_ZN4Luau20LuauTempThreadPopperD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.ah
  %.pn60.pn = phi { ptr, i32 } [ %.pn60, %bb.aw ], [ %i.cc, %bb.ah ] ; 2 uses
  %i.db = load ptr, ptr %15, align 8, !tbaa !123  ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.af
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.ax
  %i.dd = load i64, ptr %i.af, align 8, !tbaa !124
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %bb.ag
  %.pn60.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.ag ], [ %.pn60.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %.pn60.pn, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %bb.be

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  call void @_ZN4Luau15BytecodeBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(1048) dereferenceable(1048) %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  %i.df = load ptr, ptr %i.aa, align 8, !tbaa !188 ; 2 uses
  %.not.i.i.i85 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i85, label %_ZN4Luau12DenseHashMapIPNS_7AstNodeEPNS_7CstNodeENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_ZdlPv(ptr noundef nonnull %i.df) #30
  br label %_ZN4Luau12DenseHashMapIPNS_7AstNodeEPNS_7CstNodeENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit.i

_ZN4Luau12DenseHashMapIPNS_7AstNodeEPNS_7CstNodeENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit.i: ; preds = %bb.az, %bb.ay
  %i.dg = load ptr, ptr %i.z, align 8, !tbaa !189 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i, label %bb.ba

bb.ba:                                            ; preds = %_ZN4Luau12DenseHashMapIPNS_7AstNodeEPNS_7CstNodeENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !190
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dg to i64
  %i.dl = sub i64 %i.dj, %i.dk
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.dl) #32
  br label %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i:  ; preds = %bb.ba, %_ZN4Luau12DenseHashMapIPNS_7AstNodeEPNS_7CstNodeENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit.i
  %i.dm = load ptr, ptr %i.y, align 8, !tbaa !191 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !192 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.dm, %i.do
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN4Luau10ParseErrorES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i.i ], [ %i.dm, %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i ] ; 3 uses
  %i.dp = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !131
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %.05.i.i.i.i) #30, !inline_history !3
  %i.dr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.dr, %i.do
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPN4Luau10ParseErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPN4Luau10ParseErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.y, align 8, !tbaa !191
  br label %_ZSt8_DestroyIPN4Luau10ParseErrorES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4Luau10ParseErrorES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN4Luau10ParseErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i
  %i.ds = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN4Luau10ParseErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.dm, %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN4Luau10ParseErrorESaIS1_EED2Ev.exit.i, label %bb.bb

bb.bb:                                            ; preds = %_ZSt8_DestroyIPN4Luau10ParseErrorES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !193
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.ds to i64
  %i.dx = sub i64 %i.dv, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dx) #32
  br label %_ZNSt6vectorIN4Luau10ParseErrorESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN4Luau10ParseErrorESaIS1_EED2Ev.exit.i: ; preds = %bb.bb, %_ZSt8_DestroyIPN4Luau10ParseErrorES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.dy = load ptr, ptr %i.x, align 8, !tbaa !194 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !195 ; 2 uses
  %.not4.i.i.i2.i = icmp eq ptr %i.dy, %i.ea
  br i1 %.not4.i.i.i2.i, label %_ZSt8_DestroyIPN4Luau10HotCommentES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i3.i

.lr.ph.i.i.i3.i:                                  ; preds = %_ZNSt6vectorIN4Luau10ParseErrorESaIS1_EED2Ev.exit.i, %_ZSt8_DestroyIN4Luau10HotCommentEEvPT_.exit.i.i.i.i
  %.05.i.i.i4.i = phi ptr [ %i.eh, %_ZSt8_DestroyIN4Luau10HotCommentEEvPT_.exit.i.i.i.i ], [ %i.dy, %_ZNSt6vectorIN4Luau10ParseErrorESaIS1_EED2Ev.exit.i ] ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.05.i.i.i4.i, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !123 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.05.i.i.i4.i, i64 40 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZSt8_DestroyIN4Luau10HotCommentEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i3.i
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !124
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #32
  br label %_ZSt8_DestroyIN4Luau10HotCommentEEvPT_.exit.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN4Luau19TypeFunctionRuntime16registerFunctionEPNS_19AstStatTypeFunctionE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef %i.bc, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.v unwind label %bb.ae

bb.v:                                             ; preds = %bb.u
  store i32 3, ptr %16, align 8, !tbaa !211
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 3 uses
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !185
  %i.bf = load ptr, ptr %17, align 8, !tbaa !123  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !186 ; 3 uses
  %i.bk = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %i.bk)
  %i.bl = add nuw nsw i64 %i.bj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.bl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.v
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !123
  %i.bm = load i64, ptr %i.bg, align 8, !tbaa !124
  store i64 %i.bm, ptr %i.be, align 8, !tbaa !124
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !186
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.w
  %i.bn = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bj, %bb.w ]
  %i.bo = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !186
  store ptr %i.bg, ptr %17, align 8, !tbaa !123
  store i64 0, ptr %i.bo, align 8, !tbaa !186
  store i8 0, ptr %i.bg, align 8, !tbaa !124
  %i.bq = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %16, i64 56 ; 3 uses
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !185
  %i.bs = load ptr, ptr %i.ay, align 8, !tbaa !123 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %17, i64 48 ; 5 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !186 ; 3 uses
  %i.bx = icmp ult i64 %i.bw, 16
  call void @llvm.assume(i1 %i.bx)
  %i.by = add nuw nsw i64 %i.bw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.br, ptr noundef nonnull align 8 dereferenceable(1) %i.bt, i64 %i.by, i1 false)
  br label %_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEEC2IS4_EEOT_PNSt9enable_ifIXgecl9getTypeIdIS8_EELi0EEvE4typeE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !123
  %i.bz = load i64, ptr %i.bt, align 8, !tbaa !124
  store i64 %i.bz, ptr %i.br, align 8, !tbaa !124
  %.phi.trans.insert110 = getelementptr inbounds nuw i8, ptr %17, i64 40
  %.pre111 = load i64, ptr %.phi.trans.insert110, align 8, !tbaa !186
  br label %_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEEC2IS4_EEOT_PNSt9enable_ifIXgecl9getTypeIdIS8_EELi0EEvE4typeE.exit

_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEEC2IS4_EEOT_PNSt9enable_ifIXgecl9getTypeIdIS8_EELi0EEvE4typeE.exit: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i
  %i.ca = phi i64 [ %i.bw, %bb.x ], [ %.pre111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.cc = getelementptr inbounds nuw i8, ptr %16, i64 48
  store i64 %i.ca, ptr %i.cc, align 8, !tbaa !186
  store ptr %i.bt, ptr %i.ay, align 8, !tbaa !123
  store i64 0, ptr %i.cb, align 8, !tbaa !186
  store i8 0, ptr %i.bt, align 8, !tbaa !124
  invoke void @_ZN4Luau17TypeFunctionErrorC2ERKNS_8LocationERKNS_7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEEE(ptr noundef nonnull align 8 dereferenceable(120) %14, ptr noundef nonnull align 4 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(72) %16)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEEC2IS4_EEOT_PNSt9enable_ifIXgecl9getTypeIdIS8_EELi0EEvE4typeE.exit
  call void @_ZNSt8optionalIN4Luau17TypeFunctionErrorEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(120) %14) #30
  call void @_ZN4Luau17TypeFunctionErrorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %14) #30
  %i.cd = load i32, ptr %16, align 8, !tbaa !211
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEE9tableDtorE, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !37
  invoke void %i.cg(ptr noundef nonnull %i.bd)
          to label %_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEED2Ev.exit unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #31
  unreachable

_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEED2Ev.exit: ; preds = %bb.y
  call void @_ZN4Luau15FailedToCompileD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  invoke void @__cxa_end_catch()
          to label %bb.bk unwind label %bb.af

bb.aa:                                            ; preds = %bb.t
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ab:                                            ; preds = %_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEEC2IS4_EEOT_PNSt9enable_ifIXgecl9getTypeIdIS8_EELi0EEvE4typeE.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  %i.cl = load i32, ptr %16, align 8, !tbaa !211
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEE9tableDtorE, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !37
  invoke void %i.co(ptr noundef nonnull %i.bd)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #31
  unreachable

bb.ad:                                            ; preds = %bb.ab
  call void @_ZN4Luau15FailedToCompileD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ae:                                            ; preds = %bb.u
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  %i.cs = load ptr, ptr %17, align 8, !tbaa !123  ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ae
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !124
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ad, %bb.aa
  %.pn.pn = phi { ptr, i32 } [ %i.cj, %bb.aa ], [ %i.ck, %bb.ad ], [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cr, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  invoke void @__cxa_end_catch()
          to label %bb.bq unwind label %bb.bw

bb.af:                                            ; preds = %_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEED2Ev.exit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.ag:                                            ; preds = %bb.n, %bb.m, %._crit_edge.i.i
  %i.cy = load i64, ptr %i.a, align 8, !tbaa !187 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !186
  %i.da = load ptr, ptr %20, align 8, !tbaa !123
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cy
  store i8 0, ptr %i.db, align 1, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.dc = invoke noundef ptr @_Z13lua_newthreadP9lua_State(ptr noundef %i.m)
          to label %bb.ah unwind label %bb.ap     ; 11 uses

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  store ptr %i.m, ptr %21, align 8, !tbaa !50
  invoke void @_Z18luaL_sandboxthreadP9lua_State(ptr noundef %i.dc)
          to label %bb.ai unwind label %bb.aq

bb.ai:                                            ; preds = %bb.ah
  invoke void @_Z13lua_pushvalueP9lua_Statei(ptr noundef %i.dc, i32 noundef -10002)
          to label %bb.aj unwind label %bb.aq

bb.aj:                                            ; preds = %bb.ai
  invoke void @_Z15lua_setreadonlyP9lua_Stateii(ptr noundef %i.dc, i32 noundef -1, i32 noundef 1)
          to label %bb.ak unwind label %bb.aq

bb.ak:                                            ; preds = %bb.aj
  invoke void @_Z10lua_settopP9lua_Statei(ptr noundef %i.dc, i32 noundef -2)
          to label %bb.al unwind label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.dd = load ptr, ptr %20, align 8, !tbaa !123
  %i.de = load i64, ptr %i.cz, align 8, !tbaa !186
  %i.df = invoke noundef i32 @_Z9luau_loadP9lua_StatePKcS2_mi(ptr noundef %i.dc, ptr noundef %.sroa.0.0.copyload, ptr noundef %i.dd, i64 noundef %i.de, i32 noundef 0)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN4Luau19checkResultForErrorEP9lua_StatePKci(ptr dead_on_unwind writable sret(%"class.std::optional.144") align 8 %0, ptr noundef %i.dc, ptr noundef %.sroa.0.0.copyload, i32 noundef %i.df)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.dh = load i8, ptr %i.dg, align 8, !tbaa !209, !range !100, !noundef !101
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %.critedge, label %_ZNSt14_Optional_baseIN4Luau17TypeFunctionErrorELb0ELb0EED2Ev.exit

bb.ao:                                            ; preds = %.noexc.i
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

bb.ap:                                            ; preds = %bb.ag
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.aq:                                            ; preds = %bb.bf, %bb.be, %bb.bd, %bb.au, %_ZNSt14_Optional_baseIN4Luau17TypeFunctionErrorELb0ELb0EED2Ev.exit89, %bb.ar, %_ZNSt14_Optional_baseIN4Luau17TypeFunctionErrorELb0ELb0EED2Ev.exit, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

_ZNSt14_Optional_baseIN4Luau17TypeFunctionErrorELb0ELb0EED2Ev.exit: ; preds = %bb.an
  store i8 0, ptr %i.dg, align 8, !tbaa !209
  %i.dm = invoke noundef i32 @_Z10lua_resumeP9lua_StateS0_i(ptr noundef %i.dc, ptr noundef null, i32 noundef 0)
          to label %bb.ar unwind label %bb.aq

bb.ar:                                            ; preds = %_ZNSt14_Optional_baseIN4Luau17TypeFunctionErrorELb0ELb0EED2Ev.exit
  invoke void @_ZN4Luau19checkResultForErrorEP9lua_StatePKci(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.144") align 8 %0, ptr noundef %i.dc, ptr noundef %.sroa.0.0.copyload, i32 noundef %i.dm)
          to label %bb.as unwind label %bb.aq

bb.as:                                            ; preds = %bb.ar
  %i.dn = load i8, ptr %i.dg, align 8, !tbaa !209, !range !100, !noundef !101
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %.critedge, label %_ZNSt14_Optional_baseIN4Luau17TypeFunctionErrorELb0ELb0EED2Ev.exit89

_ZNSt14_Optional_baseIN4Luau17TypeFunctionErrorELb0ELb0EED2Ev.exit89: ; preds = %bb.as
  store i8 0, ptr %i.dg, align 8, !tbaa !209
  %i.dp = invoke noundef i32 @_Z8lua_typeP9lua_Statei(ptr noundef %i.dc, i32 noundef -1)
          to label %bb.at unwind label %bb.aq

bb.at:                                            ; preds = %_ZNSt14_Optional_baseIN4Luau17TypeFunctionErrorELb0ELb0EED2Ev.exit89
  %i.dq = icmp eq i32 %i.dp, 8
  br i1 %i.dq, label %bb.bd, label %bb.au

bb.au:                                            ; preds = %bb.at
  invoke void @_Z10lua_settopP9lua_Statei(ptr noundef %i.dc, i32 noundef -2)
          to label %bb.av unwind label %bb.aq

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef %.sroa.0.0.copyload, ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %bb.aw unwind label %bb.ba

bb.aw:                                            ; preds = %bb.av
  store i32 4, ptr %24, align 8, !tbaa !211
  %i.dr = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 3 uses
  store ptr %i.ds, ptr %i.dr, align 8, !tbaa !185
  %i.dt = load ptr, ptr %25, align 8, !tbaa !123  ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 9 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %bb.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90

bb.ax:                                            ; preds = %bb.aw
  %i.dw = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !186 ; 3 uses
  %i.dy = icmp ult i64 %i.dx, 16
  call void @llvm.assume(i1 %i.dy)
  %i.dz = add nuw nsw i64 %i.dx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ds, ptr noundef nonnull align 8 dereferenceable(1) %i.du, i64 %i.dz, i1 false)
  br label %_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEEC2IS5_EEOT_PNSt9enable_ifIXgecl9getTypeIdIS8_EELi0EEvE4typeE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90: ; preds = %bb.aw
  store ptr %i.dt, ptr %i.dr, align 8, !tbaa !123
  %i.ea = load i64, ptr %i.du, align 8, !tbaa !124
  store i64 %i.ea, ptr %i.ds, align 8, !tbaa !124
  %.phi.trans.insert112 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %.pre113 = load i64, ptr %.phi.trans.insert112, align 8, !tbaa !186
  br label %_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEEC2IS5_EEOT_PNSt9enable_ifIXgecl9getTypeIdIS8_EELi0EEvE4typeE.exit

_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEEC2IS5_EEOT_PNSt9enable_ifIXgecl9getTypeIdIS8_EELi0EEvE4typeE.exit: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90
  %i.eb = phi i64 [ %i.dx, %bb.ax ], [ %.pre113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90 ]
  %i.ec = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i64 %i.eb, ptr %i.ed, align 8, !tbaa !186
  store ptr %i.du, ptr %25, align 8, !tbaa !123
  store i64 0, ptr %i.ec, align 8, !tbaa !186
  store i8 0, ptr %i.du, align 8, !tbaa !124
  invoke void @_ZN4Luau17TypeFunctionErrorC2ERKNS_8LocationERKNS_7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEEE(ptr noundef nonnull align 8 dereferenceable(120) %22, ptr noundef nonnull align 4 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(72) %24)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEEC2IS5_EEOT_PNSt9enable_ifIXgecl9getTypeIdIS8_EELi0EEvE4typeE.exit
  call void @_ZNSt8optionalIN4Luau17TypeFunctionErrorEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(120) %22) #30
  call void @_ZN4Luau17TypeFunctionErrorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %22) #30
  %i.ee = load i32, ptr %24, align 8, !tbaa !211
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEE9tableDtorE, i64 %i.ef
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !37
  invoke void %i.eh(ptr noundef nonnull %i.dr)
          to label %_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEED2Ev.exit91 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0
  call void @__clang_call_terminate(ptr %i.ej) #31
  unreachable

_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEED2Ev.exit91: ; preds = %bb.ay
  %i.ek = load ptr, ptr %25, align 8, !tbaa !123  ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.du
  br i1 %i.el, label %_ZN4Luau19TypeFunctionMissingD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92: ; preds = %_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEED2Ev.exit91
  %i.em = load i64, ptr %i.du, align 8, !tbaa !124
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #32
  br label %_ZN4Luau19TypeFunctionMissingD2Ev.exit

_ZN4Luau19TypeFunctionMissingD2Ev.exit:           ; preds = %_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEED2Ev.exit91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  br label %.critedge

bb.ba:                                            ; preds = %bb.av
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau19TypeFunctionMissingD2Ev.exit96

bb.bb:                                            ; preds = %_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEEC2IS5_EEOT_PNSt9enable_ifIXgecl9getTypeIdIS8_EELi0EEvE4typeE.exit
  %i.ep = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eq = load i32, ptr %24, align 8, !tbaa !211
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEE9tableDtorE, i64 %i.er
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !37
  invoke void %i.et(ptr noundef nonnull %i.dr)
          to label %_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEED2Ev.exit93 unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eu = landingpad { ptr, i32 }
          catch ptr null
  %i.ev = extractvalue { ptr, i32 } %i.eu, 0
  call void @__clang_call_terminate(ptr %i.ev) #31
  unreachable

_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEED2Ev.exit93: ; preds = %bb.bb
  %i.ew = load ptr, ptr %25, align 8, !tbaa !123  ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.du
  br i1 %i.ex, label %_ZN4Luau19TypeFunctionMissingD2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94: ; preds = %_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEED2Ev.exit93
  %i.ey = load i64, ptr %i.du, align 8, !tbaa !124
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #32
  br label %_ZN4Luau19TypeFunctionMissingD2Ev.exit96

_ZN4Luau19TypeFunctionMissingD2Ev.exit96:         ; preds = %_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEED2Ev.exit93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94, %bb.ba
  %.pn71 = phi { ptr, i32 } [ %i.eo, %bb.ba ], [ %i.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94 ], [ %i.ep, %_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEED2Ev.exit93 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  br label %bb.bi

bb.bd:                                            ; preds = %bb.at
  invoke void @_Z27lua_pushlightuserdatataggedP9lua_StatePvi(ptr noundef %i.m, ptr noundef nonnull %2, i32 noundef 0)
          to label %bb.be unwind label %bb.aq

bb.be:                                            ; preds = %bb.bd
  invoke void @_Z9lua_xmoveP9lua_StateS0_i(ptr noundef %i.dc, ptr noundef %i.m, i32 noundef 1)
          to label %bb.bf unwind label %bb.aq

bb.bf:                                            ; preds = %bb.be
  invoke void @_Z12lua_settableP9lua_Statei(ptr noundef %i.m, i32 noundef -10000)
          to label %bb.bg unwind label %bb.aq

bb.bg:                                            ; preds = %bb.bf
  store i8 0, ptr %i.dg, align 8, !tbaa !209
  br label %.critedge

.critedge:                                        ; preds = %bb.as, %bb.an, %bb.bg, %_ZN4Luau19TypeFunctionMissingD2Ev.exit
  invoke void @_Z10lua_settopP9lua_Statei(ptr noundef %i.m, i32 noundef -2)
          to label %_ZN4Luau20LuauTempThreadPopperD2Ev.exit unwind label %bb.bh

bb.bh:                                            ; preds = %.critedge
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = extractvalue { ptr, i32 } %i.fa, 0
  call void @__clang_call_terminate(ptr %i.fb) #31
  unreachable

_ZN4Luau20LuauTempThreadPopperD2Ev.exit:          ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  %i.fc = load ptr, ptr %20, align 8, !tbaa !123  ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.af
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %_ZN4Luau20LuauTempThreadPopperD2Ev.exit
  %i.fe = load i64, ptr %i.af, align 8, !tbaa !124
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %_ZN4Luau20LuauTempThreadPopperD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %bb.bk

bb.bi:                                            ; preds = %_ZN4Luau19TypeFunctionMissingD2Ev.exit96, %bb.aq
  %.pn74 = phi { ptr, i32 } [ %i.dl, %bb.aq ], [ %.pn71, %_ZN4Luau19TypeFunctionMissingD2Ev.exit96 ]
  call void @_ZN4Luau20LuauTempThreadPopperD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.ap
  %.pn74.pn = phi { ptr, i32 } [ %.pn74, %bb.bi ], [ %i.dk, %bb.ap ] ; 2 uses
  %i.fg = load ptr, ptr %20, align 8, !tbaa !123  ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.af
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.bj
  %i.fi = load i64, ptr %i.af, align 8, !tbaa !124
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %bb.ao
  %.pn74.pn.pn = phi { ptr, i32 } [ %i.dj, %bb.ao ], [ %.pn74.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %.pn74.pn, %bb.bj ]
end_hunk_1
begin_hunk_2_@_ZN4LuauL11getGenericsEP9lua_StateiPKc:bb.a
  %.pn = phi { ptr, i32 } [ %i.cl, %bb.z ], [ %lpad.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55 ], [ %lpad.loopexit.split-lp, %_ZN4Luau7VariantIJNS_20TypeFunctionTypePackENS_28TypeFunctionVariadicTypePackENS_27TypeFunctionGenericTypePackEEED2Ev.exit54 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %.loopexit.split-lp

bb.ab:                                            ; preds = %_ZN4Luau3getINS_23TypeFunctionGenericTypeEEEPKT_PKNS_16TypeFunctionTypeE.exit
  %i.cw = icmp eq ptr %i.s, %i.r
  br i1 %i.cw, label %bb.ac, label %.invoke110

bb.ac:                                            ; preds = %bb.ab
  %.not.i58 = icmp eq ptr %i.q, %i.p
  br i1 %.not.i58, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store ptr %.1.i, ptr %i.q, align 8, !tbaa !112
  %i.cx = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.cx, ptr %i.e, align 8, !tbaa !236
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backERKS3_.exit

bb.ae:                                            ; preds = %bb.ac
  %i.cy = ptrtoint ptr %i.p to i64
  %i.cz = ptrtoint ptr %i.o to i64
  %i.da = sub i64 %i.cy, %i.cz                    ; 6 uses
  %i.db = icmp eq i64 %i.da, 9223372036854775800
  br i1 %i.db, label %bb.af, label %_ZNKSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.166) #33
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc59:                                         ; preds = %bb.af
  unreachable

_ZNKSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ae
  %i.dc = ashr exact i64 %i.da, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dc, i64 1)
  %i.dd = add nsw i64 %.sroa.speculated.i.i.i, %i.dc ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.dc
  %i.df = call i64 @llvm.umin.i64(i64 %i.dd, i64 1152921504606846975)
  %i.dg = select i1 %i.de, i64 1152921504606846975, i64 %i.df ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dg, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dh = shl nuw nsw i64 %i.dg, 3
  %i.di = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #34
          to label %.noexc60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc60:                                         ; preds = %_ZNKSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 %i.da ; 2 uses
  store ptr %.1.i, ptr %i.dj, align 8, !tbaa !112
  %i.dk = icmp sgt i64 %i.da, 0
  br i1 %i.dk, label %bb.ag, label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.ag:                                            ; preds = %.noexc60
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.di, ptr align 8 %i.o, i64 %i.da, i1 false)
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.ag, %.noexc60
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.da) #32
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.ah, %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.di, ptr %4, align 8, !tbaa !235
  store ptr %i.dl, ptr %i.e, align 8, !tbaa !236
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dg ; 2 uses
  store ptr %i.dm, ptr %i.f, align 8, !tbaa !224
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backERKS3_.exit

.invoke110:                                       ; preds = %bb.n, %_ZN4Luau6get_ifINS_23TypeFunctionGenericTypeEJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeES1_EEEPKT_PKNS_7VariantIJDpT0_EEE.exit.i, %bb.ab
  %i.dn = phi ptr [ @.str.178, %bb.ab ], [ @.str.179, %_ZN4Luau6get_ifINS_23TypeFunctionGenericTypeEJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeES1_EEEPKT_PKNS_7VariantIJDpT0_EEE.exit.i ], [ @.str.179, %bb.n ]
  invoke void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %1, ptr noundef nonnull %i.dn, ptr noundef %3) #33
          to label %.cont111 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont111:                                         ; preds = %.invoke110
  unreachable

_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.ad, %_ZN4Luau27TypeFunctionGenericTypePackD2Ev.exit
  %i.do = phi ptr [ %i.di, %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.o, %bb.ad ], [ %i.o, %_ZN4Luau27TypeFunctionGenericTypePackD2Ev.exit ]
  %i.dp = phi ptr [ %i.dm, %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.p, %bb.ad ], [ %i.p, %_ZN4Luau27TypeFunctionGenericTypePackD2Ev.exit ]
  %i.dq = phi ptr [ %i.dl, %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.cx, %bb.ad ], [ %i.q, %_ZN4Luau27TypeFunctionGenericTypePackD2Ev.exit ]
  %i.dr = phi ptr [ %i.r, %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.r, %bb.ad ], [ %i.bz, %_ZN4Luau27TypeFunctionGenericTypePackD2Ev.exit ]
  %i.ds = phi ptr [ %i.r, %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.r, %bb.ad ], [ %i.ca, %_ZN4Luau27TypeFunctionGenericTypePackD2Ev.exit ]
  invoke void @_Z10lua_settopP9lua_Statei(ptr noundef %1, i32 noundef -2)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backERKS3_.exit
  %i.dt = add nuw nsw i32 %.0, 1
  br label %bb.d, !llvm.loop !541

.loopexit72:                                      ; preds = %bb.e, %bb.j
  invoke void @_Z10lua_settopP9lua_Statei(ptr noundef %1, i32 noundef -2)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %bb.b
  %i.du = invoke noundef i32 @_Z8lua_typeP9lua_Statei(ptr noundef %1, i32 noundef %2)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.aj
  %i.dv = icmp slt i32 %i.du, 1
  br i1 %i.dv, label %bb.al, label %.invoke

.invoke:                                          ; preds = %.noexc45, %bb.ak
  %i.dw = phi i32 [ %2, %bb.ak ], [ -1, %.noexc45 ]
  %i.dx = phi ptr [ @.str.160, %bb.ak ], [ @.str.84, %.noexc45 ]
  invoke void @_Z15luaL_typeerrorLP9lua_StateiPKc(ptr noundef %1, i32 noundef %i.dw, ptr noundef nonnull %i.dx) #33
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.al:                                            ; preds = %bb.ak, %.loopexit72
  invoke void @_ZNSt11_Tuple_implILm0EJSt6vectorIPKN4Luau16TypeFunctionTypeESaIS4_EES0_IPKNS1_23TypeFunctionTypePackVarESaIS9_EEEEC2IRS6_JRSB_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZNSt5tupleIJSt6vectorIPKN4Luau16TypeFunctionTypeESaIS4_EES0_IPKNS1_23TypeFunctionTypePackVarESaIS9_EEEEC2IRS6_RSB_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISH_T0_EEEbE4typeELb1EEEOSH_OSI_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt5tupleIJSt6vectorIPKN4Luau16TypeFunctionTypeESaIS4_EES0_IPKNS1_23TypeFunctionTypePackVarESaIS9_EEEEC2IRS6_RSB_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISH_T0_EEEbE4typeELb1EEEOSH_OSI_.exit: ; preds = %bb.al
  %i.dy = load ptr, ptr %5, align 8, !tbaa !248   ; 3 uses
  %.not.i.i.i62 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZNSt5tupleIJSt6vectorIPKN4Luau16TypeFunctionTypeESaIS4_EES0_IPKNS1_23TypeFunctionTypePackVarESaIS9_EEEEC2IRS6_RSB_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISH_T0_EEEbE4typeELb1EEEOSH_OSI_.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !264
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.ed) #32
  br label %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EED2Ev.exit: ; preds = %_ZNSt5tupleIJSt6vectorIPKN4Luau16TypeFunctionTypeESaIS4_EES0_IPKNS1_23TypeFunctionTypePackVarESaIS9_EEEEC2IRS6_RSB_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISH_T0_EEEbE4typeELb1EEEOSH_OSI_.exit, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.ee = load ptr, ptr %4, align 8, !tbaa !235   ; 3 uses
  %.not.i.i.i63 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i63, label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EED2Ev.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !224
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = ptrtoint ptr %i.ee to i64
  %i.ej = sub i64 %i.eh, %i.ei
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ej) #32
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EED2Ev.exit, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN4Luau27TypeFunctionGenericTypePackD2Ev.exit57
  %.pn43 = phi { ptr, i32 } [ %.pn, %_ZN4Luau27TypeFunctionGenericTypePackD2Ev.exit57 ], [ %lpad.loopexit.split-lp115, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ek = load ptr, ptr %5, align 8, !tbaa !248   ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EED2Ev.exit65, label %bb.ao

bb.ao:                                            ; preds = %.loopexit.split-lp
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !264
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %i.ek to i64
  %i.ep = sub i64 %i.en, %i.eo
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef %i.ep) #32
  br label %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EED2Ev.exit65

_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EED2Ev.exit65: ; preds = %.loopexit.split-lp, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.eq = load ptr, ptr %4, align 8, !tbaa !235   ; 3 uses
  %.not.i.i.i66 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i66, label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EED2Ev.exit67, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EED2Ev.exit65
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !224
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = ptrtoint ptr %i.eq to i64
  %i.ev = sub i64 %i.et, %i.eu
  call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.ev) #32
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EED2Ev.exit67

_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EED2Ev.exit67: ; preds = %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EED2Ev.exit65, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.pn43
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau24TypeFunctionFunctionTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !346  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !347  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !134, !range !100, !noundef !101
  %i.g = trunc nuw i8 %i.f to i1
  store i8 0, ptr %i.e, align 8, !tbaa !134
  br i1 %i.g, label %bb.b, label %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = load ptr, ptr %.05.i.i.i, align 8, !tbaa !123 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8, !tbaa !124
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #32
  br label %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !15

_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !346
  br label %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.n = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !348
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #32
  br label %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit

_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !248  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !264
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #32
  br label %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit, %bb.d
  %i.aa = load ptr, ptr %0, align 8, !tbaa !235   ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !224
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #32
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm0EJSt6vectorIPKN4Luau16TypeFunctionTypeESaIS4_EES0_IPKNS1_23TypeFunctionTypePackVarESaIS9_EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !235  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt6vectorIPKN4Luau16TypeFunctionTypeESaIS4_EELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !224
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #32
  br label %_ZNSt10_Head_baseILm0ESt6vectorIPKN4Luau16TypeFunctionTypeESaIS4_EELb0EED2Ev.exit

_ZNSt10_Head_baseILm0ESt6vectorIPKN4Luau16TypeFunctionTypeESaIS4_EELb0EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !248    ; 3 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i1, label %_ZNSt10_Head_baseILm1ESt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS4_EELb0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_Head_baseILm0ESt6vectorIPKN4Luau16TypeFunctionTypeESaIS4_EELb0EED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !264
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #32
  br label %_ZNSt10_Head_baseILm1ESt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS4_EELb0EED2Ev.exit

_ZNSt10_Head_baseILm1ESt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS4_EELb0EED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt6vectorIPKN4Luau16TypeFunctionTypeESaIS4_EELb0EED2Ev.exit, %bb.c
  ret void
}

declare noundef i32 @_Z10lua_objlenP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #8

declare void @_Z15lua_pushintegerP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_20TypeFunctionTypePackENS_28TypeFunctionVariadicTypePackENS_27TypeFunctionGenericTypePackEEE6fnDtorIS1_EEvPv(ptr noundef %0) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !235    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau20TypeFunctionTypePackD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !224
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #32
  br label %_ZN4Luau20TypeFunctionTypePackD2Ev.exit

_ZN4Luau20TypeFunctionTypePackD2Ev.exit:          ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_20TypeFunctionTypePackENS_28TypeFunctionVariadicTypePackENS_27TypeFunctionGenericTypePackEEE6fnDtorIS2_EEvPv(ptr noundef %0) #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_20TypeFunctionTypePackENS_28TypeFunctionVariadicTypePackENS_27TypeFunctionGenericTypePackEEE6fnDtorIS3_EEvPv(ptr noundef %0) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4Luau27TypeFunctionGenericTypePackD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !124
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #32
  br label %_ZN4Luau27TypeFunctionGenericTypePackD2Ev.exit

_ZN4Luau27TypeFunctionGenericTypePackD2Ev.exit:   ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm0EJSt6vectorIPKN4Luau16TypeFunctionTypeESaIS4_EES0_IPKNS1_23TypeFunctionTypePackVarESaIS9_EEEEC2IRS6_JRSB_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !279  ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !248    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIPKN4Luau23TypeFunctionTypePackVarEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !40

.noexc.i.i.i.i:                                   ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

_ZNSt15__new_allocatorIPKN4Luau23TypeFunctionTypePackVarEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #34
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIPKN4Luau23TypeFunctionTypePackVarEE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIPKN4Luau23TypeFunctionTypePackVarEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !248
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !279
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !264
  %i.m = load ptr, ptr %2, align 8, !tbaa !102    ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.d, label %bb.e, !prof !338

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.m, i64 %i.q, i1 false)
  br label %_ZNSt11_Tuple_implILm1EJSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS4_EEEEC2IRS6_EEOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.f, label %_ZNSt11_Tuple_implILm1EJSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS4_EEEEC2IRS6_EEOT_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !104
  store ptr %i.t, ptr %i.i, align 8, !tbaa !104
  br label %_ZNSt11_Tuple_implILm1EJSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS4_EEEEC2IRS6_EEOT_.exit

_ZNSt11_Tuple_implILm1EJSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS4_EEEEC2IRS6_EEOT_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !279
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !236  ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !235    ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i.i.i.i, label %.noexc4, label %bb.g

bb.g:                                             ; preds = %_ZNSt11_Tuple_implILm1EJSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS4_EEEEC2IRS6_EEOT_.exit
  %i.ac = icmp ugt i64 %i.ab, 9223372036854775800
  br i1 %i.ac, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIPKN4Luau16TypeFunctionTypeEE8allocateEmPKv.exit.i.i.i.i.i, !prof !40

.noexc.i.i.i:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #33
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIPKN4Luau16TypeFunctionTypeEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.g
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #34
          to label %.noexc4 unwind label %bb.l

.noexc4:                                          ; preds = %_ZNSt15__new_allocatorIPKN4Luau16TypeFunctionTypeEE8allocateEmPKv.exit.i.i.i.i.i, %_ZNSt11_Tuple_implILm1EJSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS4_EEEEC2IRS6_EEOT_.exit
  %i.ae = phi ptr [ null, %_ZNSt11_Tuple_implILm1EJSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS4_EEEEC2IRS6_EEOT_.exit ], [ %i.ad, %_ZNSt15__new_allocatorIPKN4Luau16TypeFunctionTypeEE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.ae, ptr %i.v, align 8, !tbaa !235
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !236
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !224
  %i.ai = load ptr, ptr %1, align 8, !tbaa !110   ; 3 uses
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !110
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 4 uses
  %i.an = icmp sgt i64 %i.am, 8
  br i1 %i.an, label %bb.h, label %bb.i, !prof !338

bb.h:                                             ; preds = %.noexc4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ae, ptr align 8 %i.ai, i64 %i.am, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %.noexc4
  %i.ao = icmp eq i64 %i.am, 8
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !112
  store ptr %i.ap, ptr %i.ae, align 8, !tbaa !112
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.aq = getelementptr inbounds i8, ptr %i.ae, i64 %i.am
  store ptr %i.aq, ptr %i.af, align 8, !tbaa !236
  ret void

bb.l:                                             ; preds = %_ZNSt15__new_allocatorIPKN4Luau16TypeFunctionTypeEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %0, align 8, !tbaa !248   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm1ESt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS4_EELb0EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load ptr, ptr %i.l, align 8, !tbaa !264
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.aw) #32
  br label %_ZNSt10_Head_baseILm1ESt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS4_EELb0EED2Ev.exit

_ZNSt10_Head_baseILm1ESt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS4_EELb0EED2Ev.exit: ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %i.ar
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #22 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SB_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.i, %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !134, !range !100, !noundef !101
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !134
  br i1 %i.c, label %bb.b, label %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = load ptr, ptr %.05.i, align 8, !tbaa !123 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !124
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #32
  br label %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i

_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.i, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SB_.exit, label %.lr.ph.i, !llvm.loop !15

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SB_.exit: ; preds = %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i, %bb.a
  ret void
}

declare noundef i32 @_Z15luaL_optbooleanP9lua_Stateii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #23

declare void @_Z15lua_pushbooleanP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #8

declare void @_Z15lua_pushlstringP9lua_StatePKcm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11equal_rangeERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.065 = load ptr, ptr %i.a, align 8, !tbaa !271 ; 2 uses
  %.not66 = icmp eq ptr %.065, null
  br i1 %.not66, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_upper_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !186  ; 8 uses
  %i.e = load ptr, ptr %1, align 8                ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.068 = phi ptr [ %.065, %.lr.ph ], [ %.0, %bb.d ] ; 8 uses
  %.02267 = phi ptr [ %i.b, %.lr.ph ], [ %.123, %bb.d ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.068, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !186  ; 4 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.g) ; 3 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.068, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123  ; 2 uses
  %i.k = tail call i32 @memcmp(ptr noundef %i.j, ptr noundef %i.e, i64 noundef %.sroa.speculated.i.i.i) #30 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread57, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %bb.b
  %i.l = sub i64 %i.g, %i.d
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.d, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i28

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread57: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.n = sub i64 %i.g, %i.d
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i25

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.p = icmp slt i32 %i.k, 0
  br i1 %i.p, label %bb.d, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i25

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i25: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread57, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread
  %i.q = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #30 ; 2 uses
  %.not.i.i.i26 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i26, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i28, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit32

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i28: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i25
  %i.r = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i29 = tail call i64 @llvm.smax.i64(i64 %i.r, i64 -2147483648)
  %.08.i.i.i.i30 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i29, i64 2147483647)
  %.0.i6.i.i.i31 = trunc nsw i64 %.08.i.i.i.i30 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit32

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit32: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i25, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i28
  %.0.i.i.i27 = phi i32 [ %i.q, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i25 ], [ %.0.i6.i.i.i31, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i28 ]
  %i.s = icmp slt i32 %.0.i.i.i27, 0
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit32
  %i.t = getelementptr inbounds nuw i8, ptr %.068, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !345  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.068, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !344  ; 2 uses
  %.not10.i = icmp eq ptr %i.u, null
  br i1 %.not10.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i
  %.012.i = phi ptr [ %.1.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ %i.u, %bb.c ] ; 4 uses
  %.0811.i = phi ptr [ %.19.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ %.068, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !186  ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.y) ; 2 uses
  %i.z = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.z, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !123
  %i.ac = tail call i32 @memcmp(ptr noundef %i.ab, ptr noundef %i.e, i64 noundef %.sroa.speculated.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %.lr.ph.i
  %i.ad = sub i64 %i.y, %i.d
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ad, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.ac, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.ae = icmp slt i32 %.0.i.i.i.i, 0             ; 2 uses
  %.19.i = select i1 %i.ae, ptr %.0811.i, ptr %.012.i ; 2 uses
  %.1.in.v.i = select i1 %i.ae, i64 24, i64 16
  %.1.in.i = getelementptr inbounds nuw i8, ptr %.012.i, i64 %.1.in.v.i
  %.1.i = load ptr, ptr %.1.in.i, align 8, !tbaa !271 ; 2 uses
  %.not.i = icmp eq ptr %.1.i, null
  br i1 %.not.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit, label %.lr.ph.i, !llvm.loop !9

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %bb.c
  %.08.lcssa.i = phi ptr [ %.068, %bb.c ], [ %.19.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ] ; 2 uses
  %.not10.i33 = icmp eq ptr %i.w, null
  br i1 %.not10.i33, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_upper_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i40
  %.012.i35 = phi ptr [ %.1.i45, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i40 ], [ %i.w, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit ] ; 4 uses
  %.0811.i36 = phi ptr [ %.19.i42, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i40 ], [ %.02267, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit ]
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i35, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !186 ; 2 uses
  %.sroa.speculated.i.i.i.i37 = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.d) ; 2 uses
  %i.ah = icmp eq i64 %.sroa.speculated.i.i.i.i37, 0
  br i1 %i.ah, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i48, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i38

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i38: ; preds = %.lr.ph.i34
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i35, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !123
  %i.ak = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.aj, i64 noundef %.sroa.speculated.i.i.i.i37) #30 ; 2 uses
  %.not.i.i.i.i39 = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i39, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i48, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i40

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i48: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i38, %.lr.ph.i34
  %i.al = sub i64 %i.d, %i.ag
  %spec.select7.i.i.i.i.i49 = tail call i64 @llvm.smax.i64(i64 %i.al, i64 -2147483648)
  %.08.i.i.i.i.i50 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i49, i64 2147483647)
  %.0.i6.i.i.i.i51 = trunc nsw i64 %.08.i.i.i.i.i50 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i40

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i40: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i48, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i38
  %.0.i.i.i.i41 = phi i32 [ %i.ak, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i38 ], [ %.0.i6.i.i.i.i51, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i48 ]
  %i.am = icmp slt i32 %.0.i.i.i.i41, 0           ; 2 uses
  %.19.i42 = select i1 %i.am, ptr %.012.i35, ptr %.0811.i36 ; 2 uses
  %.1.in.v.i43 = select i1 %i.am, i64 16, i64 24
  %.1.in.i44 = getelementptr inbounds nuw i8, ptr %.012.i35, i64 %.1.in.v.i43
  %.1.i45 = load ptr, ptr %.1.in.i44, align 8, !tbaa !271 ; 2 uses
  %.not.i46 = icmp eq ptr %.1.i45, null
  br i1 %.not.i46, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_upper_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit, label %.lr.ph.i34, !llvm.loop !542

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit32, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread57
  %.sink = phi i64 [ 24, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ 24, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread57 ], [ 24, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread ], [ 16, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit32 ]
  %.123 = phi ptr [ %.02267, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.02267, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread57 ], [ %.02267, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread ], [ %.068, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit32 ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.068, i64 %.sink
  %.0 = load ptr, ptr %i.an, align 8, !tbaa !271  ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_upper_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit, label %bb.b, !llvm.loop !543

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_upper_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit: ; preds = %bb.d, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i40, %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit
  %.sroa.055.0 = phi ptr [ %.08.lcssa.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i40 ], [ %.08.lcssa.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit ], [ %i.b, %bb.a ], [ %.123, %bb.d ]
  %.sroa.3.0 = phi ptr [ %.19.i42, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i40 ], [ %.02267, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit ], [ %i.b, %bb.a ], [ %.123, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.055.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISA_ESI_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !241
  %i.c = icmp eq ptr %1, %i.b
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = icmp eq ptr %2, %i.d
  br i1 %i.e, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
end_hunk_2
begin_hunk_3_@_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorISO_EEvPv:bb.a
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !123    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4Luau17DeprecatedApiUsedD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !124
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #32
  br label %_ZN4Luau17DeprecatedApiUsedD2Ev.exit

_ZN4Luau17DeprecatedApiUsedD2Ev.exit:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorISP_EEvPv(ptr noundef %0) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !118    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !119  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !123 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !124
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %0, align 8, !tbaa !118
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.j = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i, label %_ZN4Luau25ModuleHasCyclicDependencyD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !125
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #32
  br label %_ZN4Luau25ModuleHasCyclicDependencyD2Ev.exit

_ZN4Luau25ModuleHasCyclicDependencyD2Ev.exit:     ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorISQ_EEvPv(ptr noundef %0) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !119  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !123 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !124
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !118
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.k = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i, label %_ZN4Luau25CyclicModuleGraphTooLargeD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !125
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #32
  br label %_ZN4Luau25CyclicModuleGraphTooLargeD2Ev.exit

_ZN4Luau25CyclicModuleGraphTooLargeD2Ev.exit:     ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorISR_EEvPv(ptr noundef %0) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !124
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !123    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4Luau14IllegalRequireD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !124
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #32
  br label %_ZN4Luau14IllegalRequireD2Ev.exit

_ZN4Luau14IllegalRequireD2Ev.exit:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorISS_EEvPv(ptr noundef %0) #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIST_EEvPv(ptr noundef %0) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !123    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN4Luau25DuplicateGenericParameterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !124
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #32
  br label %_ZN4Luau25DuplicateGenericParameterD2Ev.exit

_ZN4Luau25DuplicateGenericParameterD2Ev.exit:     ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorISU_EEvPv(ptr noundef %0) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !362  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau19CannotAssignToNeverD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !363
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #32
  br label %_ZN4Luau19CannotAssignToNeverD2Ev.exit

_ZN4Luau19CannotAssignToNeverD2Ev.exit:           ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorISV_EEvPv(ptr noundef %0) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !134, !range !100, !noundef !101
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !134
  br i1 %i.c, label %bb.b, label %_ZN4Luau26CannotInferBinaryOperationD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !123  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4Luau26CannotInferBinaryOperationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !124
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #32
  br label %_ZN4Luau26CannotInferBinaryOperationD2Ev.exit

_ZN4Luau26CannotInferBinaryOperationD2Ev.exit:    ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorISW_EEvPv(ptr noundef %0) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !119  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !123 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !124
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !118
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.k = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i, label %_ZN4Luau17MissingPropertiesD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !125
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #32
  br label %_ZN4Luau17MissingPropertiesD2Ev.exit

_ZN4Luau17MissingPropertiesD2Ev.exit:             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorISX_EEvPv(ptr noundef %0) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !123    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN4Luau27SwappedGenericTypeParameterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !124
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #32
  br label %_ZN4Luau27SwappedGenericTypeParameterD2Ev.exit

_ZN4Luau27SwappedGenericTypeParameterD2Ev.exit:   ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorISY_EEvPv(ptr noundef %0) #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorISZ_EEvPv(ptr noundef %0) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !124
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !362  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau20MissingUnionPropertyD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !363
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #32
  br label %_ZN4Luau20MissingUnionPropertyD2Ev.exit

_ZN4Luau20MissingUnionPropertyD2Ev.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS10_EEvPv(ptr noundef %0) #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS11_EEvPv(ptr noundef %0) #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS12_EEvPv(ptr noundef %0) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4Luau16TypePackMismatchD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !124
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #32
  br label %_ZN4Luau16TypePackMismatchD2Ev.exit

_ZN4Luau16TypePackMismatchD2Ev.exit:              ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS13_EEvPv(ptr noundef %0) #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS14_EEvPv(ptr noundef %0) #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS15_EEvPv(ptr noundef %0) #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS16_EEvPv(ptr noundef %0) #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS17_EEvPv(ptr noundef %0) #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS18_EEvPv(ptr noundef %0) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4Luau24CheckedFunctionCallErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !124
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #32
  br label %_ZN4Luau24CheckedFunctionCallErrorD2Ev.exit

_ZN4Luau24CheckedFunctionCallErrorD2Ev.exit:      ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
end_hunk_3
begin_hunk_4_@_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1E_EEvPv:bb.a
  %i.d = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !123 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !124
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #32
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !593

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %0, align 8, !tbaa !596
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEESB_EvT_SD_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEESB_EvT_SD_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.j = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i, label %_ZN4Luau37ExplicitFunctionAnnotationRecommendedD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEESB_EvT_SD_RSaIT0_E.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !598
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #32
  br label %_ZN4Luau37ExplicitFunctionAnnotationRecommendedD2Ev.exit

_ZN4Luau37ExplicitFunctionAnnotationRecommendedD2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEESB_EvT_SD_RSaIT0_E.exit.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1F_EEvPv(ptr noundef %0) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !123    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN4Luau28UserDefinedTypeFunctionErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !124
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #32
  br label %_ZN4Luau28UserDefinedTypeFunctionErrorD2Ev.exit

_ZN4Luau28UserDefinedTypeFunctionErrorD2Ev.exit:  ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1G_EEvPv(ptr noundef %0) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !211
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEE9tableDtorE, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void %i.e(ptr noundef nonnull %i.f)
          to label %_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEED2Ev.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #31
  unreachable

_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEED2Ev.exit.i.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN4Luau24BuiltInTypeFunctionErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEED2Ev.exit.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !124
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #32
  br label %_ZN4Luau24BuiltInTypeFunctionErrorD2Ev.exit

_ZN4Luau24BuiltInTypeFunctionErrorD2Ev.exit:      ; preds = %_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1H_EEvPv(ptr noundef %0) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !123    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN4Luau18ReservedIdentifierD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !124
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #32
  br label %_ZN4Luau18ReservedIdentifierD2Ev.exit

_ZN4Luau18ReservedIdentifierD2Ev.exit:            ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1I_EEvPv(ptr noundef %0) #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1J_EEvPv(ptr noundef %0) #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1K_EEvPv(ptr noundef %0) #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1L_EEvPv(ptr noundef %0) #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1M_EEvPv(ptr noundef %0) #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1N_EEvPv(ptr noundef %0) #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1O_EEvPv(ptr noundef %0) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !362  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !363
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #32
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i:   ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !362  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN4Luau21GenericBoundsMismatchD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !363
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #32
  br label %_ZN4Luau21GenericBoundsMismatchD2Ev.exit

_ZN4Luau21GenericBoundsMismatchD2Ev.exit:         ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1P_EEvPv(ptr noundef %0) #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1Q_EEvPv(ptr noundef %0) #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1R_EEvPv(ptr noundef %0) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !134, !range !100, !noundef !101
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !134
  br i1 %i.c, label %bb.b, label %_ZN4Luau30TypeInstantiationCountMismatchD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !123    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN4Luau30TypeInstantiationCountMismatchD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !124
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #32
  br label %_ZN4Luau30TypeInstantiationCountMismatchD2Ev.exit

_ZN4Luau30TypeInstantiationCountMismatchD2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1S_EEvPv(ptr noundef %0) #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !344
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !345  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !124
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #32
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 64) #32
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !599

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #23

declare noundef ptr @_Z14luaL_tolstringP9lua_StateiPm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !118    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.166) #33
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #34 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !185
  %i.s = load ptr, ptr %2, align 8, !tbaa !123    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !186  ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !123
  %i.z = load i64, ptr %i.t, align 8, !tbaa !124
  store i64 %i.z, ptr %i.r, align 8, !tbaa !124
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !186
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !186
  store ptr %i.t, ptr %2, align 8, !tbaa !123
  store i64 0, ptr %i.ab, align 8, !tbaa !186
  store i8 0, ptr %i.t, align 8, !tbaa !124
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !185, !alias.scope !607
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !123, !alias.scope !608 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !186, !alias.scope !608 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !609
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !123, !alias.scope !607
  %i.al = load i64, ptr %i.af, align 8, !tbaa !124, !alias.scope !608
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !124, !alias.scope !607
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !186, !alias.scope !608
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !186, !alias.scope !607
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !123, !alias.scope !608
  store i64 0, ptr %i.an, align 8, !tbaa !186, !alias.scope !608
  store i8 0, ptr %i.af, align 8, !tbaa !124, !alias.scope !608
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !603

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !185, !alias.scope !610
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !123, !alias.scope !611 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !186, !alias.scope !611 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !612
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !123, !alias.scope !610
end_hunk_4
begin_hunk_5_@_ZN4Luau18TypeFunctionCloner12shallowCloneEPKNS_23TypeFunctionTypePackVarE:bb.a
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !124
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.j:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr align 1 %i.bj, i64 %i.bl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.i, %bb.j
  %i.br = load i64, ptr %i.a, align 8, !tbaa !187 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !186
  %i.bt = load ptr, ptr %i.bg, align 8, !tbaa !123
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.br
  store i8 0, ptr %i.bu, align 1, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bd, i64 72 ; 4 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !68 ; 2 uses
  %i.bx = icmp ugt i64 %i.bw, 681
  br i1 %i.bx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  invoke void @_ZN4Luau14TypedAllocatorINS_23TypeFunctionTypePackVarEE11appendBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.be)
          to label %.noexc20 unwind label %bb.p

.noexc20:                                         ; preds = %bb.k
  %.pre.i19 = load i64, ptr %i.bv, align 8, !tbaa !68
  br label %bb.l

bb.l:                                             ; preds = %.noexc20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.by = phi i64 [ %.pre.i19, %.noexc20 ], [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !102
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !104
  %i.cd = getelementptr inbounds nuw [48 x i8], ptr %i.cc, i64 %i.by ; 7 uses
  %i.ce = load i8, ptr %3, align 8, !tbaa !222, !range !100, !noundef !101
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  %i.cg = load ptr, ptr %i.bg, align 8, !tbaa !123 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.bi
  br i1 %i.ch, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ci = load i64, ptr %i.bs, align 8, !tbaa !186 ; 3 uses
  %i.cj = icmp ult i64 %i.ci, 16
  call void @llvm.assume(i1 %i.cj)
  %i.ck = add nuw nsw i64 %i.ci, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cf, ptr noundef nonnull align 8 dereferenceable(1) %i.bi, i64 %i.ck, i1 false)
  br label %call.2.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.l
  %i.cl = load i64, ptr %i.bi, align 8, !tbaa !124
  store i64 %i.cl, ptr %i.cf, align 8, !tbaa !124
  %.pre5.i = load i64, ptr %i.bs, align 8, !tbaa !186
  br label %call.2.i.i.i

call.2.i.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.m
  %i.cm = phi ptr [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.cf, %bb.m ] ; 2 uses
  %i.cn = phi i64 [ %.pre5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ci, %bb.m ] ; 3 uses
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !123
  store i64 0, ptr %i.bs, align 8, !tbaa !186
  store i8 0, ptr %i.bi, align 8, !tbaa !124
  store i32 2, ptr %i.cd, align 8, !tbaa !108
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i8 %i.ce, ptr %i.co, align 8, !tbaa !222
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 32 ; 3 uses
  store ptr %i.cq, ptr %i.cp, align 8, !tbaa !185
  %i.cr = icmp eq ptr %i.cm, %i.cf
  br i1 %i.cr, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %call.2.i.i.i
  %i.cs = icmp ult i64 %i.cn, 16
  call void @llvm.assume(i1 %i.cs)
  %i.ct = add nuw nsw i64 %i.cn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cq, ptr noundef nonnull align 8 dereferenceable(1) %i.cf, i64 %i.ct, i1 false)
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %call.2.i.i.i
  store ptr %i.cm, ptr %i.cp, align 8, !tbaa !123
  %i.cu = load i64, ptr %i.cf, align 8, !tbaa !124
  store i64 %i.cu, ptr %i.cq, align 8, !tbaa !124
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.n
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store i64 %i.cn, ptr %i.cv, align 8, !tbaa !186
  %i.cw = load i64, ptr %i.bv, align 8, !tbaa !68
  %i.cx = add i64 %i.cw, 1
  store i64 %i.cx, ptr %i.bv, align 8, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store ptr %i.cd, ptr %i.c, align 8, !tbaa !104
  %i.cy = load ptr, ptr %i.bg, align 8, !tbaa !123 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.bi
  br i1 %i.cz, label %_ZN4Luau27TypeFunctionGenericTypePackD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.o
  %i.da = load i64, ptr %i.bi, align 8, !tbaa !124
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #32
  br label %_ZN4Luau27TypeFunctionGenericTypePackD2Ev.exit

_ZN4Luau27TypeFunctionGenericTypePackD2Ev.exit:   ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %_ZN4Luau3getINS_27TypeFunctionGenericTypePackEEEPKT_PKNS_23TypeFunctionTypePackVarE.exit.thread

bb.p:                                             ; preds = %bb.k
  %i.dc = landingpad { ptr, i32 }
          cleanup
  %i.dd = load ptr, ptr %i.bg, align 8, !tbaa !123 ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.bi
  br i1 %i.de, label %_ZN4Luau27TypeFunctionGenericTypePackD2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21: ; preds = %bb.p
  %i.df = load i64, ptr %i.bi, align 8, !tbaa !124
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #32
  br label %_ZN4Luau27TypeFunctionGenericTypePackD2Ev.exit23

_ZN4Luau27TypeFunctionGenericTypePackD2Ev.exit23: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  resume { ptr, i32 } %i.dc

_ZN4Luau3getINS_27TypeFunctionGenericTypePackEEEPKT_PKNS_23TypeFunctionTypePackVarE.exit.thread: ; preds = %_ZN4Luau6get_ifINS_20TypeFunctionTypePackEJS1_NS_28TypeFunctionVariadicTypePackENS_27TypeFunctionGenericTypePackEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.i, %.loopexit, %_ZN4Luau27TypeFunctionGenericTypePackD2Ev.exit, %_ZN4Luau14TypedAllocatorINS_23TypeFunctionTypePackVarEE8allocateIJNS_28TypeFunctionVariadicTypePackEEEEPS1_DpOT_.exit, %_ZN4Luau20TypeFunctionTypePackD2Ev.exit
  %i.dh = phi ptr [ null, %.loopexit ], [ null, %_ZN4Luau6get_ifINS_20TypeFunctionTypePackEJS1_NS_28TypeFunctionVariadicTypePackENS_27TypeFunctionGenericTypePackEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.i ], [ %i.cd, %_ZN4Luau27TypeFunctionGenericTypePackD2Ev.exit ], [ %i.az, %_ZN4Luau14TypedAllocatorINS_23TypeFunctionTypePackVarEE8allocateIJNS_28TypeFunctionVariadicTypePackEEEEPS1_DpOT_.exit ], [ %i.al, %_ZN4Luau20TypeFunctionTypePackD2Ev.exit ] ; 3 uses
  %i.di = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_23TypeFunctionTypePackVarES3_NS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !104
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !323 ; 7 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !334
  %.not.i24 = icmp eq ptr %i.dk, %i.dm
  br i1 %.not.i24, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN4Luau3getINS_27TypeFunctionGenericTypePackEEEPKT_PKNS_23TypeFunctionTypePackVarE.exit.thread
  store i32 1, ptr %i.dk, align 8, !tbaa !333
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.dh, ptr %i.dn, align 8, !tbaa !104
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store i32 1, ptr %i.do, align 8, !tbaa !333
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dq = load ptr, ptr %i.b, align 8, !tbaa !104
  store ptr %i.dq, ptr %i.dp, align 8, !tbaa !104
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  store ptr %i.dr, ptr %i.dj, align 8, !tbaa !323
  br label %_ZNSt6vectorISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEES9_EESaISA_EE12emplace_backIJRS8_SE_EEERSA_DpOT_.exit

bb.r:                                             ; preds = %_ZN4Luau3getINS_27TypeFunctionGenericTypePackEEEPKT_PKNS_23TypeFunctionTypePackVarE.exit.thread
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZNSt6vectorISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEES9_EESaISA_EE17_M_realloc_insertIJRS8_SE_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr %i.dk, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !104
  br label %_ZNSt6vectorISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEES9_EESaISA_EE12emplace_backIJRS8_SE_EEERSA_DpOT_.exit

_ZNSt6vectorISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEES9_EESaISA_EE12emplace_backIJRS8_SE_EEERSA_DpOT_.exit: ; preds = %bb.q, %bb.r
  %i.dt = phi ptr [ %i.dh, %bb.q ], [ %.pre, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %bb.s

bb.s:                                             ; preds = %bb.g, %_ZNSt6vectorISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEES9_EESaISA_EE12emplace_backIJRS8_SE_EEERSA_DpOT_.exit
  %.1 = phi ptr [ %i.dt, %_ZNSt6vectorISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEES9_EESaISA_EE12emplace_backIJRS8_SE_EEERSA_DpOT_.exit ], [ %i.z, %bb.g ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EEaSERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !347  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !346    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !348
  %i.i = load ptr, ptr %0, align 8, !tbaa !346    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 4 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 40
  %i.o = tail call noundef ptr @_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEEPS7_mT_SH_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n, ptr %i.c, ptr %i.b) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !346    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !347  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.aa, %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i ], [ %i.p, %bb.c ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !134, !range !100, !noundef !101
  %i.u = trunc nuw i8 %i.t to i1
  store i8 0, ptr %i.s, align 8, !tbaa !134
  br i1 %i.u, label %bb.d, label %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.v = load ptr, ptr %.05.i.i, align 8, !tbaa !123 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.y = load i64, ptr %i.w, align 8, !tbaa !124
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #32
  br label %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i

_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, %i.r
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !15

_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !346
  br label %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit

_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exitthread-pre-split, %bb.c
  %i.ab = phi ptr [ %.pr, %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exitthread-pre-split ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !348
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.af) #32
  br label %_ZNSt12_Vector_baseISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !346
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.ag, ptr %i.g, align 8, !tbaa !348
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit

bb.f:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !347 ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ak, %i.f
  br i1 %.not24, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = icmp sgt i64 %i.f, 0
  br i1 %i.al, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS1_IPS9_SE_EEET0_T_SJ_SI_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.am = udiv exact i64 %i.f, 40
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %i.am, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  tail call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0910.i.i.i.i.i)
  %i.an = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40 ; 3 uses
  %i.ap = add nsw i64 %.012.i.i.i.i.i, -1
  %i.aq = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS1_IPS9_SE_EEET0_T_SJ_SI_.exit.loopexit, !llvm.loop !634

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS1_IPS9_SE_EEET0_T_SJ_SI_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.ah, align 8, !tbaa !368
  %.pre46 = ptrtoint ptr %i.ao to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS1_IPS9_SE_EEET0_T_SJ_SI_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS1_IPS9_SE_EEET0_T_SJ_SI_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS1_IPS9_SE_EEET0_T_SJ_SI_.exit.loopexit, %bb.g
  %.pre-phi47 = phi i64 [ %.pre46, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS1_IPS9_SE_EEET0_T_SJ_SI_.exit.loopexit ], [ %i.k, %bb.g ]
  %i.ar = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS1_IPS9_SE_EEET0_T_SJ_SI_.exit.loopexit ], [ %i.ai, %bb.g ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.ao, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS1_IPS9_SE_EEET0_T_SJ_SI_.exit.loopexit ], [ %i.i, %bb.g ]
  %.not4.i.i25 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.ar
  br i1 %.not4.i.i25, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit, label %.lr.ph.i.i26.preheader

.lr.ph.i.i26.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS1_IPS9_SE_EEET0_T_SJ_SI_.exit
  %i.as = sub i64 %.pre-phi47, %i.k
  %i.at = getelementptr inbounds i8, ptr %i.i, i64 %i.as
  br label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %.lr.ph.i.i26.preheader, %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i27
  %.sroa.01.05.i.i = phi ptr [ %i.bc, %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i27 ], [ %i.at, %.lr.ph.i.i26.preheader ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 32 ; 2 uses
  %i.av = load i8, ptr %i.au, align 8, !tbaa !134, !range !100, !noundef !101
  %i.aw = trunc nuw i8 %i.av to i1
  store i8 0, ptr %i.au, align 8, !tbaa !134
  br i1 %i.aw, label %bb.h, label %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i27

bb.h:                                             ; preds = %.lr.ph.i.i26
  %i.ax = load ptr, ptr %.sroa.01.05.i.i, align 8, !tbaa !123 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i29: ; preds = %bb.h
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !124
  %i.bb = add i64 %i.ba, 1
  tail call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #32
  br label %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i27

_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i27: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i29, %.lr.ph.i.i26
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 40 ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.bc, %i.ar
  br i1 %.not.i.i28, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit, label %.lr.ph.i.i26, !llvm.loop !635

bb.i:                                             ; preds = %bb.f
  %i.bd = icmp sgt i64 %i.ak, 0
  br i1 %i.bd, label %.lr.ph.preheader.i.i.i.i.i32, label %_ZSt4copyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_ET0_T_SA_S9_.exit

.lr.ph.preheader.i.i.i.i.i32:                     ; preds = %bb.i
  %i.be = udiv exact i64 %i.ak, 40
  br label %.lr.ph.i.i.i.i.i33

.lr.ph.i.i.i.i.i33:                               ; preds = %.lr.ph.i.i.i.i.i33, %.lr.ph.preheader.i.i.i.i.i32
  %.012.i.i.i.i.i34 = phi i64 [ %i.bh, %.lr.ph.i.i.i.i.i33 ], [ %i.be, %.lr.ph.preheader.i.i.i.i.i32 ] ; 2 uses
  %.0811.i.i.i.i.i35 = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i33 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i32 ] ; 2 uses
  %.0910.i.i.i.i.i36 = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i33 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i32 ] ; 2 uses
  tail call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %.0811.i.i.i.i.i35, ptr noundef nonnull align 8 dereferenceable(40) %.0910.i.i.i.i.i36)
  %i.bf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i36, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i35, i64 40
  %i.bh = add nsw i64 %.012.i.i.i.i.i34, -1
  %i.bi = icmp samesign ugt i64 %.012.i.i.i.i.i34, 1
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i33, label %_ZSt4copyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_ET0_T_SA_S9_.exit.loopexit, !llvm.loop !636

_ZSt4copyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_ET0_T_SA_S9_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i33
  %.pre37 = load ptr, ptr %1, align 8, !tbaa !346
  %.pre38 = load ptr, ptr %i.ah, align 8, !tbaa !347 ; 2 uses
  %.pre39 = load ptr, ptr %0, align 8, !tbaa !346
  %.pre40 = load ptr, ptr %i.a, align 8, !tbaa !347
  %.pre41 = ptrtoint ptr %.pre38 to i64
  %.pre42 = ptrtoint ptr %.pre39 to i64
  %.pre44 = sub i64 %.pre41, %.pre42
  br label %_ZSt4copyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_ET0_T_SA_S9_.exit

_ZSt4copyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_ET0_T_SA_S9_.exit: ; preds = %_ZSt4copyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_ET0_T_SA_S9_.exit.loopexit, %bb.i
  %.pre-phi45 = phi i64 [ %.pre44, %_ZSt4copyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_ET0_T_SA_S9_.exit.loopexit ], [ %i.ak, %bb.i ]
  %i.bj = phi ptr [ %.pre40, %_ZSt4copyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_ET0_T_SA_S9_.exit.loopexit ], [ %i.b, %bb.i ]
  %i.bk = phi ptr [ %.pre38, %_ZSt4copyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_ET0_T_SA_S9_.exit.loopexit ], [ %i.ai, %bb.i ]
  %i.bl = phi ptr [ %.pre37, %_ZSt4copyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_ET0_T_SA_S9_.exit.loopexit ], [ %i.c, %bb.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.pre-phi45
  %i.bn = tail call noundef ptr @_ZSt16__do_uninit_copyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_ET0_T_SA_S9_(ptr noundef %i.bm, ptr noundef %i.bj, ptr noundef %i.bk) ; 0 uses
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit: ; preds = %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i27, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS1_IPS9_SE_EEET0_T_SJ_SI_.exit, %_ZSt4copyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_ET0_T_SA_S9_.exit, %_ZNSt12_Vector_baseISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE13_M_deallocateEPS7_m.exit
  %i.bo = load ptr, ptr %0, align 8, !tbaa !346
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.f
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !347
  br label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_23TypeFunctionTypePackVarES3_NS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !372  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !373  ; 4 uses
  %i.e = mul i64 %i.d, 3
  %i.f = lshr i64 %i.e, 2
  %.not.i = icmp ult i64 %i.b, %i.f
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableIPKNS_23TypeFunctionTypePackVarESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.b, 0
  br i1 %i.g, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %1, align 8, !tbaa !104    ; 3 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !104  ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.d, -1                         ; 2 uses
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = load ptr, ptr %0, align 8, !tbaa !331
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i.i = phi i64 [ %i.p, %bb.d ], [ %i.w, %bb.g ]
  %.01828.i.i = phi i64 [ 0, %bb.d ], [ %i.v, %bb.g ]
  %.01929.i.i = and i64 %.pn.i.i, %i.l            ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.01929.i.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !104  ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.i
  br i1 %i.t, label %_ZN4Luau6detail14DenseHashTableIPKNS_23TypeFunctionTypePackVarESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS7_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp eq ptr %i.s, %i.j
  br i1 %i.u, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.w = add i64 %i.v, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.v, %i.l
  br i1 %.not.i.i, label %.loopexit.i, label %bb.e, !llvm.loop !17

.loopexit.i:                                      ; preds = %bb.g, %bb.f, %bb.c, %bb.b
  tail call void @_ZN4Luau6detail14DenseHashTableIPKNS_23TypeFunctionTypePackVarESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !373
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_23TypeFunctionTypePackVarESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS7_.exit

_ZN4Luau6detail14DenseHashTableIPKNS_23TypeFunctionTypePackVarESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS7_.exit: ; preds = %bb.e, %bb.a, %.loopexit.i
  %i.x = phi i64 [ %.pre, %.loopexit.i ], [ %i.d, %bb.a ], [ %i.d, %bb.e ]
  %i.y = add i64 %i.x, -1                         ; 3 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !104    ; 4 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = mul i64 %i.aa, -4658895280553007687     ; 2 uses
  %i.ac = lshr i64 %i.ab, 31
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = load ptr, ptr %0, align 8, !tbaa !331   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !104 ; 2 uses
  %.02131.i5 = and i64 %i.ad, %i.y                ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.02131.i5 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !104 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ag
  br i1 %i.aj, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_23TypeFunctionTypePackVarESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS7_.exit
  %i.ak = icmp eq ptr %i.ai, %i.z
  br i1 %i.ak, label %_ZN4Luau6detail14DenseHashTableIPKNS_23TypeFunctionTypePackVarESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERS7_.exit, label %.lr.ph26

._crit_edge:                                      ; preds = %.lr.ph26, %_ZN4Luau6detail14DenseHashTableIPKNS_23TypeFunctionTypePackVarESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS7_.exit
  %.lcssa = phi ptr [ %i.ah, %_ZN4Luau6detail14DenseHashTableIPKNS_23TypeFunctionTypePackVarESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS7_.exit ], [ %i.aq, %.lr.ph26 ] ; 2 uses
  store ptr %i.z, ptr %.lcssa, align 8, !tbaa !375
  %i.al = load i64, ptr %i.a, align 8, !tbaa !372
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.a, align 8, !tbaa !372
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_23TypeFunctionTypePackVarESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERS7_.exit

.lr.ph:                                           ; preds = %.lr.ph26
  %i.an = icmp eq ptr %i.ar, %i.z
  br i1 %i.an, label %_ZN4Luau6detail14DenseHashTableIPKNS_23TypeFunctionTypePackVarESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERS7_.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i625 = phi i64 [ %i.ao, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02131.i724 = phi i64 [ %.02131.i, %.lr.ph ], [ %.02131.i5, %.lr.ph.preheader ]
  %i.ao = add i64 %.02030.i625, 1                 ; 3 uses
  %i.ap = add i64 %i.ao, %.02131.i724
  %.not.i3 = icmp ule i64 %i.ao, %i.y
  tail call void @llvm.assume(i1 %.not.i3)
  %.02131.i = and i64 %i.ap, %i.y                 ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.02131.i ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !104 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ag
  br i1 %i.as, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableIPKNS_23TypeFunctionTypePackVarESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERS7_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.at = phi ptr [ %.lcssa, %._crit_edge ], [ %i.ah, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  ret ptr %i.au
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableIPKNS_23TypeFunctionTypePackVarESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !373  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = shl i64 %i.b, 1
  %spec.select = select i1 %i.c, i64 16, i64 %i.d ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !104  ; 2 uses
  %.not.i = icmp eq i64 %spec.select, 0
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableIPKNS_23TypeFunctionTypePackVarESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERS7_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = shl i64 %spec.select, 4
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #35 ; 6 uses
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !104  ; 5 uses
  %xtraiter = and i64 %spec.select, 2             ; 2 uses
  %i.j = icmp ult i64 %spec.select, 4
  br i1 %i.j, label %.lr.ph.i.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %spec.select, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.new
  %.07.i.i = phi i64 [ 0, %.new ], [ %i.v, %.lr.ph.i.i ] ; 5 uses
end_hunk_5
begin_hunk_6_@_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEEPS7_mT_SH_:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #32
  br label %_ZNSt12_Vector_baseISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %bb.g, %bb.f
  invoke void @__cxa_rethrow() #33
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt12_Vector_baseISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE13_M_deallocateEPS7_m.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.k

bb.j:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #31
  unreachable

bb.k:                                             ; preds = %_ZNSt12_Vector_baseISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE13_M_deallocateEPS7_m.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEPS9_ET0_T_SI_SH_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKS7_EEvPT_DpOT0_.exit
  %.014 = phi ptr [ %i.t, %_ZSt10_ConstructISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKS7_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 9 uses
  %.sroa.08.013 = phi ptr [ %i.s, %_ZSt10_ConstructISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKS7_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %.014, i64 32 ; 2 uses
  store i8 0, ptr %i.c, align 8, !tbaa !134
  %i.d = load i8, ptr %i.b, align 8, !tbaa !134, !range !100, !noundef !101
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZSt10_ConstructISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKS7_EEvPT_DpOT0_.exit

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.f, ptr %.014, align 8, !tbaa !185
  %i.g = load ptr, ptr %.sroa.08.013, align 8, !tbaa !123 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !186  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.i, ptr %i.a, align 8, !tbaa !187
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.b
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.014, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  store ptr %i.k, ptr %.014, align 8, !tbaa !123
  %i.l = load i64, ptr %i.a, align 8, !tbaa !187
  store i64 %i.l, ptr %i.f, align 8, !tbaa !124
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.noexc, %bb.b
  %i.m = phi ptr [ %i.k, %.noexc ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !124
  store i8 %i.n, ptr %i.m, align 1, !tbaa !124
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !187  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !186
  %i.q = load ptr, ptr %.014, align 8, !tbaa !123
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  store i8 1, ptr %i.c, align 8, !tbaa !134
  br label %_ZSt10_ConstructISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKS7_EEvPT_DpOT0_.exit

_ZSt10_ConstructISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKS7_EEvPT_DpOT0_.exit: ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i, %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 40 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.014, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.s, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !654

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = call ptr @__cxa_begin_catch(ptr %i.v) #30 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #33
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %_ZSt10_ConstructISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKS7_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.t, %_ZSt10_ConstructISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKS7_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.x

bb.i:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #31
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !134, !range !100, !noundef !101
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i8, ptr %i.e, align 8, !range !100
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %or.cond = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !185
  %i.i = load ptr, ptr %1, align 8, !tbaa !123    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !186  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.k, ptr %i.a, align 8, !tbaa !187
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !123
  %i.n = load i64, ptr %i.a, align 8, !tbaa !187
  store i64 %i.n, ptr %i.h, align 8, !tbaa !124
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.d
  %i.o = phi ptr [ %i.m, %.noexc.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  switch i64 %i.k, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !124
  store i8 %i.p, ptr %i.o, align 1, !tbaa !124
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.e, %bb.f
  %i.q = load i64, ptr %i.a, align 8, !tbaa !187  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !186
  %i.s = load ptr, ptr %0, align 8, !tbaa !123
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  store i8 1, ptr %i.b, align 8, !tbaa !134
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.g:                                             ; preds = %bb.c
  store i8 0, ptr %i.b, align 8, !tbaa !134
  br i1 %i.d, label %bb.h, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %0, align 8, !tbaa !123    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.x = load i64, ptr %i.v, align 8, !tbaa !124
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #32
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.g, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit, %bb.b
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_ET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRS7_EEvPT_DpOT0_.exit
  %.016 = phi ptr [ %i.t, %_ZSt10_ConstructISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRS7_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 9 uses
  %.01215 = phi ptr [ %i.s, %_ZSt10_ConstructISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRS7_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.01215, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %.016, i64 32 ; 2 uses
  store i8 0, ptr %i.c, align 8, !tbaa !134
  %i.d = load i8, ptr %i.b, align 8, !tbaa !134, !range !100, !noundef !101
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZSt10_ConstructISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRS7_EEvPT_DpOT0_.exit

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.016, i64 16 ; 3 uses
  store ptr %i.f, ptr %.016, align 8, !tbaa !185
  %i.g = load ptr, ptr %.01215, align 8, !tbaa !123 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01215, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !186  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.i, ptr %i.a, align 8, !tbaa !187
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.b
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.016, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  store ptr %i.k, ptr %.016, align 8, !tbaa !123
  %i.l = load i64, ptr %i.a, align 8, !tbaa !187
  store i64 %i.l, ptr %i.f, align 8, !tbaa !124
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.noexc, %bb.b
  %i.m = phi ptr [ %i.k, %.noexc ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !124
  store i8 %i.n, ptr %i.m, align 1, !tbaa !124
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !187  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.016, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !186
  %i.q = load ptr, ptr %.016, align 8, !tbaa !123
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  store i8 1, ptr %i.c, align 8, !tbaa !134
  br label %_ZSt10_ConstructISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRS7_EEvPT_DpOT0_.exit

_ZSt10_ConstructISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRS7_EEvPT_DpOT0_.exit: ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i, %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.01215, i64 40 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.016, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.s, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !655

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = call ptr @__cxa_begin_catch(ptr %i.v) #30 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_(ptr noundef %2, ptr noundef nonnull %.016)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #33
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %_ZSt10_ConstructISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRS7_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.t, %_ZSt10_ConstructISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRS7_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.x

bb.i:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #31
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau18TypeFunctionCloner13cloneChildrenEPNS_20TypeFunctionTypePackES2_(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !110    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !110  ; 2 uses
  %.not15 = icmp eq ptr %i.a, %i.c
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backEOS3_.exit, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !226, !range !100, !noundef !101
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.h, label %bb.i

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backEOS3_.exit
  %.sroa.012.016 = phi ptr [ %i.a, %.lr.ph ], [ %i.ag, %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %i.i = load ptr, ptr %.sroa.012.016, align 8, !tbaa !112
  %i.j = tail call noundef ptr @_ZN4Luau18TypeFunctionCloner12shallowCloneEPKNS_16TypeFunctionTypeE(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr noundef %i.i) ; 2 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !236  ; 4 uses
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !224
  %.not.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.j, ptr %i.k, align 8, !tbaa !112
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.m, ptr %i.d, align 8, !tbaa !236
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE9push_backEOS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %2, align 8, !tbaa !235    ; 4 uses
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 5 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.e, label %_ZNKSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.166) #33
  unreachable

_ZNKSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #34 ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.q ; 2 uses
  store ptr %i.j, ptr %i.z, align 8, !tbaa !112
  %i.aa = icmp sgt i64 %i.q, 0
  br i1 %i.aa, label %bb.f, label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.n, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKN4Luau16TypeFunctionTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !224
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.p
end_hunk_6
begin_hunk_7_@_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE6fnMoveISA_EEvPvSF_:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE6fnMoveISB_EEvPvSF_(ptr noundef %0, ptr noundef %1) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !244  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !245
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.f, align 8, !tbaa !244
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load <2 x ptr>, ptr %i.g, align 8, !tbaa !271
  store <2 x ptr> %i.j, ptr %i.h, align 8, !tbaa !271
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.a, ptr %i.k, align 8, !tbaa !246
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !243
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.m, ptr %i.n, align 8, !tbaa !243
  store ptr null, ptr %i.b, align 8, !tbaa !244
  store ptr %i.d, ptr %i.g, align 8, !tbaa !241
  store ptr %i.d, ptr %i.i, align 8, !tbaa !242
  store i64 0, ptr %i.l, align 8, !tbaa !243
  br label %_ZN4Luau22TypeFunctionExternTypeC2EOS0_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.o, align 8, !tbaa !244
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.p, align 8, !tbaa !241
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.q, align 8, !tbaa !242
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.r, align 8, !tbaa !243
  br label %_ZN4Luau22TypeFunctionExternTypeC2EOS0_.exit

_ZN4Luau22TypeFunctionExternTypeC2EOS0_.exit:     ; preds = %bb.b, %bb.c
  %.sink.i.i.i.i.i = phi i32 [ 0, %bb.c ], [ %i.e, %bb.b ]
  store i32 %.sink.i.i.i.i.i, ptr %i.a, align 8, !tbaa !245
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.s, ptr noundef nonnull align 8 dereferenceable(88) %i.t, i64 88, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE6fnMoveISC_EEvPvSF_(ptr noundef %0, ptr noundef %1) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %1, align 8
  store i16 %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !185
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !123  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !186  ; 2 uses
  %i.j = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  br label %_ZN4Luau23TypeFunctionGenericTypeC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.e, ptr %i.b, align 8, !tbaa !123
  %i.l = load i64, ptr %i.f, align 8, !tbaa !124
  store i64 %i.l, ptr %i.d, align 8, !tbaa !124
  br label %_ZN4Luau23TypeFunctionGenericTypeC2EOS0_.exit

_ZN4Luau23TypeFunctionGenericTypeC2EOS0_.exit:    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !186
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !186
  store ptr %i.f, ptr %i.c, align 8, !tbaa !123
  store i64 0, ptr %i.m, align 8, !tbaa !186
  store i8 0, ptr %i.f, align 8, !tbaa !124
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE6fnDtorIS1_EEvPv(ptr noundef %0) #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE6fnDtorIS2_EEvPv(ptr noundef %0) #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE6fnDtorIS3_EEvPv(ptr noundef %0) #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE6fnDtorIS4_EEvPv(ptr noundef %0) #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE6fnDtorIS5_EEvPv(ptr noundef %0) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !233
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_28TypeFunctionBooleanSingletonENS_27TypeFunctionStringSingletonEEE9tableDtorE, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void %i.d(ptr noundef nonnull %i.e)
          to label %_ZN4Luau25TypeFunctionSingletonTypeD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #31
  unreachable

_ZN4Luau25TypeFunctionSingletonTypeD2Ev.exit:     ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE6fnDtorIS6_EEvPv(ptr noundef %0) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !235    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau21TypeFunctionUnionTypeD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !224
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #32
  br label %_ZN4Luau21TypeFunctionUnionTypeD2Ev.exit

_ZN4Luau21TypeFunctionUnionTypeD2Ev.exit:         ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE6fnDtorIS7_EEvPv(ptr noundef %0) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !235    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau28TypeFunctionIntersectionTypeD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !224
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #32
  br label %_ZN4Luau28TypeFunctionIntersectionTypeD2Ev.exit

_ZN4Luau28TypeFunctionIntersectionTypeD2Ev.exit:  ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE6fnDtorIS8_EEvPv(ptr noundef %0) #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE6fnDtorIS9_EEvPv(ptr noundef %0) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !346  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !347  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !134, !range !100, !noundef !101
  %i.g = trunc nuw i8 %i.f to i1
  store i8 0, ptr %i.e, align 8, !tbaa !134
  br i1 %i.g, label %bb.b, label %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !123 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8, !tbaa !124
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #32
  br label %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !15

_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !346
  br label %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.n = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !348
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #32
  br label %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit.i

_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !248  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !264
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #32
  br label %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EED2Ev.exit.i

_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EED2Ev.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit.i
  %i.aa = load ptr, ptr %0, align 8, !tbaa !235   ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i2.i, label %_ZN4Luau24TypeFunctionFunctionTypeD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EED2Ev.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !224
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #32
  br label %_ZN4Luau24TypeFunctionFunctionTypeD2Ev.exit

_ZN4Luau24TypeFunctionFunctionTypeD2Ev.exit:      ; preds = %_ZNSt6vectorIPKN4Luau23TypeFunctionTypePackVarESaIS3_EED2Ev.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE6fnDtorISA_EEvPv(ptr noundef %0) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !244
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.b)
          to label %_ZN4Luau21TypeFunctionTableTypeD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #31
  unreachable

_ZN4Luau21TypeFunctionTableTypeD2Ev.exit:         ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE6fnDtorISB_EEvPv(ptr noundef %0) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !244
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %i.b)
          to label %_ZN4Luau22TypeFunctionExternTypeD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #31
  unreachable

_ZN4Luau22TypeFunctionExternTypeD2Ev.exit:        ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE6fnDtorISC_EEvPv(ptr noundef %0) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4Luau23TypeFunctionGenericTypeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !124
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #32
  br label %_ZN4Luau23TypeFunctionGenericTypeD2Ev.exit

_ZN4Luau23TypeFunctionGenericTypeD2Ev.exit:       ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

declare void @_ZN4Luau13pagedUnfreezeEPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZN4Luau15pagedDeallocateEPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE6fnCopyIS1_EEvPvPKv(ptr noundef %0, ptr noundef %1) #7 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !217
  store i32 %i.a, ptr %0, align 4, !tbaa !217
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE6fnCopyIS2_EEvPvPKv(ptr noundef %0, ptr noundef %1) #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE6fnCopyIS3_EEvPvPKv(ptr noundef %0, ptr noundef %1) #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE6fnCopyIS4_EEvPvPKv(ptr noundef %0, ptr noundef %1) #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEE6fnCopyIS5_EEvPvPKv(ptr noundef %0, ptr noundef %1) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !233    ; 2 uses
  store i32 %i.b, ptr %0, align 8, !tbaa !233
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = icmp eq i32 %i.b, 0
  br i1 %i.e, label %call.0.i.i, label %call.1.i.i

call.0.i.i:                                       ; preds = %bb.a
  %i.f = load i8, ptr %i.d, align 8, !tbaa !234
  store i8 %i.f, ptr %i.c, align 8, !tbaa !234
  br label %_ZN4Luau25TypeFunctionSingletonTypeC2ERKS0_.exit

call.1.i.i:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !185
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !123  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !186  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.j, ptr %i.a, align 8, !tbaa !187
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %call.1.i.i
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !123
  %i.m = load i64, ptr %i.a, align 8, !tbaa !187
  store i64 %i.m, ptr %i.g, align 8, !tbaa !124
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc.i.i.i.i.i, %call.1.i.i
  %i.n = phi ptr [ %i.l, %.noexc.i.i.i.i.i ], [ %i.g, %call.1.i.i ] ; 2 uses
  switch i64 %i.j, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN4Luau7VariantIJNS_28TypeFunctionBooleanSingletonENS_27TypeFunctionStringSingletonEEE6fnCopyIS2_EEvPvPKv.exit.i.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.o = load i8, ptr %i.h, align 1, !tbaa !124
  store i8 %i.o, ptr %i.n, align 1, !tbaa !124
  br label %_ZN4Luau7VariantIJNS_28TypeFunctionBooleanSingletonENS_27TypeFunctionStringSingletonEEE6fnCopyIS2_EEvPvPKv.exit.i.i

end_hunk_7
