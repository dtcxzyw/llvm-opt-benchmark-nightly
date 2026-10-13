Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/serverenvironment?download=true
inline.NumInlined: 4733
inline.NumDeleted: 2070
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN17ServerEnvironment4stepEf:.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #32
  store i64 17, ptr %i.n, align 8, !tbaa !260
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.w, ptr %9, align 8, !tbaa !261
  %i.x = load i64, ptr %i.n, align 8, !tbaa !260  ; 3 uses
  store i64 %i.x, ptr %i.v, align 8, !tbaa !262
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.w, ptr noundef nonnull align 1 dereferenceable(17) @.str.71, i64 17, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !263
  %i.z = load ptr, ptr %9, align 8, !tbaa !261
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #32
  invoke void @_ZN13ScopeProfilerC1EP8ProfilerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17ScopeProfilerType13TimePrecision(ptr noundef nonnull align 8 dereferenceable(50) %8, ptr noundef %i.u, ptr noundef nonnull align 8 dereferenceable(32) %9, i8 noundef zeroext 2, i8 noundef signext 1)
          to label %bb.a unwind label %bb.k

bb.a:                                             ; preds = %.noexc
  %i.ab = load ptr, ptr %9, align 8, !tbaa !261   ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.v
  br i1 %i.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.ad = load i64, ptr %i.v, align 8, !tbaa !262
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.af = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %7) #32 ; 0 uses
  %i.ag = load i64, ptr %7, align 8, !tbaa !788
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !789
  %i.aj = udiv i64 %i.ai, 1000
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.ak = load float, ptr %i.o, align 4, !tbaa !68
  invoke void @_ZN11Environment13stepTimeOfDayEf(ptr noundef nonnull align 8 dereferenceable(88) %0, float noundef %i.ak)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %.b = load i1, ptr @_ZGVZN17ServerEnvironment4stepEfE11server_step, align 1
  br i1 %.b, label %._crit_edge538, label %bb.c, !prof !790

._crit_edge538:                                   ; preds = %bb.b
  %.pre539.a = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN17ServerEnvironment4stepEfE11server_step)
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.al = load ptr, ptr @g_settings, align 8, !tbaa !258
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.am = invoke noundef float @_ZNK8Settings8getFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.an = load ptr, ptr %10, align 8, !tbaa !261  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %bb.e
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !262
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.as = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN17ServerEnvironment4stepEfE11server_step) ; 2 uses
  store float %i.am, ptr %i.as, align 4, !tbaa !68
  %i.at = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN17ServerEnvironment4stepEfE11server_step) ; 0 uses
  store i1 true, ptr @_ZGVZN17ServerEnvironment4stepEfE11server_step, align 1
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge538, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190
  %.pre-phi = phi ptr [ %.pre539.a, %._crit_edge538 ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190 ]
  %i.au = load float, ptr %.pre-phi, align 4, !tbaa !68
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 3320 ; 2 uses
  store float %i.au, ptr %i.av, align 8, !tbaa !791
  %i.aw = load float, ptr %i.o, align 4, !tbaa !68 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 3176 ; 2 uses
  %i.ay = load float, ptr %i.ax, align 8, !tbaa !792
  %i.az = fadd nsz float %i.aw, %i.ay             ; 2 uses
  %i.ba = fptoui float %i.az to i32               ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 3172 ; 5 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !385
  %i.bd = add i32 %i.bc, %i.ba
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !385
  %i.be = uitofp nsz i32 %i.ba to float
  %i.bf = fsub nsz float %i.az, %i.be
  store float %i.bf, ptr %i.ax, align 8, !tbaa !792
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 3156 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 3328
  %i.bi = load float, ptr %i.bh, align 8, !tbaa !264
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 3152 ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !252
  %i.bl = sitofp nsz i32 %i.bk to float
  %i.bm = fdiv nsz float %i.bi, %i.bl             ; 2 uses
  %i.bn = load float, ptr %i.bg, align 4, !tbaa !793
  %i.bo = fadd nsz float %i.aw, %i.bn             ; 3 uses
  %i.bp = fcmp nsz uge float %i.bo, %i.bm         ; 2 uses
  %i.bq = fsub nsz float %i.bo, %i.bm
  %storemerge.i = select i1 %i.bp, float %i.bq, float %i.bo
  store float %storemerge.i, ptr %i.bg, align 4, !tbaa !793
  br i1 %i.bp, label %.noexc.i192, label %bb.bv

.noexc.i192:                                      ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  %i.br = load ptr, ptr @g_profiler, align 8, !tbaa !476
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  %i.bs = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.bs, ptr %13, align 8, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #32
  store i64 31, ptr %i.m, align 8, !tbaa !260
  %i.bt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 0)
          to label %.noexc193 unwind label %bb.o  ; 2 uses

.noexc193:                                        ; preds = %.noexc.i192
  store ptr %i.bt, ptr %13, align 8, !tbaa !261
  %i.bu = load i64, ptr %i.m, align 8, !tbaa !260 ; 3 uses
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !262
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.bt, ptr noundef nonnull align 1 dereferenceable(31) @.str.73, i64 31, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !263
  %i.bw = load ptr, ptr %13, align 8, !tbaa !261
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bu
  store i8 0, ptr %i.bx, align 1, !tbaa !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #32
  invoke void @_ZN13ScopeProfilerC1EP8ProfilerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17ScopeProfilerType13TimePrecision(ptr noundef nonnull align 8 dereferenceable(50) %12, ptr noundef %i.br, ptr noundef nonnull align 8 dereferenceable(32) %13, i8 noundef zeroext 2, i8 noundef signext 1)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %.noexc193
  %i.by = load ptr, ptr %13, align 8, !tbaa !261  ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.bs
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195: ; preds = %bb.g
  %i.ca = load i64, ptr %i.bs, align 8, !tbaa !262
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 3344 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 3352 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !341 ; 3 uses
  %i.cf = load ptr, ptr %i.cc, align 8, !tbaa !275 ; 3 uses
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch                    ; 3 uses
  %i.cj = icmp ugt i64 %i.ci, 9223372036854775800
  br i1 %i.cj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.158) #36
          to label %.noexc198 unwind label %.thread

.noexc198:                                        ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197
  %i.ck = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %.not681 = icmp eq ptr %i.ce, %i.cf
  br i1 %.not681, label %_ZNSt6vectorIP9PlayerSAOSaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIP9PlayerSAOSaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIP9PlayerSAOSaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.i
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #34
          to label %.noexc199 unwind label %.thread ; 4 uses

.noexc199:                                        ; preds = %_ZNSt12_Vector_baseIP9PlayerSAOSaIS1_EE11_M_allocateEm.exit.i
  %i.cm = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.cl, ptr %14, align 8, !tbaa !795
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !796
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ci ; 2 uses
  store ptr %i.cn, ptr %i.ck, align 8, !tbaa !797
  %.pre = load ptr, ptr %i.cc, align 8, !tbaa !339
  %.pre524 = load ptr, ptr %i.cd, align 8, !tbaa !339
  br label %_ZNSt6vectorIP9PlayerSAOSaIS1_EE7reserveEm.exit

_ZNSt6vectorIP9PlayerSAOSaIS1_EE7reserveEm.exit:  ; preds = %.noexc199, %bb.i
  %.promoted475 = phi ptr [ %i.cl, %.noexc199 ], [ null, %bb.i ] ; 3 uses
  %.promoted = phi ptr [ %i.cn, %.noexc199 ], [ null, %bb.i ] ; 2 uses
  %i.co = phi ptr [ %.pre524, %.noexc199 ], [ %i.ce, %bb.i ] ; 2 uses
  %i.cp = phi ptr [ %.pre, %.noexc199 ], [ %i.cf, %bb.i ] ; 2 uses
  %.not451479 = icmp eq ptr %i.cp, %i.co
  br i1 %.not451479, label %._crit_edge.a, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIP9PlayerSAOSaIS1_EE7reserveEm.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  br label %bb.q

._crit_edge.a:                                    ; preds = %_ZNSt6vectorIP9PlayerSAOSaIS1_EE9push_backERKS1_.exit, %_ZNSt6vectorIP9PlayerSAOSaIS1_EE7reserveEm.exit
  %i.cr = phi ptr [ %.promoted475, %_ZNSt6vectorIP9PlayerSAOSaIS1_EE7reserveEm.exit ], [ %i.eo, %_ZNSt6vectorIP9PlayerSAOSaIS1_EE9push_backERKS1_.exit ] ; 7 uses
  %i.cs = phi ptr [ %.promoted, %_ZNSt6vectorIP9PlayerSAOSaIS1_EE7reserveEm.exit ], [ %i.ep, %_ZNSt6vectorIP9PlayerSAOSaIS1_EE9push_backERKS1_.exit ] ; 5 uses
  store ptr %i.cs, ptr %i.ck, align 8
  store ptr %i.cr, ptr %14, align 8
  %.b131 = load i1, ptr @_ZGVZN17ServerEnvironment4stepEfE19active_object_range, align 1
  br i1 %.b131, label %bb.aa, label %bb.x, !prof !790

bb.j:                                             ; preds = %.noexc.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

bb.k:                                             ; preds = %.noexc
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load ptr, ptr %9, align 8, !tbaa !261   ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.v
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200: ; preds = %bb.k
  %i.cx = load i64, ptr %i.v, align 8, !tbaa !262
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.j ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200 ], [ %i.cu, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.hi

bb.l:                                             ; preds = %bb.gv, %bb.fs, %bb.fe, %bb.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.hh

bb.m:                                             ; preds = %bb.c
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205

bb.n:                                             ; preds = %bb.d
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = load ptr, ptr %10, align 8, !tbaa !261  ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203: ; preds = %bb.n
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !262
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203, %bb.m
  %.pn134 = phi { ptr, i32 } [ %i.da, %bb.m ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203 ], [ %i.db, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.hh

bb.o:                                             ; preds = %.noexc.i192
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

bb.p:                                             ; preds = %.noexc193
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = load ptr, ptr %13, align 8, !tbaa !261  ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.bs
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206: ; preds = %bb.p
  %i.dl = load i64, ptr %i.bs, align 8, !tbaa !262
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206, %bb.o
  %.pn136 = phi { ptr, i32 } [ %i.dh, %bb.o ], [ %i.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206 ], [ %i.di, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.bu

.thread:                                          ; preds = %bb.h, %_ZNSt12_Vector_baseIP9PlayerSAOSaIS1_EE11_M_allocateEm.exit.i
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIP9PlayerSAOSaIS1_EED2Ev.exit232

bb.q:                                             ; preds = %.lr.ph, %_ZNSt6vectorIP9PlayerSAOSaIS1_EE9push_backERKS1_.exit
  %i.do = phi ptr [ %.promoted475, %.lr.ph ], [ %i.en, %_ZNSt6vectorIP9PlayerSAOSaIS1_EE9push_backERKS1_.exit ] ; 7 uses
  %.sroa.0443.0480 = phi ptr [ %i.cp, %.lr.ph ], [ %i.eq, %_ZNSt6vectorIP9PlayerSAOSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.dp = phi ptr [ %.promoted, %.lr.ph ], [ %i.ep, %_ZNSt6vectorIP9PlayerSAOSaIS1_EE9push_backERKS1_.exit ] ; 5 uses
  %i.dq = phi ptr [ %.promoted475, %.lr.ph ], [ %i.eo, %_ZNSt6vectorIP9PlayerSAOSaIS1_EE9push_backERKS1_.exit ] ; 10 uses
  %i.dr = load ptr, ptr %.sroa.0443.0480, align 8, !tbaa !342 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1000
  %i.dt = load i16, ptr %i.ds, align 8, !tbaa !369
  %i.du = icmp eq i16 %i.dt, 0
  br i1 %i.du, label %_ZNSt6vectorIP9PlayerSAOSaIS1_EE9push_backERKS1_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 424
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !382 ; 2 uses
  %.not.i = icmp eq ptr %i.do, %i.dp
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.dw, ptr %i.do, align 8, !tbaa !66
  %i.dx = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  store ptr %i.dx, ptr %i.cq, align 8, !tbaa !796
  br label %_ZNSt6vectorIP9PlayerSAOSaIS1_EE9push_backERKS1_.exit

bb.t:                                             ; preds = %bb.r
  %i.dy = ptrtoint ptr %i.do to i64
  %i.dz = ptrtoint ptr %i.dq to i64
  %i.ea = sub i64 %i.dy, %i.dz                    ; 6 uses
  %i.eb = icmp eq i64 %i.ea, 9223372036854775800
  br i1 %i.eb, label %bb.u, label %_ZNKSt6vectorIP9PlayerSAOSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.u:                                             ; preds = %bb.t
  store ptr %i.dp, ptr %i.ck, align 8
  store ptr %i.dq, ptr %14, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.150) #36
          to label %.noexc209 unwind label %.loopexit.split-lp465

.noexc209:                                        ; preds = %bb.u
  unreachable

_ZNKSt6vectorIP9PlayerSAOSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.t
  %i.ec = ashr exact i64 %i.ea, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ec, i64 1)
  %i.ed = add nsw i64 %.sroa.speculated.i.i.i, %i.ec ; 2 uses
  %i.ee = icmp ult i64 %i.ed, %i.ec
  %i.ef = call i64 @llvm.umin.i64(i64 %i.ed, i64 1152921504606846975)
  %i.eg = select i1 %i.ee, i64 1152921504606846975, i64 %i.ef ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.eg, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.eh = shl nuw nsw i64 %i.eg, 3
  %i.ei = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eh) #34
          to label %.noexc210 unwind label %.loopexit464 ; 4 uses

.noexc210:                                        ; preds = %_ZNKSt6vectorIP9PlayerSAOSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 %i.ea ; 2 uses
  store ptr %i.dw, ptr %i.ej, align 8, !tbaa !66
  %i.ek = icmp sgt i64 %i.ea, 0
  br i1 %i.ek, label %bb.v, label %_ZNSt6vectorIP9PlayerSAOSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.v:                                             ; preds = %.noexc210
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ei, ptr align 8 %i.dq, i64 %i.ea, i1 false)
  br label %_ZNSt6vectorIP9PlayerSAOSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP9PlayerSAOSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.v, %.noexc210
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP9PlayerSAOSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIP9PlayerSAOSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.ea) #37
  br label %_ZNSt6vectorIP9PlayerSAOSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP9PlayerSAOSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.w, %_ZNSt6vectorIP9PlayerSAOSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.el, ptr %i.cq, align 8, !tbaa !796
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.eg
  br label %_ZNSt6vectorIP9PlayerSAOSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP9PlayerSAOSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.s, %_ZNSt6vectorIP9PlayerSAOSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.q
  %i.en = phi ptr [ %i.dx, %bb.s ], [ %i.el, %_ZNSt6vectorIP9PlayerSAOSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.do, %bb.q ]
  %i.eo = phi ptr [ %i.dq, %bb.s ], [ %i.ei, %_ZNSt6vectorIP9PlayerSAOSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.dq, %bb.q ] ; 2 uses
  %i.ep = phi ptr [ %i.dp, %bb.s ], [ %i.em, %_ZNSt6vectorIP9PlayerSAOSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.dp, %bb.q ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0443.0480, i64 8 ; 2 uses
  %.not451 = icmp eq ptr %i.eq, %i.co
  br i1 %.not451, label %._crit_edge.a, label %bb.q

.loopexit464:                                     ; preds = %_ZNKSt6vectorIP9PlayerSAOSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit466 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.dp, ptr %i.ck, align 8
  store ptr %i.dq, ptr %14, align 8
  br label %bb.bs

.loopexit.split-lp465:                            ; preds = %bb.u
  %lpad.loopexit.split-lp467 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.x:                                             ; preds = %._crit_edge.a
  %i.er = load ptr, ptr @g_settings, align 8, !tbaa !258
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.74, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.y unwind label %bb.an

bb.y:                                             ; preds = %bb.x
  %i.es = invoke noundef signext i16 @_ZNK8Settings6getS16ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.er, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.z unwind label %bb.ao

bb.z:                                             ; preds = %bb.y
  %i.et = load ptr, ptr %15, align 8, !tbaa !261  ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211: ; preds = %bb.z
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !262
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.ey = call align 2 ptr @llvm.threadlocal.address.p0(ptr align 2 @_ZZN17ServerEnvironment4stepEfE19active_object_range)
  store i16 %i.es, ptr %i.ey, align 2, !tbaa !74
  %i.ez = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN17ServerEnvironment4stepEfE19active_object_range) ; 0 uses
  store i1 true, ptr @_ZGVZN17ServerEnvironment4stepEfE19active_object_range, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, %._crit_edge.a
  %.b132 = load i1, ptr @_ZGVZN17ServerEnvironment4stepEfE18active_block_range, align 1
  br i1 %.b132, label %._crit_edge537, label %bb.ab, !prof !790

._crit_edge537:                                   ; preds = %bb.aa
  %.pre540 = call align 2 ptr @llvm.threadlocal.address.p0(ptr align 2 @_ZZN17ServerEnvironment4stepEfE18active_block_range)
  br label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.fa = load ptr, ptr @g_settings, align 8, !tbaa !258
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.75, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.ac unwind label %bb.ap

bb.ac:                                            ; preds = %bb.ab
  %i.fb = invoke noundef signext i16 @_ZNK8Settings6getS16ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.fa, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.ad unwind label %bb.aq

bb.ad:                                            ; preds = %bb.ac
  %i.fc = load ptr, ptr %17, align 8, !tbaa !261  ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214: ; preds = %bb.ad
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !262
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.fh = call align 2 ptr @llvm.threadlocal.address.p0(ptr align 2 @_ZZN17ServerEnvironment4stepEfE18active_block_range) ; 2 uses
  store i16 %i.fb, ptr %i.fh, align 2, !tbaa !74
  %i.fi = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN17ServerEnvironment4stepEfE18active_block_range) ; 0 uses
  store i1 true, ptr @_ZGVZN17ServerEnvironment4stepEfE18active_block_range, align 1
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge537, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216
  %.pre-phi541 = phi ptr [ %.pre540, %._crit_edge537 ], [ %i.fh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  %i.fj = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 5 uses
  store i32 0, ptr %i.fj, align 8, !tbaa !52
  %i.fk = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  store ptr null, ptr %i.fk, align 8, !tbaa !53
  %i.fl = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 2 uses
  store ptr %i.fj, ptr %i.fl, align 8, !tbaa !54
  %i.fm = getelementptr inbounds nuw i8, ptr %19, i64 32
  store ptr %i.fj, ptr %i.fm, align 8, !tbaa !55
  %i.fn = getelementptr inbounds nuw i8, ptr %19, i64 40
  store i64 0, ptr %i.fn, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  %i.fo = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 5 uses
  store i32 0, ptr %i.fo, align 8, !tbaa !52
  %i.fp = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  store ptr null, ptr %i.fp, align 8, !tbaa !53
  %i.fq = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 2 uses
  store ptr %i.fo, ptr %i.fq, align 8, !tbaa !54
  %i.fr = getelementptr inbounds nuw i8, ptr %20, i64 32
  store ptr %i.fo, ptr %i.fr, align 8, !tbaa !55
  %i.fs = getelementptr inbounds nuw i8, ptr %20, i64 40
  store i64 0, ptr %i.fs, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #32
  %i.ft = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 5 uses
  store i32 0, ptr %i.ft, align 8, !tbaa !52
  %i.fu = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  store ptr null, ptr %i.fu, align 8, !tbaa !53
  %i.fv = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 2 uses
  store ptr %i.ft, ptr %i.fv, align 8, !tbaa !54
  %i.fw = getelementptr inbounds nuw i8, ptr %21, i64 32
  store ptr %i.ft, ptr %i.fw, align 8, !tbaa !55
  %i.fx = getelementptr inbounds nuw i8, ptr %21, i64 40
  store i64 0, ptr %i.fx, align 8, !tbaa !56
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 3008 ; 3 uses
  %i.fz = load i16, ptr %.pre-phi541, align 2, !tbaa !74
  %i.ga = call align 2 ptr @llvm.threadlocal.address.p0(ptr align 2 @_ZZN17ServerEnvironment4stepEfE19active_object_range)
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !74
  invoke void @_ZN15ActiveBlockList6updateERSt6vectorIP9PlayerSAOSaIS2_EEssRSt3setIN4core8vector3dIsEESt4lessIS9_ESaIS9_EESE_SE_(ptr noundef nonnull align 8 dereferenceable(144) %i.fy, ptr noundef nonnull align 8 dereferenceable(24) %14, i16 noundef signext %i.fz, i16 noundef signext %i.gb, ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull align 8 dereferenceable(48) %21)
          to label %bb.af unwind label %bb.ar

bb.af:                                            ; preds = %bb.ae
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.gd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.gf = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.gf, align 8
  store ptr %0, ptr %6, align 8, !tbaa !333
  store ptr @"_ZNSt17_Function_handlerIFbP18ServerActiveObjecttEZN17ServerEnvironment20deactivateFarObjectsEbE3$_0E9_M_invokeERKSt9_Any_dataOS1_Ot", ptr %i.ge, align 8, !tbaa !335
  store ptr @"_ZNSt17_Function_handlerIFbP18ServerActiveObjecttEZN17ServerEnvironment20deactivateFarObjectsEbE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation", ptr %i.gd, align 8, !tbaa !336
  invoke void @_ZN6server15ActiveObjectMgr7clearIfERKSt8functionIFbP18ServerActiveObjecttEE(ptr noundef nonnull align 8 dereferenceable(216) %i.gc, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.gg = load ptr, ptr %i.gd, align 8, !tbaa !336 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gg, null
  br i1 %.not.i.i, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gh = invoke noundef zeroext i1 %i.gg(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %bb.am unwind label %bb.ai     ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  %i.gi = landingpad { ptr, i32 }
          catch ptr null
  %i.gj = extractvalue { ptr, i32 } %i.gi, 0
  call void @__clang_call_terminate(ptr %i.gj) #35
  unreachable

bb.aj:                                            ; preds = %bb.af
  %i.gk = landingpad { ptr, i32 }
          cleanup
  %i.gl = load ptr, ptr %i.gd, align 8, !tbaa !336 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.gl, null
  br i1 %.not.i3.i, label %_ZNSt14_Function_baseD2Ev.exit4.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gm = invoke noundef zeroext i1 %i.gl(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit4.i unwind label %bb.al ; 0 uses

bb.al:                                            ; preds = %bb.ak
  %i.gn = landingpad { ptr, i32 }
          catch ptr null
  %i.go = extractvalue { ptr, i32 } %i.gn, 0
  call void @__clang_call_terminate(ptr %i.go) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit4.i:                ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %.body

bb.am:                                            ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.gp = load ptr, ptr %i.fl, align 8, !tbaa !54 ; 2 uses
  %.not452482 = icmp eq ptr %i.gp, %i.fj
  br i1 %.not452482, label %._crit_edge486, label %.lr.ph485

.lr.ph485:                                        ; preds = %bb.am
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.as

._crit_edge486:                                   ; preds = %_ZN8MapBlock12setTimestampEj.exit, %bb.am
  %i.gr = load ptr, ptr %i.fq, align 8, !tbaa !54 ; 2 uses
  %.not453487 = icmp eq ptr %i.gr, %i.fo
  br i1 %.not453487, label %._crit_edge491, label %.lr.ph490

.lr.ph490:                                        ; preds = %._crit_edge486
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 3056
  br label %bb.az

bb.an:                                            ; preds = %bb.x
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219

bb.ao:                                            ; preds = %bb.y
end_hunk_0
