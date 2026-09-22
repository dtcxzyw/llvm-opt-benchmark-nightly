Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/dl_mk_interp_tail_simplifier?download=true
inline.NumInlined: 1777
inline.NumDeleted: 561
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7datalog25mk_interp_tail_simplifier14transform_ruleEPNS_4ruleER7obj_refIS1_NS_12rule_managerEE:bb.a
  %i.ri = phi ptr [ %i.rd, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit162.thread373 ], [ %i.qq, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit162 ], [ null, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEE7dec_refEv.exit.i158 ]
  %.pr.i73285370 = phi ptr [ %.pr.i73285378, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit162.thread373 ], [ %.pr.i73287, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit162 ], [ null, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEE7dec_refEv.exit.i158 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %.pr209 = load ptr, ptr %12, align 8, !tbaa !75
  br label %bb.de

bb.de:                                            ; preds = %bb.bx, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit
  %.pr.i73288 = phi ptr [ %.pr.i73, %bb.bx ], [ %.pr.i73285370, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit ] ; 2 uses
  %i.rj = phi ptr [ %i.y, %bb.bx ], [ %i.ri, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit ]
  %.pr.i149282 = phi ptr [ %i.z, %bb.bx ], [ %.pr.i149279371, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit ]
  %i.rk = phi ptr [ %i.aa, %bb.bx ], [ %i.rh, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit ]
  %i.rl = phi ptr [ %i.ab, %bb.bx ], [ %i.rh, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit ]
  %i.rm = phi ptr [ %i.mn, %bb.bx ], [ %i.rh, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit ]
  %i.rn = phi ptr [ %i.mo, %bb.bx ], [ %i.rh, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit ]
  %i.ro = phi ptr [ %i.mp, %bb.bx ], [ %i.rh, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit ]
  %i.rp = phi ptr [ %i.ms, %bb.bx ], [ %.pr209, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit ] ; 3 uses
  %.253 = phi i1 [ false, %bb.bx ], [ %.152372, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit ] ; 2 uses
  %.1 = phi i1 [ false, %bb.bx ], [ %i.qv, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit ]
  %.not.i.i165 = icmp eq ptr %i.rp, null
  br i1 %.not.i.i165, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.rq = load ptr, ptr %i.n, align 8, !tbaa !80, !nonnull !69, !align !70
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rp, i64 8 ; 2 uses
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !82
  %i.rt = add i32 %i.rs, -1                       ; 2 uses
  store i32 %i.rt, ptr %i.rr, align 4, !tbaa !82
  %i.ru = icmp eq i32 %i.rt, 0
  br i1 %i.ru, label %bb.dg, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.rq, ptr noundef nonnull %i.rp)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.rv = landingpad { ptr, i32 }
          catch ptr null
  %i.rw = extractvalue { ptr, i32 } %i.rv, 0
  call void @__clang_call_terminate(ptr %i.rw) #18
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.de, %bb.df, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %i.rx = load ptr, ptr %11, align 8, !tbaa !83   ; 3 uses
  %.not.i.i166 = icmp eq ptr %i.rx, null
  br i1 %.not.i.i166, label %_ZN7obj_refI3app11ast_managerED2Ev.exit, label %bb.di

bb.di:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.ry = load ptr, ptr %i.k, align 8, !tbaa !84, !nonnull !69, !align !70
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rx, i64 8 ; 2 uses
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !82
  %i.sb = add i32 %i.sa, -1                       ; 2 uses
  store i32 %i.sb, ptr %i.rz, align 4, !tbaa !82
  %i.sc = icmp eq i32 %i.sb, 0
  br i1 %i.sc, label %bb.dj, label %_ZN7obj_refI3app11ast_managerED2Ev.exit

bb.dj:                                            ; preds = %bb.di
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ry, ptr noundef nonnull %i.rx)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.sd = landingpad { ptr, i32 }
          catch ptr null
  %i.se = extractvalue { ptr, i32 } %i.sd, 0
  call void @__clang_call_terminate(ptr %i.se) #18
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit:          ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %bb.di, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.sf = load ptr, ptr %10, align 8, !tbaa !83   ; 3 uses
  %.not.i.i167 = icmp eq ptr %i.sf, null
  br i1 %.not.i.i167, label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit78, label %bb.dl

bb.dl:                                            ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit
  %i.sg = load ptr, ptr %i.g, align 8, !tbaa !84, !nonnull !69, !align !70
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sf, i64 8 ; 2 uses
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !82
  %i.sj = add i32 %i.si, -1                       ; 2 uses
  store i32 %i.sj, ptr %i.sh, align 4, !tbaa !82
  %i.sk = icmp eq i32 %i.sj, 0
  br i1 %i.sk, label %bb.dm, label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit78

bb.dm:                                            ; preds = %bb.dl
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.sg, ptr noundef nonnull %i.sf)
          to label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit78 unwind label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.sl = landingpad { ptr, i32 }
          catch ptr null
  %i.sm = extractvalue { ptr, i32 } %i.sl, 0
  call void @__clang_call_terminate(ptr %i.sm) #18
  unreachable

bb.do:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.cg, %bb.co, %bb.dc
  %.pn.pn = phi { ptr, i32 } [ %i.oy, %bb.cg ], [ %i.qz, %bb.dc ], [ %i.qg, %bb.co ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %.body202

.body202:                                         ; preds = %.loopexit213, %.loopexit.split-lp214, %bb.bt, %bb.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i198, %bb.do
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.do ], [ %i.ls, %bb.bp ], [ %i.md, %bb.bt ], [ %i.ln, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i198 ], [ %lpad.loopexit215, %.loopexit213 ], [ %lpad.loopexit.split-lp216, %.loopexit.split-lp214 ]
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %.body

.body:                                            ; preds = %.loopexit537, %.loopexit.split-lp538, %.loopexit532, %.loopexit.split-lp533, %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i185, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %.body202, %bb.ae
  %.pn61.pn = phi { ptr, i32 } [ %i.ee, %bb.ae ], [ %.pn.pn.pn, %.body202 ], [ %i.fy, %bb.an ], [ %i.hv, %bb.ax ], [ %i.ft, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %lpad.loopexit.split-lp535, %.loopexit.split-lp533 ], [ %i.hq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i185 ], [ %lpad.loopexit534, %.loopexit532 ], [ %lpad.loopexit539, %.loopexit537 ], [ %lpad.loopexit.split-lp540, %.loopexit.split-lp538 ]
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.dq

_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit78: ; preds = %bb.dm, %bb.dl, %_ZN7obj_refI3app11ast_managerED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br i1 %.1, label %bb.i, label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit

_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit: ; preds = %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit78, %bb.j, %._ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exitthread-pre-split_crit_edge
  %i.sn = phi ptr [ %.pr212.pre, %._ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exitthread-pre-split_crit_edge ], [ %.pr.i73, %bb.j ], [ %.pr.i73288, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit78 ] ; 2 uses
  %.455 = phi i1 [ true, %._ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exitthread-pre-split_crit_edge ], [ true, %bb.j ], [ %.253, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit78 ] ; 2 uses
  %.not.i.i169 = icmp eq ptr %i.sn, null
  br i1 %.not.i.i169, label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit171, label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit.thread

_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit.thread: ; preds = %bb.g, %bb.d, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit
  %.455383 = phi i1 [ %.455, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit ], [ true, %bb.d ], [ true, %bb.g ]
  %i.so = phi ptr [ %i.sn, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit ], [ %1, %bb.d ], [ %1, %bb.g ]
  %i.sp = load ptr, ptr %i.d, align 8, !tbaa !100, !nonnull !69, !align !70
  invoke void @_ZN7datalog12rule_manager7dec_refEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(1104) %i.sp, ptr noundef nonnull %i.so)
          to label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit171 unwind label %bb.dp

bb.dp:                                            ; preds = %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit.thread
  %i.sq = landingpad { ptr, i32 }
          catch ptr null
  %i.sr = extractvalue { ptr, i32 } %i.sq, 0
  call void @__clang_call_terminate(ptr %i.sr) #18
  unreachable

_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit171: ; preds = %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEE7dec_refEv.exit.i74, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit.thread
  %.455384 = phi i1 [ %.455, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit ], [ %.455383, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEEaSERKS3_.exit.thread ], [ true, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEE7dec_refEv.exit.i74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  ret i1 %.455384

bb.dq:                                            ; preds = %bb.n, %.body, %bb.h
  %.pn67 = phi { ptr, i32 } [ %i.x, %bb.h ], [ %i.ao, %bb.n ], [ %.pn61.pn, %.body ]
  call void @_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  resume { ptr, i32 } %.pn67
}

declare noundef zeroext i1 @_ZNK7datalog12rule_manager15has_quantifiersERKNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(1104), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare void @_Z11flatten_andP4exprR10ref_vectorIS_11ast_managerE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !101    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEE7dec_refEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100, !nonnull !69, !align !70
  invoke void @_ZN7datalog12rule_manager7dec_refEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(1104) %i.c, ptr noundef nonnull %i.a)
          to label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEE7dec_refEv.exit unwind label %bb.c

_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEE7dec_refEv.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #18
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN7datalog25mk_interp_tail_simplifier15transform_rulesERKNS_8rule_setERS1_(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %1, ptr noundef nonnull align 8 dereferenceable(248) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.146, align 8         ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !290, !nonnull !69, !align !70
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 656 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !364  ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %._crit_edge, label %_ZNK7datalog8rule_set3endEv.exit

_ZNK7datalog8rule_set3endEv.exit:                 ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !92   ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j
  %.not25 = icmp eq i32 %i.h, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK7datalog8rule_set3endEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit, %bb.a, %_ZNK7datalog8rule_set3endEv.exit
  %.020.lcssa = phi i1 [ false, %_ZNK7datalog8rule_set3endEv.exit ], [ false, %bb.a ], [ %.135, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit ]
  ret i1 %.020.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit
  %.01927 = phi ptr [ %i.e, %.lr.ph ], [ %i.u, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit ] ; 2 uses
  %.02026 = phi i1 [ false, %.lr.ph ], [ %.135, %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit ]
  %i.m = load ptr, ptr %.01927, align 8, !tbaa !446 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr null, ptr %3, align 8, !tbaa !101
  store ptr %i.c, ptr %i.l, align 8, !tbaa !356
  %i.n = invoke noundef zeroext i1 @_ZN7datalog25mk_interp_tail_simplifier14transform_ruleEPNS_4ruleER7obj_refIS1_NS_12rule_managerEE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %i.m, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %.pre = load ptr, ptr %3, align 8, !tbaa !101   ; 5 uses
  br i1 %i.n, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7datalog12rule_manager21mk_rule_rewrite_proofERNS_4ruleES2_(ptr noundef nonnull align 8 dereferenceable(1104) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.m, ptr noundef nonnull align 8 dereferenceable(80) %.pre)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7datalog8rule_set8add_ruleEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(248) %2, ptr noundef nonnull %.pre)
          to label %.thread unwind label %bb.g

.thread:                                          ; preds = %bb.e
  %i.o = icmp ne ptr %i.m, %.pre
  %4 = or i1 %.02026, %i.o
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %bb.c
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  %.134 = phi i1 [ %4, %.thread ], [ true, %bb.h ]
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !100, !nonnull !69, !align !70
  invoke void @_ZN7datalog12rule_manager7dec_refEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(1104) %i.r, ptr noundef nonnull %.pre)
          to label %_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #18
  unreachable

_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev.exit: ; preds = %bb.h, %bb.i
  %.135 = phi i1 [ true, %bb.h ], [ %.134, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.u = getelementptr inbounds nuw i8, ptr %.01927, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.u, %i.k
  br i1 %.not, label %._crit_edge, label %bb.b

bb.k:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.p, %bb.f ]
  call void @_ZN7obj_refIN7datalog4ruleENS0_12rule_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %.pn
}

declare void @_ZN7datalog12rule_manager21mk_rule_rewrite_proofERNS_4ruleES2_(ptr noundef nonnull align 8 dereferenceable(1104), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare void @_ZN7datalog8rule_set8add_ruleEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN7datalog25mk_interp_tail_simplifierclERKNS_8rule_setE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull align 8 dereferenceable(248) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.scoped_ptr.150, align 8      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !364  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK7datalog8rule_set13get_num_rulesEv.exit.thread, label %_ZNK7datalog8rule_set13get_num_rulesEv.exit

_ZNK7datalog8rule_set13get_num_rulesEv.exit:      ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !92
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNK7datalog8rule_set13get_num_rulesEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK7datalog8rule_set13get_num_rulesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.g = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 248) ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !290, !nonnull !69, !align !70
  tail call void @_ZN7datalog8rule_setC1ERNS_7contextE(ptr noundef nonnull align 8 dereferenceable(248) %i.g, ptr noundef nonnull align 8 dereferenceable(3028) %i.i)
  store ptr %i.g, ptr %2, align 8, !tbaa !367
  %i.j = invoke noundef zeroext i1 @_ZN7datalog25mk_interp_tail_simplifier15transform_rulesERKNS_8rule_setERS1_(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, ptr noundef nonnull align 8 dereferenceable(248) %i.g)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7datalog8rule_set18inherit_predicatesERKS0_(ptr noundef nonnull align 8 dereferenceable(248) %i.g, ptr noundef nonnull align 8 dereferenceable(248) %1)
          to label %_ZN10scoped_ptrIN7datalog8rule_setEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10scoped_ptrIN7datalog8rule_setEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %i.k

bb.f:                                             ; preds = %bb.c
  tail call void @_ZN7datalog8rule_setD1Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %i.g) #17
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.g)
          to label %_ZN10scoped_ptrIN7datalog8rule_setEED2Ev.exit unwind label %bb.e

_ZN10scoped_ptrIN7datalog8rule_setEED2Ev.exit:    ; preds = %bb.f, %bb.d
  %i.l = phi ptr [ %i.g, %bb.d ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZNK7datalog8rule_set13get_num_rulesEv.exit.thread

_ZNK7datalog8rule_set13get_num_rulesEv.exit.thread: ; preds = %bb.a, %_ZNK7datalog8rule_set13get_num_rulesEv.exit, %_ZN10scoped_ptrIN7datalog8rule_setEED2Ev.exit
  %.0 = phi ptr [ %i.l, %_ZN10scoped_ptrIN7datalog8rule_setEED2Ev.exit ], [ null, %_ZNK7datalog8rule_set13get_num_rulesEv.exit ], [ null, %bb.a ]
  ret ptr %.0
}

declare void @_ZN7datalog8rule_setC1ERNS_7contextE(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef nonnull align 8 dereferenceable(3028)) unnamed_addr #2

declare void @_ZN7datalog8rule_set18inherit_predicatesERKS0_(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef nonnull align 8 dereferenceable(248)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10scoped_ptrIN7datalog8rule_setEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !367    ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_Z7deallocIN7datalog8rule_setEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7datalog8rule_setD1Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %i.a) #17
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.a)
          to label %_Z7deallocIN7datalog8rule_setEEvPT_.exit unwind label %bb.c

_Z7deallocIN7datalog8rule_setEEvPT_.exit:         ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #18
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7datalog16rule_transformer6plugin6cancelEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN14var_offset_mapI11expr_offsetE7reserveEjj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !450
  %i.c = icmp ugt i32 %1, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp ugt i32 %2, %i.e
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = mul i32 %2, %1                           ; 7 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !368    ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE4sizeEv.exit.i, label %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE4sizeEv.exit.thread.i

_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE4sizeEv.exit.i: ; preds = %bb.b
  %.not.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.not.i, label %_ZN6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE6resizeEj.exit, label %thread-pre-split.i.preheader

_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE4sizeEv.exit.thread.i: ; preds = %bb.b
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !92   ; 2 uses
  %.not15.i = icmp ugt i32 %i.g, %i.k
  br i1 %.not15.i, label %thread-pre-split.i.preheader, label %bb.c

thread-pre-split.i.preheader:                     ; preds = %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE4sizeEv.exit.i, %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE4sizeEv.exit.thread.i
  %.ph = phi ptr [ %i.h, %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE4sizeEv.exit.thread.i ], [ null, %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE4sizeEv.exit.i ]
  %.0.i16.i.ph = phi i32 [ %i.k, %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE4sizeEv.exit.thread.i ], [ 0, %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE4sizeEv.exit.i ]
  %i.l = freeze i32 %.0.i16.i.ph                  ; 2 uses
  br label %thread-pre-split.i

bb.c:                                             ; preds = %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE4sizeEv.exit.thread.i
  store i32 %i.g, ptr %i.j, align 4, !tbaa !92
  br label %_ZN6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE6resizeEj.exit

thread-pre-split.i:                               ; preds = %thread-pre-split.i.preheader, %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE8capacityEv.exit.thread.i
  %i.m = phi ptr [ %.pr.pre.i, %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE8capacityEv.exit.thread.i ], [ %.ph, %thread-pre-split.i.preheader ] ; 5 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE8capacityEv.exit.thread.i, label %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE8capacityEv.exit.i

_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE8capacityEv.exit.i: ; preds = %thread-pre-split.i
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !92
  %i.q = icmp ugt i32 %i.g, %i.p
  br i1 %i.q, label %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE8capacityEv.exit.thread.i, label %bb.d

_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE8capacityEv.exit.thread.i: ; preds = %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE8capacityEv.exit.i, %thread-pre-split.i
  tail call void @_ZN6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.pr.pre.i = load ptr, ptr %0, align 8, !tbaa !368
  br label %thread-pre-split.i, !llvm.loop !447

bb.d:                                             ; preds = %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE8capacityEv.exit.i
  %i.r = getelementptr inbounds i8, ptr %i.m, i64 -4
  store i32 %i.g, ptr %i.r, align 4, !tbaa !92
  %i.s = zext i32 %i.g to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.s
  %.not1218.i = icmp eq i32 %i.l, %i.g
  br i1 %.not1218.i, label %_ZN6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE6resizeEj.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.u = zext i32 %i.l to i64                     ; 2 uses
  %i.v = getelementptr [24 x i8], ptr %i.m, i64 %i.u ; 2 uses
  %reass.add = sub nsw i64 %i.s, %i.u
  %reass.mul = mul nsw i64 %reass.add, 24         ; 2 uses
  %i.w = add nsw i64 %reass.mul, -24
  %i.x = urem i64 %i.w, 24
  %i.y = sub nsw i64 %reass.mul, %i.x
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.y, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.019.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %i.v, %.lr.ph.preheader.i ] ; 4 uses
  store ptr null, ptr %.019.i, align 8, !tbaa !78
  %i.z = getelementptr inbounds nuw i8, ptr %.019.i, i64 8
  store i32 0, ptr %i.z, align 8, !tbaa !79
  %i.aa = getelementptr inbounds nuw i8, ptr %.019.i, i64 16
  store i32 0, ptr %i.aa, align 8, !tbaa !452
  %i.ab = getelementptr inbounds nuw i8, ptr %.019.i, i64 24 ; 2 uses
  %.not12.i = icmp eq ptr %i.ab, %i.t
  br i1 %.not12.i, label %_ZN6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE6resizeEj.exit, label %.lr.ph.i, !llvm.loop !448

_ZN6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE6resizeEj.exit: ; preds = %.lr.ph.i, %_ZNK6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE4sizeEv.exit.i, %bb.c, %bb.d
  store i32 %2, ptr %i.d, align 4, !tbaa !453
  store i32 %1, ptr %i.a, align 8, !tbaa !450
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE6resizeEj.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !454
  %i.ae = add i32 %i.ad, 1                        ; 2 uses
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !454
  %i.af = icmp eq i32 %i.ae, -1
  br i1 %i.af, label %bb.f, label %_ZN14var_offset_mapI11expr_offsetE5resetEv.exit

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %0, align 8, !tbaa !368   ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %._crit_edge.i, label %_ZN6vectorIN14var_offset_mapI11expr_offsetE4dataELb0EjE3endEv.exit.i
end_hunk_0
