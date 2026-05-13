inline.NumInlined: 191
inline.NumDeleted: 52
begin_hunk_0_@_ZN10ODDLParser5Value4dumpERNS_12IOStreamBaseE:bb.a

.noexc314:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i309
  %i.vt = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  store ptr %i.vt, ptr %22, align 8, !alias.scope !44
  %i.vu = load ptr, ptr %i.vs, align 8            ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vs, i64 16 ; 5 uses
  %i.vw = icmp eq ptr %i.vu, %i.vv
  br i1 %i.vw, label %bb.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310

bb.cq:                                            ; preds = %.noexc314
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vs, i64 8
  %i.vy = load i64, ptr %i.vx, align 8            ; 3 uses
  %i.vz = icmp ult i64 %i.vy, 16
  call void @llvm.assume(i1 %i.vz)
  %i.wa = add nuw nsw i64 %i.vy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.vt, ptr noundef nonnull align 8 dereferenceable(1) %i.vv, i64 %i.wa, i1 false)
  br label %bb.cr

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310: ; preds = %.noexc314
  store ptr %i.vu, ptr %22, align 8, !alias.scope !44
  %i.wb = load i64, ptr %i.vv, align 8
  store i64 %i.wb, ptr %i.vt, align 8, !alias.scope !44
  %.phi.trans.insert.i311 = getelementptr inbounds nuw i8, ptr %i.vs, i64 8
  %.pre.i312 = load i64, ptr %.phi.trans.insert.i311, align 8
  br label %bb.cr

bb.cr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310, %bb.cq
  %i.wc = phi i64 [ %i.vy, %bb.cq ], [ %.pre.i312, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310 ]
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vs, i64 8
  %i.we = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.wc, ptr %i.we, align 8, !alias.scope !44
  store ptr %i.vv, ptr %i.vs, align 8
  store i64 0, ptr %i.wd, align 8
  store i8 0, ptr %i.vv, align 8
  %i.wf = load ptr, ptr %1, align 8
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 48
  %i.wh = load ptr, ptr %i.wg, align 8
  %i.wi = invoke noundef i64 %i.wh(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.cs unwind label %bb.cv     ; 0 uses

bb.cs:                                            ; preds = %bb.cr
  %i.wj = load ptr, ptr %22, align 8              ; 2 uses
  %i.wk = icmp eq ptr %i.wj, %i.vt
  br i1 %i.wk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316: ; preds = %bb.cs
  %i.wl = load i64, ptr %i.vt, align 8
  %i.wm = add i64 %i.wl, 1
  call void @_ZdlPvm(ptr noundef %i.wj, i64 noundef %i.wm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316
  %i.wn = load ptr, ptr %23, align 8              ; 2 uses
  %i.wo = icmp eq ptr %i.wn, %i.ve
  br i1 %i.wo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318
  %i.wp = load i64, ptr %i.ve, align 8
  %i.wq = add i64 %i.wp, 1
  call void @_ZdlPvm(ptr noundef %i.wn, i64 noundef %i.wq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %bb.cy

bb.ct:                                            ; preds = %.noexc.i305, %bb.ck
  %i.wr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327

bb.cu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i309, %bb.cp
  %i.ws = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324

bb.cv:                                            ; preds = %bb.cr
  %i.wt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wu = load ptr, ptr %22, align 8              ; 2 uses
  %i.wv = icmp eq ptr %i.wu, %i.vt
  br i1 %i.wv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322: ; preds = %bb.cv
  %i.ww = load i64, ptr %i.vt, align 8
  %i.wx = add i64 %i.ww, 1
  call void @_ZdlPvm(ptr noundef %i.wu, i64 noundef %i.wx) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322, %bb.cu
  %.pn35 = phi { ptr, i32 } [ %i.ws, %bb.cu ], [ %i.wt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322 ], [ %i.wt, %bb.cv ] ; 2 uses
  %i.wy = load ptr, ptr %23, align 8              ; 2 uses
  %i.wz = icmp eq ptr %i.wy, %i.ve
  br i1 %i.wz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324
  %i.xa = load i64, ptr %i.ve, align 8
  %i.xb = add i64 %i.xa, 1
  call void @_ZdlPvm(ptr noundef %i.wy, i64 noundef %i.xb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325, %bb.ct
  %.pn35.pn = phi { ptr, i32 } [ %i.wr, %bb.ct ], [ %.pn35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325 ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %bb.cz

._crit_edge.i.i328:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  %i.xc = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.xc, ptr %24, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.xc, ptr noundef nonnull align 1 dereferenceable(14) @.str.2, i64 14, i1 false)
  %i.xd = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 14, ptr %i.xd, align 8
  %i.xe = getelementptr inbounds nuw i8, ptr %24, i64 30
  store i8 0, ptr %i.xe, align 2
  %i.xf = load ptr, ptr %1, align 8
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 48
  %i.xh = load ptr, ptr %i.xg, align 8
  %i.xi = invoke noundef i64 %i.xh(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.cw unwind label %bb.cx     ; 0 uses

bb.cw:                                            ; preds = %._crit_edge.i.i328
  %i.xj = load ptr, ptr %24, align 8              ; 2 uses
  %i.xk = icmp eq ptr %i.xj, %i.xc
  br i1 %i.xk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332: ; preds = %bb.cw
  %i.xl = load i64, ptr %i.xc, align 8
  %i.xm = add i64 %i.xl, 1
  call void @_ZdlPvm(ptr noundef %i.xj, i64 noundef %i.xm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %bb.cy

bb.cx:                                            ; preds = %._crit_edge.i.i328
  %i.xn = landingpad { ptr, i32 }
          cleanup
  %i.xo = load ptr, ptr %24, align 8              ; 2 uses
  %i.xp = icmp eq ptr %i.xo, %i.xc
  br i1 %i.xp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335: ; preds = %bb.cx
  %i.xq = load i64, ptr %i.xc, align 8
  %i.xr = add i64 %i.xq, 1
  call void @_ZdlPvm(ptr noundef %i.xo, i64 noundef %i.xr) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337: ; preds = %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %bb.cz

bb.cy:                                            ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.cz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %.pn62.pn = phi { ptr, i32 } [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %.pn60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %.pn58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ], [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %.pn54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183 ], [ %.pn52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212 ], [ %i.oy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ], [ %i.po, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232 ], [ %i.qe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242 ], [ %i.qu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252 ], [ %i.rk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262 ], [ %.pn40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281 ], [ %.pn38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303 ], [ %.pn35.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327 ], [ %i.xn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337 ]
  resume { ptr, i32 } %.pn62.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN10ODDLParser5Value7setNextEPS0_(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((24, 32)) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK10ODDLParser5Value4sizeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #3 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.04 = phi i64 [ 1, %bb.a ], [ %i.a, %bb.b ]    ; 2 uses
  %.pn = phi ptr [ %0, %bb.a ], [ %.0, %bb.b ]
  %.0.in = getelementptr inbounds nuw i8, ptr %.pn, i64 24
  %.0 = load ptr, ptr %.0.in, align 8             ; 2 uses
  %.not = icmp eq ptr %.0, null
  %i.a = add i64 %.04, 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !47

bb.c:                                             ; preds = %bb.b
  ret i64 %.04
}

; Function Attrs: mustprogress uwtable
define hidden noalias noundef ptr @_ZN10ODDLParser14ValueAllocator13allocPrimDataENS_5Value9ValueTypeEm(i32 noundef %0, i64 noundef %1) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %0, label %bb.b [
    i32 -1, label %.thread32
    i32 14, label %.thread32
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26 ; 6 uses
  store i32 %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  switch i32 %0, label %.thread32 [
    i32 0, label %.thread.sink.split
    i32 1, label %.thread.sink.split
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %.thread.sink.split
    i32 6, label %bb.c
    i32 7, label %bb.d
    i32 8, label %bb.e
    i32 9, label %bb.c
    i32 10, label %bb.d
    i32 11, label %bb.e
    i32 12, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  br label %.thread.sink.split

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b
  br label %.thread.sink.split

bb.e:                                             ; preds = %bb.b, %bb.b, %bb.b
  br label %.thread.sink.split

bb.f:                                             ; preds = %bb.b
  %i.c = add i64 %1, 1                            ; 3 uses
  store i64 %i.c, ptr %i.b, align 8
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.thread32, label %.thread

.thread.sink.split:                               ; preds = %bb.b, %bb.b, %bb.b, %bb.e, %bb.d, %bb.c
  %.sink = phi i64 [ 1, %bb.b ], [ 1, %bb.b ], [ 2, %bb.c ], [ 4, %bb.d ], [ 8, %bb.e ], [ 1, %bb.b ] ; 2 uses
  store i64 %.sink, ptr %i.b, align 8
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.f
  %i.d = phi i64 [ %i.c, %bb.f ], [ %.sink, %.thread.sink.split ]
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #26 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.f, align 8
  %2 = load i64, ptr %i.b, align 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.e, i8 0, i64 %2, i1 false)
  br label %.thread32

.thread32:                                        ; preds = %bb.b, %bb.f, %.thread, %bb.a, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.a ], [ %i.a, %.thread ], [ %i.a, %bb.f ], [ %i.a, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN10ODDLParser14ValueAllocator15releasePrimDataEPPNS_5ValueE(ptr noundef captures(address_is_null) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN10ODDLParser5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.a) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr null, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #16

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ...) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.b = alloca i8, i64 %2, align 16              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.va_start.p0(ptr nonnull %4)
  %i.c = call noundef i32 %1(ptr noundef nonnull %i.b, i64 noundef %2, ptr noundef %3, ptr noundef nonnull %4) ; 3 uses
  call void @llvm.va_end.p0(ptr nonnull %4)
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.d, ptr %i.a, align 8
  %i.g = icmp ugt i32 %i.c, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8
  %i.i = load i64, ptr %i.a, align 8
  store i64 %i.i, ptr %i.e, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.e, %bb.a ] ; 2 uses
  switch i32 %i.c, label %bb.c [
    i32 1, label %bb.b
    i32 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.b, align 16
  store i8 %i.k, ptr %i.j, align 1
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 16 %i.b, i64 %i.d, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8              ; 2 uses
  store i64 %i.l, ptr %i.f, align 8
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l
  store i8 0, ptr %i.n, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #18

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #20

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn }
attributes #19 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { noreturn nounwind }
attributes #28 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!5 = distinct !{!5, !"_ZNSt7__cxx119to_stringEi"}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!8 = distinct !{!8, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!11 = distinct !{!11, !"_ZNSt7__cxx119to_stringEi"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!14 = distinct !{!14, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!17 = distinct !{!17, !"_ZNSt7__cxx119to_stringEi"}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!22 = distinct !{!22, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!25 = distinct !{!25, !"_ZNSt7__cxx119to_stringEi"}
!26 = distinct !{!26, !19}
end_hunk_0
