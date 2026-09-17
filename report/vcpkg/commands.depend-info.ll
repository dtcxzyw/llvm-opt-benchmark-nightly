Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/commands.depend-info?download=true
inline.NumInlined: 3028
inline.NumDeleted: 1485
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_:bb.a
bb.s:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext74 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift75 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext74, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext63 = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert65 = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift75, %.sroa.010.sroa.0.sroa.0.0.insert.ext63
  %i.bc = tail call noundef i64 @llvm.smax.i64(i64 %.sroa.010.sroa.0.sroa.0.0.insert.insert65, i64 -1)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.t:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift, %.sroa.010.sroa.0.sroa.0.0.insert.ext
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.u:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext82 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift83 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext82, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext69 = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert71 = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift83, %.sroa.010.sroa.0.sroa.0.0.insert.ext69
  %.not103 = icmp sgt i64 %.sroa.010.sroa.11.0, -1
  br i1 %.not103, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread

bb.v:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext78 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift79 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext78, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext66 = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert68 = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift79, %.sroa.010.sroa.0.sroa.0.0.insert.ext66
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.w:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.95) #24
  unreachable

bb.x:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.95) #24
  unreachable

bb.y:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.95) #24
  unreachable

bb.z:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.95) #24
  unreachable

bb.aa:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.95) #24
  unreachable

bb.ab:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.95) #24
  unreachable

bb.ac:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.95) #24
  unreachable

bb.ad:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.95) #24
  unreachable

bb.ae:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.95) #24
  unreachable

bb.af:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.95) #24
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.u, %bb.r, %bb.s, %bb.t, %bb.v
  %.0.i = phi i64 [ %.sroa.010.sroa.0.sroa.0.0.insert.insert, %bb.t ], [ %.sroa.010.sroa.0.sroa.0.0.insert.insert71, %bb.u ], [ %.sroa.010.sroa.0.sroa.0.0.insert.insert68, %bb.v ], [ %i.bb, %bb.r ], [ %i.bc, %bb.s ] ; 2 uses
  %i.bd = icmp ugt i64 %.0.i, 2147483647
  br i1 %i.bd, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread: ; preds = %bb.u, %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.94) #24
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42: ; preds = %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  %.0.i44 = phi i64 [ %.0.i, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit ], [ %i.ba, %bb.q ]
  %i.be = trunc nuw nsw i64 %.0.i44 to i32
  store i32 %i.be, ptr %1, align 4, !tbaa !66
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsE(ptr %0, ptr %1, i64 %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.fmt::v12::basic_string_view", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %5 = alloca %class.anon.427, align 8            ; 6 uses
  %6 = alloca %class.anon.428, align 8            ; 6 uses
  store ptr %1, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.f = load i32, ptr %3, align 4, !tbaa !214
  %i.g = and i32 %i.f, 7
  %i.h = icmp eq i32 %i.g, 1                      ; 3 uses
  %i.i = zext i1 %i.h to i8
  store i8 %i.i, ptr %i.a, align 1, !tbaa !77
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !216  ; 3 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !226
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  br label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !48
  %i.r = add i64 %i.q, %2                         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !49
  %i.u = icmp ugt i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !50
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.r), !inline_history !16
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.c, %bb.d
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.x = tail call ptr @_ZN3fmt3v126detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE(ptr nonnull %0, ptr %1, i64 %2)
  br label %_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit

bb.f:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %.not31.i.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not31.i.i.i, label %_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit, label %.lr.ph34.i.i.i

.lr.ph34.i.i.i:                                   ; preds = %bb.f
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i.i.i = load i64, ptr %i.p, align 8, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph34.i.i.i
  %i.ab = phi i64 [ %.pre.i.i.i, %.lr.ph34.i.i.i ], [ %i.bh, %._crit_edge.i.i.i ] ; 3 uses
  %.02732.i.i.i = phi ptr [ %1, %.lr.ph34.i.i.i ], [ %i.bi, %._crit_edge.i.i.i ] ; 9 uses
  %i.ac = load i64, ptr %i.s, align 8, !tbaa !49
  %i.ad = sub i64 %i.ac, %i.ab
  %i.ae = ptrtoint ptr %.02732.i.i.i to i64       ; 2 uses
  %i.af = sub i64 %i.z, %i.ae                     ; 4 uses
  %i.ag = icmp ult i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !50
  %i.ai = add i64 %i.af, %i.ab
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ai), !inline_history !501
  %i.aj = load i64, ptr %i.p, align 8, !tbaa !48  ; 2 uses
  %i.ak = load i64, ptr %i.s, align 8, !tbaa !49
  %i.al = sub i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.af, i64 %i.al)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.026.i.i.i = phi i64 [ %i.aj, %bb.h ], [ %i.ab, %bb.g ] ; 3 uses
  %.025.i.i.i = phi i64 [ %i.am, %bb.h ], [ %i.af, %bb.g ] ; 13 uses
  %i.an = load ptr, ptr %0, align 8, !tbaa !212   ; 2 uses
  %i.ao = ptrtoaddr ptr %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %.026.i.i.i ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.025.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %.025.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aq = add i64 %.026.i.i.i, %i.ao
  %i.ar = sub i64 %i.ae, %i.aq
  %diff.check = icmp ugt i64 %i.ar, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check26 = icmp ult i64 %.025.i.i.i, 32
  br i1 %min.iters.check26, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %7 = and i64 %.025.i.i.i, 28
  %n.vec = and i64 %.025.i.i.i, -32               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <16 x i8>, ptr %i.as, align 1, !tbaa !43
  %wide.load27 = load <16 x i8>, ptr %i.at, align 1, !tbaa !43
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <16 x i8> %wide.load, ptr %i.au, align 1, !tbaa !43
  store <16 x i8> %wide.load27, ptr %i.av, align 1, !tbaa !43
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !502

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %7, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !229

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec28 = and i64 %.025.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index29 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next31, %vec.epilog.vector.body ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index29
  %wide.load30 = load <4 x i8>, ptr %i.ax, align 1, !tbaa !43
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index29
  store <4 x i8> %wide.load30, ptr %i.ay, align 1, !tbaa !43
  %index.next31 = add nuw i64 %index29, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next31, %n.vec28
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !503

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n32 = icmp eq i64 %.025.i.i.i, %n.vec28
  br i1 %cmp.n32, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec28, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.bd, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i.prol
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !43
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.030.i.i.i.prol
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !43
  %i.bd = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !504

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bd, %.lr.ph.i.i.i.prol ]
  %i.be = sub i64 %.030.i.i.i.ph, %.025.i.i.i
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i = load i64, ptr %i.p, align 8, !tbaa !48
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.i
  %i.bg = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.026.i.i.i, %bb.i ]
  %i.bh = add i64 %i.bg, %.025.i.i.i              ; 2 uses
  store i64 %i.bh, ptr %i.p, align 8, !tbaa !48
  %i.bi = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.025.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bi, %i.y
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit, label %bb.g, !llvm.loop !17

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.by, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !43
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.030.i.i.i
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !43
  %i.bm = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !43
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bm
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !43
  %i.bq = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !43
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bq
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !43
  %i.bu = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !43
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bu
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !43
  %i.by = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.by, %.025.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !505

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.bz = zext nneg i32 %i.k to i64
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j
  %i.ca = phi i64 [ %i.bz, %bb.j ], [ -1, %.thread ]
  store i64 %i.ca, ptr %i.b, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.cb = icmp ne i32 %i.k, 0
  %narrow = and i1 %i.h, %i.cb
  %.sink = zext i1 %narrow to i64                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i64 %.sink, ptr %i.c, align 8, !tbaa !40
  store i64 %.sink, ptr %i.d, align 8, !tbaa !40
  store ptr %i.a, ptr %5, align 8, !tbaa !232
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.c, ptr %i.cc, align 8, !tbaa !234
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.b, ptr %i.cd, align 8, !tbaa !234
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.d, ptr %i.ce, align 8, !tbaa !234
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %4, ptr %i.cf, align 8, !tbaa !236
  call void @_ZN3fmt3v126detail18for_each_codepointIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEUljNSB_IcEEE_EEvSG_S7_(ptr %1, i64 %2, ptr noundef nonnull byval(%class.anon.427) align 8 %5)
  %i.cg = load i64, ptr %i.d, align 8, !tbaa !40  ; 2 uses
  %i.ch = load i64, ptr %i.c, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.ci = load i8, ptr %i.a, align 1, !tbaa !77, !range !64, !noundef !65
  store i8 %i.ci, ptr %6, align 8, !tbaa !238
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.cg, ptr %i.cj, align 8, !tbaa !239
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !506
  %i.cl = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_TnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEEUlS5_E_EET1_SI_SG_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef %i.cg, i64 noundef %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit

_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.e, %bb.k
  %.sroa.019.1 = phi ptr [ %i.cl, %bb.k ], [ %i.x, %bb.e ], [ %0, %bb.f ], [ %0, %._crit_edge.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret ptr %.sroa.019.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZN3fmt3v126detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE(ptr %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::find_escape_result", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.c = add i64 %i.b, 1                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !49
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.c), !inline_history !18
  %.pre.i.i = load i64, ptr %i.a, align 8, !tbaa !48 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.a, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.c, %bb.a ], [ %.pre2.i.i, %bb.b ]
  %i.i = phi i64 [ %i.b, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.j = load ptr, ptr %0, align 8, !tbaa !212
  store i64 %.pre-phi.i.i, ptr %i.a, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  store i8 34, ptr %i.k, align 1, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = ptrtoint ptr %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %.sroa.022.0 = phi ptr [ %0, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ], [ %i.bv, %bb.g ] ; 7 uses
  %.0 = phi ptr [ %1, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ], [ %i.bu, %bb.g ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.l, ptr %3, align 8, !tbaa !241, !alias.scope !514
  store ptr null, ptr %i.m, align 8, !tbaa !242, !alias.scope !514
  store i32 0, ptr %i.n, align 8, !tbaa !243, !alias.scope !514
  %i.p = ptrtoint ptr %.0 to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_(ptr %.0, i64 %i.q, ptr nonnull align 8 %3)
  %i.r = load ptr, ptr %3, align 8, !tbaa !241    ; 3 uses
  %.not31.i.i = icmp eq ptr %.0, %i.r
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 16 ; 2 uses
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 24
  %.pre.i.i13 = load i64, ptr %i.s, align 8, !tbaa !48
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.w = phi i64 [ %.pre.i.i13, %.lr.ph34.i.i ], [ %i.bc, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %.0, %.lr.ph34.i.i ], [ %i.bd, %._crit_edge.i.i ] ; 9 uses
  %i.x = load i64, ptr %i.t, align 8, !tbaa !49
  %i.y = sub i64 %i.x, %i.w
  %i.z = ptrtoint ptr %.02732.i.i to i64          ; 2 uses
  %i.aa = sub i64 %i.u, %i.z                      ; 4 uses
  %i.ab = icmp ult i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !50
  %i.ad = add i64 %i.aa, %i.w
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.022.0, i64 noundef %i.ad), !inline_history !19
  %i.ae = load i64, ptr %i.s, align 8, !tbaa !48  ; 2 uses
  %i.af = load i64, ptr %i.t, align 8, !tbaa !49
  %i.ag = sub i64 %i.af, %i.ae
  %i.ah = call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ag)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.026.i.i = phi i64 [ %i.ae, %bb.e ], [ %i.w, %bb.d ] ; 3 uses
  %.025.i.i = phi i64 [ %i.ah, %bb.e ], [ %i.aa, %bb.d ] ; 13 uses
  %i.ai = load ptr, ptr %.sroa.022.0, align 8, !tbaa !212 ; 2 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.f
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.al = add i64 %.026.i.i, %i.aj
  %i.am = sub i64 %i.z, %i.al
  %diff.check = icmp ugt i64 %i.am, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check40 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %4 = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load = load <16 x i8>, ptr %i.an, align 1, !tbaa !43
  %wide.load41 = load <16 x i8>, ptr %i.ao, align 1, !tbaa !43
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <16 x i8> %wide.load, ptr %i.ap, align 1, !tbaa !43
  store <16 x i8> %wide.load41, ptr %i.aq, align 1, !tbaa !43
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !509

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %4, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !229

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index43
  %wide.load44 = load <4 x i8>, ptr %i.as, align 1, !tbaa !43
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index43
  store <4 x i8> %wide.load44, ptr %i.at, align 1, !tbaa !43
  %index.next45 = add nuw i64 %index43, 4         ; 2 uses
  %i.au = icmp eq i64 %index.next45, %n.vec42
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !510

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %.025.i.i, %n.vec42
  br i1 %cmp.n46, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec42, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.ay, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.av = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !43
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.030.i.i.prol
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !43
  %i.ay = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !511

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ay, %.lr.ph.i.i.prol ]
  %i.az = sub i64 %.030.i.i.ph, %.025.i.i
  %i.ba = icmp ugt i64 %i.az, -4
  br i1 %i.ba, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.s, align 8, !tbaa !48
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.f
  %i.bb = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.f ]
  %i.bc = add i64 %i.bb, %.025.i.i                ; 2 uses
  store i64 %i.bc, ptr %i.s, align 8, !tbaa !48
  %i.bd = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bd, %i.r
  br i1 %.not.i.i, label %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %bb.d, !llvm.loop !17

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.bt, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !43
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.030.i.i
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !43
  %i.bh = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !43
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bh
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !43
  %i.bl = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !43
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bl
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !43
  %i.bp = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !43
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bp
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !43
  %i.bt = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bt, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !512

_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit: ; preds = %._crit_edge.i.i, %bb.c
  %i.bu = load ptr, ptr %i.m, align 8, !tbaa !242 ; 3 uses
  %.not = icmp eq ptr %i.bu, null
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %.loopexit

bb.g:                                             ; preds = %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit
  %i.bv = call ptr @_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE(ptr %.sroa.022.0, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %.not12 = icmp eq ptr %i.bu, %i.l
  br i1 %.not12, label %.loopexit, label %bb.c, !llvm.loop !513

.loopexit:                                        ; preds = %bb.g, %.thread
  %.sroa.022.127 = phi ptr [ %.sroa.022.0, %.thread ], [ %i.bv, %bb.g ] ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.022.127, i64 8 ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !48 ; 2 uses
  %i.by = add i64 %i.bx, 1                        ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.022.127, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !49
  %i.cb = icmp ugt i64 %i.by, %i.ca
  br i1 %i.cb, label %bb.h, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit18

bb.h:                                             ; preds = %.loopexit
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.022.127, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !50
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.022.127, i64 noundef %i.by), !inline_history !18
  %.pre.i.i16 = load i64, ptr %i.bw, align 8, !tbaa !48 ; 2 uses
  %.pre2.i.i17 = add i64 %.pre.i.i16, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit18

_ZN3fmt3v1214basic_appenderIcEaSEc.exit18:        ; preds = %.loopexit, %bb.h
  %.pre-phi.i.i15 = phi i64 [ %i.by, %.loopexit ], [ %.pre2.i.i17, %bb.h ]
  %i.ce = phi i64 [ %i.bx, %.loopexit ], [ %.pre.i.i16, %bb.h ]
  %i.cf = load ptr, ptr %.sroa.022.127, align 8, !tbaa !212
  store i64 %.pre-phi.i.i15, ptr %i.bw, align 8, !tbaa !48
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ce
  store i8 34, ptr %i.cg, align 1, !tbaa !43
  ret ptr %.sroa.022.127
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3fmt3v126detail18for_each_codepointIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEUljNSB_IcEEE_EEvSG_S7_(ptr %0, i64 %1, ptr noundef byval(%class.anon.427) align 8 %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %3 = alloca %class.anon.432, align 8            ; 5 uses
  %i.b = alloca [7 x i8], align 1                 ; 11 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !521
  %i.d = icmp ugt i64 %1, 3
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -3
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.024 = phi ptr [ %0, %bb.b ], [ %i.bq, %bb.d ] ; 8 uses
  %.not30 = icmp ult ptr %.024, %i.f
  br i1 %.not30, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr %.024, align 1, !tbaa !43
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = lshr i32 %i.h, 3                         ; 2 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @.str.89, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !43
  %i.m = sext i8 %i.l to i64                      ; 6 uses
  %i.n = getelementptr inbounds i8, ptr %.024, i64 %i.m
  %.not.i.i = lshr i32 -2130771968, %i.i
  %i.o = and i32 %.not.i.i, 1
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.m
  %i.s = load i32, ptr %i.r, align 4, !tbaa !66
  %i.t = and i32 %i.s, %i.h
  %i.u = shl nuw nsw i32 %i.t, 18
  %i.v = getelementptr inbounds nuw i8, ptr %.024, i64 1 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !43    ; 2 uses
  %i.x = and i8 %i.w, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 12
  %i.aa = or disjoint i32 %i.z, %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %.024, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !43  ; 2 uses
  %i.ad = and i8 %i.ac, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 6
  %i.ag = or disjoint i32 %i.af, %i.aa
  %i.ah = getelementptr inbounds nuw i8, ptr %.024, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !43  ; 2 uses
  %i.aj = and i8 %i.ai, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ag, %i.ak
  %i.am = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.m
  %i.an = load i32, ptr %i.am, align 4, !tbaa !66
  %i.ao = lshr i32 %i.al, %i.an                   ; 4 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.m
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !66
  %i.ar = icmp ult i32 %i.ao, %i.aq
  %i.as = select i1 %i.ar, i32 64, i32 0
  %.mask.i.i = and i32 %i.ao, 2147481600
  %i.at = icmp eq i32 %.mask.i.i, 55296
  %i.au = select i1 %i.at, i32 128, i32 0
  %i.av = icmp samesign ugt i32 %i.ao, 1114111
  %i.aw = select i1 %i.av, i32 256, i32 0
  %i.ax = lshr i8 %i.w, 2
  %i.ay = and i8 %i.ax, 48
  %i.az = lshr i8 %i.ac, 4
  %i.ba = and i8 %i.az, 12
  %i.bb = lshr i8 %i.ai, 6
  %i.bc = or disjoint i8 %i.ba, %i.ay
  %i.bd = or disjoint i8 %i.bc, %i.bb
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.as, %i.be
  %i.bg = or disjoint i32 %i.bf, %i.aw
  %i.bh = or disjoint i32 %i.bg, %i.au
  %i.bi = xor i32 %i.bh, 42
  %i.bj = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 %i.m
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !66
  %i.bl = lshr i32 %i.bi, %i.bk
  %.not.i = icmp eq i32 %i.bl, 0                  ; 3 uses
  %i.bm = select i1 %.not.i, i32 %i.ao, i32 -1
  %i.bn = add nsw i64 %i.p, %i.m
  %i.bo = select i1 %.not.i, i64 %i.bn, i64 1
  %i.bp = call noundef zeroext i1 @_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUljNSA_IcEEE_clEjSF_(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.bm, ptr nonnull %.024, i64 %i.bo)
  %i.bq = select i1 %.not.i, ptr %i.q, ptr %i.v
  br i1 %i.bp, label %bb.c, label %.thread, !llvm.loop !515

.loopexit:                                        ; preds = %bb.c, %bb.a
  %.2 = phi ptr [ %0, %bb.a ], [ %.024, %bb.c ]   ; 8 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %.2 to i64                 ; 2 uses
  %i.bu = sub i64 %i.bs, %i.bt                    ; 8 uses
  %i.bv = icmp eq ptr %i.br, %.2
  br i1 %i.bv, label %.thread, label %iter.check

iter.check:                                       ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.bu, 8
  %i.bw = sub i64 %i.bt, %i.c
  %diff.check = icmp ugt i64 %i.bw, -32
  %or.cond61 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond61, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check48 = icmp ult i64 %i.bu, 32
  br i1 %min.iters.check48, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %4 = and i64 %i.bu, 24
  %n.vec = and i64 %i.bu, -32                     ; 5 uses
  %5 = getelementptr i8, ptr %i.b, i64 %n.vec
  %6 = getelementptr i8, ptr %.2, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %next.gep49 = getelementptr i8, ptr %.2, i64 %index ; 2 uses
  %i.bx = getelementptr i8, ptr %next.gep49, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep49, align 1, !tbaa !43
  %wide.load50 = load <16 x i8>, ptr %i.bx, align 1, !tbaa !43
  %i.by = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !43
  store <16 x i8> %wide.load50, ptr %i.by, align 1, !tbaa !43
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !516

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %4, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !244

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec52 = and i64 %i.bu, -8                    ; 4 uses
  %7 = getelementptr i8, ptr %i.b, i64 %n.vec52
  %8 = getelementptr i8, ptr %.2, i64 %n.vec52
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index53 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 3 uses
  %next.gep54 = getelementptr i8, ptr %i.b, i64 %index53
  %next.gep55 = getelementptr i8, ptr %.2, i64 %index53
  %wide.load56 = load <8 x i8>, ptr %next.gep55, align 1, !tbaa !43
  store <8 x i8> %wide.load56, ptr %next.gep54, align 1, !tbaa !43
  %index.next57 = add nuw i64 %index53, 8         ; 2 uses
  %i.ca = icmp eq i64 %index.next57, %n.vec52
  br i1 %i.ca, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !517

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n58 = icmp eq i64 %i.bu, %n.vec52
  br i1 %cmp.n58, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi ptr [ %i.b, %iter.check ], [ %5, %vec.epilog.iter.check ], [ %7, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.ph = phi ptr [ %.2, %iter.check ], [ %6, %vec.epilog.iter.check ], [ %8, %vec.epilog.middle.block ] ; 3 uses
  %i.cb = add i64 %1, %i.a                        ; 2 uses
  %.057.i.ph63 = ptrtoaddr ptr %.057.i.ph to i64  ; 2 uses
  %i.cc = sub i64 %i.cb, %.057.i.ph63
  %xtraiter = and i64 %i.cc, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.08.i.prol = phi ptr [ %i.cf, %.lr.ph.i.prol ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i.prol = phi ptr [ %i.cd, %.lr.ph.i.prol ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.057.i.prol, i64 1 ; 2 uses
  %i.ce = load i8, ptr %.057.i.prol, align 1, !tbaa !43
  %i.cf = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 2 uses
  store i8 %i.ce, ptr %.08.i.prol, align 1, !tbaa !43
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !518

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.08.i.unr = phi ptr [ %.08.i.ph, %.lr.ph.i.preheader ], [ %i.cf, %.lr.ph.i.prol ]
  %.057.i.unr = phi ptr [ %.057.i.ph, %.lr.ph.i.preheader ], [ %i.cd, %.lr.ph.i.prol ]
  %i.cg = sub i64 %.057.i.ph63, %i.cb
  %i.ch = icmp ugt i64 %i.cg, -8
  br i1 %i.ch, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.08.i = phi ptr [ %i.df, %.lr.ph.i ], [ %.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.057.i = phi ptr [ %i.dd, %.lr.ph.i ], [ %.057.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.057.i, i64 1
  %i.cj = load i8, ptr %.057.i, align 1, !tbaa !43
  %i.ck = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  store i8 %i.cj, ptr %.08.i, align 1, !tbaa !43
  %i.cl = getelementptr inbounds nuw i8, ptr %.057.i, i64 2
  %i.cm = load i8, ptr %i.ci, align 1, !tbaa !43
  %i.cn = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  store i8 %i.cm, ptr %i.ck, align 1, !tbaa !43
  %i.co = getelementptr inbounds nuw i8, ptr %.057.i, i64 3
  %i.cp = load i8, ptr %i.cl, align 1, !tbaa !43
  %i.cq = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  store i8 %i.cp, ptr %i.cn, align 1, !tbaa !43
  %i.cr = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  %i.cs = load i8, ptr %i.co, align 1, !tbaa !43
  %i.ct = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  store i8 %i.cs, ptr %i.cq, align 1, !tbaa !43
  %i.cu = getelementptr inbounds nuw i8, ptr %.057.i, i64 5
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !43
  %i.cw = getelementptr inbounds nuw i8, ptr %.08.i, i64 5
  store i8 %i.cv, ptr %i.ct, align 1, !tbaa !43
  %i.cx = getelementptr inbounds nuw i8, ptr %.057.i, i64 6
  %i.cy = load i8, ptr %i.cu, align 1, !tbaa !43
  %i.cz = getelementptr inbounds nuw i8, ptr %.08.i, i64 6
  store i8 %i.cy, ptr %i.cw, align 1, !tbaa !43
  %i.da = getelementptr inbounds nuw i8, ptr %.057.i, i64 7
  %i.db = load i8, ptr %i.cx, align 1, !tbaa !43
  %i.dc = getelementptr inbounds nuw i8, ptr %.08.i, i64 7
  store i8 %i.db, ptr %i.cz, align 1, !tbaa !43
  %i.dd = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %i.de = load i8, ptr %i.da, align 1, !tbaa !43
  %i.df = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  store i8 %i.de, ptr %i.dc, align 1, !tbaa !43
  %.not.i33.7 = icmp eq ptr %i.dd, %i.br
  br i1 %.not.i33.7, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i, !llvm.loop !519

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bu
  br label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit: ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit
  %.3 = phi ptr [ %.4, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit ], [ %.2, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader ] ; 2 uses
  %.0 = phi ptr [ %.1, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit ], [ %i.b, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader ] ; 7 uses
  %i.dh = load i8, ptr %.0, align 1, !tbaa !43
  %i.di = zext i8 %i.dh to i32                    ; 2 uses
  %i.dj = lshr i32 %i.di, 3                       ; 2 uses
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr @.str.89, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !43
  %i.dn = sext i8 %i.dm to i64                    ; 6 uses
  %i.do = getelementptr inbounds i8, ptr %.0, i64 %i.dn
  %.not.i.i34 = lshr i32 -2130771968, %i.dj
  %i.dp = and i32 %.not.i.i34, 1
  %i.dq = zext nneg i32 %i.dp to i64              ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dq
  %i.ds = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.dn
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !66
  %i.du = and i32 %i.dt, %i.di
  %i.dv = shl nuw nsw i32 %i.du, 18
  %i.dw = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !43  ; 2 uses
  %i.dy = and i8 %i.dx, 63
  %i.dz = zext nneg i8 %i.dy to i32
  %i.ea = shl nuw nsw i32 %i.dz, 12
  %i.eb = or disjoint i32 %i.ea, %i.dv
  %i.ec = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !43  ; 2 uses
  %i.ee = and i8 %i.ed, 63
  %i.ef = zext nneg i8 %i.ee to i32
  %i.eg = shl nuw nsw i32 %i.ef, 6
  %i.eh = or disjoint i32 %i.eg, %i.eb
  %i.ei = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !43  ; 2 uses
  %i.ek = and i8 %i.ej, 63
  %i.el = zext nneg i8 %i.ek to i32
  %i.em = or disjoint i32 %i.eh, %i.el
  %i.en = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.dn
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !66
  %i.ep = lshr i32 %i.em, %i.eo                   ; 4 uses
  %i.eq = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.dn
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !66
  %i.es = icmp ult i32 %i.ep, %i.er
  %i.et = select i1 %i.es, i32 64, i32 0
  %.mask.i.i35 = and i32 %i.ep, 2147481600
  %i.eu = icmp eq i32 %.mask.i.i35, 55296
  %i.ev = select i1 %i.eu, i32 128, i32 0
  %i.ew = icmp samesign ugt i32 %i.ep, 1114111
  %i.ex = select i1 %i.ew, i32 256, i32 0
  %i.ey = lshr i8 %i.dx, 2
  %i.ez = and i8 %i.ey, 48
  %i.fa = lshr i8 %i.ed, 4
  %i.fb = and i8 %i.fa, 12
  %i.fc = lshr i8 %i.ej, 6
  %i.fd = or disjoint i8 %i.fb, %i.ez
  %i.fe = or disjoint i8 %i.fd, %i.fc
  %i.ff = zext nneg i8 %i.fe to i32
  %i.fg = or disjoint i32 %i.et, %i.ff
  %i.fh = or disjoint i32 %i.fg, %i.ex
  %i.fi = or disjoint i32 %i.fh, %i.ev
  %i.fj = xor i32 %i.fi, 42
  %i.fk = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 %i.dn
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !66
  %i.fm = lshr i32 %i.fj, %i.fl
  %.not.i36 = icmp eq i32 %i.fm, 0                ; 3 uses
  %i.fn = select i1 %.not.i36, i32 %i.ep, i32 -1
  %i.fo = add nsw i64 %i.dq, %i.dn
  %i.fp = select i1 %.not.i36, i64 %i.fo, i64 1
  %i.fq = call noundef zeroext i1 @_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUljNSA_IcEEE_clEjSF_(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.fn, ptr %.3, i64 %i.fp) ; 3 uses
  %i.fr = select i1 %.not.i36, ptr %i.dr, ptr %i.dw ; 2 uses
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %.0 to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %.4.idx = select i1 %i.fq, i64 %i.fu, i64 0
  %.4 = getelementptr inbounds i8, ptr %.3, i64 %.4.idx
  %.1 = select i1 %i.fq, ptr %i.fr, ptr %.0       ; 2 uses
  %i.fv = icmp ult ptr %.1, %i.dg
  %or.cond = select i1 %i.fq, i1 %i.fv, i1 false
  br i1 %or.cond, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit, label %bb.e, !llvm.loop !520

bb.e:                                             ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_TnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEEUlS5_E_EET1_SI_SG_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !226
  %i.c = zext i32 %i.b to i64
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %3) ; 4 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !214    ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = and i32 %i.f, 7
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @.str.92, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !43
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.d, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !48
  %i.u = add i64 %i.t, %2
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !49
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !50
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v), !inline_history !16
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ab = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ab, %bb.c ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 8 uses
  %i.ac = load i8, ptr %4, align 8, !tbaa !238, !range !64, !noundef !65
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !239
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.01.0.copyload.i = load ptr, ptr %i.ag, align 8, !tbaa !59
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !40
  %i.ah = tail call { ptr, i64 } @_ZN3fmt3v126detail20write_escaped_stringIcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEE23bounded_output_iteratorEESA_SA_SC_(ptr %.sroa.09.0, i64 %i.af, ptr %.sroa.01.0.copyload.i, i64 %.sroa.2.0.copyload.i)
  %i.ai = extractvalue { ptr, i64 } %i.ah, 0
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit

bb.f:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !218 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !239 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.am ; 2 uses
  %.not31.i.i.i = icmp samesign eq i64 %i.am, 0
  br i1 %.not31.i.i.i, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit, label %.lr.ph34.i.i.i

.lr.ph34.i.i.i:                                   ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16 ; 2 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %.pre.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph34.i.i.i
  %i.as = phi i64 [ %.pre.i.i.i, %.lr.ph34.i.i.i ], [ %i.by, %._crit_edge.i.i.i ] ; 3 uses
  %.02732.i.i.i = phi ptr [ %i.ak, %.lr.ph34.i.i.i ], [ %i.bz, %._crit_edge.i.i.i ] ; 9 uses
  %i.at = load i64, ptr %i.ap, align 8, !tbaa !49
  %i.au = sub i64 %i.at, %i.as
  %i.av = ptrtoint ptr %.02732.i.i.i to i64       ; 2 uses
  %i.aw = sub i64 %i.aq, %i.av                    ; 4 uses
  %i.ax = icmp ult i64 %i.au, %i.aw
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr %i.ar, align 8, !tbaa !50
  %i.az = add i64 %i.aw, %i.as
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.az), !inline_history !522
  %i.ba = load i64, ptr %i.ao, align 8, !tbaa !48 ; 2 uses
  %i.bb = load i64, ptr %i.ap, align 8, !tbaa !49
  %i.bc = sub i64 %i.bb, %i.ba
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.bc)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.026.i.i.i = phi i64 [ %i.ba, %bb.h ], [ %i.as, %bb.g ] ; 3 uses
  %.025.i.i.i = phi i64 [ %i.bd, %bb.h ], [ %i.aw, %bb.g ] ; 13 uses
  %i.be = load ptr, ptr %.sroa.09.0, align 8, !tbaa !212 ; 2 uses
  %i.bf = ptrtoaddr ptr %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %.026.i.i.i ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.025.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %.025.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bh = add i64 %.026.i.i.i, %i.bf
  %i.bi = sub i64 %i.av, %i.bh
  %diff.check = icmp ugt i64 %i.bi, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check35 = icmp ult i64 %.025.i.i.i, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %5 = and i64 %.025.i.i.i, 28
  %n.vec = and i64 %.025.i.i.i, -32               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %wide.load = load <16 x i8>, ptr %i.bj, align 1, !tbaa !43
  %wide.load36 = load <16 x i8>, ptr %i.bk, align 1, !tbaa !43
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <16 x i8> %wide.load, ptr %i.bl, align 1, !tbaa !43
  store <16 x i8> %wide.load36, ptr %i.bm, align 1, !tbaa !43
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !523

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %5, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !229

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %.025.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index38
  %wide.load39 = load <4 x i8>, ptr %i.bo, align 1, !tbaa !43
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 %index38
  store <4 x i8> %wide.load39, ptr %i.bp, align 1, !tbaa !43
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.bq = icmp eq i64 %index.next40, %n.vec37
  br i1 %i.bq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !524

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %.025.i.i.i, %n.vec37
  br i1 %cmp.n41, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec37, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.bu, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.br = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i.prol
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !43
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.030.i.i.i.prol
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !43
  %i.bu = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !525

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bu, %.lr.ph.i.i.i.prol ]
  %i.bv = sub i64 %.030.i.i.i.ph, %.025.i.i.i
  %i.bw = icmp ugt i64 %i.bv, -4
  br i1 %i.bw, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !48
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.i
  %i.bx = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.026.i.i.i, %bb.i ]
  %i.by = add i64 %i.bx, %.025.i.i.i              ; 2 uses
  store i64 %i.by, ptr %i.ao, align 8, !tbaa !48
  %i.bz = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.025.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bz, %i.an
  br i1 %.not.i.i.i, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit, label %bb.g, !llvm.loop !17

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.cp, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !43
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.030.i.i.i
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !43
  %i.cd = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !43
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cd
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !43
  %i.ch = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !43
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ch
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !43
  %i.cl = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !43
  %i.co = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cl
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !43
  %i.cp = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.cp, %.025.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !526

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %.sroa.06.0.i = phi ptr [ %i.ai, %bb.e ], [ %.sroa.09.0, %bb.f ], [ %.sroa.09.0, %._crit_edge.i.i.i ] ; 2 uses
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %i.cq = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %.sroa.06.0.i, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %.sroa.09.1 = phi ptr [ %i.cq, %bb.j ], [ %.sroa.06.0.i, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE(ptr %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !243  ; 8 uses
  switch i32 %i.b, label %bb.j [
    i32 10, label %bb.b
    i32 13, label %bb.d
    i32 9, label %bb.f
    i32 34, label %bb.h
    i32 39, label %bb.h
    i32 92, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !48   ; 2 uses
  %i.e = add i64 %i.d, 1                          ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !49
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e), !inline_history !18
  %.pre.i.i = load i64, ptr %i.c, align 8, !tbaa !48 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.e, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.k = phi i64 [ %i.d, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !212
  store i64 %.pre-phi.i.i, ptr %i.c, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  store i8 92, ptr %i.m, align 1, !tbaa !43
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !48   ; 2 uses
  %i.p = add i64 %i.o, 1                          ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !49
  %i.s = icmp ugt i64 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit30

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.p), !inline_history !18
  %.pre.i.i28 = load i64, ptr %i.n, align 8, !tbaa !48 ; 2 uses
  %.pre2.i.i29 = add i64 %.pre.i.i28, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit30

_ZN3fmt3v1214basic_appenderIcEaSEc.exit30:        ; preds = %bb.d, %bb.e
  %.pre-phi.i.i27 = phi i64 [ %i.p, %bb.d ], [ %.pre2.i.i29, %bb.e ]
  %i.v = phi i64 [ %i.o, %bb.d ], [ %.pre.i.i28, %bb.e ]
  %i.w = load ptr, ptr %0, align 8, !tbaa !212
  store i64 %.pre-phi.i.i27, ptr %i.n, align 8, !tbaa !48
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store i8 92, ptr %i.x, align 1, !tbaa !43
  br label %bb.q

bb.f:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !48   ; 2 uses
  %i.aa = add i64 %i.z, 1                         ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !49
  %i.ad = icmp ugt i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit35

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !50
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aa), !inline_history !18
  %.pre.i.i33 = load i64, ptr %i.y, align 8, !tbaa !48 ; 2 uses
  %.pre2.i.i34 = add i64 %.pre.i.i33, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit35

_ZN3fmt3v1214basic_appenderIcEaSEc.exit35:        ; preds = %bb.f, %bb.g
  %.pre-phi.i.i32 = phi i64 [ %i.aa, %bb.f ], [ %.pre2.i.i34, %bb.g ]
  %i.ag = phi i64 [ %i.z, %bb.f ], [ %.pre.i.i33, %bb.g ]
  %i.ah = load ptr, ptr %0, align 8, !tbaa !212
  store i64 %.pre-phi.i.i32, ptr %i.y, align 8, !tbaa !48
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  store i8 92, ptr %i.ai, align 1, !tbaa !43
  br label %bb.q

bb.h:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.aj = trunc nuw nsw i32 %i.b to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !48 ; 2 uses
  %i.am = add i64 %i.al, 1                        ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !49
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE:bb.a
  %i.aw = tail call ptr @_ZN3fmt3v126detail15write_codepointILm2EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext 120, i32 noundef %i.b)
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.ax = icmp ult i32 %i.b, 65536
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = tail call ptr @_ZN3fmt3v126detail15write_codepointILm4EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext 117, i32 noundef %i.b)
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.az = icmp ult i32 %i.b, 1114112
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ba = tail call ptr @_ZN3fmt3v126detail15write_codepointILm8EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext 85, i32 noundef %i.b)
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %1, align 8, !tbaa !241   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !242 ; 2 uses
  %.not53 = icmp eq ptr %i.bb, %i.bd
  br i1 %.not53, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %.lr.ph
  %.02455 = phi ptr [ %i.bh, %.lr.ph ], [ %i.bb, %bb.p ] ; 2 uses
  %.sroa.052.054 = phi ptr [ %i.bg, %.lr.ph ], [ %0, %bb.p ]
  %i.be = load i8, ptr %.02455, align 1, !tbaa !43
  %i.bf = zext i8 %i.be to i32
  %i.bg = tail call ptr @_ZN3fmt3v126detail15write_codepointILm2EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %.sroa.052.054, i8 noundef signext 120, i32 noundef %i.bf) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02455, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.bh, %i.bd
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.q:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit40, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit35, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit30, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %.0 = phi i8 [ 110, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ], [ 114, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit30 ], [ 116, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit35 ], [ %i.aj, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit40 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !48 ; 2 uses
  %i.bk = add i64 %i.bj, 1                        ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !49
  %i.bn = icmp ugt i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.r, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit45

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !50
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bk), !inline_history !18
  %.pre.i.i43 = load i64, ptr %i.bi, align 8, !tbaa !48 ; 2 uses
  %.pre2.i.i44 = add i64 %.pre.i.i43, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit45

_ZN3fmt3v1214basic_appenderIcEaSEc.exit45:        ; preds = %bb.q, %bb.r
  %.pre-phi.i.i42 = phi i64 [ %i.bk, %bb.q ], [ %.pre2.i.i44, %bb.r ]
  %i.bq = phi i64 [ %i.bj, %bb.q ], [ %.pre.i.i43, %bb.r ]
  %i.br = load ptr, ptr %0, align 8, !tbaa !212
  store i64 %.pre-phi.i.i42, ptr %i.bi, align 8, !tbaa !48
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bq
  store i8 %.0, ptr %i.bs, align 1, !tbaa !43
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.p, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit45, %bb.o, %bb.m, %bb.k
  %.sroa.022.0 = phi ptr [ %i.aw, %bb.k ], [ %i.ay, %bb.m ], [ %i.ba, %bb.o ], [ %0, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit45 ], [ %0, %bb.p ], [ %i.bg, %.lr.ph ]
  ret ptr %.sroa.022.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_(ptr %0, i64 %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca [7 x i8], align 1                 ; 11 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = icmp ugt i64 %1, 3
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 %1
  %i.f = getelementptr i8, ptr %i.e, i64 -3
  %.not3054 = icmp sgt i64 %1, 3
  br i1 %.not3054, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit
  %.02455 = phi ptr [ %i.bs, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit ], [ %0, %bb.b ] ; 7 uses
  %i.g = load i8, ptr %.02455, align 1, !tbaa !43
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = lshr i32 %i.h, 3                         ; 2 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @.str.89, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !43
  %i.m = sext i8 %i.l to i64                      ; 6 uses
  %i.n = getelementptr inbounds i8, ptr %.02455, i64 %i.m
  %.not.i.i = lshr i32 -2130771968, %i.i
  %i.o = and i32 %.not.i.i, 1
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.m
  %i.s = load i32, ptr %i.r, align 4, !tbaa !66
  %i.t = and i32 %i.s, %i.h
  %i.u = shl nuw nsw i32 %i.t, 18
  %i.v = getelementptr inbounds nuw i8, ptr %.02455, i64 1 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !43    ; 2 uses
  %i.x = and i8 %i.w, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 12
  %i.aa = or disjoint i32 %i.z, %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %.02455, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !43  ; 2 uses
  %i.ad = and i8 %i.ac, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 6
  %i.ag = or disjoint i32 %i.af, %i.aa
  %i.ah = getelementptr inbounds nuw i8, ptr %.02455, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !43  ; 2 uses
  %i.aj = and i8 %i.ai, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ag, %i.ak
  %i.am = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.m
  %i.an = load i32, ptr %i.am, align 4, !tbaa !66
  %i.ao = lshr i32 %i.al, %i.an                   ; 4 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.m
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !66
  %i.ar = icmp ult i32 %i.ao, %i.aq
  %i.as = select i1 %i.ar, i32 64, i32 0
  %.mask.i.i = and i32 %i.ao, 2147481600
  %i.at = icmp eq i32 %.mask.i.i, 55296
  %i.au = select i1 %i.at, i32 128, i32 0
  %i.av = icmp samesign ugt i32 %i.ao, 1114111
  %i.aw = select i1 %i.av, i32 256, i32 0
  %i.ax = lshr i8 %i.w, 2
  %i.ay = and i8 %i.ax, 48
  %i.az = lshr i8 %i.ac, 4
  %i.ba = and i8 %i.az, 12
  %i.bb = lshr i8 %i.ai, 6
  %i.bc = or disjoint i8 %i.ba, %i.ay
  %i.bd = or disjoint i8 %i.bc, %i.bb
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.as, %i.be
  %i.bg = or disjoint i32 %i.bf, %i.aw
  %i.bh = or disjoint i32 %i.bg, %i.au
  %i.bi = xor i32 %i.bh, 42
  %i.bj = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 %i.m
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !66
  %i.bl = lshr i32 %i.bi, %i.bk
  %.not.i = icmp eq i32 %i.bl, 0                  ; 3 uses
  %i.bm = select i1 %.not.i, i32 %i.ao, i32 -1    ; 4 uses
  %i.bn = icmp ult i32 %i.bm, 32
  br i1 %i.bn, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %.lr.ph
  switch i32 %i.bm, label %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i [
    i32 127, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
    i32 92, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
    i32 34, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
  ]

_ZN3fmt3v126detail12needs_escapeEj.exit.i.i:      ; preds = %switch.early.test.i.i.i
  %i.bo = tail call noundef zeroext i1 @_ZN3fmt3v126detail12is_printableEj(i32 noundef %i.bm)
  br i1 %i.bo, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread

_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread: ; preds = %.lr.ph, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i
  %i.bp = add nsw i64 %i.p, %i.m
  %i.bq = select i1 %.not.i, i64 %i.bp, i64 1
  %i.br = getelementptr inbounds nuw i8, ptr %.02455, i64 %i.bq
  store ptr %.02455, ptr %2, align 8, !tbaa !59
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.br, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !59
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.bm, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !66
  br label %.thread

_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit: ; preds = %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i
  %i.bs = select i1 %.not.i, ptr %i.q, ptr %i.v   ; 3 uses
  %.not30 = icmp ult ptr %i.bs, %i.f
  br i1 %.not30, label %.lr.ph, label %.loopexit, !llvm.loop !527

.loopexit:                                        ; preds = %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit, %bb.b, %bb.a
  %.2 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %i.bs, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit ] ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %.2 to i64                 ; 2 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 8 uses
  %i.bx = icmp eq ptr %i.bt, %.2
  br i1 %i.bx, label %.thread, label %iter.check

iter.check:                                       ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.bw, 8
  %i.by = sub i64 %i.bv, %i.c
  %diff.check = icmp ugt i64 %i.by, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check107 = icmp ult i64 %i.bw, 32
  br i1 %min.iters.check107, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %3 = and i64 %i.bw, 24
  %n.vec = and i64 %i.bw, -32                     ; 5 uses
  %4 = getelementptr i8, ptr %i.b, i64 %n.vec
  %5 = getelementptr i8, ptr %.2, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %next.gep108 = getelementptr i8, ptr %.2, i64 %index ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep108, align 1, !tbaa !43
  %wide.load109 = load <16 x i8>, ptr %i.bz, align 1, !tbaa !43
  %i.ca = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !43
  store <16 x i8> %wide.load109, ptr %i.ca, align 1, !tbaa !43
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !528

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %3, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !244

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec111 = and i64 %i.bw, -8                   ; 4 uses
  %6 = getelementptr i8, ptr %i.b, i64 %n.vec111
  %7 = getelementptr i8, ptr %.2, i64 %n.vec111
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index112 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next116, %vec.epilog.vector.body ] ; 3 uses
  %next.gep113 = getelementptr i8, ptr %i.b, i64 %index112
  %next.gep114 = getelementptr i8, ptr %.2, i64 %index112
  %wide.load115 = load <8 x i8>, ptr %next.gep114, align 1, !tbaa !43
  store <8 x i8> %wide.load115, ptr %next.gep113, align 1, !tbaa !43
  %index.next116 = add nuw i64 %index112, 8       ; 2 uses
  %i.cc = icmp eq i64 %index.next116, %n.vec111
  br i1 %i.cc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !529

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n117 = icmp eq i64 %i.bw, %n.vec111
  br i1 %cmp.n117, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi ptr [ %i.b, %iter.check ], [ %4, %vec.epilog.iter.check ], [ %6, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.ph = phi ptr [ %.2, %iter.check ], [ %5, %vec.epilog.iter.check ], [ %7, %vec.epilog.middle.block ] ; 3 uses
  %i.cd = add i64 %1, %i.a                        ; 2 uses
  %.057.i.ph136 = ptrtoaddr ptr %.057.i.ph to i64 ; 2 uses
  %i.ce = sub i64 %i.cd, %.057.i.ph136
  %xtraiter = and i64 %i.ce, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.08.i.prol = phi ptr [ %i.ch, %.lr.ph.i.prol ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i.prol = phi ptr [ %i.cf, %.lr.ph.i.prol ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.057.i.prol, i64 1 ; 2 uses
  %i.cg = load i8, ptr %.057.i.prol, align 1, !tbaa !43
  %i.ch = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 2 uses
  store i8 %i.cg, ptr %.08.i.prol, align 1, !tbaa !43
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !530

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.08.i.unr = phi ptr [ %.08.i.ph, %.lr.ph.i.preheader ], [ %i.ch, %.lr.ph.i.prol ]
  %.057.i.unr = phi ptr [ %.057.i.ph, %.lr.ph.i.preheader ], [ %i.cf, %.lr.ph.i.prol ]
  %i.ci = sub i64 %.057.i.ph136, %i.cd
  %i.cj = icmp ugt i64 %i.ci, -8
  br i1 %i.cj, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.08.i = phi ptr [ %i.dh, %.lr.ph.i ], [ %.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.057.i = phi ptr [ %i.df, %.lr.ph.i ], [ %.057.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.057.i, i64 1
  %i.cl = load i8, ptr %.057.i, align 1, !tbaa !43
  %i.cm = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  store i8 %i.cl, ptr %.08.i, align 1, !tbaa !43
  %i.cn = getelementptr inbounds nuw i8, ptr %.057.i, i64 2
  %i.co = load i8, ptr %i.ck, align 1, !tbaa !43
  %i.cp = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  store i8 %i.co, ptr %i.cm, align 1, !tbaa !43
  %i.cq = getelementptr inbounds nuw i8, ptr %.057.i, i64 3
  %i.cr = load i8, ptr %i.cn, align 1, !tbaa !43
  %i.cs = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  store i8 %i.cr, ptr %i.cp, align 1, !tbaa !43
  %i.ct = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  %i.cu = load i8, ptr %i.cq, align 1, !tbaa !43
  %i.cv = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  store i8 %i.cu, ptr %i.cs, align 1, !tbaa !43
  %i.cw = getelementptr inbounds nuw i8, ptr %.057.i, i64 5
  %i.cx = load i8, ptr %i.ct, align 1, !tbaa !43
  %i.cy = getelementptr inbounds nuw i8, ptr %.08.i, i64 5
  store i8 %i.cx, ptr %i.cv, align 1, !tbaa !43
  %i.cz = getelementptr inbounds nuw i8, ptr %.057.i, i64 6
  %i.da = load i8, ptr %i.cw, align 1, !tbaa !43
  %i.db = getelementptr inbounds nuw i8, ptr %.08.i, i64 6
  store i8 %i.da, ptr %i.cy, align 1, !tbaa !43
  %i.dc = getelementptr inbounds nuw i8, ptr %.057.i, i64 7
  %i.dd = load i8, ptr %i.cz, align 1, !tbaa !43
  %i.de = getelementptr inbounds nuw i8, ptr %.08.i, i64 7
  store i8 %i.dd, ptr %i.db, align 1, !tbaa !43
  %i.df = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %i.dg = load i8, ptr %i.dc, align 1, !tbaa !43
  %i.dh = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  store i8 %i.dg, ptr %i.de, align 1, !tbaa !43
  %.not.i33.7 = icmp eq ptr %i.df, %i.bt
  br i1 %.not.i33.7, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i, !llvm.loop !531

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.sroa.4.0..sroa_idx.i.i39 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx.i.i40 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bw
  br label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit: ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42
  %.3 = phi ptr [ %.4, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42 ], [ %.2, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader ] ; 3 uses
  %.0 = phi ptr [ %i.fv, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42 ], [ %i.b, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader ] ; 6 uses
  %i.dj = load i8, ptr %.0, align 1, !tbaa !43
  %i.dk = zext i8 %i.dj to i32                    ; 2 uses
  %i.dl = lshr i32 %i.dk, 3                       ; 2 uses
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr @.str.89, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !43
  %i.dp = sext i8 %i.do to i64                    ; 6 uses
  %i.dq = getelementptr inbounds i8, ptr %.0, i64 %i.dp
  %.not.i.i34 = lshr i32 -2130771968, %i.dl
  %i.dr = and i32 %.not.i.i34, 1
  %i.ds = zext nneg i32 %i.dr to i64              ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ds
  %i.du = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.dp
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !66
  %i.dw = and i32 %i.dv, %i.dk
  %i.dx = shl nuw nsw i32 %i.dw, 18
  %i.dy = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !43  ; 2 uses
  %i.ea = and i8 %i.dz, 63
  %i.eb = zext nneg i8 %i.ea to i32
  %i.ec = shl nuw nsw i32 %i.eb, 12
  %i.ed = or disjoint i32 %i.ec, %i.dx
  %i.ee = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !43  ; 2 uses
  %i.eg = and i8 %i.ef, 63
  %i.eh = zext nneg i8 %i.eg to i32
  %i.ei = shl nuw nsw i32 %i.eh, 6
  %i.ej = or disjoint i32 %i.ei, %i.ed
  %i.ek = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !43  ; 2 uses
  %i.em = and i8 %i.el, 63
  %i.en = zext nneg i8 %i.em to i32
  %i.eo = or disjoint i32 %i.ej, %i.en
  %i.ep = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.dp
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !66
  %i.er = lshr i32 %i.eo, %i.eq                   ; 4 uses
  %i.es = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.dp
  %i.et = load i32, ptr %i.es, align 4, !tbaa !66
  %i.eu = icmp ult i32 %i.er, %i.et
  %i.ev = select i1 %i.eu, i32 64, i32 0
  %.mask.i.i35 = and i32 %i.er, 2147481600
  %i.ew = icmp eq i32 %.mask.i.i35, 55296
  %i.ex = select i1 %i.ew, i32 128, i32 0
  %i.ey = icmp samesign ugt i32 %i.er, 1114111
  %i.ez = select i1 %i.ey, i32 256, i32 0
  %i.fa = lshr i8 %i.dz, 2
  %i.fb = and i8 %i.fa, 48
  %i.fc = lshr i8 %i.ef, 4
  %i.fd = and i8 %i.fc, 12
  %i.fe = lshr i8 %i.el, 6
  %i.ff = or disjoint i8 %i.fd, %i.fb
  %i.fg = or disjoint i8 %i.ff, %i.fe
  %i.fh = zext nneg i8 %i.fg to i32
  %i.fi = or disjoint i32 %i.ev, %i.fh
  %i.fj = or disjoint i32 %i.fi, %i.ez
  %i.fk = or disjoint i32 %i.fj, %i.ex
  %i.fl = xor i32 %i.fk, 42
  %i.fm = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 %i.dp
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !66
  %i.fo = lshr i32 %i.fl, %i.fn
  %.not.i36 = icmp eq i32 %i.fo, 0                ; 3 uses
  %i.fp = select i1 %.not.i36, i32 %i.er, i32 -1  ; 4 uses
  %i.fq = icmp ult i32 %i.fp, 32
  br i1 %i.fq, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread, label %switch.early.test.i.i.i37

switch.early.test.i.i.i37:                        ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit
  switch i32 %i.fp, label %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i41 [
    i32 127, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread
    i32 92, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread
    i32 34, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread
  ]

_ZN3fmt3v126detail12needs_escapeEj.exit.i.i41:    ; preds = %switch.early.test.i.i.i37
  %i.fr = call noundef zeroext i1 @_ZN3fmt3v126detail12is_printableEj(i32 noundef %i.fp)
  br i1 %i.fr, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread

_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread: ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit, %switch.early.test.i.i.i37, %switch.early.test.i.i.i37, %switch.early.test.i.i.i37, %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i41
  %i.fs = add nsw i64 %i.ds, %i.dp
  %i.ft = select i1 %.not.i36, i64 %i.fs, i64 1
  %i.fu = getelementptr inbounds nuw i8, ptr %.3, i64 %i.ft
  store ptr %.3, ptr %2, align 8, !tbaa !59
  store ptr %i.fu, ptr %.sroa.4.0..sroa_idx.i.i39, align 8, !tbaa !59
  store i32 %i.fp, ptr %.sroa.5.0..sroa_idx.i.i40, align 8, !tbaa !66
  br label %.loopexit75

_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42: ; preds = %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i41
  %i.fv = select i1 %.not.i36, ptr %i.dt, ptr %i.dy ; 3 uses
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = ptrtoint ptr %.0 to i64
  %i.fy = sub i64 %i.fw, %i.fx
  %.4 = getelementptr inbounds i8, ptr %.3, i64 %i.fy
  %i.fz = icmp ult ptr %i.fv, %i.di
  br i1 %i.fz, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit, label %.loopexit75, !llvm.loop !532

.loopexit75:                                      ; preds = %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %.thread

.thread:                                          ; preds = %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread, %.loopexit75, %.loopexit
  ret void
}

declare noundef zeroext i1 @_ZN3fmt3v126detail12is_printableEj(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZN3fmt3v126detail15write_codepointILm2EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %i.d = add i64 %i.c, 1                          ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !49
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d), !inline_history !18
  %.pre.i.i = load i64, ptr %i.b, align 8, !tbaa !48 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUljNSA_IcEEE_clEjSF_:bb.a
  %i.be = icmp ult <8 x i32> %i.bd, <i32 11172, i32 512, i32 10, i32 64, i32 97, i32 7, i32 65534, i32 848>
  %i.bf = bitcast <8 x i1> %i.be to i8
  %i.bg = icmp ne i8 %i.bf, 0
  %op.rdx = or i1 %i.bg, %or.cond7.i
  br i1 %op.rdx, label %_ZN3fmt3v126detail16display_width_ofEj.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = and i32 %1, -256
  %i.bi = icmp eq i32 %i.bh, 129280
  %i.bj = select i1 %i.bi, i64 2, i64 1
  br label %_ZN3fmt3v126detail16display_width_ofEj.exit

_ZN3fmt3v126detail16display_width_ofEj.exit:      ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %i.bk = phi i64 [ 1, %bb.h ], [ 2, %bb.j ], [ 2, %bb.i ], [ %i.bj, %bb.k ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !535, !nonnull !65, !align !168 ; 4 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !40
  %i.bo = add i64 %i.bn, %i.bk                    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !536, !nonnull !65, !align !168 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !40
  %.not.not = icmp ugt i64 %i.bo, %i.br
  br i1 %.not.not, label %bb.p, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v126detail16display_width_ofEj.exit
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !40
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !537, !nonnull !65, !align !168 ; 4 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !40
  %i.bv = add i64 %i.bu, %3
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !40
  %i.bw = load ptr, ptr %0, align 8, !tbaa !534, !nonnull !65
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !77, !range !64, !noundef !65
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bz = load i64, ptr %i.bm, align 8, !tbaa !40 ; 2 uses
  %i.ca = load i64, ptr %i.bq, align 8, !tbaa !40
  %i.cb = icmp ult i64 %i.bz, %i.ca
  br i1 %i.cb, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !538, !nonnull !65, !align !168 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !218
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !219
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ch
  %i.cj = icmp eq ptr %i.cc, %i.ci
  br i1 %i.cj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ck = add nuw i64 %i.bz, 1
  store i64 %i.ck, ptr %i.bm, align 8, !tbaa !40
  %i.cl = load i64, ptr %i.bt, align 8, !tbaa !40
  %i.cm = add i64 %i.cl, 1
  store i64 %i.cm, ptr %i.bt, align 8, !tbaa !40
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %_ZN3fmt3v126detail16display_width_ofEj.exit, %bb.g
  %.2 = phi i1 [ %.not12, %bb.g ], [ false, %_ZN3fmt3v126detail16display_width_ofEj.exit ], [ true, %bb.l ], [ true, %bb.m ], [ true, %bb.n ], [ true, %bb.o ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3fmt3v126detail15counting_bufferIcE4growERNS1_6bufferIcEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48
  %.not = icmp eq i64 %i.b, 256
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !246
  %i.e = add i64 %i.d, 256
  store i64 %i.e, ptr %i.c, align 8, !tbaa !246
  store i64 0, ptr %i.a, align 8, !tbaa !48
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #16 comdat {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !214
  %i.b = lshr i32 %i.a, 15
  %i.c = and i32 %i.b, 7                          ; 3 uses
  %i.d = zext nneg i32 %i.c to i64
  %i.e = icmp eq i32 %i.c, 1
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr %i.f, align 4, !tbaa !43
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i64 [ 0, %.lr.ph.i ], [ %i.s, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  %i.k = load i64, ptr %i.h, align 8, !tbaa !48   ; 2 uses
  %i.l = add i64 %i.k, 1                          ; 3 uses
  %i.m = load i64, ptr %i.i, align 8, !tbaa !49
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.d, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !50
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l), !inline_history !539
  %.pre.i.i.i = load i64, ptr %i.h, align 8, !tbaa !48 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.d, %bb.c
  %.pre-phi.i.i.i = phi i64 [ %i.l, %bb.c ], [ %.pre2.i.i.i, %bb.d ]
  %i.p = phi i64 [ %i.k, %bb.c ], [ %.pre.i.i.i, %bb.d ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !212
  store i64 %.pre-phi.i.i.i, ptr %i.h, align 8, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i8 %i.g, ptr %i.r, align 1, !tbaa !43
  %i.s = add nuw i64 %.04.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %1
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %bb.c, !llvm.loop !540

bb.e:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d ; 2 uses
  %.not31.i.i = icmp eq i32 %i.c, 0
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph34.i.i.preheader

.lr.ph34.i.i.preheader:                           ; preds = %.lr.ph
  %.pre.i.i.pre = load i64, ptr %i.u, align 8, !tbaa !48
  br label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %.lr.ph34.i.i.preheader, %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit
  %.pre.i.i = phi i64 [ %i.be, %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit ], [ %.pre.i.i.pre, %.lr.ph34.i.i.preheader ]
  %.018 = phi i64 [ %i.bw, %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit ], [ 0, %.lr.ph34.i.i.preheader ]
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.y = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.be, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %i.f, %.lr.ph34.i.i ], [ %i.bf, %._crit_edge.i.i ] ; 9 uses
  %i.z = load i64, ptr %i.v, align 8, !tbaa !49
  %i.aa = sub i64 %i.z, %i.y
  %i.ab = ptrtoint ptr %.02732.i.i to i64         ; 2 uses
  %i.ac = sub i64 %i.w, %i.ab                     ; 4 uses
  %i.ad = icmp ult i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !50
  %i.af = add i64 %i.ac, %i.y
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.af), !inline_history !19
  %i.ag = load i64, ptr %i.u, align 8, !tbaa !48  ; 2 uses
  %i.ah = load i64, ptr %i.v, align 8, !tbaa !49
  %i.ai = sub i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ai)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.026.i.i = phi i64 [ %i.ag, %bb.g ], [ %i.y, %bb.f ] ; 3 uses
  %.025.i.i = phi i64 [ %i.aj, %bb.g ], [ %i.ac, %bb.f ] ; 13 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !212   ; 2 uses
  %i.al = ptrtoaddr ptr %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.h
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.an = add i64 %.026.i.i, %i.al
  %i.ao = sub i64 %i.ab, %i.an
  %diff.check = icmp ugt i64 %i.ao, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check31 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %3 = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load = load <16 x i8>, ptr %i.ap, align 1, !tbaa !43
  %wide.load32 = load <16 x i8>, ptr %i.aq, align 1, !tbaa !43
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <16 x i8> %wide.load, ptr %i.ar, align 1, !tbaa !43
  store <16 x i8> %wide.load32, ptr %i.as, align 1, !tbaa !43
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !541

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %3, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !229

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec33 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index34
  %wide.load35 = load <4 x i8>, ptr %i.au, align 1, !tbaa !43
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 %index34
  store <4 x i8> %wide.load35, ptr %i.av, align 1, !tbaa !43
  %index.next36 = add nuw i64 %index34, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next36, %n.vec33
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !542

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n37 = icmp eq i64 %.025.i.i, %n.vec33
  br i1 %cmp.n37, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec33, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.ba, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 %.030.i.i.prol
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !43
  %i.ba = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !543

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ba, %.lr.ph.i.i.prol ]
  %i.bb = sub i64 %.030.i.i.ph, %.025.i.i
  %i.bc = icmp ugt i64 %i.bb, -4
  br i1 %i.bc, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.u, align 8, !tbaa !48
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.h
  %i.bd = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.h ]
  %i.be = add i64 %i.bd, %.025.i.i                ; 3 uses
  store i64 %i.be, ptr %i.u, align 8, !tbaa !48
  %i.bf = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bf, %i.t
  br i1 %.not.i.i, label %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit, label %bb.f, !llvm.loop !17

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.bv, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !43
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 %.030.i.i
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !43
  %i.bj = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !43
  %i.bm = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bj
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !43
  %i.bn = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !43
  %i.bq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bn
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !43
  %i.br = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !43
  %i.bu = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.br
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !43
  %i.bv = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bv, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !544

_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit: ; preds = %._crit_edge.i.i
  %i.bw = add nuw i64 %.018, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bw, %1
  br i1 %exitcond.not, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph34.i.i, !llvm.loop !545

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %bb.e, %.lr.ph, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZN3fmt3v126detail20write_escaped_stringIcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEE23bounded_output_iteratorEESA_SA_SC_(ptr %0, i64 %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.fmt::v12::detail::find_escape_result", align 8 ; 9 uses
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.c = add i64 %i.b, 1                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !49
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.c), !inline_history !22
  %.pre.i.i.i = load i64, ptr %i.a, align 8, !tbaa !48 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i = phi i64 [ %i.c, %bb.b ], [ %.pre2.i.i.i, %bb.c ]
  %i.i = phi i64 [ %i.b, %bb.b ], [ %.pre.i.i.i, %bb.c ]
  %i.j = load ptr, ptr %0, align 8, !tbaa !212
  store i64 %.pre-phi.i.i.i, ptr %i.a, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  store i8 34, ptr %i.k, align 1, !tbaa !43
  %i.l = add i64 %1, -1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit: ; preds = %bb.a, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i
  %.sroa.8.2 = phi i64 [ 0, %bb.a ], [ %i.l, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = ptrtoint ptr %i.m to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit
  %.sroa.025.0 = phi ptr [ %0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit ], [ %i.aj, %bb.h ] ; 7 uses
  %.sroa.8.0 = phi i64 [ %.sroa.8.2, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit ], [ %i.ak, %bb.h ] ; 2 uses
  %.0 = phi ptr [ %2, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit ], [ %i.ah, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.m, ptr %4, align 8, !tbaa !241, !alias.scope !551
  store ptr null, ptr %i.n, align 8, !tbaa !242, !alias.scope !551
  store i32 0, ptr %i.o, align 8, !tbaa !243, !alias.scope !551
  %i.q = ptrtoint ptr %.0 to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_(ptr %.0, i64 %i.r, ptr nonnull align 8 %4)
  %i.s = load ptr, ptr %4, align 8, !tbaa !241    ; 2 uses
  %.not5.i = icmp eq ptr %.0, %i.s
  br i1 %.not5.i, label %_ZN3fmt3v126detail4copyIcPKcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SC_NS0_17basic_string_viewIS9_EERKNS0_12format_specsEE23bounded_output_iteratorTnNS8_IXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendISJ_SC_EE5valuesr48has_back_insert_iterator_container_insert_at_endISJ_SC_EE5valueEiE4typeELi0EEESJ_SC_SC_SJ_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 24
  br label %bb.e

bb.e:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i, %.lr.ph.i
  %.07.i = phi ptr [ %.0, %.lr.ph.i ], [ %i.w, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i ] ; 2 uses
  %.sroa.3.06.i = phi i64 [ %.sroa.8.0, %.lr.ph.i ], [ %.sroa.3.1.i, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.07.i, i64 1 ; 2 uses
  %i.x = load i8, ptr %.07.i, align 1, !tbaa !43
  %.not.i.i = icmp eq i64 %.sroa.3.06.i, 0
  br i1 %.not.i.i, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load i64, ptr %i.t, align 8, !tbaa !48   ; 2 uses
  %i.z = add i64 %i.y, 1                          ; 3 uses
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !49
  %i.ab = icmp ugt i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.g, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !50
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.025.0, i64 noundef %i.z), !inline_history !548
  %.pre.i.i.i.i = load i64, ptr %i.t, align 8, !tbaa !48 ; 2 uses
  %.pre2.i.i.i.i = add i64 %.pre.i.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i:      ; preds = %bb.g, %bb.f
  %.pre-phi.i.i.i.i = phi i64 [ %i.z, %bb.f ], [ %.pre2.i.i.i.i, %bb.g ]
  %i.ad = phi i64 [ %i.y, %bb.f ], [ %.pre.i.i.i.i, %bb.g ]
  %i.ae = load ptr, ptr %.sroa.025.0, align 8, !tbaa !212
  store i64 %.pre-phi.i.i.i.i, ptr %i.t, align 8, !tbaa !48
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad
  store i8 %i.x, ptr %i.af, align 1, !tbaa !43
  %i.ag = add i64 %.sroa.3.06.i, -1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i, %bb.e
  %.sroa.3.1.i = phi i64 [ 0, %bb.e ], [ %i.ag, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i ] ; 2 uses
  %.not.i16 = icmp eq ptr %i.w, %i.s
  br i1 %.not.i16, label %_ZN3fmt3v126detail4copyIcPKcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SC_NS0_17basic_string_viewIS9_EERKNS0_12format_specsEE23bounded_output_iteratorTnNS8_IXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendISJ_SC_EE5valuesr48has_back_insert_iterator_container_insert_at_endISJ_SC_EE5valueEiE4typeELi0EEESJ_SC_SC_SJ_.exit, label %bb.e, !llvm.loop !549

_ZN3fmt3v126detail4copyIcPKcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SC_NS0_17basic_string_viewIS9_EERKNS0_12format_specsEE23bounded_output_iteratorTnNS8_IXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendISJ_SC_EE5valuesr48has_back_insert_iterator_container_insert_at_endISJ_SC_EE5valueEiE4typeELi0EEESJ_SC_SC_SJ_.exit: ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i, %bb.d
  %.sroa.3.0.lcssa.i = phi i64 [ %.sroa.8.0, %bb.d ], [ %.sroa.3.1.i, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i ] ; 2 uses
  %i.ah = load ptr, ptr %i.n, align 8, !tbaa !242 ; 3 uses
  %.not = icmp eq ptr %i.ah, null
end_hunk_2
begin_hunk_3_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_1EEEvT_SK_T0_T1_":bb.a
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !181
  %i.fv = urem i64 %i.fu, %i.fn
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fv
  store ptr %i.dn, ptr %i.fw, align 8, !tbaa !182
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_1EEEvT_SK_SK_RT0_.exit"

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_1EEEvT_SK_SK_RT0_.exit": ; preds = %bb.r, %bb.s
  %i.fx = ptrtoint ptr %i.du to i64
  %i.fy = sub i64 %i.fx, %i.a                     ; 2 uses
  %i.fz = sdiv exact i64 %i.fy, 120
  store i64 0, ptr %i.dr, align 8, !tbaa !183
  store i64 1, ptr %i.db, align 8, !tbaa !174
  store ptr null, ptr %i.df, align 8, !tbaa !179
  store ptr %i.df, ptr %i.da, align 8, !tbaa !173
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i8 0, i64 16, i1 false)
  %i.ga = load <2 x ptr>, ptr %i.dg, align 8, !tbaa !52
  store <2 x ptr> %i.ga, ptr %i.ds, align 8, !tbaa !52
  %i.gb = load ptr, ptr %i.dh, align 8, !tbaa !157
  store ptr %i.gb, ptr %i.dt, align 8, !tbaa !157
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i8 0, i64 24, i1 false)
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_1EEEvT_T0_SL_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.fz, ptr noundef align 8 %5)
  call void @_ZN5vcpkg17PackageDependInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %5) #22
  call void @_ZN5vcpkg17PackageDependInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.gc = icmp sgt i64 %i.fy, 120
  br i1 %i.gc, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_1EEEvT_SK_SK_T0_.exit", !llvm.loop !579

.lr.ph184:                                        ; preds = %.lr.ph, %bb.b
  %storemerge68183 = phi ptr [ %.sroa.023.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.069182 = phi i64 [ %i.ge, %bb.b ], [ %2, %.lr.ph ]
  %i.gd = phi i64 [ %i.op, %bb.b ], [ %i.c, %.lr.ph ]
  %i.ge = add nsw i64 %.069182, -1                ; 3 uses
  %i.gf = udiv i64 %i.gd, 240
  %i.gg = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %i.gf ; 6 uses
  %i.gh = getelementptr inbounds i8, ptr %storemerge68183, i64 -120 ; 6 uses
  %.val1.i.i.i = load i64, ptr %i.f, align 8, !tbaa !44 ; 6 uses
  %i.gi = getelementptr i8, ptr %i.gg, i64 8
  %.val3.i.i.i = load i64, ptr %i.gi, align 8, !tbaa !44 ; 6 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val3.i.i.i, i64 %.val1.i.i.i) ; 2 uses
  %i.gj = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.gj, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph184
  %.val2.i.i.i = load ptr, ptr %i.gg, align 8
  %.val.i.i.i = load ptr, ptr %i.e, align 8
  %i.gk = call i32 @memcmp(ptr noundef readonly %.val.i.i.i, ptr noundef readonly %.val2.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.gk, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.lr.ph184
  %i.gl = sub i64 %.val1.i.i.i, %.val3.i.i.i
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.gl, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.gk, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.gm = icmp slt i32 %.0.i.i.i.i.i.i, 0
  %i.gn = getelementptr i8, ptr %storemerge68183, i64 -112
  %.val3.i27.i.i = load i64, ptr %i.gn, align 8, !tbaa !44 ; 8 uses
  br i1 %i.gm, label %bb.t, label %bb.v

bb.t:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i.i"
  %.sroa.speculated.i.i.i.i28.i.i = call i64 @llvm.umin.i64(i64 %.val3.i27.i.i, i64 %.val3.i.i.i) ; 2 uses
  %i.go = icmp eq i64 %.sroa.speculated.i.i.i.i28.i.i, 0
  br i1 %i.go, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i34.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i29.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i29.i.i: ; preds = %bb.t
  %.val2.i30.i.i = load ptr, ptr %i.gh, align 8
  %.val.i31.i.i = load ptr, ptr %i.gg, align 8
  %i.gp = call i32 @memcmp(ptr noundef readonly %.val.i31.i.i, ptr noundef readonly %.val2.i30.i.i, i64 noundef %.sroa.speculated.i.i.i.i28.i.i) #22 ; 2 uses
  %.not.i.i.i.i32.i.i = icmp eq i32 %i.gp, 0
  br i1 %.not.i.i.i.i32.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i34.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit38.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i34.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i29.i.i, %bb.t
  %i.gq = sub i64 %.val3.i.i.i, %.val3.i27.i.i
  %spec.select7.i.i.i.i.i35.i.i = call i64 @llvm.smax.i64(i64 %i.gq, i64 -2147483648)
  %.08.i.i.i.i.i36.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i35.i.i, i64 2147483647)
  %.0.i6.i.i.i.i37.i.i = trunc nsw i64 %.08.i.i.i.i.i36.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit38.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit38.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i34.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i29.i.i
  %.0.i.i.i.i33.i.i = phi i32 [ %i.gp, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i29.i.i ], [ %.0.i6.i.i.i.i37.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i34.i.i ]
  %i.gr = icmp slt i32 %.0.i.i.i.i33.i.i, 0
  br i1 %i.gr, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_1EEEvT_SK_SK_SK_T0_.exit.i", label %bb.u

bb.u:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit38.i.i"
  %.sroa.speculated.i.i.i.i41.i.i = call i64 @llvm.umin.i64(i64 %.val3.i27.i.i, i64 %.val1.i.i.i) ; 2 uses
  %i.gs = icmp eq i64 %.sroa.speculated.i.i.i.i41.i.i, 0
  br i1 %i.gs, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i47.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i42.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i42.i.i: ; preds = %bb.u
  %.val2.i43.i.i = load ptr, ptr %i.gh, align 8
  %.val.i44.i.i = load ptr, ptr %i.e, align 8
  %i.gt = call i32 @memcmp(ptr noundef readonly %.val.i44.i.i, ptr noundef readonly %.val2.i43.i.i, i64 noundef %.sroa.speculated.i.i.i.i41.i.i) #22 ; 2 uses
  %.not.i.i.i.i45.i.i = icmp eq i32 %i.gt, 0
  br i1 %.not.i.i.i.i45.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i47.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit51.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i47.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i42.i.i, %bb.u
  %i.gu = sub i64 %.val1.i.i.i, %.val3.i27.i.i
  %spec.select7.i.i.i.i.i48.i.i = call i64 @llvm.smax.i64(i64 %i.gu, i64 -2147483648)
  %.08.i.i.i.i.i49.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i48.i.i, i64 2147483647)
  %.0.i6.i.i.i.i50.i.i = trunc nsw i64 %.08.i.i.i.i.i49.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit51.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit51.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i47.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i42.i.i
  %.0.i.i.i.i46.i.i = phi i32 [ %i.gt, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i42.i.i ], [ %.0.i6.i.i.i.i50.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i47.i.i ]
  %i.gv = icmp slt i32 %.0.i.i.i.i46.i.i, 0
  %..i.i = select i1 %i.gv, ptr %i.gh, ptr %i.e
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_1EEEvT_SK_SK_SK_T0_.exit.i"

bb.v:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i.i"
  %.sroa.speculated.i.i.i.i54.i.i = call i64 @llvm.umin.i64(i64 %.val3.i27.i.i, i64 %.val1.i.i.i) ; 2 uses
  %i.gw = icmp eq i64 %.sroa.speculated.i.i.i.i54.i.i, 0
  br i1 %i.gw, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i60.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i: ; preds = %bb.v
  %.val2.i56.i.i = load ptr, ptr %i.gh, align 8
  %.val.i57.i.i = load ptr, ptr %i.e, align 8
  %i.gx = call i32 @memcmp(ptr noundef readonly %.val.i57.i.i, ptr noundef readonly %.val2.i56.i.i, i64 noundef %.sroa.speculated.i.i.i.i54.i.i) #22 ; 2 uses
  %.not.i.i.i.i58.i.i = icmp eq i32 %i.gx, 0
  br i1 %.not.i.i.i.i58.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i60.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit64.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i60.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i, %bb.v
  %i.gy = sub i64 %.val1.i.i.i, %.val3.i27.i.i
  %spec.select7.i.i.i.i.i61.i.i = call i64 @llvm.smax.i64(i64 %i.gy, i64 -2147483648)
  %.08.i.i.i.i.i62.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i61.i.i, i64 2147483647)
  %.0.i6.i.i.i.i63.i.i = trunc nsw i64 %.08.i.i.i.i.i62.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit64.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit64.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i60.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i
  %.0.i.i.i.i59.i.i = phi i32 [ %i.gx, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i ], [ %.0.i6.i.i.i.i63.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i60.i.i ]
  %i.gz = icmp slt i32 %.0.i.i.i.i59.i.i, 0
  br i1 %i.gz, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_1EEEvT_SK_SK_SK_T0_.exit.i", label %bb.w

bb.w:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit64.i.i"
  %.sroa.speculated.i.i.i.i67.i.i = call i64 @llvm.umin.i64(i64 %.val3.i27.i.i, i64 %.val3.i.i.i) ; 2 uses
  %i.ha = icmp eq i64 %.sroa.speculated.i.i.i.i67.i.i, 0
  br i1 %i.ha, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i73.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i68.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i68.i.i: ; preds = %bb.w
  %.val2.i69.i.i = load ptr, ptr %i.gh, align 8
  %.val.i70.i.i = load ptr, ptr %i.gg, align 8
  %i.hb = call i32 @memcmp(ptr noundef readonly %.val.i70.i.i, ptr noundef readonly %.val2.i69.i.i, i64 noundef %.sroa.speculated.i.i.i.i67.i.i) #22 ; 2 uses
  %.not.i.i.i.i71.i.i = icmp eq i32 %i.hb, 0
  br i1 %.not.i.i.i.i71.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i73.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit77.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i73.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i68.i.i, %bb.w
  %i.hc = sub i64 %.val3.i.i.i, %.val3.i27.i.i
  %spec.select7.i.i.i.i.i74.i.i = call i64 @llvm.smax.i64(i64 %i.hc, i64 -2147483648)
  %.08.i.i.i.i.i75.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i74.i.i, i64 2147483647)
  %.0.i6.i.i.i.i76.i.i = trunc nsw i64 %.08.i.i.i.i.i75.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit77.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit77.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i73.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i68.i.i
  %.0.i.i.i.i72.i.i = phi i32 [ %i.hb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i68.i.i ], [ %.0.i6.i.i.i.i76.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i73.i.i ]
  %i.hd = icmp slt i32 %.0.i.i.i.i72.i.i, 0
  %.82.i.i = select i1 %i.hd, ptr %i.gh, ptr %i.gg
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_1EEEvT_SK_SK_SK_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_1EEEvT_SK_SK_SK_T0_.exit.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit77.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit64.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit51.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit38.i.i"
  %.sink.i.i = phi ptr [ %i.gg, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit38.i.i" ], [ %i.e, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit64.i.i" ], [ %.82.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit77.i.i" ], [ %..i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit51.i.i" ]
  call void @_ZSt4swapIN5vcpkg17PackageDependInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %.sink.i.i) #22
  br label %bb.x

bb.x:                                             ; preds = %_ZN5vcpkg17PackageDependInfoD2Ev.exit, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_1EEEvT_SK_SK_SK_T0_.exit.i"
  %.sroa.023.0.i.i = phi ptr [ %i.e, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_1EEEvT_SK_SK_SK_T0_.exit.i" ], [ %i.hj, %_ZN5vcpkg17PackageDependInfoD2Ev.exit ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge68183, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_1EEEvT_SK_SK_SK_T0_.exit.i" ], [ %.sroa.0.1.i.i, %_ZN5vcpkg17PackageDependInfoD2Ev.exit ]
  %.val3.i.i13.i = load i64, ptr %i.g, align 8, !tbaa !44 ; 4 uses
  br label %bb.y

bb.y:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i20.i", %bb.x
  %.sroa.023.1.i.i = phi ptr [ %.sroa.023.0.i.i, %bb.x ], [ %i.hj, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i20.i" ] ; 24 uses
  %i.he = getelementptr i8, ptr %.sroa.023.1.i.i, i64 8
  %.val1.i.i14.i = load i64, ptr %i.he, align 8, !tbaa !44 ; 5 uses
  %.sroa.speculated.i.i.i.i.i15.i = call i64 @llvm.umin.i64(i64 %.val3.i.i13.i, i64 %.val1.i.i14.i) ; 2 uses
  %i.hf = icmp eq i64 %.sroa.speculated.i.i.i.i.i15.i, 0
  br i1 %i.hf, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i22.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i16.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i16.i: ; preds = %bb.y
  %.val2.i.i17.i = load ptr, ptr %0, align 8
  %.val.i.i18.i = load ptr, ptr %.sroa.023.1.i.i, align 8
  %i.hg = call i32 @memcmp(ptr noundef readonly %.val.i.i18.i, ptr noundef readonly %.val2.i.i17.i, i64 noundef %.sroa.speculated.i.i.i.i.i15.i) #22 ; 2 uses
  %.not.i.i.i.i.i19.i = icmp eq i32 %i.hg, 0
  br i1 %.not.i.i.i.i.i19.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i22.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i20.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i22.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i16.i, %bb.y
  %i.hh = sub i64 %.val1.i.i14.i, %.val3.i.i13.i
  %spec.select7.i.i.i.i.i.i23.i = call i64 @llvm.smax.i64(i64 %i.hh, i64 -2147483648)
  %.08.i.i.i.i.i.i24.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i23.i, i64 2147483647)
  %.0.i6.i.i.i.i.i25.i = trunc nsw i64 %.08.i.i.i.i.i.i24.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i20.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i20.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i22.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i16.i
  %.0.i.i.i.i.i21.i = phi i32 [ %i.hg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i16.i ], [ %.0.i6.i.i.i.i.i25.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i22.i ]
  %i.hi = icmp slt i32 %.0.i.i.i.i.i21.i, 0
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.023.1.i.i, i64 120 ; 2 uses
  br i1 %i.hi, label %bb.y, label %.preheader.i.i.preheader, !llvm.loop !580

.preheader.i.i.preheader:                         ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i20.i"
  %8 = getelementptr i8, ptr %.sroa.023.1.i.i, i64 8 ; 3 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit20.i.i"
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit20.i.i" ], [ %.sroa.0.0.i.i, %.preheader.i.i.preheader ] ; 16 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -120 ; 12 uses
  %i.hk = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -112
  %.val3.i9.i.i = load i64, ptr %i.hk, align 8, !tbaa !44 ; 2 uses
  %.sroa.speculated.i.i.i.i10.i.i = call i64 @llvm.umin.i64(i64 %.val3.i9.i.i, i64 %.val3.i.i13.i) ; 2 uses
  %i.hl = icmp eq i64 %.sroa.speculated.i.i.i.i10.i.i, 0
  br i1 %i.hl, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i16.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i11.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i11.i.i: ; preds = %.preheader.i.i
  %.val2.i12.i.i = load ptr, ptr %.sroa.0.1.i.i, align 8
  %.val.i13.i.i = load ptr, ptr %0, align 8
  %i.hm = call i32 @memcmp(ptr noundef readonly %.val.i13.i.i, ptr noundef readonly %.val2.i12.i.i, i64 noundef %.sroa.speculated.i.i.i.i10.i.i) #22 ; 2 uses
  %.not.i.i.i.i14.i.i = icmp eq i32 %i.hm, 0
  br i1 %.not.i.i.i.i14.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i16.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit20.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i16.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i11.i.i, %.preheader.i.i
  %i.hn = sub i64 %.val3.i.i13.i, %.val3.i9.i.i
  %spec.select7.i.i.i.i.i17.i.i = call i64 @llvm.smax.i64(i64 %i.hn, i64 -2147483648)
  %.08.i.i.i.i.i18.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i17.i.i, i64 2147483647)
  %.0.i6.i.i.i.i19.i.i = trunc nsw i64 %.08.i.i.i.i.i18.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit20.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit20.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i16.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i11.i.i
  %.0.i.i.i.i15.i.i = phi i32 [ %i.hm, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i11.i.i ], [ %.0.i6.i.i.i.i19.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i16.i.i ]
  %i.ho = icmp slt i32 %.0.i.i.i.i15.i.i, 0
  br i1 %i.ho, label %.preheader.i.i, label %bb.z, !llvm.loop !581

bb.z:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5vcpkg28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_1EclINS_17__normal_iteratorIPNS2_17PackageDependInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit20.i.i"
  %i.hp = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -112 ; 7 uses
  %i.hq = icmp ult ptr %.sroa.023.1.i.i, %.sroa.0.1.i.i
  br i1 %i.hq, label %bb.aa, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_1EEET_SK_SK_T0_.exit"

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.h, ptr %3, align 8, !tbaa !38
  %i.hr = load ptr, ptr %.sroa.023.1.i.i, align 8, !tbaa !42 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.023.1.i.i, i64 16 ; 9 uses
  %i.ht = icmp eq ptr %i.hr, %i.hs
  br i1 %i.ht, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17

bb.ab:                                            ; preds = %bb.aa
  %i.hu = icmp ult i64 %.val1.i.i14.i, 16
  call void @llvm.assume(i1 %i.hu)
  %i.hv = add nuw nsw i64 %.val1.i.i14.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.hs, i64 %i.hv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17: ; preds = %bb.aa
  store ptr %i.hr, ptr %3, align 8, !tbaa !42
  %i.hw = load i64, ptr %i.hs, align 8, !tbaa !43
  store i64 %i.hw, ptr %i.h, align 8, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i20: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17, %bb.ab
  store i64 %.val1.i.i14.i, ptr %i.i, align 8, !tbaa !44
  store ptr %i.hs, ptr %.sroa.023.1.i.i, align 8, !tbaa !42
  store i64 0, ptr %8, align 8, !tbaa !44
  store i8 0, ptr %i.hs, align 8, !tbaa !43
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.023.1.i.i, i64 32 ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !122
  store i32 %i.hy, ptr %i.j, align 8, !tbaa !122
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.023.1.i.i, i64 40 ; 4 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !173 ; 3 uses
  store ptr %i.ia, ptr %i.k, align 8, !tbaa !173
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.023.1.i.i, i64 48 ; 4 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !174 ; 2 uses
  store i64 %i.ic, ptr %i.l, align 8, !tbaa !174
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.023.1.i.i, i64 56 ; 5 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !175 ; 3 uses
  store ptr %i.ie, ptr %i.m, align 8, !tbaa !176
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.023.1.i.i, i64 64 ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !123
  store i64 %i.ig, ptr %i.n, align 8, !tbaa !123
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.023.1.i.i, i64 72 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.ih, i64 16, i1 false), !tbaa.struct !178
  store ptr null, ptr %i.p, align 8, !tbaa !179
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.023.1.i.i, i64 88 ; 7 uses
  %i.ij = icmp eq ptr %i.ia, %i.ii
  br i1 %i.ij, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i20
  store ptr %i.p, ptr %i.k, align 8, !tbaa !173
  %i.ik = load ptr, ptr %i.ii, align 8, !tbaa !179
  store ptr %i.ik, ptr %i.p, align 8, !tbaa !179
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i20
  %i.il = phi ptr [ %i.p, %bb.ac ], [ %i.ia, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i20 ]
  %.not.i.i.i.i.i.i21 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i.i.i.i.i21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.im = getelementptr inbounds nuw i8, ptr %i.ie, i64 40
  %i.in = load i64, ptr %i.im, align 8, !tbaa !181
  %i.io = urem i64 %i.in, %i.ic
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.io
  store ptr %i.m, ptr %i.ip, align 8, !tbaa !182
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.ae, %bb.ad
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.023.1.i.i, i64 80
  store i64 0, ptr %i.iq, align 8, !tbaa !183
  store i64 1, ptr %i.ib, align 8, !tbaa !174
  store ptr null, ptr %i.ii, align 8, !tbaa !179
  store ptr %i.ii, ptr %i.hz, align 8, !tbaa !173
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.id, i8 0, i64 16, i1 false)
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.023.1.i.i, i64 96 ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.023.1.i.i, i64 104
  %i.it = load <2 x ptr>, ptr %i.ir, align 8, !tbaa !52
  store <2 x ptr> %i.it, ptr %i.q, align 8, !tbaa !52
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.023.1.i.i, i64 112 ; 3 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !157
  store ptr %i.iv, ptr %i.s, align 8, !tbaa !157
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ir, i8 0, i64 24, i1 false)
  %i.iw = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !42 ; 4 uses
  %i.ix = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -104 ; 4 uses
  %i.iy = icmp eq ptr %i.iw, %i.ix
  br i1 %i.iy, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  %i.iz = load i64, ptr %i.hp, align 8, !tbaa !44 ; 3 uses
  %i.ja = icmp ult i64 %i.iz, 16
  call void @llvm.assume(i1 %i.ja)
  switch i64 %i.iz, label %bb.ah [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i40
    i64 1, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  %i.jb = load i8, ptr %i.iw, align 1, !tbaa !43
  store i8 %i.jb, ptr %i.hs, align 8, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i40

bb.ah:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hs, ptr align 1 %i.iw, i64 %i.iz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i40: ; preds = %bb.ah, %bb.ag, %bb.af
  %i.jc = load i64, ptr %i.hp, align 8, !tbaa !44 ; 2 uses
  store i64 %i.jc, ptr %8, align 8, !tbaa !44
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.jc
  store i8 0, ptr %i.jd, align 1, !tbaa !43
  %.pre.i.i41 = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i28

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  store ptr %i.iw, ptr %.sroa.023.1.i.i, align 8, !tbaa !42
  %i.je = load i64, ptr %i.hp, align 8, !tbaa !44
  store i64 %i.je, ptr %8, align 8, !tbaa !44
  %i.jf = load i64, ptr %i.ix, align 8, !tbaa !43
  store i64 %i.jf, ptr %i.hs, align 8, !tbaa !43
  store ptr %i.ix, ptr %.sroa.0.1.i.i, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i28: ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i40
  %i.jg = phi ptr [ %.pre.i.i41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i40 ], [ %i.ix, %bb.ai ]
  store i64 0, ptr %i.hp, align 8, !tbaa !44
  store i8 0, ptr %i.jg, align 1, !tbaa !43
  %i.jh = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -88 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !122
  store i32 %i.ji, ptr %i.hx, align 8, !tbaa !122
  %i.jj = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -80 ; 5 uses
  %i.jk = load ptr, ptr %i.id, align 8, !tbaa !175 ; 2 uses
  %.not5.i.i47 = icmp eq ptr %i.jk, null
  br i1 %.not5.i.i47, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_deallocate_nodesEPS8_.exit.i53, label %.lr.ph.i.i48

.lr.ph.i.i48:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i28, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i51
  %.06.i.i49 = phi ptr [ %i.jl, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i51 ], [ %i.jk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i28 ] ; 4 uses
  %i.jl = load ptr, ptr %.06.i.i49, align 8, !tbaa !176 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.06.i.i49, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !42 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.06.i.i49, i64 24 ; 2 uses
  %i.jp = icmp eq ptr %i.jn, %i.jo
  br i1 %i.jp, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i50: ; preds = %.lr.ph.i.i48
  %i.jq = load i64, ptr %i.jo, align 8, !tbaa !43
  %i.jr = add i64 %i.jq, 1
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jr) #23
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i51

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i51: ; preds = %.lr.ph.i.i48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i50
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i49, i64 noundef 48) #23
  %.not.i.i52 = icmp eq ptr %i.jl, null
  br i1 %.not.i.i52, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_deallocate_nodesEPS8_.exit.i53, label %.lr.ph.i.i48, !llvm.loop !9

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_deallocate_nodesEPS8_.exit.i53: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i28
  %i.js = load ptr, ptr %i.hz, align 8, !tbaa !173 ; 2 uses
  %i.jt = icmp eq ptr %i.js, %i.ii
  br i1 %i.jt, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit.i54, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_deallocate_nodesEPS8_.exit.i53
  %i.ju = load i64, ptr %i.ib, align 8, !tbaa !174
  %i.jv = shl i64 %i.ju, 3
  call void @_ZdlPvm(ptr noundef %i.js, i64 noundef %i.jv) #23
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit.i54

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit.i54: ; preds = %bb.aj, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_deallocate_nodesEPS8_.exit.i53
  %i.jw = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ih, ptr noundef nonnull align 8 dereferenceable(16) %i.jw, i64 16, i1 false), !tbaa.struct !178
  %i.jx = load ptr, ptr %i.jj, align 8, !tbaa !173 ; 2 uses
  %i.jy = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 7 uses
  %i.jz = icmp eq ptr %i.jx, %i.jy
  br i1 %i.jz, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit.i54
  %i.ka = load ptr, ptr %i.jy, align 8, !tbaa !179
  store ptr %i.ka, ptr %i.ii, align 8, !tbaa !179
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit.i54
  %i.kb = phi ptr [ %i.ii, %bb.ak ], [ %i.jx, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit.i54 ] ; 2 uses
  store ptr %i.kb, ptr %i.hz, align 8, !tbaa !173
  %i.kc = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -72 ; 4 uses
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !174 ; 2 uses
  store i64 %i.kd, ptr %i.ib, align 8, !tbaa !174
  %i.ke = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -64 ; 5 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !175 ; 3 uses
  store ptr %i.kf, ptr %i.id, align 8, !tbaa !175
  %i.kg = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -56 ; 2 uses
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !123
  store i64 %i.kh, ptr %i.if, align 8, !tbaa !123
  %.not.i12.i55 = icmp eq ptr %i.kf, null
  br i1 %.not.i12.i55, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_update_bbeginEv.exit.i56, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 40
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !181
end_hunk_3
begin_hunk_4_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_3EEEvT_SK_T0_T1_":bb.a
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -112
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.l
  %i.ed = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.dz, %bb.l ]
  %i.ee = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -112
  store i64 %i.ed, ptr %i.cy, align 8, !tbaa !44
  store ptr %i.dw, ptr %i.du, align 8, !tbaa !42
  store i64 0, ptr %i.ee, align 8, !tbaa !44
  store i8 0, ptr %i.dw, align 8, !tbaa !43
  %i.ef = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -88
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !122
  store i32 %i.eg, ptr %i.cz, align 8, !tbaa !122
  %i.eh = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -80 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !173 ; 3 uses
  store ptr %i.ei, ptr %i.da, align 8, !tbaa !173
  %i.ej = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -72 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !174 ; 2 uses
  store i64 %i.ek, ptr %i.db, align 8, !tbaa !174
  %i.el = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -64 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !175 ; 3 uses
  store ptr %i.em, ptr %i.dc, align 8, !tbaa !176
  %i.en = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -56
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !123
  store i64 %i.eo, ptr %i.dd, align 8, !tbaa !123
  %i.ep = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %i.ep, i64 16, i1 false), !tbaa.struct !178
  store ptr null, ptr %i.df, align 8, !tbaa !179
  %i.eq = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -32 ; 4 uses
  %i.er = icmp eq ptr %i.ei, %i.eq
  br i1 %i.er, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store ptr %i.df, ptr %i.da, align 8, !tbaa !173
  %i.es = load ptr, ptr %i.eq, align 8, !tbaa !179
  store ptr %i.es, ptr %i.df, align 8, !tbaa !179
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.et = phi ptr [ %i.df, %bb.m ], [ %i.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ]
  %.not.i.i.i.i.i.i = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5vcpkg17PackageDependInfoC2EOS0_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !181
  %i.ew = urem i64 %i.ev, %i.ek
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.ew
  store ptr %i.dc, ptr %i.ex, align 8, !tbaa !182
  br label %_ZN5vcpkg17PackageDependInfoC2EOS0_.exit.i

_ZN5vcpkg17PackageDependInfoC2EOS0_.exit.i:       ; preds = %bb.o, %bb.n
  %i.ey = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -40
  store i64 0, ptr %i.ey, align 8, !tbaa !183
  store i64 1, ptr %i.ej, align 8, !tbaa !174
  store ptr null, ptr %i.eq, align 8, !tbaa !179
  store ptr %i.eq, ptr %i.eh, align 8, !tbaa !173
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.el, i8 0, i64 16, i1 false)
  %i.ez = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24 ; 2 uses
  %i.fa = load <2 x ptr>, ptr %i.ez, align 8, !tbaa !52
  store <2 x ptr> %i.fa, ptr %i.dg, align 8, !tbaa !52
  %i.fb = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !157
  store ptr %i.fc, ptr %i.dh, align 8, !tbaa !157
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, i8 0, i64 24, i1 false)
  %i.fd = call noundef nonnull align 8 dereferenceable(120) ptr @_ZN5vcpkg17PackageDependInfoaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.du, ptr noundef nonnull align 8 dereferenceable(120) %0) #22 ; 0 uses
  store ptr %i.di, ptr %5, align 8, !tbaa !38
  %i.fe = load ptr, ptr %4, align 8, !tbaa !42    ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.cx
  br i1 %i.ff, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

bb.p:                                             ; preds = %_ZN5vcpkg17PackageDependInfoC2EOS0_.exit.i
  %i.fg = load i64, ptr %i.cy, align 8, !tbaa !44 ; 3 uses
  %i.fh = icmp ult i64 %i.fg, 16
  call void @llvm.assume(i1 %i.fh)
  %i.fi = add nuw nsw i64 %i.fg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.di, ptr noundef nonnull align 8 dereferenceable(1) %i.cx, i64 %i.fi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %_ZN5vcpkg17PackageDependInfoC2EOS0_.exit.i
  store ptr %i.fe, ptr %5, align 8, !tbaa !42
  %i.fj = load i64, ptr %i.cx, align 8, !tbaa !43
  store i64 %i.fj, ptr %i.di, align 8, !tbaa !43
  %.pre5.i = load i64, ptr %i.cy, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i, %bb.p
  %i.fk = phi i64 [ %.pre5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i ], [ %i.fg, %bb.p ]
  store i64 %i.fk, ptr %i.dj, align 8, !tbaa !44
  store ptr %i.cx, ptr %4, align 8, !tbaa !42
  store i64 0, ptr %i.cy, align 8, !tbaa !44
  store i8 0, ptr %i.cx, align 8, !tbaa !43
  %i.fl = load i32, ptr %i.cz, align 8, !tbaa !122
  store i32 %i.fl, ptr %i.dk, align 8, !tbaa !122
  %i.fm = load ptr, ptr %i.da, align 8, !tbaa !173 ; 3 uses
  store ptr %i.fm, ptr %i.dl, align 8, !tbaa !173
  %i.fn = load i64, ptr %i.db, align 8, !tbaa !174 ; 2 uses
  store i64 %i.fn, ptr %i.dm, align 8, !tbaa !174
  %i.fo = load ptr, ptr %i.dc, align 8, !tbaa !175 ; 3 uses
  store ptr %i.fo, ptr %i.dn, align 8, !tbaa !176
  %i.fp = load i64, ptr %i.dd, align 8, !tbaa !123
  store i64 %i.fp, ptr %i.do, align 8, !tbaa !123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !tbaa.struct !178
  store ptr null, ptr %i.dq, align 8, !tbaa !179
  %i.fq = icmp eq ptr %i.fm, %i.df
  br i1 %i.fq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4.i
  store ptr %i.dq, ptr %i.dl, align 8, !tbaa !173
  %i.fr = load ptr, ptr %i.df, align 8, !tbaa !179
  store ptr %i.fr, ptr %i.dq, align 8, !tbaa !179
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4.i
  %i.fs = phi ptr [ %i.dq, %bb.q ], [ %i.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4.i ]
  %.not.i.i.i.i.i5.i = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i.i.i5.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_3EEEvT_SK_SK_RT0_.exit", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !181
  %i.fv = urem i64 %i.fu, %i.fn
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fv
  store ptr %i.dn, ptr %i.fw, align 8, !tbaa !182
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_3EEEvT_SK_SK_RT0_.exit"

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_3EEEvT_SK_SK_RT0_.exit": ; preds = %bb.r, %bb.s
  %i.fx = ptrtoint ptr %i.du to i64
  %i.fy = sub i64 %i.fx, %i.a                     ; 2 uses
  %i.fz = sdiv exact i64 %i.fy, 120
  store i64 0, ptr %i.dr, align 8, !tbaa !183
  store i64 1, ptr %i.db, align 8, !tbaa !174
  store ptr null, ptr %i.df, align 8, !tbaa !179
  store ptr %i.df, ptr %i.da, align 8, !tbaa !173
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i8 0, i64 16, i1 false)
  %i.ga = load <2 x ptr>, ptr %i.dg, align 8, !tbaa !52
  store <2 x ptr> %i.ga, ptr %i.ds, align 8, !tbaa !52
  %i.gb = load ptr, ptr %i.dh, align 8, !tbaa !157
  store ptr %i.gb, ptr %i.dt, align 8, !tbaa !157
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i8 0, i64 24, i1 false)
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_3EEEvT_T0_SL_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.fz, ptr noundef align 8 %5)
  call void @_ZN5vcpkg17PackageDependInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %5) #22
  call void @_ZN5vcpkg17PackageDependInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.gc = icmp sgt i64 %i.fy, 120
  br i1 %i.gc, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_3EEEvT_SK_SK_T0_.exit", !llvm.loop !589

.lr.ph177:                                        ; preds = %.lr.ph, %bb.b
  %storemerge68176 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.069175 = phi i64 [ %i.ge, %bb.b ], [ %2, %.lr.ph ]
  %i.gd = phi i64 [ %i.ny, %bb.b ], [ %i.c, %.lr.ph ]
  %i.ge = add nsw i64 %.069175, -1                ; 3 uses
  %i.gf = udiv i64 %i.gd, 240
  %i.gg = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %i.gf ; 3 uses
  %i.gh = getelementptr inbounds i8, ptr %storemerge68176, i64 -120 ; 2 uses
  %.val.i.i.i = load i32, ptr %i.f, align 8, !tbaa !122 ; 3 uses
  %i.gi = getelementptr i8, ptr %i.gg, i64 32
  %.val1.i.i.i = load i32, ptr %i.gi, align 8, !tbaa !122 ; 3 uses
  %i.gj = icmp slt i32 %.val.i.i.i, %.val1.i.i.i
  %i.gk = getelementptr i8, ptr %storemerge68176, i64 -88
  %.val1.i27.i.i = load i32, ptr %i.gk, align 8, !tbaa !122 ; 4 uses
  br i1 %i.gj, label %bb.t, label %bb.v

bb.t:                                             ; preds = %.lr.ph177
  %i.gl = icmp slt i32 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.gl, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_3EEEvT_SK_SK_SK_T0_.exit.i", label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gm = icmp slt i32 %.val.i.i.i, %.val1.i27.i.i
  %..i.i = select i1 %i.gm, ptr %i.gh, ptr %i.e
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_3EEEvT_SK_SK_SK_T0_.exit.i"

bb.v:                                             ; preds = %.lr.ph177
  %i.gn = icmp slt i32 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.gn, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_3EEEvT_SK_SK_SK_T0_.exit.i", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.go = icmp slt i32 %.val1.i.i.i, %.val1.i27.i.i
  %.34.i.i = select i1 %i.go, ptr %i.gh, ptr %i.gg
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_3EEEvT_SK_SK_SK_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_3EEEvT_SK_SK_SK_T0_.exit.i": ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %.sink.i.i = phi ptr [ %i.gg, %bb.t ], [ %i.e, %bb.v ], [ %.34.i.i, %bb.w ], [ %..i.i, %bb.u ]
  call void @_ZSt4swapIN5vcpkg17PackageDependInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %.sink.i.i) #22
  br label %bb.x

bb.x:                                             ; preds = %_ZN5vcpkg17PackageDependInfoD2Ev.exit, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_3EEEvT_SK_SK_SK_T0_.exit.i"
  %.sroa.012.0.i.i = phi ptr [ %i.e, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_3EEEvT_SK_SK_SK_T0_.exit.i" ], [ %i.gr, %_ZN5vcpkg17PackageDependInfoD2Ev.exit ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge68176, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_3EEEvT_SK_SK_SK_T0_.exit.i" ], [ %.sroa.0.1.i.i, %_ZN5vcpkg17PackageDependInfoD2Ev.exit ]
  %.val1.i.i13.i = load i32, ptr %i.g, align 8, !tbaa !122 ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %bb.x ], [ %i.gr, %bb.y ] ; 25 uses
  %i.gp = getelementptr i8, ptr %.sroa.012.1.i.i, i64 32
  %.val.i.i14.i = load i32, ptr %i.gp, align 8, !tbaa !122 ; 2 uses
  %i.gq = icmp slt i32 %.val.i.i14.i, %.val1.i.i13.i
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 120 ; 2 uses
  br i1 %i.gq, label %bb.y, label %.preheader.i.i.preheader, !llvm.loop !590

.preheader.i.i.preheader:                         ; preds = %bb.y
  %8 = getelementptr i8, ptr %.sroa.012.1.i.i, i64 32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %.preheader.i.i.preheader ] ; 18 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -120 ; 11 uses
  %i.gs = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -88
  %.val1.i9.i.i = load i32, ptr %i.gs, align 8, !tbaa !122
  %i.gt = icmp slt i32 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.gt, label %.preheader.i.i, label %bb.z, !llvm.loop !591

bb.z:                                             ; preds = %.preheader.i.i
  %i.gu = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -88 ; 2 uses
  %i.gv = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.gv, label %bb.aa, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_3EEET_SK_SK_T0_.exit"

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.h, ptr %3, align 8, !tbaa !38
  %i.gw = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !42 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16 ; 9 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16

bb.ab:                                            ; preds = %bb.aa
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !44 ; 3 uses
  %i.hb = icmp ult i64 %i.ha, 16
  call void @llvm.assume(i1 %i.hb)
  %i.hc = add nuw nsw i64 %i.ha, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.gx, i64 %i.hc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16: ; preds = %bb.aa
  store ptr %i.gw, ptr %3, align 8, !tbaa !42
  %i.hd = load i64, ptr %i.gx, align 8, !tbaa !43
  store i64 %i.hd, ptr %i.h, align 8, !tbaa !43
  %.phi.trans.insert.i17 = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8
  %.pre.i18 = load i64, ptr %.phi.trans.insert.i17, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i19: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16, %bb.ab
  %i.he = phi i64 [ %.pre.i18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16 ], [ %i.ha, %bb.ab ]
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 3 uses
  store i64 %i.he, ptr %i.i, align 8, !tbaa !44
  store ptr %i.gx, ptr %.sroa.012.1.i.i, align 8, !tbaa !42
  store i64 0, ptr %i.hf, align 8, !tbaa !44
  store i8 0, ptr %i.gx, align 8, !tbaa !43
  store i32 %.val.i.i14.i, ptr %i.j, align 8, !tbaa !122
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 40 ; 4 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !173 ; 3 uses
  store ptr %i.hh, ptr %i.k, align 8, !tbaa !173
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 48 ; 4 uses
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !174 ; 2 uses
  store i64 %i.hj, ptr %i.l, align 8, !tbaa !174
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 56 ; 5 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !175 ; 3 uses
  store ptr %i.hl, ptr %i.m, align 8, !tbaa !176
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 64 ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !123
  store i64 %i.hn, ptr %i.n, align 8, !tbaa !123
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 72 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.ho, i64 16, i1 false), !tbaa.struct !178
  store ptr null, ptr %i.p, align 8, !tbaa !179
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 88 ; 7 uses
  %i.hq = icmp eq ptr %i.hh, %i.hp
  br i1 %i.hq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i19
  store ptr %i.p, ptr %i.k, align 8, !tbaa !173
  %i.hr = load ptr, ptr %i.hp, align 8, !tbaa !179
  store ptr %i.hr, ptr %i.p, align 8, !tbaa !179
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i19
  %i.hs = phi ptr [ %i.p, %bb.ac ], [ %i.hh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i19 ]
  %.not.i.i.i.i.i.i20 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i.i.i.i20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hl, i64 40
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !181
  %i.hv = urem i64 %i.hu, %i.hj
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.hv
  store ptr %i.m, ptr %i.hw, align 8, !tbaa !182
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.ae, %bb.ad
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 80
  store i64 0, ptr %i.hx, align 8, !tbaa !183
  store i64 1, ptr %i.hi, align 8, !tbaa !174
  store ptr null, ptr %i.hp, align 8, !tbaa !179
  store ptr %i.hp, ptr %i.hg, align 8, !tbaa !173
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hk, i8 0, i64 16, i1 false)
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 96 ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 104
  %i.ia = load <2 x ptr>, ptr %i.hy, align 8, !tbaa !52
  store <2 x ptr> %i.ia, ptr %i.q, align 8, !tbaa !52
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 112 ; 3 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !157
  store ptr %i.ic, ptr %i.s, align 8, !tbaa !157
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hy, i8 0, i64 24, i1 false)
  %i.id = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !42 ; 4 uses
  %i.ie = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -104 ; 4 uses
  %i.if = icmp eq ptr %i.id, %i.ie
  br i1 %i.if, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  %i.ig = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -112 ; 2 uses
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !44 ; 3 uses
  %i.ii = icmp ult i64 %i.ih, 16
  call void @llvm.assume(i1 %i.ii)
  switch i64 %i.ih, label %bb.ah [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i39
    i64 1, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  %i.ij = load i8, ptr %i.id, align 1, !tbaa !43
  store i8 %i.ij, ptr %i.gx, align 8, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i39

bb.ah:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gx, ptr align 1 %i.id, i64 %i.ih, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i39: ; preds = %bb.ah, %bb.ag, %bb.af
  %i.ik = load i64, ptr %i.ig, align 8, !tbaa !44 ; 2 uses
  store i64 %i.ik, ptr %i.hf, align 8, !tbaa !44
  %i.il = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.ik
  store i8 0, ptr %i.il, align 1, !tbaa !43
  %.pre.i.i40 = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i27

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  store ptr %i.id, ptr %.sroa.012.1.i.i, align 8, !tbaa !42
  %i.im = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -112
  %i.in = load i64, ptr %i.im, align 8, !tbaa !44
  store i64 %i.in, ptr %i.hf, align 8, !tbaa !44
  %i.io = load i64, ptr %i.ie, align 8, !tbaa !43
  store i64 %i.io, ptr %i.gx, align 8, !tbaa !43
  store ptr %i.ie, ptr %.sroa.0.1.i.i, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i27: ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i39
  %i.ip = phi ptr [ %.pre.i.i40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i39 ], [ %i.ie, %bb.ai ]
  %i.iq = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -112 ; 4 uses
  store i64 0, ptr %i.iq, align 8, !tbaa !44
  store i8 0, ptr %i.ip, align 1, !tbaa !43
  %i.ir = load i32, ptr %i.gu, align 8, !tbaa !122
  store i32 %i.ir, ptr %8, align 8, !tbaa !122
  %i.is = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -80 ; 5 uses
  %i.it = load ptr, ptr %i.hk, align 8, !tbaa !175 ; 2 uses
  %.not5.i.i46 = icmp eq ptr %i.it, null
  br i1 %.not5.i.i46, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_deallocate_nodesEPS8_.exit.i52, label %.lr.ph.i.i47

.lr.ph.i.i47:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i27, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i50
  %.06.i.i48 = phi ptr [ %i.iu, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i50 ], [ %i.it, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i27 ] ; 4 uses
  %i.iu = load ptr, ptr %.06.i.i48, align 8, !tbaa !176 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.06.i.i48, i64 8
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !42 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.06.i.i48, i64 24 ; 2 uses
  %i.iy = icmp eq ptr %i.iw, %i.ix
  br i1 %i.iy, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i49: ; preds = %.lr.ph.i.i47
  %i.iz = load i64, ptr %i.ix, align 8, !tbaa !43
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.ja) #23
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i50

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i50: ; preds = %.lr.ph.i.i47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i49
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i48, i64 noundef 48) #23
  %.not.i.i51 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i51, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_deallocate_nodesEPS8_.exit.i52, label %.lr.ph.i.i47, !llvm.loop !9

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_deallocate_nodesEPS8_.exit.i52: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i27
  %i.jb = load ptr, ptr %i.hg, align 8, !tbaa !173 ; 2 uses
  %i.jc = icmp eq ptr %i.jb, %i.hp
  br i1 %i.jc, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit.i53, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_deallocate_nodesEPS8_.exit.i52
  %i.jd = load i64, ptr %i.hi, align 8, !tbaa !174
  %i.je = shl i64 %i.jd, 3
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.je) #23
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit.i53

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit.i53: ; preds = %bb.aj, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_deallocate_nodesEPS8_.exit.i52
  %i.jf = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ho, ptr noundef nonnull align 8 dereferenceable(16) %i.jf, i64 16, i1 false), !tbaa.struct !178
  %i.jg = load ptr, ptr %i.is, align 8, !tbaa !173 ; 2 uses
  %i.jh = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 7 uses
  %i.ji = icmp eq ptr %i.jg, %i.jh
  br i1 %i.ji, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit.i53
  %i.jj = load ptr, ptr %i.jh, align 8, !tbaa !179
  store ptr %i.jj, ptr %i.hp, align 8, !tbaa !179
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit.i53
  %i.jk = phi ptr [ %i.hp, %bb.ak ], [ %i.jg, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit.i53 ] ; 2 uses
  store ptr %i.jk, ptr %i.hg, align 8, !tbaa !173
  %i.jl = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -72 ; 4 uses
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !174 ; 2 uses
  store i64 %i.jm, ptr %i.hi, align 8, !tbaa !174
  %i.jn = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -64 ; 5 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !175 ; 3 uses
  store ptr %i.jo, ptr %i.hk, align 8, !tbaa !175
  %i.jp = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -56 ; 2 uses
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !123
  store i64 %i.jq, ptr %i.hm, align 8, !tbaa !123
end_hunk_4
begin_hunk_5_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_2EEEvT_SK_T0_T1_":bb.a
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -112
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.l
  %i.ed = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.dz, %bb.l ]
  %i.ee = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -112
  store i64 %i.ed, ptr %i.cy, align 8, !tbaa !44
  store ptr %i.dw, ptr %i.du, align 8, !tbaa !42
  store i64 0, ptr %i.ee, align 8, !tbaa !44
  store i8 0, ptr %i.dw, align 8, !tbaa !43
  %i.ef = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -88
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !122
  store i32 %i.eg, ptr %i.cz, align 8, !tbaa !122
  %i.eh = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -80 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !173 ; 3 uses
  store ptr %i.ei, ptr %i.da, align 8, !tbaa !173
  %i.ej = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -72 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !174 ; 2 uses
  store i64 %i.ek, ptr %i.db, align 8, !tbaa !174
  %i.el = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -64 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !175 ; 3 uses
  store ptr %i.em, ptr %i.dc, align 8, !tbaa !176
  %i.en = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -56
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !123
  store i64 %i.eo, ptr %i.dd, align 8, !tbaa !123
  %i.ep = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %i.ep, i64 16, i1 false), !tbaa.struct !178
  store ptr null, ptr %i.df, align 8, !tbaa !179
  %i.eq = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -32 ; 4 uses
  %i.er = icmp eq ptr %i.ei, %i.eq
  br i1 %i.er, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store ptr %i.df, ptr %i.da, align 8, !tbaa !173
  %i.es = load ptr, ptr %i.eq, align 8, !tbaa !179
  store ptr %i.es, ptr %i.df, align 8, !tbaa !179
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.et = phi ptr [ %i.df, %bb.m ], [ %i.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ]
  %.not.i.i.i.i.i.i = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5vcpkg17PackageDependInfoC2EOS0_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !181
  %i.ew = urem i64 %i.ev, %i.ek
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.ew
  store ptr %i.dc, ptr %i.ex, align 8, !tbaa !182
  br label %_ZN5vcpkg17PackageDependInfoC2EOS0_.exit.i

_ZN5vcpkg17PackageDependInfoC2EOS0_.exit.i:       ; preds = %bb.o, %bb.n
  %i.ey = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -40
  store i64 0, ptr %i.ey, align 8, !tbaa !183
  store i64 1, ptr %i.ej, align 8, !tbaa !174
  store ptr null, ptr %i.eq, align 8, !tbaa !179
  store ptr %i.eq, ptr %i.eh, align 8, !tbaa !173
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.el, i8 0, i64 16, i1 false)
  %i.ez = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24 ; 2 uses
  %i.fa = load <2 x ptr>, ptr %i.ez, align 8, !tbaa !52
  store <2 x ptr> %i.fa, ptr %i.dg, align 8, !tbaa !52
  %i.fb = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !157
  store ptr %i.fc, ptr %i.dh, align 8, !tbaa !157
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, i8 0, i64 24, i1 false)
  %i.fd = call noundef nonnull align 8 dereferenceable(120) ptr @_ZN5vcpkg17PackageDependInfoaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.du, ptr noundef nonnull align 8 dereferenceable(120) %0) #22 ; 0 uses
  store ptr %i.di, ptr %5, align 8, !tbaa !38
  %i.fe = load ptr, ptr %4, align 8, !tbaa !42    ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.cx
  br i1 %i.ff, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

bb.p:                                             ; preds = %_ZN5vcpkg17PackageDependInfoC2EOS0_.exit.i
  %i.fg = load i64, ptr %i.cy, align 8, !tbaa !44 ; 3 uses
  %i.fh = icmp ult i64 %i.fg, 16
  call void @llvm.assume(i1 %i.fh)
  %i.fi = add nuw nsw i64 %i.fg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.di, ptr noundef nonnull align 8 dereferenceable(1) %i.cx, i64 %i.fi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %_ZN5vcpkg17PackageDependInfoC2EOS0_.exit.i
  store ptr %i.fe, ptr %5, align 8, !tbaa !42
  %i.fj = load i64, ptr %i.cx, align 8, !tbaa !43
  store i64 %i.fj, ptr %i.di, align 8, !tbaa !43
  %.pre5.i = load i64, ptr %i.cy, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i, %bb.p
  %i.fk = phi i64 [ %.pre5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i ], [ %i.fg, %bb.p ]
  store i64 %i.fk, ptr %i.dj, align 8, !tbaa !44
  store ptr %i.cx, ptr %4, align 8, !tbaa !42
  store i64 0, ptr %i.cy, align 8, !tbaa !44
  store i8 0, ptr %i.cx, align 8, !tbaa !43
  %i.fl = load i32, ptr %i.cz, align 8, !tbaa !122
  store i32 %i.fl, ptr %i.dk, align 8, !tbaa !122
  %i.fm = load ptr, ptr %i.da, align 8, !tbaa !173 ; 3 uses
  store ptr %i.fm, ptr %i.dl, align 8, !tbaa !173
  %i.fn = load i64, ptr %i.db, align 8, !tbaa !174 ; 2 uses
  store i64 %i.fn, ptr %i.dm, align 8, !tbaa !174
  %i.fo = load ptr, ptr %i.dc, align 8, !tbaa !175 ; 3 uses
  store ptr %i.fo, ptr %i.dn, align 8, !tbaa !176
  %i.fp = load i64, ptr %i.dd, align 8, !tbaa !123
  store i64 %i.fp, ptr %i.do, align 8, !tbaa !123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !tbaa.struct !178
  store ptr null, ptr %i.dq, align 8, !tbaa !179
  %i.fq = icmp eq ptr %i.fm, %i.df
  br i1 %i.fq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4.i
  store ptr %i.dq, ptr %i.dl, align 8, !tbaa !173
  %i.fr = load ptr, ptr %i.df, align 8, !tbaa !179
  store ptr %i.fr, ptr %i.dq, align 8, !tbaa !179
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4.i
  %i.fs = phi ptr [ %i.dq, %bb.q ], [ %i.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4.i ]
  %.not.i.i.i.i.i5.i = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i.i.i5.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_2EEEvT_SK_SK_RT0_.exit", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !181
  %i.fv = urem i64 %i.fu, %i.fn
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fv
  store ptr %i.dn, ptr %i.fw, align 8, !tbaa !182
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_2EEEvT_SK_SK_RT0_.exit"

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_2EEEvT_SK_SK_RT0_.exit": ; preds = %bb.r, %bb.s
  %i.fx = ptrtoint ptr %i.du to i64
  %i.fy = sub i64 %i.fx, %i.a                     ; 2 uses
  %i.fz = sdiv exact i64 %i.fy, 120
  store i64 0, ptr %i.dr, align 8, !tbaa !183
  store i64 1, ptr %i.db, align 8, !tbaa !174
  store ptr null, ptr %i.df, align 8, !tbaa !179
  store ptr %i.df, ptr %i.da, align 8, !tbaa !173
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i8 0, i64 16, i1 false)
  %i.ga = load <2 x ptr>, ptr %i.dg, align 8, !tbaa !52
  store <2 x ptr> %i.ga, ptr %i.ds, align 8, !tbaa !52
  %i.gb = load ptr, ptr %i.dh, align 8, !tbaa !157
  store ptr %i.gb, ptr %i.dt, align 8, !tbaa !157
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i8 0, i64 24, i1 false)
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_2EEEvT_T0_SL_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.fz, ptr noundef align 8 %5)
  call void @_ZN5vcpkg17PackageDependInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %5) #22
  call void @_ZN5vcpkg17PackageDependInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.gc = icmp sgt i64 %i.fy, 120
  br i1 %i.gc, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_2EEEvT_SK_SK_T0_.exit", !llvm.loop !599

.lr.ph177:                                        ; preds = %.lr.ph, %bb.b
  %storemerge68176 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.069175 = phi i64 [ %i.ge, %bb.b ], [ %2, %.lr.ph ]
  %i.gd = phi i64 [ %i.ny, %bb.b ], [ %i.c, %.lr.ph ]
  %i.ge = add nsw i64 %.069175, -1                ; 3 uses
  %i.gf = udiv i64 %i.gd, 240
  %i.gg = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %i.gf ; 3 uses
  %i.gh = getelementptr inbounds i8, ptr %storemerge68176, i64 -120 ; 2 uses
  %.val.i.i.i = load i32, ptr %i.f, align 8, !tbaa !122 ; 3 uses
  %i.gi = getelementptr i8, ptr %i.gg, i64 32
  %.val1.i.i.i = load i32, ptr %i.gi, align 8, !tbaa !122 ; 3 uses
  %i.gj = icmp sgt i32 %.val.i.i.i, %.val1.i.i.i
  %i.gk = getelementptr i8, ptr %storemerge68176, i64 -88
  %.val1.i27.i.i = load i32, ptr %i.gk, align 8, !tbaa !122 ; 4 uses
  br i1 %i.gj, label %bb.t, label %bb.v

bb.t:                                             ; preds = %.lr.ph177
  %i.gl = icmp sgt i32 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.gl, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_2EEEvT_SK_SK_SK_T0_.exit.i", label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gm = icmp sgt i32 %.val.i.i.i, %.val1.i27.i.i
  %..i.i = select i1 %i.gm, ptr %i.gh, ptr %i.e
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_2EEEvT_SK_SK_SK_T0_.exit.i"

bb.v:                                             ; preds = %.lr.ph177
  %i.gn = icmp sgt i32 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.gn, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_2EEEvT_SK_SK_SK_T0_.exit.i", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.go = icmp sgt i32 %.val1.i.i.i, %.val1.i27.i.i
  %.34.i.i = select i1 %i.go, ptr %i.gh, ptr %i.gg
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_2EEEvT_SK_SK_SK_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_2EEEvT_SK_SK_SK_T0_.exit.i": ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %.sink.i.i = phi ptr [ %i.gg, %bb.t ], [ %i.e, %bb.v ], [ %.34.i.i, %bb.w ], [ %..i.i, %bb.u ]
  call void @_ZSt4swapIN5vcpkg17PackageDependInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %.sink.i.i) #22
  br label %bb.x

bb.x:                                             ; preds = %_ZN5vcpkg17PackageDependInfoD2Ev.exit, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_2EEEvT_SK_SK_SK_T0_.exit.i"
  %.sroa.012.0.i.i = phi ptr [ %i.e, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_2EEEvT_SK_SK_SK_T0_.exit.i" ], [ %i.gr, %_ZN5vcpkg17PackageDependInfoD2Ev.exit ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge68176, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_2EEEvT_SK_SK_SK_T0_.exit.i" ], [ %.sroa.0.1.i.i, %_ZN5vcpkg17PackageDependInfoD2Ev.exit ]
  %.val1.i.i13.i = load i32, ptr %i.g, align 8, !tbaa !122 ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %bb.x ], [ %i.gr, %bb.y ] ; 25 uses
  %i.gp = getelementptr i8, ptr %.sroa.012.1.i.i, i64 32
  %.val.i.i14.i = load i32, ptr %i.gp, align 8, !tbaa !122 ; 2 uses
  %i.gq = icmp sgt i32 %.val.i.i14.i, %.val1.i.i13.i
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 120 ; 2 uses
  br i1 %i.gq, label %bb.y, label %.preheader.i.i.preheader, !llvm.loop !600

.preheader.i.i.preheader:                         ; preds = %bb.y
  %8 = getelementptr i8, ptr %.sroa.012.1.i.i, i64 32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %.preheader.i.i.preheader ] ; 18 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -120 ; 11 uses
  %i.gs = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -88
  %.val1.i9.i.i = load i32, ptr %i.gs, align 8, !tbaa !122
  %i.gt = icmp sgt i32 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.gt, label %.preheader.i.i, label %bb.z, !llvm.loop !601

bb.z:                                             ; preds = %.preheader.i.i
  %i.gu = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -88 ; 2 uses
  %i.gv = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.gv, label %bb.aa, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17PackageDependInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_28command_depend_info_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESH_E3$_2EEET_SK_SK_T0_.exit"

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.h, ptr %3, align 8, !tbaa !38
  %i.gw = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !42 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16 ; 9 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16

bb.ab:                                            ; preds = %bb.aa
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !44 ; 3 uses
  %i.hb = icmp ult i64 %i.ha, 16
  call void @llvm.assume(i1 %i.hb)
  %i.hc = add nuw nsw i64 %i.ha, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.gx, i64 %i.hc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16: ; preds = %bb.aa
  store ptr %i.gw, ptr %3, align 8, !tbaa !42
  %i.hd = load i64, ptr %i.gx, align 8, !tbaa !43
  store i64 %i.hd, ptr %i.h, align 8, !tbaa !43
  %.phi.trans.insert.i17 = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8
  %.pre.i18 = load i64, ptr %.phi.trans.insert.i17, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i19: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16, %bb.ab
  %i.he = phi i64 [ %.pre.i18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16 ], [ %i.ha, %bb.ab ]
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 3 uses
  store i64 %i.he, ptr %i.i, align 8, !tbaa !44
  store ptr %i.gx, ptr %.sroa.012.1.i.i, align 8, !tbaa !42
  store i64 0, ptr %i.hf, align 8, !tbaa !44
  store i8 0, ptr %i.gx, align 8, !tbaa !43
  store i32 %.val.i.i14.i, ptr %i.j, align 8, !tbaa !122
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 40 ; 4 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !173 ; 3 uses
  store ptr %i.hh, ptr %i.k, align 8, !tbaa !173
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 48 ; 4 uses
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !174 ; 2 uses
  store i64 %i.hj, ptr %i.l, align 8, !tbaa !174
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 56 ; 5 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !175 ; 3 uses
  store ptr %i.hl, ptr %i.m, align 8, !tbaa !176
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 64 ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !123
  store i64 %i.hn, ptr %i.n, align 8, !tbaa !123
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 72 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.ho, i64 16, i1 false), !tbaa.struct !178
  store ptr null, ptr %i.p, align 8, !tbaa !179
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 88 ; 7 uses
  %i.hq = icmp eq ptr %i.hh, %i.hp
  br i1 %i.hq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i19
  store ptr %i.p, ptr %i.k, align 8, !tbaa !173
  %i.hr = load ptr, ptr %i.hp, align 8, !tbaa !179
  store ptr %i.hr, ptr %i.p, align 8, !tbaa !179
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i19
  %i.hs = phi ptr [ %i.p, %bb.ac ], [ %i.hh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i19 ]
  %.not.i.i.i.i.i.i20 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i.i.i.i20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hl, i64 40
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !181
  %i.hv = urem i64 %i.hu, %i.hj
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.hv
  store ptr %i.m, ptr %i.hw, align 8, !tbaa !182
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.ae, %bb.ad
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 80
  store i64 0, ptr %i.hx, align 8, !tbaa !183
  store i64 1, ptr %i.hi, align 8, !tbaa !174
  store ptr null, ptr %i.hp, align 8, !tbaa !179
  store ptr %i.hp, ptr %i.hg, align 8, !tbaa !173
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hk, i8 0, i64 16, i1 false)
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 96 ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 104
  %i.ia = load <2 x ptr>, ptr %i.hy, align 8, !tbaa !52
  store <2 x ptr> %i.ia, ptr %i.q, align 8, !tbaa !52
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 112 ; 3 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !157
  store ptr %i.ic, ptr %i.s, align 8, !tbaa !157
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hy, i8 0, i64 24, i1 false)
  %i.id = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !42 ; 4 uses
  %i.ie = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -104 ; 4 uses
  %i.if = icmp eq ptr %i.id, %i.ie
  br i1 %i.if, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  %i.ig = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -112 ; 2 uses
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !44 ; 3 uses
  %i.ii = icmp ult i64 %i.ih, 16
  call void @llvm.assume(i1 %i.ii)
  switch i64 %i.ih, label %bb.ah [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i39
    i64 1, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  %i.ij = load i8, ptr %i.id, align 1, !tbaa !43
  store i8 %i.ij, ptr %i.gx, align 8, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i39

bb.ah:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gx, ptr align 1 %i.id, i64 %i.ih, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i39: ; preds = %bb.ah, %bb.ag, %bb.af
  %i.ik = load i64, ptr %i.ig, align 8, !tbaa !44 ; 2 uses
  store i64 %i.ik, ptr %i.hf, align 8, !tbaa !44
  %i.il = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.ik
  store i8 0, ptr %i.il, align 1, !tbaa !43
  %.pre.i.i40 = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i27

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  store ptr %i.id, ptr %.sroa.012.1.i.i, align 8, !tbaa !42
  %i.im = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -112
  %i.in = load i64, ptr %i.im, align 8, !tbaa !44
  store i64 %i.in, ptr %i.hf, align 8, !tbaa !44
  %i.io = load i64, ptr %i.ie, align 8, !tbaa !43
  store i64 %i.io, ptr %i.gx, align 8, !tbaa !43
  store ptr %i.ie, ptr %.sroa.0.1.i.i, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i27: ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i39
  %i.ip = phi ptr [ %.pre.i.i40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i39 ], [ %i.ie, %bb.ai ]
  %i.iq = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -112 ; 4 uses
  store i64 0, ptr %i.iq, align 8, !tbaa !44
  store i8 0, ptr %i.ip, align 1, !tbaa !43
  %i.ir = load i32, ptr %i.gu, align 8, !tbaa !122
  store i32 %i.ir, ptr %8, align 8, !tbaa !122
  %i.is = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -80 ; 5 uses
  %i.it = load ptr, ptr %i.hk, align 8, !tbaa !175 ; 2 uses
  %.not5.i.i46 = icmp eq ptr %i.it, null
  br i1 %.not5.i.i46, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_deallocate_nodesEPS8_.exit.i52, label %.lr.ph.i.i47

.lr.ph.i.i47:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i27, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i50
  %.06.i.i48 = phi ptr [ %i.iu, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i50 ], [ %i.it, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i27 ] ; 4 uses
  %i.iu = load ptr, ptr %.06.i.i48, align 8, !tbaa !176 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.06.i.i48, i64 8
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !42 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.06.i.i48, i64 24 ; 2 uses
  %i.iy = icmp eq ptr %i.iw, %i.ix
  br i1 %i.iy, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i49: ; preds = %.lr.ph.i.i47
  %i.iz = load i64, ptr %i.ix, align 8, !tbaa !43
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.ja) #23
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i50

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i50: ; preds = %.lr.ph.i.i47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i49
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i48, i64 noundef 48) #23
  %.not.i.i51 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i51, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_deallocate_nodesEPS8_.exit.i52, label %.lr.ph.i.i47, !llvm.loop !9

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_deallocate_nodesEPS8_.exit.i52: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i27
  %i.jb = load ptr, ptr %i.hg, align 8, !tbaa !173 ; 2 uses
  %i.jc = icmp eq ptr %i.jb, %i.hp
  br i1 %i.jc, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit.i53, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_deallocate_nodesEPS8_.exit.i52
  %i.jd = load i64, ptr %i.hi, align 8, !tbaa !174
  %i.je = shl i64 %i.jd, 3
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.je) #23
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit.i53

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit.i53: ; preds = %bb.aj, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_deallocate_nodesEPS8_.exit.i52
  %i.jf = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ho, ptr noundef nonnull align 8 dereferenceable(16) %i.jf, i64 16, i1 false), !tbaa.struct !178
  %i.jg = load ptr, ptr %i.is, align 8, !tbaa !173 ; 2 uses
  %i.jh = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 7 uses
  %i.ji = icmp eq ptr %i.jg, %i.jh
  br i1 %i.ji, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit.i53
  %i.jj = load ptr, ptr %i.jh, align 8, !tbaa !179
  store ptr %i.jj, ptr %i.hp, align 8, !tbaa !179
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit.i53
  %i.jk = phi ptr [ %i.hp, %bb.ak ], [ %i.jg, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit.i53 ] ; 2 uses
  store ptr %i.jk, ptr %i.hg, align 8, !tbaa !173
  %i.jl = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -72 ; 4 uses
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !174 ; 2 uses
  store i64 %i.jm, ptr %i.hi, align 8, !tbaa !174
  %i.jn = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -64 ; 5 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !175 ; 3 uses
  store ptr %i.jo, ptr %i.hk, align 8, !tbaa !175
  %i.jp = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -56 ; 2 uses
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !123
  store i64 %i.jq, ptr %i.hm, align 8, !tbaa !123
end_hunk_5
