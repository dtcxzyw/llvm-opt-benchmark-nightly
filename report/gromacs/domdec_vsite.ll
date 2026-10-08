Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/domdec_vsite?download=true
inline.NumInlined: 330
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_Z20dd_make_local_vsitesP12gmx_domdec_tiRN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS3_95EEE:bb.a

.critedge.i.i:                                    ; preds = %.lr.ph.i.i, %bb.o
  %.020.lcssa.i.i = phi i64 [ %i.cr, %bb.o ], [ %.02025.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.dc = icmp eq i64 %.020.lcssa.i.i, %i.cw
  br i1 %i.dc, label %.critedge.thread.i.i, label %_ZNSt6vectorIN3gmx9HashedMapIiE9hashEntryESaIS3_EE6resizeEm.exit.i.i

.critedge.thread.i.i:                             ; preds = %bb.p, %.critedge.i.i
  %.not.i.i69 = icmp eq i64 %i.cv, -12
  br i1 %.not.i.i69, label %_ZSt8_DestroyIPN3gmx9HashedMapIiE9hashEntryES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.critedge.thread.i.i
  %i.dd = load ptr, ptr %i.k, align 8, !tbaa !47
  %i.de = icmp ult i64 %i.cw, 768614336404564651
  tail call void @llvm.assume(i1 %i.de)
  %.not28.i = icmp eq ptr %i.dd, %i.cs
  br i1 %.not28.i, label %bb.r, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.q
  %i.df = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store i32 0, ptr %i.df, align 4
  store i32 -1, ptr %i.cs, align 4, !tbaa !35
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i32 -1, ptr %i.dg, align 4, !tbaa !36
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store ptr %i.dh, ptr %i.j, align 8, !tbaa !39
  %.pre.i.i.pre = load ptr, ptr %i.c, align 8, !tbaa !40
  br label %_ZNSt6vectorIN3gmx9HashedMapIiE9hashEntryESaIS3_EE6resizeEm.exit.i.i

bb.r:                                             ; preds = %bb.q
  %i.di = icmp eq i64 %i.cv, 9223372036854775800
  br i1 %i.di, label %bb.s, label %_ZNKSt6vectorIN3gmx9HashedMapIiE9hashEntryESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #15
  unreachable

_ZNKSt6vectorIN3gmx9HashedMapIiE9hashEntryESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.r
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.cw, i64 1)
  %i.dj = add nuw nsw i64 %.sroa.speculated.i.i, %i.cw
  %i.dk = tail call i64 @llvm.umin.i64(i64 %i.dj, i64 768614336404564650) ; 2 uses
  %i.dl = mul nuw nsw i64 %i.dk, 12
  %i.dm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #16 ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.cv ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  store i32 0, ptr %i.do, align 4
  store i32 -1, ptr %i.dn, align 4, !tbaa !35
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i32 -1, ptr %i.dp, align 4, !tbaa !36
  %.not10.i.i.i.i = icmp eq ptr %i.ch, %i.cs
  br i1 %.not10.i.i.i.i, label %_ZNSt12_Vector_baseIN3gmx9HashedMapIiE9hashEntryESaIS3_EE13_M_deallocateEPS3_m.exit41.i, label %.lr.ph.i.i.i37.i

.lr.ph.i.i.i37.i:                                 ; preds = %_ZNKSt6vectorIN3gmx9HashedMapIiE9hashEntryESaIS3_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i37.i
  %.012.i.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i37.i ], [ %i.dm, %_ZNKSt6vectorIN3gmx9HashedMapIiE9hashEntryESaIS3_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dq, %.lr.ph.i.i.i37.i ], [ %i.ch, %_ZNKSt6vectorIN3gmx9HashedMapIiE9hashEntryESaIS3_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i, i64 12, i1 false), !tbaa.struct !49, !alias.scope !90
  %i.dq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 12 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 12
  %.not.i.i.i38.i = icmp eq ptr %i.dq, %i.cs
  br i1 %.not.i.i.i38.i, label %_ZNSt12_Vector_baseIN3gmx9HashedMapIiE9hashEntryESaIS3_EE13_M_deallocateEPS3_m.exit41.i, label %.lr.ph.i.i.i37.i, !llvm.loop !0

_ZNSt12_Vector_baseIN3gmx9HashedMapIiE9hashEntryESaIS3_EE13_M_deallocateEPS3_m.exit41.i: ; preds = %.lr.ph.i.i.i37.i, %_ZNKSt6vectorIN3gmx9HashedMapIiE9hashEntryESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.ds = load ptr, ptr %i.k, align 8, !tbaa !47
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = sub i64 %i.dt, %i.cu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.du) #17
  store ptr %i.dm, ptr %i.c, align 8, !tbaa !40
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  store ptr %i.dv, ptr %i.j, align 8, !tbaa !39
  %i.dw = getelementptr inbounds nuw [12 x i8], ptr %i.dm, i64 %i.dk
  store ptr %i.dw, ptr %i.k, align 8, !tbaa !47
  br label %_ZNSt6vectorIN3gmx9HashedMapIiE9hashEntryESaIS3_EE6resizeEm.exit.i.i

_ZSt8_DestroyIPN3gmx9HashedMapIiE9hashEntryES3_EvT_S5_RSaIT0_E.exit.i.i.i.i: ; preds = %.critedge.thread.i.i
  store ptr %i.ch, ptr %i.j, align 8, !tbaa !39
  br label %_ZNSt6vectorIN3gmx9HashedMapIiE9hashEntryESaIS3_EE6resizeEm.exit.i.i

_ZNSt6vectorIN3gmx9HashedMapIiE9hashEntryESaIS3_EE6resizeEm.exit.i.i: ; preds = %_ZNSt12_Vector_baseIN3gmx9HashedMapIiE9hashEntryESaIS3_EE13_M_deallocateEPS3_m.exit41.i, %.lr.ph.i.i.i.i, %_ZSt8_DestroyIPN3gmx9HashedMapIiE9hashEntryES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, %.critedge.i.i
  %.020.lcssa40.i.i = phi i64 [ -1, %_ZSt8_DestroyIPN3gmx9HashedMapIiE9hashEntryES3_EvT_S5_RSaIT0_E.exit.i.i.i.i ], [ %.020.lcssa.i.i, %.critedge.i.i ], [ %i.cw, %.lr.ph.i.i.i.i ], [ %i.cw, %_ZNSt12_Vector_baseIN3gmx9HashedMapIiE9hashEntryESaIS3_EE13_M_deallocateEPS3_m.exit41.i ] ; 2 uses
  %i.dx = phi ptr [ %i.ch, %_ZSt8_DestroyIPN3gmx9HashedMapIiE9hashEntryES3_EvT_S5_RSaIT0_E.exit.i.i.i.i ], [ %i.ch, %.critedge.i.i ], [ %.pre.i.i.pre, %.lr.ph.i.i.i.i ], [ %i.dm, %_ZNSt12_Vector_baseIN3gmx9HashedMapIiE9hashEntryESaIS3_EE13_M_deallocateEPS3_m.exit41.i ] ; 2 uses
  %i.dy = trunc i64 %.020.lcssa40.i.i to i32      ; 2 uses
  %i.dz = getelementptr inbounds nuw [12 x i8], ptr %i.dx, i64 %i.cl
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i32 %i.dy, ptr %i.ea, align 4, !tbaa !36
  %i.eb = add i32 %i.dy, 1
  store i32 %i.eb, ptr %i.i, align 4, !tbaa !38
  br label %_ZN3gmx9HashedMapIiE6insertEiRKi.exit

_ZN3gmx9HashedMapIiE6insertEiRKi.exit:            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %_ZNSt6vectorIN3gmx9HashedMapIiE9hashEntryESaIS3_EE6resizeEm.exit.i.i
  %i.ec = phi ptr [ %i.dx, %_ZNSt6vectorIN3gmx9HashedMapIiE9hashEntryESaIS3_EE6resizeEm.exit.i.i ], [ %i.ch, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.1.i.i = phi i64 [ %.020.lcssa40.i.i, %_ZNSt6vectorIN3gmx9HashedMapIiE9hashEntryESaIS3_EE6resizeEm.exit.i.i ], [ %i.cg, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.ed = getelementptr inbounds nuw [12 x i8], ptr %i.ec, i64 %.1.i.i ; 2 uses
  store i32 %i.av, ptr %i.ed, align 4, !tbaa !35
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store i32 -2, ptr %i.ee, align 4, !tbaa !91
  %i.ef = load i32, ptr %i.l, align 8, !tbaa !32
  %i.eg = add nsw i32 %i.ef, 1
  store i32 %i.eg, ptr %i.l, align 8, !tbaa !32
  br label %_ZN3gmx9HashedMapIiE4findEi.exit

_ZN3gmx9HashedMapIiE4findEi.exit:                 ; preds = %bb.g, %_ZN3gmx9HashedMapIiE6insertEiRKi.exit, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ag
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !82

.loopexit88:                                      ; preds = %._crit_edge, %.lr.ph96, %bb.d, %bb.c
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %.not86 = icmp eq i64 %indvars.iv.next118, 95
  br i1 %.not86, label %bb.b, label %bb.c

bb.t:                                             ; preds = %.loopexit
  ret i32 %i.o

bb.u:                                             ; preds = %bb.b, %.loopexit
  %indvars.iv128 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next129, %.loopexit ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv128 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 28
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !88
  %i.ek = and i32 %i.ej, 2
  %.not = icmp eq i32 %i.ek, 0
  br i1 %.not, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.el = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv128 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !85
  %i.eo = load ptr, ptr %i.el, align 8, !tbaa !50 ; 2 uses
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = lshr exact i64 %i.er, 2
  %i.et = trunc i64 %i.es to i32                  ; 2 uses
  %i.eu = icmp sgt i32 %i.et, 0
  br i1 %i.eu, label %.lr.ph107, label %.loopexit

.lr.ph107:                                        ; preds = %bb.v
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !89 ; 2 uses
  %.not64100 = icmp slt i32 %i.ew, 1
  br i1 %.not64100, label %.loopexit, label %.lr.ph103.preheader

.lr.ph103.preheader:                              ; preds = %.lr.ph107
  %i.ex = add nuw i32 %i.ew, 1
  %i.ey = zext i32 %i.ex to i64                   ; 2 uses
  br label %.lr.ph103

.lr.ph103:                                        ; preds = %.lr.ph103.preheader, %._crit_edge104
  %indvars.iv125 = phi i64 [ 0, %.lr.ph103.preheader ], [ %indvars.iv.next126, %._crit_edge104 ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv125
  br label %bb.w

._crit_edge104:                                   ; preds = %bb.y
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, %i.ey ; 2 uses
  %i.fa = trunc nuw i64 %indvars.iv.next126 to i32
  %i.fb = icmp slt i32 %i.fa, %i.et
  br i1 %i.fb, label %.lr.ph103, label %.loopexit, !llvm.loop !83

bb.w:                                             ; preds = %.lr.ph103, %bb.y
  %indvars.iv120 = phi i64 [ 1, %.lr.ph103 ], [ %indvars.iv.next121, %bb.y ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv120 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !42 ; 2 uses
  %i.fe = icmp slt i32 %i.fd, 0
  br i1 %i.fe, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ff = xor i32 %i.fd, -1                       ; 3 uses
  %i.fg = load i32, ptr %i.h, align 8, !tbaa !37
  %i.fh = and i32 %i.fg, %i.ff
  %i.fi = load ptr, ptr %i.c, align 8, !tbaa !40  ; 4 uses
  %i.fj = zext nneg i32 %i.fh to i64              ; 3 uses
  %i.fk = getelementptr inbounds nuw [12 x i8], ptr %i.fi, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !35
  %i.fm = icmp eq i32 %i.fl, %i.ff
  br i1 %i.fm, label %_ZN3gmx9HashedMapIiE4findEi.exit72, label %.lr.ph99

_ZN3gmx9HashedMapIiE4findEi.exit72:               ; preds = %.lr.ph99, %bb.x
  %i.fn = phi i64 [ %i.fj, %bb.x ], [ %i.fw, %.lr.ph99 ]
  %i.fo = getelementptr inbounds nuw [12 x i8], ptr %i.fi, i64 %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !42
  store i32 %i.fq, ptr %i.fc, align 4, !tbaa !42
  br label %bb.y

.lr.ph99:                                         ; preds = %bb.x, %.lr.ph99
  %i.fr = phi i64 [ %i.fw, %.lr.ph99 ], [ %i.fj, %bb.x ]
  %i.fs = getelementptr inbounds nuw [12 x i8], ptr %i.fi, i64 %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !36 ; 2 uses
  %i.fv = icmp sgt i32 %i.fu, -1
  tail call void @llvm.assume(i1 %i.fv)
  %i.fw = zext nneg i32 %i.fu to i64              ; 3 uses
  %i.fx = getelementptr inbounds nuw [12 x i8], ptr %i.fi, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !35
  %i.fz = icmp eq i32 %i.fy, %i.ff
  br i1 %i.fz, label %_ZN3gmx9HashedMapIiE4findEi.exit72, label %.lr.ph99

bb.y:                                             ; preds = %bb.w, %_ZN3gmx9HashedMapIiE4findEi.exit72
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %i.ey
  br i1 %exitcond124.not, label %._crit_edge104, label %bb.w, !llvm.loop !84

.loopexit:                                        ; preds = %._crit_edge104, %.lr.ph107, %bb.v, %bb.u
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %.not87 = icmp eq i64 %indvars.iv.next129, 95
  br i1 %.not87, label %bb.t, label %bb.u
}

declare noundef i32 @_Z26setup_specat_communicationP12gmx_domdec_tPSt6vectorIiSaIiEEP24gmx_domdec_specat_comm_tPN3gmx9HashedMapIiEEiiPKcSC_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define void @_Z18init_domdec_vsitesP12gmx_domdec_ti(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @debug, align 8, !tbaa !97 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.7, i64 25, i64 1, ptr nonnull %i.a) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !198
  %i.d = tail call noundef i32 @_Z20gmx_omp_nthreads_get17ModuleMultiThread(i32 noundef 1) ; 2 uses
  %i.e = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #16, !noalias !199 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i8 0, i64 36, i1 false), !noalias !199
  store i32 %i.d, ptr %i.f, align 4, !tbaa !33, !noalias !199
  %i.g = icmp sgt i32 %i.d, 0
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx9HashedMapIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.2, i32 noundef 127) #15
          to label %.noexc.i.i unwind label %bb.f, !noalias !199

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = shl nsw i32 %i.c, 1
  %i.i = sdiv i32 %1, %i.h
  %i.j = sdiv i32 %1, 20
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %i.j)
  invoke void @_ZN3gmx9HashedMapIiE6resizeEi(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i32 noundef %.sroa.speculated)
          to label %_ZSt11make_uniqueIN3gmx9HashedMapIiEEJRiiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.g, !noalias !199

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn.i.i = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.k, %bb.f ]
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !199 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %.body.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !47, !noalias !199
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #17, !noalias !199
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 40) #17, !noalias !199
  resume { ptr, i32 } %.pn.i.i

_ZSt11make_uniqueIN3gmx9HashedMapIiEEJRiiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25   ; 4 uses
  store ptr %i.e, ptr %i.s, align 8, !tbaa !25
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN3gmx9HashedMapIiEESt14default_deleteIS2_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt11make_uniqueIN3gmx9HashedMapIiEEJRiiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN3gmx9HashedMapIiEEEclEPS2_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #17
  br label %_ZNKSt14default_deleteIN3gmx9HashedMapIiEEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN3gmx9HashedMapIiEEEclEPS2_.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 40) #17
  br label %_ZNSt10unique_ptrIN3gmx9HashedMapIiEESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx9HashedMapIiEESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN3gmx9HashedMapIiEEEclEPS2_.exit.i.i.i.i, %_ZSt11make_uniqueIN3gmx9HashedMapIiEEJRiiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.aa = tail call noalias noundef nonnull dereferenceable(360) ptr @_Znwm(i64 noundef 360) #16, !noalias !200 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.aa, i8 0, i64 360, i1 false), !noalias !200
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !12 ; 3 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !12
  %.not.i.i.i.i4 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i4, label %_ZNSt10unique_ptrI24gmx_domdec_specat_comm_tSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI24gmx_domdec_specat_comm_tEclEPS0_.exit.i.i.i.i

_ZNKSt14default_deleteI24gmx_domdec_specat_comm_tEclEPS0_.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN3gmx9HashedMapIiEESt14default_deleteIS2_EED2Ev.exit
  tail call void @_ZN24gmx_domdec_specat_comm_tD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %i.ac) #5
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 360) #17
  br label %_ZNSt10unique_ptrI24gmx_domdec_specat_comm_tSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI24gmx_domdec_specat_comm_tSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteI24gmx_domdec_specat_comm_tEclEPS0_.exit.i.i.i.i, %_ZNSt10unique_ptrIN3gmx9HashedMapIiEESt14default_deleteIS2_EED2Ev.exit
  ret void
}

declare noundef i32 @_Z20gmx_omp_nthreads_get17ModuleMultiThread(i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN24gmx_domdec_specat_comm_tD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !201  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !202
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #17
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !201  ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit4, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !202
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #17
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit4

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit4: ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50   ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !51
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit4, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !203  ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !204  ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = ashr exact i64 %i.ab, 3
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ad
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ab) #17
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.e
  %.ptr1 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.af = load ptr, ptr %.ptr1, align 8, !tbaa !50 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %_ZN16gmx_specatsend_tD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !51
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #17
  br label %_ZN16gmx_specatsend_tD2Ev.exit
end_hunk_0
