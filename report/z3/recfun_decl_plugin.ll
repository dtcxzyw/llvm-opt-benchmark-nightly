Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/recfun_decl_plugin?download=true
inline.NumInlined: 1388
inline.NumDeleted: 707
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN6recfun3def13compute_casesERNS_4utilERNS_7replaceERNS_17is_immediate_predEbjPKP3varP4expr:bb.a

bb.bj:                                            ; preds = %_ZNK11ast_manager6is_iteEPK4expr.exit
  %i.jf = invoke noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(48) %30, i64 noundef 16)
          to label %bb.bk unwind label %bb.ba     ; 3 uses

bb.bk:                                            ; preds = %bb.bj
  store ptr %i.gw, ptr %i.jf, align 8, !tbaa !336
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store ptr %.sroa.7.1377, ptr %i.jg, align 8, !tbaa !337
  br label %.loopexit

.thread276:                                       ; preds = %_ZNK11ast_manager6is_iteEPK4expr.exit, %bb.bi
  %i.jh = getelementptr inbounds nuw i8, ptr %i.gw, i64 32 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !222 ; 2 uses
  %i.jk = zext i32 %i.jj to i64
  %.idx = shl nuw nsw i64 %i.jk, 3
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 %.idx
  %.not85374 = icmp eq i32 %i.jj, 0
  br i1 %.not85374, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.thread276, %bb.ca
  %.048376 = phi ptr [ %i.li, %bb.ca ], [ %i.jh, %.thread276 ] ; 2 uses
  %.sroa.0238.1375 = phi ptr [ %.sroa.0238.2, %bb.ca ], [ %.sroa.0238.0378, %.thread276 ] ; 9 uses
  %i.jm = load ptr, ptr %.048376, align 8, !tbaa !51 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.jn = load ptr, ptr %0, align 8, !tbaa !211, !nonnull !43, !align !44 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVZN6recfun3def12contains_iteERNS_4utilEP4exprE10ite_find_p, i64 16), ptr %13, align 8, !tbaa !185
  store ptr %i.jn, ptr %i.fl, align 8, !tbaa !40
  store ptr %0, ptr %i.fm, align 8, !tbaa !212
  store ptr %1, ptr %i.fn, align 8, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  store ptr %13, ptr %14, align 8, !tbaa !201
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV8ast_mark, i64 16), ptr %i.fo, align 8, !tbaa !185
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fq, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV8ast_mark, i64 16), ptr %i.fr, align 8, !tbaa !185
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fs, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ft, i8 0, i64 16, i1 false)
  %i.jo = ptrtoint ptr %i.jn to i64
  store i64 %i.jo, ptr %i.fu, align 8, !tbaa !40
  store ptr null, ptr %i.fv, align 8, !tbaa !48
  store i8 0, ptr %i.fw, align 8, !tbaa !209
  %i.jp = invoke noundef zeroext i1 @_ZN10check_predclEP4expr(ptr noundef nonnull align 8 dereferenceable(137) %14, ptr noundef %i.jm)
          to label %bb.bm unwind label %bb.bl

bb.bl:                                            ; preds = %.lr.ph
  %i.jq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10check_predD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %.body109

bb.bm:                                            ; preds = %.lr.ph
  call void @_ZN10check_predD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br i1 %i.jp, label %bb.bn, label %bb.ca

bb.bn:                                            ; preds = %bb.bm
  %i.jr = icmp eq ptr %.sroa.0238.1375, null
  br i1 %i.jr, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.js = getelementptr inbounds i8, ptr %.sroa.0238.1375, i64 -4
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !49 ; 5 uses
  %i.ju = getelementptr inbounds i8, ptr %.sroa.0238.1375, i64 -8 ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !49
  %i.jw = icmp eq i32 %i.jt, %i.jv
  br i1 %i.jw, label %bb.bq, label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit128

bb.bp:                                            ; preds = %bb.bn
  %i.jx = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc221 unwind label %bb.bz ; 3 uses

.noexc221:                                        ; preds = %bb.bp
  store i32 2, ptr %i.jx, align 4, !tbaa !49
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 4
  store i32 0, ptr %i.jy, align 4, !tbaa !49
  br label %.noexc127

bb.bq:                                            ; preds = %bb.bo
  %i.jz = mul i32 %i.jt, 3
  %i.ka = add i32 %i.jz, 1
  %i.kb = lshr i32 %i.ka, 1                       ; 3 uses
  %i.kc = shl i32 %i.kb, 3
  %i.kd = add i32 %i.kc, 8                        ; 2 uses
  %.not.i211 = icmp ugt i32 %i.kb, %i.jt
  br i1 %.not.i211, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.ke = shl i32 %i.jt, 3
  %i.kf = add i32 %i.ke, 8
  %.not27.i220 = icmp ugt i32 %i.kd, %i.kf
  br i1 %.not27.i220, label %bb.bx, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.kg = call ptr @__cxa_allocate_exception(i64 40) #22 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.bt unwind label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.kg, align 8, !tbaa !185
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 24 ; 3 uses
  store ptr %i.ki, ptr %i.kh, align 8, !tbaa !191
  %i.kj = load ptr, ptr %8, align 8, !tbaa !193   ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.kl = icmp eq ptr %i.kj, %i.kk
  br i1 %i.kl, label %bb.bu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i213

bb.bu:                                            ; preds = %bb.bt
  %i.km = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !194 ; 3 uses
  %i.ko = icmp ult i64 %i.kn, 16
  call void @llvm.assume(i1 %i.ko)
  %i.kp = add nuw nsw i64 %i.kn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ki, ptr noundef nonnull align 8 dereferenceable(1) %i.kk, i64 %i.kp, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i213: ; preds = %bb.bt
  store ptr %i.kj, ptr %i.kh, align 8, !tbaa !193
  %i.kq = load i64, ptr %i.kk, align 8, !tbaa !195
  store i64 %i.kq, ptr %i.ki, align 8, !tbaa !195
  %.phi.trans.insert.i214 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.pre.i215 = load i64, ptr %.phi.trans.insert.i214, align 8, !tbaa !194
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i216

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i216: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i213, %bb.bu
  %i.kr = phi i64 [ %i.kn, %bb.bu ], [ %.pre.i215, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i213 ]
  %i.ks = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  store i64 %i.kr, ptr %i.kt, align 8, !tbaa !194
  store ptr %i.kk, ptr %8, align 8, !tbaa !193
  store i64 0, ptr %i.ks, align 8, !tbaa !194
  store i8 0, ptr %i.kk, align 8, !tbaa !195
  invoke void @__cxa_throw(ptr nonnull %i.kg, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #24
          to label %bb.by unwind label %bb.bv

bb.bv:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i216
  %i.ku = landingpad { ptr, i32 }
          cleanup
  %i.kv = load ptr, ptr %8, align 8, !tbaa !193   ; 2 uses
  %i.kw = icmp eq ptr %i.kv, %i.kk
  br i1 %i.kw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i217: ; preds = %bb.bv
  %i.kx = load i64, ptr %i.kk, align 8, !tbaa !195
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.kv, i64 noundef %i.ky) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i218

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i218: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %.body109.thread

bb.bw:                                            ; preds = %bb.bs
  %i.kz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @__cxa_free_exception(ptr %i.kg) #22
  br label %.body109.thread

bb.bx:                                            ; preds = %bb.br
  %i.la = zext i32 %i.kd to i64
  %i.lb = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.ju, i64 noundef %i.la)
          to label %.noexc224 unwind label %bb.bz ; 3 uses

.noexc224:                                        ; preds = %bb.bx
  store i32 %i.kb, ptr %i.lb, align 4, !tbaa !49
  %.phi.trans.insert.i125.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  %.pre2.i126.pre = load i32, ptr %.phi.trans.insert.i125.phi.trans.insert, align 4, !tbaa !49
  br label %.noexc127

bb.by:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i216
  unreachable

.noexc127:                                        ; preds = %.noexc224, %.noexc221
  %.pre2.i126 = phi i32 [ 0, %.noexc221 ], [ %.pre2.i126.pre, %.noexc224 ]
  %.pn = phi ptr [ %i.jx, %.noexc221 ], [ %i.lb, %.noexc224 ]
  %.sroa.0238.9 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  br label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit128

_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit128:  ; preds = %bb.bo, %.noexc127
  %.sroa.0238.7 = phi ptr [ %.sroa.0238.9, %.noexc127 ], [ %.sroa.0238.1375, %bb.bo ] ; 3 uses
  %i.lc = phi i32 [ %.pre2.i126, %.noexc127 ], [ %i.jt, %bb.bo ] ; 2 uses
  %i.ld = getelementptr inbounds i8, ptr %.sroa.0238.7, i64 -4
  %i.le = zext i32 %i.lc to i64
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0238.7, i64 %i.le
  store ptr %i.jm, ptr %i.lf, align 8, !tbaa !51
  %i.lg = add i32 %i.lc, 1
  store i32 %i.lg, ptr %i.ld, align 4, !tbaa !49
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx, %bb.bp
  %.sroa.0238.1375.lcssa625 = phi ptr [ %.sroa.0238.1375, %bb.bx ], [ null, %bb.bp ]
  %i.lh = landingpad { ptr, i32 }
          cleanup
  br label %.body109

bb.ca:                                            ; preds = %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit128, %bb.bm
  %.sroa.0238.2 = phi ptr [ %.sroa.0238.7, %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit128 ], [ %.sroa.0238.1375, %bb.bm ] ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.048376, i64 8 ; 2 uses
  %.not85 = icmp eq ptr %i.li, %i.jl
  br i1 %.not85, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.ca, %.thread276, %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit113.thread, %bb.bk, %bb.bh
  %.sroa.7.2 = phi ptr [ %i.jf, %bb.bk ], [ %.sroa.7.1377, %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit113.thread ], [ %.sroa.7.1377, %bb.bh ], [ %.sroa.7.1377, %.thread276 ], [ %.sroa.7.1377, %bb.ca ] ; 2 uses
  %.sroa.0238.3 = phi ptr [ %.sroa.0238.0378, %bb.bk ], [ %.sroa.0238.0378, %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit113.thread ], [ %.sroa.0238.0378, %bb.bh ], [ %.sroa.0238.0378, %.thread276 ], [ %.sroa.0238.2, %bb.ca ] ; 2 uses
  %i.lj = icmp eq ptr %.sroa.0238.3, null
  br i1 %i.lj, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit, !llvm.loop !319

bb.cb:                                            ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit
  %i.lk = getelementptr inbounds i8, ptr %.sroa.0238.0378, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.lk)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ll = landingpad { ptr, i32 }
          catch ptr null
  %i.lm = extractvalue { ptr, i32 } %i.ll, 0
  call void @__clang_call_terminate(ptr %i.lm) #23
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit:                 ; preds = %.loopexit, %bb.cb
  %.sroa.7.1331 = phi ptr [ %.sroa.7.1377, %bb.cb ], [ %.sroa.7.2, %.loopexit ] ; 2 uses
  %.not = icmp eq ptr %i.gp, null
  br i1 %.not, label %._crit_edge, label %.lr.ph382, !llvm.loop !320

.body109:                                         ; preds = %bb.bz, %bb.bl
  %.sroa.0238.1375627 = phi ptr [ %.sroa.0238.1375.lcssa625, %bb.bz ], [ %.sroa.0238.1375, %bb.bl ] ; 2 uses
  %.pn86.pn.pn = phi { ptr, i32 } [ %i.lh, %bb.bz ], [ %i.jq, %bb.bl ] ; 2 uses
  %.not.i.i129 = icmp eq ptr %.sroa.0238.1375627, null
  br i1 %.not.i.i129, label %.body166, label %.body109.thread

.body109.thread:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i218, %bb.bw, %bb.ba, %bb.bg, %bb.bd, %bb.ay, %.body109
  %.pn86.pn.pn283 = phi { ptr, i32 } [ %.pn86.pn.pn, %.body109 ], [ %i.kz, %bb.bw ], [ %i.ku, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i218 ], [ %i.hs, %bb.ba ], [ %i.in, %bb.bd ], [ %i.hq, %bb.ay ], [ %i.ir, %bb.bg ]
  %.sroa.0238.5282 = phi ptr [ %.sroa.0238.1375627, %.body109 ], [ %.sroa.0238.1375, %bb.bw ], [ %.sroa.0238.1375, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i218 ], [ %.sroa.0238.0378, %bb.ba ], [ %.sroa.0238.0378, %bb.bd ], [ %.sroa.0238.0378, %bb.ay ], [ %.sroa.0238.0378, %bb.bg ]
  %i.ln = getelementptr inbounds i8, ptr %.sroa.0238.5282, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ln)
          to label %.body166 unwind label %bb.cd

bb.cd:                                            ; preds = %.body109.thread
  %i.lo = landingpad { ptr, i32 }
          catch ptr null
  %i.lp = extractvalue { ptr, i32 } %i.lo, 0
  call void @__clang_call_terminate(ptr %i.lp) #23
  unreachable

._crit_edge:                                      ; preds = %_ZN6vectorIP4exprLb0EjED2Ev.exit, %_ZN6recfun10case_state10pop_branchEv.exit
  %.sroa.7.0.lcssa = phi ptr [ %.sroa.7.0.copyload, %_ZN6recfun10case_state10pop_branchEv.exit ], [ %.sroa.7.1331, %_ZN6vectorIP4exprLb0EjED2Ev.exit ] ; 3 uses
  %.not77 = icmp eq ptr %.sroa.7.0.lcssa, null
  br i1 %.not77, label %bb.cs, label %bb.ce

bb.ce:                                            ; preds = %._crit_edge
  %i.lq = load ptr, ptr %.sroa.7.0.lcssa, align 8, !tbaa !336 ; 7 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  %i.ls = load i32, ptr %i.lr, align 4
  %i.lt = and i32 %i.ls, 65535
  %i.lu = icmp eq i32 %i.lt, 0
  br i1 %i.lu, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !221
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 24
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !183 ; 3 uses
  %.not.i.i.i.i.i131 = icmp eq ptr %i.ly, null
  br i1 %.not.i.i.i.i.i131, label %bb.cg, label %_ZNK11ast_manager6is_iteEPK4expr.exit.i132

_ZNK11ast_manager6is_iteEPK4expr.exit.i132:       ; preds = %bb.cf
  %i.lz = load i32, ptr %i.ly, align 8, !tbaa !137
  %i.ma = icmp eq i32 %i.lz, 0
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ly, i64 4
  %i.mc = load i32, ptr %i.mb, align 4
  %i.md = icmp eq i32 %i.mc, 4
  %i.me = select i1 %i.ma, i1 %i.md, i1 false
  br i1 %i.me, label %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit133, label %bb.cg

_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit133: ; preds = %_ZNK11ast_manager6is_iteEPK4expr.exit.i132
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lq, i64 32
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !51
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lq, i64 40
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !51
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lq, i64 48
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !51
  br label %bb.ci

bb.cg:                                            ; preds = %_ZNK11ast_manager6is_iteEPK4expr.exit.i132, %bb.ce, %bb.cf
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.1, i32 noundef 313, ptr noundef nonnull @.str.4)
          to label %bb.ch unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ch:                                            ; preds = %bb.cg
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %bb.ci unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ci:                                            ; preds = %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit133, %bb.ch
  %.0259297 = phi ptr [ null, %bb.ch ], [ %i.mk, %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit133 ]
  %.0260295 = phi ptr [ null, %bb.ch ], [ %i.mi, %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit133 ]
  %.0261293 = phi ptr [ null, %bb.ch ], [ %i.mg, %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit133 ] ; 2 uses
  %i.ml = invoke noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(48) %30, i64 noundef 24)
          to label %bb.cj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.cj:                                            ; preds = %bb.ci
  store ptr %i.lq, ptr %i.ml, align 8, !tbaa !339
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  store i8 1, ptr %i.mm, align 8, !tbaa !340
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  store ptr %.sroa.0247.0.copyload, ptr %i.mn, align 8, !tbaa !341
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.7.0.lcssa, i64 8 ; 2 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !337
  %i.mq = invoke noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(48) %30, i64 noundef 16)
          to label %.noexc135 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc135:                                        ; preds = %bb.cj
  store ptr %.0260295, ptr %i.mq, align 8, !tbaa !327
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  store ptr null, ptr %i.mr, align 8, !tbaa !328
  %i.ms = invoke noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(48) %30, i64 noundef 16)
          to label %bb.ck unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.ck:                                            ; preds = %.noexc135
  store ptr %.0261293, ptr %i.ms, align 8, !tbaa !327
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  store ptr %i.mq, ptr %i.mt, align 8, !tbaa !328
  %i.mu = invoke noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(48) %30, i64 noundef 24)
          to label %bb.cl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.cl:                                            ; preds = %bb.ck
  store ptr %i.lq, ptr %i.mu, align 8, !tbaa !339
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  store i8 0, ptr %i.mv, align 8, !tbaa !340
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  store ptr %.sroa.0247.0.copyload, ptr %i.mw, align 8, !tbaa !341
  %i.mx = load ptr, ptr %i.mo, align 8, !tbaa !337
  %i.my = invoke noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(48) %30, i64 noundef 16)
          to label %.noexc139 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc139:                                        ; preds = %bb.cl
  store ptr %.0259297, ptr %i.my, align 8, !tbaa !327
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  store ptr null, ptr %i.mz, align 8, !tbaa !328
  %i.na = invoke noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(48) %30, i64 noundef 16)
          to label %bb.cm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.cm:                                            ; preds = %.noexc139
  store ptr %.0261293, ptr %i.na, align 8, !tbaa !327
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  store ptr %i.my, ptr %i.nb, align 8, !tbaa !328
  %i.nc = load ptr, ptr %i.dp, align 8, !tbaa !218 ; 4 uses
  %i.nd = icmp eq ptr %i.nc, null
  br i1 %i.nd, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ne = getelementptr inbounds i8, ptr %i.nc, i64 -4
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !49 ; 2 uses
  %i.ng = getelementptr inbounds i8, ptr %i.nc, i64 -8
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !49 ; 2 uses
  %i.ni = icmp eq i32 %i.nf, %i.nh
  br i1 %i.ni, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn, %bb.cm
  invoke void @_ZN6vectorIN6recfun6branchELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc145 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc145:                                        ; preds = %bb.co
  %.pre.i.i142 = load ptr, ptr %i.dp, align 8, !tbaa !218 ; 3 uses
  %.phi.trans.insert.i.i143 = getelementptr inbounds i8, ptr %.pre.i.i142, i64 -4
  %.pre2.i.i144 = load i32, ptr %.phi.trans.insert.i.i143, align 4, !tbaa !49
  %.phi.trans.insert450 = getelementptr inbounds i8, ptr %.pre.i.i142, i64 -8
  %.pre451 = load i32, ptr %.phi.trans.insert450, align 4, !tbaa !49
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cn, %.noexc145
  %i.nj = phi i32 [ %.pre451, %.noexc145 ], [ %i.nh, %bb.cn ]
  %i.nk = phi i32 [ %.pre2.i.i144, %.noexc145 ], [ %i.nf, %bb.cn ] ; 2 uses
  %i.nl = phi ptr [ %.pre.i.i142, %.noexc145 ], [ %i.nc, %bb.cn ] ; 3 uses
  %i.nm = zext i32 %i.nk to i64
  %i.nn = getelementptr inbounds nuw [24 x i8], ptr %i.nl, i64 %i.nm ; 3 uses
  store ptr %i.mu, ptr %i.nn, align 8, !tbaa !331
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  store ptr %i.mx, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !333
  %.sroa.6227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  store ptr %i.na, ptr %.sroa.6227.0..sroa_idx, align 8, !tbaa !329
  %i.no = getelementptr inbounds i8, ptr %i.nl, i64 -4
  %i.np = add i32 %i.nk, 1                        ; 3 uses
  store i32 %i.np, ptr %i.no, align 4, !tbaa !49
  %i.nq = icmp eq i32 %i.np, %i.nj
  br i1 %i.nq, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZN6vectorIN6recfun6branchELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc150 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc150:                                        ; preds = %bb.cq
  %.pre.i.i147 = load ptr, ptr %i.dp, align 8, !tbaa !218 ; 2 uses
  %.phi.trans.insert.i.i148 = getelementptr inbounds i8, ptr %.pre.i.i147, i64 -4
  %.pre2.i.i149 = load i32, ptr %.phi.trans.insert.i.i148, align 4, !tbaa !49
  br label %bb.cr

bb.cr:                                            ; preds = %.noexc150, %bb.cp
  %i.nr = phi i32 [ %.pre2.i.i149, %.noexc150 ], [ %i.np, %bb.cp ] ; 2 uses
  %i.ns = phi ptr [ %.pre.i.i147, %.noexc150 ], [ %i.nl, %bb.cp ] ; 3 uses
  %i.nt = zext i32 %i.nr to i64
  %i.nu = getelementptr inbounds nuw [24 x i8], ptr %i.ns, i64 %i.nt ; 3 uses
  store ptr %i.ml, ptr %i.nu, align 8, !tbaa !331
  %.sroa.5229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  store ptr %i.mp, ptr %.sroa.5229.0..sroa_idx, align 8, !tbaa !333
  %.sroa.6230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  store ptr %i.ms, ptr %.sroa.6230.0..sroa_idx, align 8, !tbaa !329
  %i.nv = getelementptr inbounds i8, ptr %i.ns, i64 -4
  %i.nw = add i32 %i.nr, 1
  store i32 %i.nw, ptr %i.nv, align 4, !tbaa !49
  br label %bb.eh

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph382, %bb.cx, %.noexc162, %bb.cy, %bb.db, %bb.cu, %bb.ci, %bb.cj, %.noexc135, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, %bb.ch, %bb.cg, %bb.cq, %bb.co, %.noexc139, %bb.cl, %bb.ck, %bb.at, %bb.aq
  %lpad.loopexit.split-lp622 = landingpad { ptr, i32 }
          cleanup
  br label %.body166

bb.cs:                                            ; preds = %._crit_edge
  %i.nx = load ptr, ptr %i.bk, align 8, !tbaa !48 ; 5 uses
  %i.ny = icmp eq ptr %i.nx, null
  br i1 %i.ny, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %bb.cs
  %i.nz = getelementptr inbounds i8, ptr %i.nx, i64 -4
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !49 ; 2 uses
  %i.ob = zext i32 %i.oa to i64
  %i.oc = shl nuw nsw i64 %i.ob, 3
  %i.od = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.oc
  %.not.i152 = icmp eq i32 %i.oa, 0
  br i1 %.not.i152, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i153

.lr.ph.i.i153:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.ok, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.nx, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.oe = load ptr, ptr %.06.i.i, align 8, !tbaa !51 ; 3 uses
  %i.of = load ptr, ptr %29, align 8, !tbaa !42, !nonnull !43, !align !44
end_hunk_0
