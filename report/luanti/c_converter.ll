Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/c_converter?download=true
inline.NumInlined: 663
inline.NumDeleted: 233
begin_hunk_0_@_Z10read_ARGB8P9lua_Statei:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #8
  %i.gk = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.gk, ptr %18, align 8, !tbaa !12
  store i64 2334106421097295433, ptr %i.gk, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 8, ptr %i.gl, align 8, !tbaa !15
  %i.gm = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i8 0, ptr %i.gm, align 8, !tbaa !16
  %i.gn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.19, i64 noundef 17)
          to label %.noexc178 unwind label %bb.aw ; 6 uses

.noexc178:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i173
  %i.go = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  store ptr %i.go, ptr %17, align 8, !tbaa !12, !alias.scope !106
  %i.gp = load ptr, ptr %i.gn, align 8, !tbaa !17 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 16 ; 5 uses
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

bb.aq:                                            ; preds = %.noexc178
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !15 ; 3 uses
  %i.gu = icmp ult i64 %i.gt, 16
  call void @llvm.assume(i1 %i.gu)
  %i.gv = add nuw nsw i64 %i.gt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.go, ptr noundef nonnull align 8 dereferenceable(1) %i.gq, i64 %i.gv, i1 false)
  br label %bb.ar

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %.noexc178
  store ptr %i.gp, ptr %17, align 8, !tbaa !17, !alias.scope !106
  %i.gw = load i64, ptr %i.gq, align 8, !tbaa !16
  store i64 %i.gw, ptr %i.go, align 8, !tbaa !16, !alias.scope !106
  %.phi.trans.insert.i175 = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %.pre.i176 = load i64, ptr %.phi.trans.insert.i175, align 8, !tbaa !15
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174, %bb.aq
  %i.gx = phi i64 [ %i.gt, %bb.aq ], [ %.pre.i176, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174 ]
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store i64 %i.gx, ptr %i.gz, align 8, !tbaa !15, !alias.scope !106
  store ptr %i.gq, ptr %i.gn, align 8, !tbaa !17
  store i64 0, ptr %i.gy, align 8, !tbaa !15
  store i8 0, ptr %i.gq, align 8, !tbaa !16
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !15, !noalias !107
  %i.hb = and i64 %i.ha, -16
  %i.hc = icmp eq i64 %i.hb, 4611686018427387888
  br i1 %i.hc, label %bb.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i180

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #23
          to label %.noexc184 unwind label %bb.ax

.noexc184:                                        ; preds = %bb.as
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i180: ; preds = %bb.ar
  %i.hd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.2, i64 noundef 16)
          to label %.noexc185 unwind label %bb.ax ; 6 uses

.noexc185:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i180
  %i.he = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  store ptr %i.he, ptr %16, align 8, !tbaa !12, !alias.scope !107
  %i.hf = load ptr, ptr %i.hd, align 8, !tbaa !17 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 16 ; 5 uses
  %i.hh = icmp eq ptr %i.hf, %i.hg
  br i1 %i.hh, label %bb.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181

bb.at:                                            ; preds = %.noexc185
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !15 ; 3 uses
  %i.hk = icmp ult i64 %i.hj, 16
  call void @llvm.assume(i1 %i.hk)
  %i.hl = add nuw nsw i64 %i.hj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.he, ptr noundef nonnull align 8 dereferenceable(1) %i.hg, i64 %i.hl, i1 false)
  br label %bb.au

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181: ; preds = %.noexc185
  store ptr %i.hf, ptr %16, align 8, !tbaa !17, !alias.scope !107
  %i.hm = load i64, ptr %i.hg, align 8, !tbaa !16
  store i64 %i.hm, ptr %i.he, align 8, !tbaa !16, !alias.scope !107
  %.phi.trans.insert.i182 = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %.pre.i183 = load i64, ptr %.phi.trans.insert.i182, align 8, !tbaa !15
  br label %bb.au

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181, %bb.at
  %i.hn = phi i64 [ %i.hj, %bb.at ], [ %.pre.i183, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181 ]
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i64 %i.hn, ptr %i.hp, align 8, !tbaa !15, !alias.scope !107
  store ptr %i.hg, ptr %i.hd, align 8, !tbaa !17
  store i64 0, ptr %i.ho, align 8, !tbaa !15
  store i8 0, ptr %i.hg, align 8, !tbaa !16
  %i.hq = load ptr, ptr %17, align 8, !tbaa !17   ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.go
  br i1 %i.hr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %bb.au
  %i.hs = load i64, ptr %i.go, align 8, !tbaa !16
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.ht) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187
  %i.hu = load ptr, ptr %18, align 8, !tbaa !17   ; 2 uses
  %i.hv = icmp eq ptr %i.hu, %i.gk
  br i1 %i.hv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189
  %i.hw = load i64, ptr %i.gk, align 8, !tbaa !16
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.hu, i64 noundef %i.hx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #8
  %i.hy = load ptr, ptr %16, align 8, !tbaa !17
  %i.hz = load i64, ptr %i.hp, align 8, !tbaa !15
  invoke void @_Z14log_deprecatedP9lua_StateSt17basic_string_viewIcSt11char_traitsIcEEib(ptr noundef %0, i64 %i.hz, ptr %i.hy, i32 noundef 1, i1 noundef zeroext true)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  %i.ia = load ptr, ptr %16, align 8, !tbaa !17   ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.he
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195: ; preds = %bb.av
  %i.ic = load i64, ptr %i.he, align 8, !tbaa !16
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.id) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #8
  br label %bb.az

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i173
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i180, %bb.as
  %i.if = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ig = load ptr, ptr %17, align 8, !tbaa !17   ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.go
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198: ; preds = %bb.ax
  %i.ii = load i64, ptr %i.go, align 8, !tbaa !16
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198, %bb.aw
  %.pn71 = phi { ptr, i32 } [ %i.ie, %bb.aw ], [ %i.if, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198 ], [ %i.if, %bb.ax ]
  %i.ik = load ptr, ptr %18, align 8, !tbaa !17   ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.gk
  br i1 %i.il, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200
  %i.im = load i64, ptr %i.gk, align 8, !tbaa !16
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.in) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  %i.io = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ip = load ptr, ptr %16, align 8, !tbaa !17   ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.he
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204: ; preds = %bb.ay
  %i.ir = load i64, ptr %i.he, align 8, !tbaa !16
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.is) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203
  %.pn74 = phi { ptr, i32 } [ %.pn71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203 ], [ %i.io, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204 ], [ %i.io, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #8
  br label %bb.ba

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, %bb.ap
  %i.it = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.iu = insertelement <2 x double> %i.it, double %i.gh, i64 1
  %i.iv = call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.iu, <2 x double> splat (double 2.550000e+02))
  %i.iw = call nsz double @lua_tonumber(ptr noundef %0, i32 noundef -1)
  %i.ix = call nsz double @llvm.minnum.f64(double %i.iw, double 2.550000e+02)
  %i.iy = call nsz double @llvm.maxnum.f64(double %i.ix, double 0.000000e+00)
  %i.iz = fptoui double %i.iy to i32
  %i.ja = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.iv, <2 x double> zeroinitializer)
  %i.jb = fptoui <2 x double> %i.ja to <2 x i32>
  %i.jc = shl <2 x i32> %i.jb, <i32 16, i32 8>
  %i.jd = insertelement <4 x i32> poison, i32 %i.iz, i64 2
  %i.je = insertelement <4 x i32> %i.jd, i32 %i.bj, i64 3
  %i.jf = shufflevector <2 x i32> %i.jc, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jg = shufflevector <4 x i32> %i.jf, <4 x i32> %i.je, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.jh = and <4 x i32> %i.jg, <i32 16711680, i32 65280, i32 255, i32 -1>
  %i.ji = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.jh)
  call void @lua_settop(ptr noundef %0, i32 noundef -2)
  ret i32 %i.ji

bb.ba:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130
  %.pn76.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130 ], [ %.pn74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206 ], [ %.pn69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168 ], [ %.pn76.pn.pn.pn.pn.pn.pn217, %bb.s ], [ %.pn76.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %.pn76.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ]
  resume { ptr, i32 } %.pn76.pn.pn.pn.pn.pn.pn.pn

bb.bb:                                            ; preds = %bb.l
  unreachable
}

declare i32 @lua_isnumber(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lua_isstring(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_Z16parseColorStringRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5video6SColorEbh(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @lua_tolstring(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @lua_getfield(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_Z14is_color_tableP9lua_Statei(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @lua_type(ptr noundef %0, i32 noundef %1)
  %i.b = icmp eq i32 %i.a, 5
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @lua_getfield(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.13)
  %i.c = tail call i32 @lua_isnumber(ptr noundef %0, i32 noundef -1)
  %.not = icmp eq i32 %i.c, 0
  tail call void @lua_getfield(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.14)
  br i1 %.not, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  tail call void @lua_getfield(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.15)
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @lua_isnumber(ptr noundef %0, i32 noundef -1)
  %.not18 = icmp eq i32 %i.d, 0
  tail call void @lua_getfield(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.15)
  br i1 %.not18, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @lua_isnumber(ptr noundef %0, i32 noundef -1)
  %i.f = icmp ne i32 %i.e, 0
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d, %bb.c
  %.2.in = phi i1 [ true, %bb.c ], [ %i.f, %bb.d ], [ true, %.thread ]
  tail call void @lua_settop(ptr noundef %0, i32 noundef -4)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.016 = phi i1 [ %.2.in, %bb.e ], [ false, %bb.a ]
  ret i1 %.016
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z11read_aabb3fP9lua_Stateif(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.core::aabbox3d") align 4 captures(none) initializes((0, 24)) %0, ptr noundef %1, i32 noundef %2, float noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store <4 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float 1.000000e+00>, ptr %0, align 4, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.d, align 4, !tbaa !26
  %i.f = tail call i32 @lua_type(ptr noundef %1, i32 noundef %2)
  %i.g = icmp eq i32 %i.f, 5
  br i1 %i.g, label %bb.b, label %_ZN4core8aabbox3dIfE6repairEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @lua_rawgeti(ptr noundef %1, i32 noundef %2, i32 noundef 1)
  %i.h = tail call nsz double @lua_tonumber(ptr noundef %1, i32 noundef -1)
  %i.i = fpext nsz float %3 to double             ; 6 uses
  %i.j = fmul nsz double %i.h, %i.i
  %i.k = fptrunc nsz double %i.j to float         ; 3 uses
  store float %i.k, ptr %0, align 4, !tbaa !29
  tail call void @lua_settop(ptr noundef %1, i32 noundef -2)
  tail call void @lua_rawgeti(ptr noundef %1, i32 noundef %2, i32 noundef 2)
  %i.l = tail call nsz double @lua_tonumber(ptr noundef %1, i32 noundef -1)
  %i.m = fmul nsz double %i.l, %i.i
  %i.n = fptrunc nsz double %i.m to float         ; 3 uses
  store float %i.n, ptr %i.a, align 4, !tbaa !30
  tail call void @lua_settop(ptr noundef %1, i32 noundef -2)
  tail call void @lua_rawgeti(ptr noundef %1, i32 noundef %2, i32 noundef 3)
  %i.o = tail call nsz double @lua_tonumber(ptr noundef %1, i32 noundef -1)
  %i.p = fmul nsz double %i.o, %i.i
  %i.q = fptrunc nsz double %i.p to float         ; 3 uses
  store float %i.q, ptr %i.b, align 4, !tbaa !31
  tail call void @lua_settop(ptr noundef %1, i32 noundef -2)
  tail call void @lua_rawgeti(ptr noundef %1, i32 noundef %2, i32 noundef 4)
  %i.r = tail call nsz double @lua_tonumber(ptr noundef %1, i32 noundef -1)
  %i.s = fmul nsz double %i.r, %i.i
  %i.t = fptrunc nsz double %i.s to float         ; 3 uses
  store float %i.t, ptr %i.c, align 4, !tbaa !32
  tail call void @lua_settop(ptr noundef %1, i32 noundef -2)
  tail call void @lua_rawgeti(ptr noundef %1, i32 noundef %2, i32 noundef 5)
  %i.u = tail call nsz double @lua_tonumber(ptr noundef %1, i32 noundef -1)
  %i.v = fmul nsz double %i.u, %i.i
  %i.w = fptrunc nsz double %i.v to float         ; 3 uses
  store float %i.w, ptr %i.d, align 4, !tbaa !33
  tail call void @lua_settop(ptr noundef %1, i32 noundef -2)
  tail call void @lua_rawgeti(ptr noundef %1, i32 noundef %2, i32 noundef 6)
  %i.x = tail call nsz double @lua_tonumber(ptr noundef %1, i32 noundef -1)
  %i.y = fmul nsz double %i.x, %i.i
  %i.z = fptrunc nsz double %i.y to float         ; 3 uses
  store float %i.z, ptr %i.e, align 4, !tbaa !34
  tail call void @lua_settop(ptr noundef %1, i32 noundef -2)
  %i.aa = fcmp nsz ogt float %i.k, %i.t
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store float %i.t, ptr %0, align 4, !tbaa !29
  store float %i.k, ptr %i.c, align 4, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ab = fcmp nsz ogt float %i.n, %i.w
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store float %i.w, ptr %i.a, align 4, !tbaa !30
  store float %i.n, ptr %i.d, align 4, !tbaa !33
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = fcmp nsz ogt float %i.q, %i.z
  br i1 %i.ac, label %bb.g, label %_ZN4core8aabbox3dIfE6repairEv.exit

bb.g:                                             ; preds = %bb.f
  store float %i.z, ptr %i.b, align 4, !tbaa !31
  store float %i.q, ptr %i.e, align 4, !tbaa !34
  br label %_ZN4core8aabbox3dIfE6repairEv.exit

_ZN4core8aabbox3dIfE6repairEv.exit:               ; preds = %bb.a, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z11push_aabb3fP9lua_StateN4core8aabbox3dIfEEf(ptr noundef %0, ptr nofree noundef readonly byval(%"class.core::aabbox3d") align 8 captures(none) %1, float noundef %2) local_unnamed_addr #3 {
bb.a:
  tail call void @lua_createtable(ptr noundef %0, i32 noundef 6, i32 noundef 0)
  %i.a = load float, ptr %1, align 8, !tbaa !29
  %i.b = fdiv nsz float %i.a, %2
  %i.c = fpext nsz float %i.b to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.c)
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef -2, i32 noundef 1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !30
  %i.f = fdiv nsz float %i.e, %2
  %i.g = fpext nsz float %i.f to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.g)
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef -2, i32 noundef 2)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load float, ptr %i.h, align 8, !tbaa !31
  %i.j = fdiv nsz float %i.i, %2
  %i.k = fpext nsz float %i.j to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.k)
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef -2, i32 noundef 3)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.m = load float, ptr %i.l, align 4, !tbaa !32
  %i.n = fdiv nsz float %i.m, %2
  %i.o = fpext nsz float %i.n to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.o)
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef -2, i32 noundef 4)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load float, ptr %i.p, align 8, !tbaa !33
  %i.r = fdiv nsz float %i.q, %2
  %i.s = fpext nsz float %i.r to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.s)
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef -2, i32 noundef 5)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.u = load float, ptr %i.t, align 4, !tbaa !34
  %i.v = fdiv nsz float %i.u, %2
  %i.w = fpext nsz float %i.v to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.w)
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef -2, i32 noundef 6)
  ret void
}

declare void @lua_rawseti(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_Z18read_aabb3f_vectorP9lua_Stateif(ptr dead_on_unwind noalias nofree writable sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr noundef %1, i32 noundef %2, float noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.core::aabbox3d", align 4    ; 4 uses
  %5 = alloca %"class.core::aabbox3d", align 4    ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = tail call i32 @lua_type(ptr noundef %1, i32 noundef %2)
  %i.b = icmp eq i32 %i.a, 5
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @lua_objlen(ptr noundef %1, i32 noundef %2)
  %i.d = trunc i64 %i.c to i32                    ; 3 uses
  %i.e = icmp eq i32 %i.d, 6
  br i1 %i.e, label %.lr.ph, label %.preheader
end_hunk_0
