Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/vivify?download=true
inline.NumInlined: 1487
inline.NumDeleted: 539
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN7CaDiCaL8Internal12vivify_roundEbl:bb.a

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.ck, %_ZNSt6vectorISt5tupleIJiPN7CaDiCaL6ClauseEbEESaIS4_EED2Ev.exit.i
  %i.mh = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !206 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.mi, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit.i, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.mi) #21
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit.i

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit.i: ; preds = %bb.cl, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.mj = load ptr, ptr %3, align 8, !tbaa !206   ; 2 uses
  %.not.i.i.i3.i = icmp eq ptr %i.mj, null
  br i1 %.not.i.i.i3.i, label %_ZN7CaDiCaL8VivifierD2Ev.exit, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.mj) #21
  br label %_ZN7CaDiCaL8VivifierD2Ev.exit

_ZN7CaDiCaL8VivifierD2Ev.exit:                    ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit.i, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit: ; preds = %.sink.split.i, %bb.b, %bb.a, %_ZN7CaDiCaL8VivifierD2Ev.exit
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bc, %bb.az, %bb.af, %.noexc129, %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %bb.ai, %bb.al, %_ZNSt15__new_allocatorIPN7CaDiCaL6ClauseEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i, %bb.am, %_ZN7CaDiCaL13shrink_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit, %bb.bi, %bb.bj, %bb.an, %bb.ap, %bb.ar, %bb.bd, %bb.bf, %_ZN7CaDiCaL8Vivifier5eraseEv.exit, %bb.br, %bb.bt, %bb.bv, %bb.bx, %bb.ca, %bb.cd, %bb.cg, %bb.ch
  %lpad.loopexit.split-lp260 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7CaDiCaL8VivifierD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %lpad.loopexit.split-lp260
}

declare void @_ZN7CaDiCaL8Internal13clear_watchesEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal10init_noccsEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare void @_ZN7CaDiCaL8Internal15connect_watchesEb(ptr noundef nonnull align 8 dereferenceable(7288), i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal11reset_noccsEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(7288), i8 noundef signext, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7CaDiCaL8VivifierD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !258  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt5tupleIJiPN7CaDiCaL6ClauseEbEESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #21
  br label %_ZNSt6vectorISt5tupleIJiPN7CaDiCaL6ClauseEbEESaIS4_EED2Ev.exit

_ZNSt6vectorISt5tupleIJiPN7CaDiCaL6ClauseEbEESaIS4_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170  ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt5tupleIJiPN7CaDiCaL6ClauseEbEESaIS4_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt5tupleIJiPN7CaDiCaL6ClauseEbEESaIS4_EED2Ev.exit, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !206  ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #21
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.d
  %i.g = load ptr, ptr %0, align 8, !tbaa !206    ; 2 uses
  %.not.i.i.i3 = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit4, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #21
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit4

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit4: ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal6vivifyEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i8, ptr %i.a, align 4, !tbaa !227, !range !198, !noundef !199
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 7264 ; 2 uses
  %i.e = load volatile i8, ptr %i.d, align 8, !tbaa !228, !range !198, !noundef !199
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2960 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2964 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !229  ; 3 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.i, -1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !229
  %i.k = icmp eq i32 %i.i, 1
  br i1 %i.k, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 7256
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !230
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 360
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !249  ; 3 uses
  %.not3.i = icmp eq ptr %i.o, null
  br i1 %.not3.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.g, align 8, !tbaa !250  ; 2 uses
  %i.q = add nsw i32 %i.p, -1
  store i32 %i.q, ptr %i.g, align 8, !tbaa !250
  %.not4.i = icmp eq i32 %i.p, 0
  br i1 %.not4.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3804
  %i.s = load i32, ptr %i.r, align 4, !tbaa !251
  store i32 %i.s, ptr %i.g, align 8, !tbaa !250
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !253
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.o), !inline_history !1
  br i1 %i.w, label %.sink.split.i, label %bb.h

.sink.split.i:                                    ; preds = %bb.g, %bb.d
  store volatile i8 1, ptr %i.d, align 8, !tbaa !228
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4224
  %i.y = load i64, ptr %i.x, align 8, !tbaa !255
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3620 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !184
  %.not.i43 = icmp eq i32 %i.aa, 0
  br i1 %.not.i43, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

_ZN7CaDiCaL8Internal4timeEv.exit:                 ; preds = %bb.j, %bb.k
  %i.ad = phi double [ %i.ab, %bb.j ], [ %i.ac, %bb.k ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 7248 ; 11 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !182 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 3608
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !183 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !319, !range !198, !noundef !199
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.s, label %bb.l

bb.l:                                             ; preds = %_ZN7CaDiCaL8Internal4timeEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.am = load i8, ptr %i.al, align 1, !tbaa !320, !range !198, !noundef !199
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !321, !range !198, !noundef !199
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.n, label %.thread59

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 6800
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !322
  %.not32 = icmp sgt i32 %i.as, %i.ah
  br i1 %.not32, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 6768
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.af, ptr noundef nonnull align 8 dereferenceable(36) %i.at, double noundef %i.ad)
  %.pre.a = load i8, ptr %i.ao, align 4, !tbaa !321, !range !198
  %.pre48.pre = load ptr, ptr %i.ae, align 8, !tbaa !182 ; 2 uses
  %i.au = trunc nuw i8 %.pre.a to i1
  br i1 %i.au, label %.thread, label %.thread59

.thread59:                                        ; preds = %bb.m, %bb.o
  %.pre4861 = phi ptr [ %.pre48.pre, %bb.o ], [ %i.af, %bb.m ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pre4861, i64 7040
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !323
  %.not33 = icmp sgt i32 %i.aw, %i.ah
  br i1 %.not33, label %.thread, label %bb.p

bb.p:                                             ; preds = %.thread59
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre4861, i64 7008
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %.pre4861, ptr noundef nonnull align 8 dereferenceable(36) %i.ax, double noundef %i.ad)
  %.pre47 = load ptr, ptr %i.ae, align 8, !tbaa !182
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.p, %.thread59, %bb.o
  %i.ay = phi ptr [ %.pre47, %bb.p ], [ %.pre4861, %.thread59 ], [ %.pre48.pre, %bb.o ], [ %i.af, %bb.n ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 6720
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !324
  %.not34 = icmp sgt i32 %i.ba, %i.ah
  br i1 %.not34, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 6688
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.ay, ptr noundef nonnull align 8 dereferenceable(36) %i.bb, double noundef %i.ad)
  %.pre49.pre = load ptr, ptr %i.ae, align 8, !tbaa !182
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread
  %.pre49 = phi ptr [ %.pre49.pre, %bb.q ], [ %i.ay, %.thread ]
  %i.bc = load i32, ptr %0, align 8, !tbaa !325
  %i.bd = and i32 %i.bc, -257
  store i32 %i.bd, ptr %0, align 8, !tbaa !325
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.l, %_ZN7CaDiCaL8Internal4timeEv.exit
  %i.be = phi ptr [ %.pre49, %bb.r ], [ %i.af, %bb.l ], [ %i.af, %_ZN7CaDiCaL8Internal4timeEv.exit ] ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 6880
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !326
  %.not35 = icmp sgt i32 %i.bg, %i.ah
  br i1 %.not35, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 6848
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.be, ptr noundef nonnull align 8 dereferenceable(36) %i.bh, double noundef %i.ad)
  %.pre50 = load ptr, ptr %i.ae, align 8, !tbaa !182
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bi = phi ptr [ %.pre50, %bb.t ], [ %i.be, %bb.s ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 7080
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !327
  %.not36 = icmp sgt i32 %i.bk, %i.ah
  br i1 %.not36, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 7048
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.bi, ptr noundef nonnull align 8 dereferenceable(36) %i.bl, double noundef %i.ad)
  %.pre51 = load ptr, ptr %i.ae, align 8, !tbaa !182
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bm = phi ptr [ %.pre51, %bb.v ], [ %i.bi, %bb.u ] ; 2 uses
  %i.bn = load i32, ptr %0, align 8, !tbaa !325
  %i.bo = or i32 %i.bn, 8704
  store i32 %i.bo, ptr %0, align 8, !tbaa !325
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 5024 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !203
  %i.br = add nsw i64 %i.bq, 1                    ; 2 uses
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !203
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 3968 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !256
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 2976 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !257
  %i.bw = sub nsw i64 %i.bt, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 3884
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !328
  %i.bz = sitofp i32 %i.by to double
  %i.ca = fmul nnan double %i.bz, 1.000000e-03
  %i.cb = sitofp i64 %i.bw to double
  %i.cc = fmul double %i.ca, %i.cb
  %i.cd = fptosi double %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 3872
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !329
  %i.cg = sext i32 %i.cf to i64
  %spec.select = tail call i64 @llvm.smax.i64(i64 %i.cd, i64 %i.cg)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 3868
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !330
  %i.cj = sext i32 %i.ci to i64
  %.1 = tail call i64 @llvm.smin.i64(i64 %spec.select, i64 %i.cj) ; 3 uses
  %.not37 = icmp eq ptr %i.bm, null
  br i1 %.not37, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ptr, i64, ptr, ...) @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288) %i.bm, ptr noundef nonnull @.str, i64 noundef %i.br, ptr noundef nonnull @.str.12, i64 noundef %.1)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  tail call void @_ZN7CaDiCaL8Internal12vivify_roundEbl(ptr noundef nonnull align 8 dereferenceable(7288) %0, i1 noundef zeroext false, i64 noundef %.1)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 3880
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !331
  %i.cm = sitofp i32 %i.cl to double
  %i.cn = fmul nnan double %i.cm, 1.000000e-03
  %i.co = sitofp i64 %.1 to double
  %i.cp = fmul double %i.cn, %i.co
  %i.cq = fptosi double %i.cp to i64
  tail call void @_ZN7CaDiCaL8Internal12vivify_roundEbl(ptr noundef nonnull align 8 dereferenceable(7288) %0, i1 noundef zeroext true, i64 noundef %i.cq)
  %i.cr = load i32, ptr %i.z, align 4, !tbaa !184
  %.not.i44 = icmp eq i32 %i.cr, 0
  br i1 %.not.i44, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cs = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit45

bb.aa:                                            ; preds = %bb.y
  %i.ct = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit45

_ZN7CaDiCaL8Internal4timeEv.exit45:               ; preds = %bb.z, %bb.aa
  %i.cu = phi double [ %i.cs, %bb.z ], [ %i.ct, %bb.aa ] ; 5 uses
  %i.cv = load ptr, ptr %i.ae, align 8, !tbaa !182 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 3608
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !183 ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 7080
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !327
  %.not38 = icmp sgt i32 %i.cz, %i.cx
  br i1 %.not38, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN7CaDiCaL8Internal4timeEv.exit45
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 7048
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.cv, ptr noundef nonnull align 8 dereferenceable(36) %i.da, double noundef %i.cu)
  %.pre52 = load ptr, ptr %i.ae, align 8, !tbaa !182
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN7CaDiCaL8Internal4timeEv.exit45
  %i.db = phi ptr [ %.pre52, %bb.ab ], [ %i.cv, %_ZN7CaDiCaL8Internal4timeEv.exit45 ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 6880
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !326
  %.not39 = icmp sgt i32 %i.dd, %i.cx
  br i1 %.not39, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 6848
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.db, ptr noundef nonnull align 8 dereferenceable(36) %i.de, double noundef %i.cu)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.df = load i32, ptr %0, align 8, !tbaa !325
  %i.dg = and i32 %i.df, -8705
  store i32 %i.dg, ptr %0, align 8, !tbaa !325
  %i.dh = load i8, ptr %i.ai, align 8, !tbaa !319, !range !198, !noundef !199
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.am, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !320, !range !198, !noundef !199
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.am, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dm = load ptr, ptr %i.ae, align 8, !tbaa !182 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 6720
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !324
  %.not40 = icmp sgt i32 %i.do, %i.cx
  br i1 %.not40, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 6688
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.dm, ptr noundef nonnull align 8 dereferenceable(36) %i.dp, double noundef %i.cu)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 4, !tbaa !321, !range !198, !noundef !199
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.aj, label %.thread63

bb.aj:                                            ; preds = %bb.ai
  %1 = load ptr, ptr %i.ae, align 8, !tbaa !182   ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 6800
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !322
  %.not41 = icmp sgt i32 %i.du, %i.cx
  br i1 %.not41, label %.thread62, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 6768
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull align 8 dereferenceable(36) %i.dv, double noundef %i.cu)
  %.pre53 = load i8, ptr %i.dq, align 4, !tbaa !321, !range !198
  %i.dw = trunc nuw i8 %.pre53 to i1
  br i1 %i.dw, label %.thread62, label %.thread63

.thread63:                                        ; preds = %bb.ai, %bb.ak
  %2 = load ptr, ptr %i.ae, align 8, !tbaa !182   ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 7040
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !323
  %.not42 = icmp sgt i32 %i.dy, %i.cx
  br i1 %.not42, label %.thread62, label %bb.al

bb.al:                                            ; preds = %.thread63
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 7008
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %2, ptr noundef nonnull align 8 dereferenceable(36) %i.dz, double noundef %i.cu)
  br label %.thread62

.thread62:                                        ; preds = %bb.aj, %bb.al, %.thread63, %bb.ak
  %i.ea = load i32, ptr %0, align 8, !tbaa !325
  %i.eb = or i32 %i.ea, 256
  store i32 %i.eb, ptr %0, align 8, !tbaa !325
  br label %bb.am

bb.am:                                            ; preds = %.thread62, %bb.af, %bb.ae
  %i.ec = load i64, ptr %i.bs, align 8, !tbaa !256
  store i64 %i.ec, ptr %i.bu, align 8, !tbaa !257
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit: ; preds = %.sink.split.i, %bb.b, %bb.h, %bb.a, %bb.am
  ret void
}

declare void @_ZN7CaDiCaL8Internal17learn_unit_clauseEi(ptr noundef nonnull align 8 dereferenceable(7288), i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

declare noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #3

declare noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !205  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !206    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !207
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !189
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !189
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !205
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #19
  unreachable

_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #20 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store ptr null, ptr %i.y, align 8, !tbaa !189
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !189
  br label %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE13_M_deallocateEPS2_m.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #21
  br label %_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE13_M_deallocateEPS2_m.exit36

_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE13_M_deallocateEPS2_m.exit36: ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !206
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !205
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !207
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE13_M_deallocateEPS2_m.exit36, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_(ptr %0, ptr %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 4 uses
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 4 uses
  %i.i = shl nuw nsw i64 %.010.i.i, 3
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #23 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.b
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 2 uses
  %.sroa.10.0 = phi ptr [ null, %bb.b ], [ %i.j, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 7 uses
  %i.n = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.n, label %bb.c, label %bb.e, !prof !209

bb.c:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g ; 4 uses
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_T1_(ptr %0, ptr %i.o, ptr noundef %.sroa.10.0)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_T1_(ptr %i.o, ptr %1, ptr noundef %.sroa.10.0)
          to label %.noexc14 unwind label %bb.d

.noexc14:                                         ; preds = %.noexc
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.b, %i.p
  %i.r = ashr exact i64 %i.q, 3
  invoke void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.o, ptr %1, i64 noundef %i.g, i64 noundef %i.r, ptr noundef %.sroa.10.0)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.d:                                             ; preds = %.noexc14, %.noexc, %bb.c, %bb.g, %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %.sroa.10.0) #22
  resume { ptr, i32 } %i.s

end_hunk_0
