inline.NumInlined: 251
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_Z11gmx_currentiPPc:bb.a
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i188

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i188: ; preds = %bb.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186
  %i.pi = load ptr, ptr %25, align 8, !tbaa !28   ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.pk = icmp eq ptr %i.pi, %i.pj
  br i1 %i.pk, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i189: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i188
  %i.pl = load i64, ptr %i.pj, align 8, !tbaa !31
  %i.pm = add i64 %i.pl, 1
  call void @_ZdlPvm(ptr noundef %i.pi, i64 noundef %i.pm) #19
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit191

_ZNSt10filesystem7__cxx114pathD2Ev.exit191:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i188, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  %i.pn = call i64 @fwrite(ptr nonnull @.str.77, i64 46, i64 1, ptr %i.ow) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #18
  %i.po = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.21, i32 noundef 9, ptr noundef nonnull %10)
          to label %bb.bw unwind label %bb.et

bb.bw:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit191
  store ptr %i.po, ptr %i.ab, align 8, !tbaa !25
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %28, ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i8 noundef zeroext 2)
          to label %bb.bx unwind label %bb.et

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #18
  %i.pp = load ptr, ptr %i.n, align 8, !tbaa !32
  invoke void @_Z26output_env_get_xvgr_tlabelB5cxx11PK16gmx_output_env_t(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr noundef %i.pp)
          to label %.noexc.i193 unwind label %bb.eu

.noexc.i193:                                      ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #18
  %i.pq = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  store ptr %i.pq, ptr %30, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  store i64 65, ptr %i.h, align 8, !tbaa !92
  %i.pr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc194 unwind label %bb.ev ; 3 uses

.noexc194:                                        ; preds = %.noexc.i193
  store ptr %i.pr, ptr %30, align 8, !tbaa !28
  %i.ps = load i64, ptr %i.h, align 8, !tbaa !92  ; 3 uses
  store i64 %i.ps, ptr %i.pq, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(65) %i.pr, ptr noundef nonnull align 1 dereferenceable(65) @.str.79, i64 65, i1 false)
  %i.pt = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 %i.ps, ptr %i.pt, align 8, !tbaa !93
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pr, i64 %i.ps
  store i8 0, ptr %i.pu, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  %i.pv = load ptr, ptr %i.n, align 8, !tbaa !32
  %i.pw = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %28, ptr noundef nonnull @.str.78, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef %i.pv)
          to label %bb.by unwind label %bb.ew     ; 3 uses

bb.by:                                            ; preds = %.noexc194
  %i.px = load ptr, ptr %30, align 8, !tbaa !28   ; 2 uses
  %i.py = icmp eq ptr %i.px, %i.pq
  br i1 %i.py, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %bb.by
  %i.pz = load i64, ptr %i.pq, align 8, !tbaa !31
  %i.qa = add i64 %i.pz, 1
  call void @_ZdlPvm(ptr noundef %i.px, i64 noundef %i.qa) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  %i.qb = load ptr, ptr %29, align 8, !tbaa !28   ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.qd = icmp eq ptr %i.qb, %i.qc
  br i1 %i.qd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198
  %i.qe = load i64, ptr %i.qc, align 8, !tbaa !31
  %i.qf = add i64 %i.qe, 1
  call void @_ZdlPvm(ptr noundef %i.qb, i64 noundef %i.qf) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  %i.qg = getelementptr inbounds nuw i8, ptr %28, i64 32 ; 2 uses
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i202 = icmp eq ptr %i.qh, null
  br i1 %.not.i.i.i202, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i203, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.qg, ptr noundef nonnull %i.qh) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i203

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i203: ; preds = %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201
  %i.qi = load ptr, ptr %28, align 8, !tbaa !28   ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.qk = icmp eq ptr %i.qi, %i.qj
  br i1 %i.qk, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i204: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i203
  %i.ql = load i64, ptr %i.qj, align 8, !tbaa !31
  %i.qm = add i64 %i.ql, 1
  call void @_ZdlPvm(ptr noundef %i.qi, i64 noundef %i.qm) #19
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit206

_ZNSt10filesystem7__cxx114pathD2Ev.exit206:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i203, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  %i.qn = load i8, ptr @_ZZ11gmx_currentiPPcE7bNoJump, align 1, !tbaa !94, !range !89, !noundef !90
  %i.qo = trunc nuw i8 %i.qn to i1                ; 3 uses
  %i.qp = load i32, ptr %i.s, align 4, !tbaa !10  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2464) %4, ptr noundef nonnull align 8 dereferenceable(2464) %8, i64 2464, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr noundef nonnull align 8 dereferenceable(176) %9, i64 176, i1 false)
  %i.qq = load float, ptr @_ZZ11gmx_currentiPPcE4temp, align 4, !tbaa !55
  %i.qr = load float, ptr @_ZZ11gmx_currentiPPcE4bfit, align 4, !tbaa !55 ; 2 uses
  %i.qs = load float, ptr @_ZZ11gmx_currentiPPcE4efit, align 4, !tbaa !55 ; 2 uses
  %i.qt = load float, ptr @_ZZ11gmx_currentiPPcE4bvit, align 4, !tbaa !55
  %i.qu = load float, ptr @_ZZ11gmx_currentiPPcE4evit, align 4, !tbaa !55
  %i.qv = load ptr, ptr %i.r, align 8, !tbaa !95
  %i.qw = load i32, ptr %i.q, align 4, !tbaa !9   ; 4 uses
  %i.qx = load i32, ptr @_ZZ11gmx_currentiPPcE6nshift, align 4, !tbaa !9 ; 4 uses
  %i.qy = load ptr, ptr %i.p, align 8, !tbaa !54  ; 4 uses
  %i.qz = load float, ptr @_ZZ11gmx_currentiPPcE6eps_rf, align 4, !tbaa !55 ; 5 uses
  %i.ra = load ptr, ptr %i.n, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !55
  %i.rb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.rc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.rd = load i32, ptr %i.rc, align 8, !tbaa !97
  %i.re = invoke noundef ptr @_Z14gmx_rmpbc_initPK6t_idef7PbcTypei(ptr noundef nonnull %i.rb, i32 noundef %i.qp, i32 noundef %i.rd)
          to label %.noexc215 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc215:                                        ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit206
  %i.rf = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.rg = getelementptr inbounds nuw i8, ptr %3, i64 116 ; 6 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 4 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %3, i64 132 ; 4 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %3, i64 140 ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %3, i64 148 ; 4 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 3 uses
  %.sroa.1.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 2424
  %i.rn = icmp sgt i32 %.035.lcssa.i96, 0
  %i.ro = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %wide.trip.count16.i.i = zext nneg i32 %.035.lcssa.i96 to i64
  %i.rq = icmp sgt i32 %i.qw, 0                   ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %4, i64 2352
  %i.rs = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.rt = getelementptr inbounds nuw i8, ptr %3, i64 88
  %or.cond.i = or i1 %i.bt, %i.bu
  %i.ru = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.rv = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.rw = getelementptr inbounds nuw i8, ptr %3, i64 124
  %wide.trip.count598.i = zext i32 %i.qw to i64   ; 3 uses
  %xtraiter881 = and i64 %wide.trip.count598.i, 1
  %i.rx = icmp eq i32 %i.qw, 1
  %unroll_iter = and i64 %wide.trip.count598.i, 2147483646
  %lcmp.mod882.not = icmp eq i64 %xtraiter881, 0
  %lcmp.mod883 = trunc i32 %i.qw to i1
  br label %bb.ca

bb.ca:                                            ; preds = %.noexc232, %.noexc215
  %indvar.i = phi i64 [ %indvar.next.i, %.noexc232 ], [ 0, %.noexc215 ] ; 20 uses
  %.0500.i = phi ptr [ %.3503.i, %.noexc232 ], [ null, %.noexc215 ] ; 4 uses
  %.0498.i = phi ptr [ %.1499.i, %.noexc232 ], [ null, %.noexc215 ] ; 2 uses
  %.0495.i = phi ptr [ %.2497.i, %.noexc232 ], [ null, %.noexc215 ] ; 4 uses
  %.0493.i = phi ptr [ %.1494.i, %.noexc232 ], [ null, %.noexc215 ] ; 2 uses
  %.0490.i = phi ptr [ %.2492.i, %.noexc232 ], [ null, %.noexc215 ] ; 5 uses
  %.0487.i = phi ptr [ %.2489.i, %.noexc232 ], [ null, %.noexc215 ] ; 3 uses
  %.0485.i = phi ptr [ %.1486.i, %.noexc232 ], [ null, %.noexc215 ] ; 2 uses
  %.0483.i = phi ptr [ %.1484.i, %.noexc232 ], [ null, %.noexc215 ] ; 2 uses
  %.0481.i = phi ptr [ %.1482.i, %.noexc232 ], [ null, %.noexc215 ] ; 2 uses
  %.0478.i = phi ptr [ %.2480.i, %.noexc232 ], [ null, %.noexc215 ] ; 3 uses
  %.0476.i = phi ptr [ %.1477.i, %.noexc232 ], [ null, %.noexc215 ] ; 2 uses
  %.0313.i = phi i32 [ %.1314.i, %.noexc232 ], [ 0, %.noexc215 ] ; 8 uses
  %.0309.i = phi i32 [ %.1310.i, %.noexc232 ], [ 0, %.noexc215 ] ; 4 uses
  %.0308.i = phi float [ %i.anv, %.noexc232 ], [ 0.000000e+00, %.noexc215 ]
  %.0305.i = phi i32 [ %.2307.i, %.noexc232 ], [ 0, %.noexc215 ] ; 4 uses
  %.0302.i = phi float [ %i.aly, %.noexc232 ], [ 0.000000e+00, %.noexc215 ]
  %.0301.i = phi float [ %i.ani, %.noexc232 ], [ 0.000000e+00, %.noexc215 ]
  %.0300.i = phi float [ %i.amd, %.noexc232 ], [ 0.000000e+00, %.noexc215 ]
  %.0297.i = phi float [ %.1298.i, %.noexc232 ], [ 0.000000e+00, %.noexc215 ]
  %.0292.i = phi i32 [ %.1293.i, %.noexc232 ], [ 0, %.noexc215 ]
  %.0290.i = phi i32 [ %.1291.i, %.noexc232 ], [ 0, %.noexc215 ]
  %.0287.i = phi i32 [ %.2289.i, %.noexc232 ], [ 0, %.noexc215 ] ; 2 uses
  %.0.i = phi i32 [ %.2.i, %.noexc232 ], [ 0, %.noexc215 ] ; 2 uses
  %i.ry = phi <2 x float> [ %i.alt, %.noexc232 ], [ zeroinitializer, %.noexc215 ]
  %i.rz = phi <2 x float> [ %i.alo, %.noexc232 ], [ zeroinitializer, %.noexc215 ]
  %i.sa = phi <2 x float> [ %i.alq, %.noexc232 ], [ zeroinitializer, %.noexc215 ]
  %i.sb = shl i64 %indvar.i, 2
  %i.sc = add i64 %i.sb, 4                        ; 2 uses
  %i.sd = mul i64 %indvar.i, 12
  %i.se = shl nsw i64 %indvar.i, 2                ; 2 uses
  %i.sf = trunc nsw i64 %indvar.i to i32          ; 5 uses
  %i.sg = mul nuw nsw i64 %indvar.i, 12           ; 3 uses
  %indvar.next.i = add nuw i64 %indvar.i, 1       ; 5 uses
  %i.sh = trunc nsw i64 %indvar.next.i to i32     ; 3 uses
  %i.si = uitofp nneg i32 %i.sh to float          ; 6 uses
  %i.sj = sext i32 %.0309.i to i64
  %.not.i = icmp slt i64 %indvar.i, %i.sj
  br i1 %.not.i, label %.loopexit507.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.sk = add nsw i32 %.0309.i, 100               ; 3 uses
  %i.sl = sext i32 %i.sk to i64                   ; 7 uses
  %i.sm = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.59, i32 noundef 466, ptr noundef %.0498.i, i64 noundef range(i64 -2147483548, 2147483648) %i.sl, i64 noundef 4)
          to label %.noexc216 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc216:                                        ; preds = %bb.cb
  %i.sn = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.59, i32 noundef 467, ptr noundef %.0493.i, i64 noundef range(i64 -2147483548, 2147483648) %i.sl, i64 noundef 12)
          to label %.noexc217 unwind label %.loopexit.split-lp.loopexit ; 3 uses

.noexc217:                                        ; preds = %.noexc216
  %i.so = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.59, i32 noundef 468, ptr noundef %.0485.i, i64 noundef range(i64 -2147483548, 2147483648) %i.sl, i64 noundef 12)
          to label %.noexc218 unwind label %.loopexit.split-lp.loopexit ; 3 uses

.noexc218:                                        ; preds = %.noexc217
  %i.sp = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.59, i32 noundef 469, ptr noundef %.0483.i, i64 noundef range(i64 -2147483548, 2147483648) %i.sl, i64 noundef 4)
          to label %.noexc219 unwind label %.loopexit.split-lp.loopexit ; 3 uses

.noexc219:                                        ; preds = %.noexc218
  %i.sq = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.59, i32 noundef 470, ptr noundef %.0481.i, i64 noundef range(i64 -2147483548, 2147483648) %i.sl, i64 noundef 12)
          to label %.noexc220 unwind label %.loopexit.split-lp.loopexit ; 3 uses

.noexc220:                                        ; preds = %.noexc219
  %i.sr = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.59, i32 noundef 471, ptr noundef %.0476.i, i64 noundef range(i64 -2147483548, 2147483648) %i.sl, i64 noundef 4)
          to label %.noexc221 unwind label %.loopexit.split-lp.loopexit ; 3 uses

.noexc221:                                        ; preds = %.noexc220
  %i.ss = icmp slt i64 %indvar.i, %i.sl
  br i1 %i.ss, label %.lr.ph.preheader.i214, label %.loopexit507.i

.lr.ph.preheader.i214:                            ; preds = %.noexc221
  %scevgep.i = getelementptr i8, ptr %i.so, i64 %i.sg
  %reass.sub = sub i32 %.0309.i, %i.sf
  %i.st = add i32 %reass.sub, 99
  %i.su = zext i32 %i.st to i64                   ; 2 uses
  %i.sv = mul nuw nsw i64 %i.su, 12
  %i.sw = add nuw nsw i64 %i.sv, 12               ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.sw, i1 false), !tbaa !55
  %scevgep589.i = getelementptr i8, ptr %i.sn, i64 %i.sg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep589.i, i8 0, i64 %i.sw, i1 false), !tbaa !55
  %scevgep590.i = getelementptr i8, ptr %i.sq, i64 %i.sg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep590.i, i8 0, i64 %i.sw, i1 false), !tbaa !55
  %scevgep591.i = getelementptr i8, ptr %i.sp, i64 %i.se
  %i.sx = shl nuw nsw i64 %i.su, 2
  %i.sy = add nuw nsw i64 %i.sx, 4                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep591.i, i8 0, i64 %i.sy, i1 false), !tbaa !55
  %scevgep592.i = getelementptr i8, ptr %i.sr, i64 %i.se
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep592.i, i8 0, i64 %i.sy, i1 false), !tbaa !55
  br label %.loopexit507.i

.loopexit507.i:                                   ; preds = %.lr.ph.preheader.i214, %.noexc221, %bb.ca
  %.1499.i = phi ptr [ %.0498.i, %bb.ca ], [ %i.sm, %.noexc221 ], [ %i.sm, %.lr.ph.preheader.i214 ] ; 20 uses
  %.1494.i = phi ptr [ %.0493.i, %bb.ca ], [ %i.sn, %.noexc221 ], [ %i.sn, %.lr.ph.preheader.i214 ] ; 5 uses
  %.1486.i = phi ptr [ %.0485.i, %bb.ca ], [ %i.so, %.noexc221 ], [ %i.so, %.lr.ph.preheader.i214 ] ; 2 uses
  %.1484.i = phi ptr [ %.0483.i, %bb.ca ], [ %i.sp, %.noexc221 ], [ %i.sp, %.lr.ph.preheader.i214 ] ; 16 uses
  %.1482.i = phi ptr [ %.0481.i, %bb.ca ], [ %i.sq, %.noexc221 ], [ %i.sq, %.lr.ph.preheader.i214 ] ; 7 uses
  %.1477.i = phi ptr [ %.0476.i, %bb.ca ], [ %i.sr, %.noexc221 ], [ %i.sr, %.lr.ph.preheader.i214 ] ; 8 uses
  %.1310.i = phi i32 [ %.0309.i, %bb.ca ], [ %i.sk, %.noexc221 ], [ %i.sk, %.lr.ph.preheader.i214 ]
  %.not320.i = icmp eq ptr %.1499.i, null
  br i1 %.not320.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %.loopexit507.i
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.126, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL10dielectricP8_IO_FILES0_S0_S0_S0_S0_bbb7PbcType10t_topology10t_trxframefffffP11t_trxstatusiiiPKiPiPfS9_fPK16gmx_output_env_tENK3$_0clEv", ptr noundef nonnull @.str.59, i32 noundef 482) #20
          to label %.noexc222 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc222:                                        ; preds = %bb.cc
  unreachable

bb.cd:                                            ; preds = %.loopexit507.i
  %i.sz = icmp eq i64 %indvar.i, 0
  %i.ta = load float, ptr %i.rf, align 4          ; 2 uses
  %.1298.i = select i1 %i.sz, float %i.ta, float %.0297.i ; 2 uses
  %i.tb = fsub float %i.ta, %.1298.i              ; 3 uses
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %.1499.i, i64 %indvar.i ; 5 uses
  store float %i.tb, ptr %i.tc, align 4, !tbaa !55
  %i.td = fcmp ugt float %i.tb, %i.qr
  %.1293.i = select i1 %i.td, i32 %.0292.i, i32 %i.sf ; 5 uses
  %i.te = fcmp ugt float %i.tb, %i.qs
  %.1291.i = select i1 %i.te, i32 %.0290.i, i32 %i.sf ; 5 uses
  br i1 %i.qo, label %bb.ce, label %.loopexit506.i

bb.ce:                                            ; preds = %bb.cd
  %.not321.i = icmp eq ptr %.0490.i, null
  %i.tf = load i32, ptr %i.rc, align 8, !tbaa !97 ; 4 uses
  br i1 %.not321.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.tg = load ptr, ptr %i.rh, align 8, !tbaa !98
  %i.th = load float, ptr %i.rg, align 4, !tbaa !55
  %i.ti = fmul float %i.th, 5.000000e-01          ; 3 uses
  %i.tj = load float, ptr %i.rj, align 4, !tbaa !55
  %i.tk = fmul float %i.tj, 5.000000e-01          ; 3 uses
  %i.tl = load float, ptr %i.rl, align 4, !tbaa !55
  %i.tm = fmul float %i.tl, 5.000000e-01          ; 3 uses
  %i.tn = icmp sgt i32 %i.tf, 0
  br i1 %i.tn, label %.preheader49.preheader.i.i, label %.loopexit506.i

.preheader49.preheader.i.i:                       ; preds = %bb.cf
  %wide.trip.count.i.i = zext nneg i32 %i.tf to i64
  %i.to = fneg float %i.tm                        ; 2 uses
  %i.tp = fneg float %i.tk                        ; 2 uses
  %i.tq = fneg float %i.ti                        ; 2 uses
  br label %.preheader49.i.i

.preheader49.i.i:                                 ; preds = %._crit_edge.2.i.i, %.preheader49.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader49.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.2.i.i ] ; 3 uses
  %i.tr = getelementptr inbounds nuw [12 x i8], ptr %i.tg, i64 %indvars.iv.i.i ; 14 uses
  %i.ts = getelementptr inbounds nuw [12 x i8], ptr %.0490.i, i64 %indvars.iv.i.i ; 5 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tr, i64 8 ; 3 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ts, i64 8 ; 3 uses
  %i.tv = load float, ptr %i.tt, align 4, !tbaa !55 ; 3 uses
  %i.tw = load float, ptr %i.tu, align 4, !tbaa !55
  %i.tx = fsub float %i.tv, %i.tw                 ; 2 uses
  %i.ty = fcmp ugt float %i.tx, %i.to
  br i1 %i.ty, label %.preheader47.i.i, label %.preheader45.lr.ph.i.i

.preheader45.lr.ph.i.i:                           ; preds = %.preheader49.i.i
  %.pre.i.i = load float, ptr %i.tr, align 4, !tbaa !55
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.tr, i64 4 ; 2 uses
  %.pre96.i.i = load float, ptr %.phi.trans.insert.i.i, align 4, !tbaa !55
  br label %.preheader45.i.i

.preheader47.i.i:                                 ; preds = %.preheader45.i.i, %.preheader49.i.i
  %.pre-phi.i.i = phi float [ %i.tx, %.preheader49.i.i ], [ %i.ul, %.preheader45.i.i ]
  %i.tz = phi float [ %i.tv, %.preheader49.i.i ], [ %i.uj, %.preheader45.i.i ]
  %i.ua = fcmp ogt float %.pre-phi.i.i, %i.tm
  br i1 %i.ua, label %.preheader.lr.ph.i.i, label %.preheader47.._crit_edge_crit_edge.i.i

.preheader47.._crit_edge_crit_edge.i.i:           ; preds = %.preheader47.i.i
  %.phi.trans.insert100.i.i = getelementptr inbounds nuw i8, ptr %i.tr, i64 4
  %.pre101.i.i = load float, ptr %.phi.trans.insert100.i.i, align 4, !tbaa !55
  %.pre104.pre.pre.i.i = load float, ptr %i.tr, align 4, !tbaa !55
  br label %._crit_edge.i.i208

.preheader.lr.ph.i.i:                             ; preds = %.preheader47.i.i
  %.pre97.i.i = load float, ptr %i.tr, align 4, !tbaa !55
  %.phi.trans.insert98.i.i = getelementptr inbounds nuw i8, ptr %i.tr, i64 4 ; 2 uses
  %.pre99.i.i = load float, ptr %.phi.trans.insert98.i.i, align 4, !tbaa !55
  br label %.preheader.i.i

.preheader45.i.i:                                 ; preds = %.preheader45.i.i, %.preheader45.lr.ph.i.i
  %i.ub = phi float [ %i.tv, %.preheader45.lr.ph.i.i ], [ %i.uj, %.preheader45.i.i ]
  %i.uc = phi float [ %.pre96.i.i, %.preheader45.lr.ph.i.i ], [ %i.uh, %.preheader45.i.i ]
  %i.ud = phi float [ %.pre.i.i, %.preheader45.lr.ph.i.i ], [ %i.uf, %.preheader45.i.i ]
  %i.ue = load float, ptr %i.rk, align 4, !tbaa !55
  %i.uf = fadd float %i.ud, %i.ue                 ; 2 uses
  store float %i.uf, ptr %i.tr, align 4, !tbaa !55
  %i.ug = load float, ptr %i.rm, align 8, !tbaa !55
  %i.uh = fadd float %i.uc, %i.ug                 ; 2 uses
  store float %i.uh, ptr %.phi.trans.insert.i.i, align 4, !tbaa !55
  %i.ui = load float, ptr %i.rl, align 4, !tbaa !55
  %i.uj = fadd float %i.ub, %i.ui                 ; 4 uses
  store float %i.uj, ptr %i.tt, align 4, !tbaa !55
  %i.uk = load float, ptr %i.tu, align 4, !tbaa !55
  %i.ul = fsub float %i.uj, %i.uk                 ; 2 uses
  %i.um = fcmp ugt float %i.ul, %i.to
  br i1 %i.um, label %.preheader47.i.i, label %.preheader45.i.i, !llvm.loop !99

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.lr.ph.i.i
  %i.un = phi float [ %i.tz, %.preheader.lr.ph.i.i ], [ %i.uv, %.preheader.i.i ]
  %i.uo = phi float [ %.pre99.i.i, %.preheader.lr.ph.i.i ], [ %i.ut, %.preheader.i.i ]
  %i.up = phi float [ %.pre97.i.i, %.preheader.lr.ph.i.i ], [ %i.ur, %.preheader.i.i ]
  %i.uq = load float, ptr %i.rk, align 4, !tbaa !55
  %i.ur = fsub float %i.up, %i.uq                 ; 3 uses
  store float %i.ur, ptr %i.tr, align 4, !tbaa !55
  %i.us = load float, ptr %i.rm, align 8, !tbaa !55
  %i.ut = fsub float %i.uo, %i.us                 ; 3 uses
  store float %i.ut, ptr %.phi.trans.insert98.i.i, align 4, !tbaa !55
  %i.uu = load float, ptr %i.rl, align 4, !tbaa !55
  %i.uv = fsub float %i.un, %i.uu                 ; 3 uses
  store float %i.uv, ptr %i.tt, align 4, !tbaa !55
  %i.uw = load float, ptr %i.tu, align 4, !tbaa !55
  %i.ux = fsub float %i.uv, %i.uw
  %i.uy = fcmp ogt float %i.ux, %i.tm
  br i1 %i.uy, label %.preheader.i.i, label %._crit_edge.i.i208, !llvm.loop !100

._crit_edge.i.i208:                               ; preds = %.preheader.i.i, %.preheader47.._crit_edge_crit_edge.i.i
  %.pre104.pre.i.i = phi float [ %.pre104.pre.pre.i.i, %.preheader47.._crit_edge_crit_edge.i.i ], [ %i.ur, %.preheader.i.i ] ; 2 uses
  %i.uz = phi float [ %.pre101.i.i, %.preheader47.._crit_edge_crit_edge.i.i ], [ %i.ut, %.preheader.i.i ] ; 3 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.tr, i64 4 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ts, i64 4 ; 3 uses
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !55
  %i.vd = fsub float %i.uz, %i.vc                 ; 2 uses
  %i.ve = fcmp ugt float %i.vd, %i.tp
  br i1 %i.ve, label %.preheader47.1.i.i, label %.preheader45.1.i.i

.preheader45.1.i.i:                               ; preds = %._crit_edge.i.i208, %.preheader45.1.i.i
  %i.vf = phi float [ %i.vk, %.preheader45.1.i.i ], [ %i.uz, %._crit_edge.i.i208 ]
  %i.vg = phi float [ %i.vi, %.preheader45.1.i.i ], [ %.pre104.pre.i.i, %._crit_edge.i.i208 ]
  %i.vh = load float, ptr %i.ri, align 8, !tbaa !55
  %i.vi = fadd float %i.vg, %i.vh                 ; 3 uses
  store float %i.vi, ptr %i.tr, align 4, !tbaa !55
  %i.vj = load float, ptr %i.rj, align 4, !tbaa !55
end_hunk_0
