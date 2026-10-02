Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/deduplicate?download=true
inline.NumInlined: 247
inline.NumDeleted: 141
begin_hunk_0_@_ZN7CaDiCaL8Internal41mark_duplicated_binary_clauses_as_garbageEv:bb.a
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = ashr exact i64 %i.fx, 4
  invoke void @_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 noundef %i.fy)
          to label %_ZN7CaDiCaL12erase_vectorINS_5WatchEEEvRSt6vectorIT_SaIS3_EE.exit unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

_ZN7CaDiCaL12erase_vectorINS_5WatchEEEvRSt6vectorIT_SaIS3_EE.exit: ; preds = %bb.ba, %bb.ay, %bb.ax, %bb.aw, %bb.az
  %.not189313 = icmp eq ptr %.sroa.0168.2.lcssa, %.sroa.10.2.lcssa
  br i1 %.not189313, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %.lr.ph315

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %.lr.ph315, %_ZN7CaDiCaL12erase_vectorINS_5WatchEEEvRSt6vectorIT_SaIS3_EE.exit
  %spec.select = phi ptr [ %.sroa.10.2.lcssa, %_ZN7CaDiCaL12erase_vectorINS_5WatchEEEvRSt6vectorIT_SaIS3_EE.exit ], [ %.sroa.0168.2.lcssa, %.lr.ph315 ] ; 4 uses
  %i.ga = add nsw i32 %.083319, 2
  %.not85 = icmp eq i32 %.175.lcssa, 0            ; 2 uses
  %i.gb = icmp slt i32 %.083319, 0
  %i.gc = and i1 %.not85, %i.gb
  br i1 %i.gc, label %.preheader, label %bb.o, !llvm.loop !21

.lr.ph315:                                        ; preds = %_ZN7CaDiCaL12erase_vectorINS_5WatchEEEvRSt6vectorIT_SaIS3_EE.exit, %.lr.ph315
  %.sroa.0127.0314 = phi ptr [ %i.gi, %.lr.ph315 ], [ %.sroa.0168.2.lcssa, %_ZN7CaDiCaL12erase_vectorINS_5WatchEEEvRSt6vectorIT_SaIS3_EE.exit ] ; 2 uses
  %i.gd = load i32, ptr %.sroa.0127.0314, align 4, !tbaa !10
  %i.ge = tail call noundef i32 @llvm.abs.i32(i32 %i.gd, i1 true)
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = load ptr, ptr %i.aq, align 8, !tbaa !204
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gf
  store i8 0, ptr %i.gh, align 1, !tbaa !205
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0127.0314, i64 4 ; 2 uses
  %.not189 = icmp eq ptr %i.gi, %.sroa.10.2.lcssa
  br i1 %.not189, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %.lr.ph315

bb.bc:                                            ; preds = %bb.o
  %i.gj = load <2 x i64>, ptr %i.aw, align 8, !tbaa !210
  %i.gk = add nsw <2 x i64> %i.gj, splat (i64 1)
  store <2 x i64> %i.gk, ptr %i.aw, align 8, !tbaa !210
  invoke void @_ZN7CaDiCaL8Internal11assign_unitEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef %.175.lcssa)
          to label %bb.bd unwind label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.gl = invoke noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
          to label %bb.be unwind label %bb.bg

bb.be:                                            ; preds = %bb.bd
  br i1 %i.gl, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
          to label %bb.bh unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bd, %bb.bc
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bh:                                            ; preds = %bb.n, %bb.be, %bb.bf, %bb.o
  %.sroa.16.5.ph = phi ptr [ %.sroa.16.0324, %bb.n ], [ %.sroa.16.2.lcssa, %bb.bf ], [ %.sroa.16.2.lcssa, %bb.be ], [ %.sroa.16.2.lcssa, %bb.o ]
  %.sroa.10.5.ph = phi ptr [ %.sroa.10.0325, %bb.n ], [ %spec.select, %bb.bf ], [ %spec.select, %bb.be ], [ %spec.select, %bb.o ]
  %.sroa.0168.5.ph = phi ptr [ %.sroa.0168.0326, %bb.n ], [ %.sroa.0168.2.lcssa, %bb.bf ], [ %.sroa.0168.2.lcssa, %bb.be ], [ %.sroa.0168.2.lcssa, %bb.o ] ; 2 uses
  %.654.ph = phi i64 [ %.048327, %bb.n ], [ %.250.lcssa, %bb.bf ], [ %.250.lcssa, %bb.be ], [ %.250.lcssa, %bb.o ] ; 2 uses
  %.6.ph = phi i64 [ %.0328, %bb.n ], [ %.2.lcssa, %bb.bf ], [ %.2.lcssa, %bb.be ], [ %.2.lcssa, %bb.o ] ; 2 uses
  %i.gn = add i32 %.sroa.0165.0323, 1
  %.not187 = icmp eq i32 %.sroa.0165.0323, %i.an
  br i1 %.not187, label %._crit_edge.loopexit, label %bb.m

._crit_edge.loopexit:                             ; preds = %bb.m, %bb.bh
  %.sroa.0168.0.lcssa.ph = phi ptr [ %.sroa.0168.5.ph, %bb.bh ], [ %.sroa.0168.0326, %bb.m ]
  %.048.lcssa.ph = phi i64 [ %.654.ph, %bb.bh ], [ %.048327, %bb.m ]
  %.0.lcssa.ph = phi i64 [ %.6.ph, %bb.bh ], [ %.0328, %bb.m ]
  %.pre352 = load i32, ptr %0, align 8, !tbaa !196
  %.pre353 = load i8, ptr %i.z, align 8, !tbaa !195, !range !167
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.l
  %i.go = phi i8 [ %i.aa, %bb.l ], [ %.pre353, %._crit_edge.loopexit ]
  %i.gp = phi i32 [ %i.ah, %bb.l ], [ %.pre352, %._crit_edge.loopexit ]
  %.sroa.0168.0.lcssa = phi ptr [ null, %bb.l ], [ %.sroa.0168.0.lcssa.ph, %._crit_edge.loopexit ] ; 3 uses
  %.048.lcssa = phi i64 [ 0, %bb.l ], [ %.048.lcssa.ph, %._crit_edge.loopexit ]
  %.0.lcssa = phi i64 [ 0, %bb.l ], [ %.0.lcssa.ph, %._crit_edge.loopexit ]
  %i.gq = and i32 %i.gp, -529                     ; 2 uses
  store i32 %i.gq, ptr %0, align 8, !tbaa !196
  %i.gr = trunc nuw i8 %i.go to i1
  br i1 %i.gr, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !197, !range !167, !noundef !168
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gv = or i32 %i.gq, 256
  store i32 %i.gv, ptr %0, align 8, !tbaa !196
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bl
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bl:                                            ; preds = %bb.bj, %bb.bi, %._crit_edge
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 3660
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !215
  %.not101 = icmp eq i32 %i.gy, 0
  %i.gz = sub i64 0, %.048.lcssa
  %.not102 = icmp eq i64 %.0.lcssa, %i.gz
  %narrow = select i1 %.not101, i1 %.not102, i1 false
  %i.ha = zext i1 %narrow to i32
  invoke void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(5704) %0, i8 noundef signext 50, i32 noundef %i.ha)
          to label %bb.bm unwind label %bb.bk

bb.bm:                                            ; preds = %bb.bl
  %.not.i.i.i124 = icmp eq ptr %.sroa.0168.0.lcssa, null
  br i1 %.not.i.i.i124, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0168.0.lcssa) #12
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit: ; preds = %bb.bn, %bb.bm, %.sink.split.i, %bb.c, %bb.b, %bb.a
  ret void

bb.bo:                                            ; preds = %.loopexit190, %.loopexit.split-lp191, %.loopexit, %.loopexit.split-lp, %bb.bg, %bb.bb, %bb.bk
  %.sroa.0168.8 = phi ptr [ %.sroa.0168.0.lcssa, %bb.bk ], [ %.sroa.0168.2304, %.loopexit.split-lp ], [ %.sroa.0168.2.lcssa, %bb.bg ], [ %.sroa.0168.2.lcssa, %bb.bb ], [ %.sroa.0168.2304, %.loopexit ], [ %.sroa.0168.2304, %.loopexit190 ], [ %.sroa.0168.2304, %.loopexit.split-lp191 ] ; 2 uses
  %.pn103 = phi { ptr, i32 } [ %i.gw, %bb.bk ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.gm, %bb.bg ], [ %i.fz, %bb.bb ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit192, %.loopexit190 ], [ %lpad.loopexit.split-lp193, %.loopexit.split-lp191 ]
  %.not.i.i.i125 = icmp eq ptr %.sroa.0168.8, null
  br i1 %.not.i.i.i125, label %_ZNSt6vectorIiSaIiEED2Ev.exit126, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0168.8) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit126

_ZNSt6vectorIiSaIiEED2Ev.exit126:                 ; preds = %bb.bo, %bb.bp
  resume { ptr, i32 } %.pn103
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN7CaDiCaL8Internal12mark_garbageEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(5704), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !220  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !221    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 4                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 4
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !220
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #10
  unreachable

_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 576460752303423487) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #11 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.w, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !13, !alias.scope !226
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !219

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.not.i31.i = icmp eq ptr %i.c, null
  br i1 %.not.i31.i, label %_ZNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE13_M_deallocateEPS1_m.exit32.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #12
  br label %_ZNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE13_M_deallocateEPS1_m.exit32.i

_ZNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE13_M_deallocateEPS1_m.exit32.i: ; preds = %bb.f, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !221
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.i
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !220
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ab, ptr %i.j, align 8, !tbaa !16
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.a
  %i.ac = icmp ult i64 %1, %i.g
  br i1 %i.ac, label %bb.h, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.ad
  br i1 %.not.i4, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPN7CaDiCaL5WatchES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7CaDiCaL5WatchES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %bb.h
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !220
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN7CaDiCaL5WatchES1_EvT_S3_RSaIT0_E.exit.i, %bb.h, %_ZNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE13_M_deallocateEPS1_m.exit32.i, %bb.c, %bb.g
  ret void
}

declare void @_ZN7CaDiCaL8Internal11assign_unitEi(ptr noundef nonnull align 8 dereferenceable(5704), i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(5704), i8 noundef signext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { noreturn }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTSN7CaDiCaL6ClauseE", !8, i64 0}
!10 = !{!5, !5, i64 0}
!11 = !{!"p1 _ZTSN7CaDiCaL5WatchE", !8, i64 0}
!12 = !{!9, !9, i64 0}
!13 = !{i64 0, i64 8, !12, i64 8, i64 4, !10, i64 12, i64 4, !10}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!16 = !{!15, !11, i64 16}
!17 = distinct !{null}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = !{!"bool", !4, i64 0}
!23 = !{!"long", !4, i64 0}
!24 = !{!"_ZTSN7CaDiCaL9ReluctantE", !23, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !23, i64 32, !22, i64 40, !22, i64 41}
!25 = !{!"p1 long", !8, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !26, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseImSaImEE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorImSaImEE", !28, i64 0}
!30 = !{!"any p2 pointer", !8, i64 0}
!31 = !{!"p2 _ZTSN7CaDiCaL6ClauseE", !30, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE12_Vector_implE", !32, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE", !33, i64 0}
!35 = !{!"_ZTSSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE", !34, i64 0}
!36 = !{!"p1 _ZTSSt6vectorIS_ImSaImEESaIS1_EE", !8, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!38 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE12_Vector_implE", !37, i64 0}
!39 = !{!"_ZTSSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE", !38, i64 0}
!40 = !{!"_ZTSSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE", !39, i64 0}
!41 = !{!"p1 omnipotent char", !8, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!43 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE12_Vector_implE", !42, i64 0}
!44 = !{!"_ZTSSt12_Vector_baseIaSaIaEE", !43, i64 0}
!45 = !{!"_ZTSSt6vectorIaSaIaEE", !44, i64 0}
!46 = !{!"_ZTSN7CaDiCaL6PhasesE", !45, i64 0, !45, i64 24, !45, i64 48, !45, i64 72, !45, i64 96, !45, i64 120}
!47 = !{!"p1 int", !8, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!49 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !48, i64 0}
!50 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !49, i64 0}
!51 = !{!"_ZTSSt6vectorIjSaIjEE", !50, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!53 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !52, i64 0}
!54 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !53, i64 0}
!55 = !{!"_ZTSSt6vectorIiSaIiEE", !54, i64 0}
!56 = !{!"_ZTSN7CaDiCaL5QueueE", !5, i64 0, !5, i64 4, !5, i64 8, !23, i64 16}
!57 = !{!"p1 _ZTSN7CaDiCaL4LinkE", !8, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!59 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE12_Vector_implE", !58, i64 0}
!60 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE", !59, i64 0}
!61 = !{!"_ZTSSt6vectorIN7CaDiCaL4LinkESaIS1_EE", !60, i64 0}
!62 = !{!"double", !4, i64 0}
!63 = !{!"p1 _ZTSN7CaDiCaL8InternalE", !8, i64 0}
!64 = !{!"_ZTSN7CaDiCaL13score_smallerE", !63, i64 0}
!65 = !{!"_ZTSN7CaDiCaL4heapINS_13score_smallerEEE", !51, i64 0, !51, i64 24, !64, i64 48}
!66 = !{!"p1 double", !8, i64 0}
!67 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!68 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !67, i64 0}
!69 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !68, i64 0}
!70 = !{!"_ZTSSt6vectorIdSaIdEE", !69, i64 0}
!71 = !{!"p1 _ZTSN7CaDiCaL3VarE", !8, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!73 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE12_Vector_implE", !72, i64 0}
!74 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE", !73, i64 0}
!75 = !{!"_ZTSSt6vectorIN7CaDiCaL3VarESaIS1_EE", !74, i64 0}
!76 = !{!"p1 _ZTSN7CaDiCaL5FlagsE", !8, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE17_Vector_impl_dataE", !76, i64 0, !76, i64 8, !76, i64 16}
!78 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE12_Vector_implE", !77, i64 0}
!79 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE", !78, i64 0}
!80 = !{!"_ZTSSt6vectorIN7CaDiCaL5FlagsESaIS1_EE", !79, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!82 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !81, i64 0}
!83 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !82, i64 0}
!84 = !{!"_ZTSSt6vectorIlSaIlEE", !83, i64 0}
!85 = !{!"p1 _ZTSSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE", !8, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!87 = !{!"_ZTSNSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE12_Vector_implE", !86, i64 0}
!88 = !{!"_ZTSSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE", !87, i64 0}
!89 = !{!"_ZTSSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EE", !88, i64 0}
!90 = !{!"p1 _ZTSSt6vectorIN7CaDiCaL3BinESaIS1_EE", !8, i64 0}
!91 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE17_Vector_impl_dataE", !90, i64 0, !90, i64 8, !90, i64 16}
!92 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE12_Vector_implE", !91, i64 0}
!93 = !{!"_ZTSSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE", !92, i64 0}
!94 = !{!"_ZTSSt6vectorIS_IN7CaDiCaL3BinESaIS1_EESaIS3_EE", !93, i64 0}
!95 = !{!"p1 _ZTSSt6vectorIN7CaDiCaL5WatchESaIS1_EE", !8, i64 0}
!96 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE17_Vector_impl_dataE", !95, i64 0, !95, i64 8, !95, i64 16}
!97 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE12_Vector_implE", !96, i64 0}
!98 = !{!"_ZTSSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE", !97, i64 0}
!99 = !{!"_ZTSSt6vectorIS_IN7CaDiCaL5WatchESaIS1_EESaIS3_EE", !98, i64 0}
!100 = !{!"_ZTS4Reap", !23, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !4, i64 24}
!101 = !{!"p1 _ZTSN7CaDiCaL5LevelE", !8, i64 0}
!102 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE17_Vector_impl_dataE", !101, i64 0, !101, i64 8, !101, i64 16}
!103 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE12_Vector_implE", !102, i64 0}
!104 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE", !103, i64 0}
!105 = !{!"_ZTSSt6vectorIN7CaDiCaL5LevelESaIS1_EE", !104, i64 0}
!106 = !{!"_ZTSN7CaDiCaL3EMAE", !62, i64 0, !62, i64 8, !62, i64 16, !62, i64 24, !62, i64 32}
!107 = !{!"_ZTSN7CaDiCaL8AveragesUt_Ut_E", !106, i64 0, !106, i64 40}
!108 = !{!"_ZTSN7CaDiCaL8AveragesUt_Ut0_E", !106, i64 0, !106, i64 40}
!109 = !{!"_ZTSN7CaDiCaL8AveragesUt_E", !107, i64 0, !108, i64 80, !106, i64 160, !106, i64 200, !106, i64 240}
!110 = !{!"_ZTSN7CaDiCaL8AveragesE", !23, i64 0, !109, i64 8, !109, i64 288}
!111 = !{!"_ZTSN7CaDiCaL5LimitUt_E", !5, i64 0, !5, i64 4}
!112 = !{!"_ZTSN7CaDiCaL5LimitE", !22, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !23, i64 32, !23, i64 40, !23, i64 48, !23, i64 56, !23, i64 64, !23, i64 72, !23, i64 80, !23, i64 88, !23, i64 96, !23, i64 104, !23, i64 112, !23, i64 120, !5, i64 128, !5, i64 132, !4, i64 136, !23, i64 152, !111, i64 160}
!113 = !{!"_ZTSN7CaDiCaL4LastUt_E", !23, i64 0}
!114 = !{!"_ZTSN7CaDiCaL4LastUt0_E", !23, i64 0, !23, i64 8, !23, i64 16}
!115 = !{!"_ZTSN7CaDiCaL4LastUt1_E", !23, i64 0, !23, i64 8}
!116 = !{!"_ZTSN7CaDiCaL4LastUt2_E", !23, i64 0}
!117 = !{!"_ZTSN7CaDiCaL4LastUt3_E", !23, i64 0}
!118 = !{!"_ZTSN7CaDiCaL4LastUt4_E", !23, i64 0}
!119 = !{!"_ZTSN7CaDiCaL4LastE", !113, i64 0, !113, i64 8, !114, i64 16, !115, i64 40, !116, i64 56, !116, i64 64, !117, i64 72, !118, i64 80}
!120 = !{!"_ZTSN7CaDiCaL3IncE", !23, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !23, i64 32, !23, i64 40}
!121 = !{!"p1 _ZTSN7CaDiCaL5ProofE", !8, i64 0}
!122 = !{!"p1 _ZTSN7CaDiCaL11LratBuilderE", !8, i64 0}
!123 = !{!"p2 _ZTSN7CaDiCaL6TracerE", !30, i64 0}
!124 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6TracerESaIS2_EE17_Vector_impl_dataE", !123, i64 0, !123, i64 8, !123, i64 16}
!125 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6TracerESaIS2_EE12_Vector_implE", !124, i64 0}
!126 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL6TracerESaIS2_EE", !125, i64 0}
!127 = !{!"_ZTSSt6vectorIPN7CaDiCaL6TracerESaIS2_EE", !126, i64 0}
!128 = !{!"p2 _ZTSN7CaDiCaL10FileTracerE", !30, i64 0}
!129 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10FileTracerESaIS2_EE17_Vector_impl_dataE", !128, i64 0, !128, i64 8, !128, i64 16}
!130 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10FileTracerESaIS2_EE12_Vector_implE", !129, i64 0}
!131 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL10FileTracerESaIS2_EE", !130, i64 0}
!132 = !{!"_ZTSSt6vectorIPN7CaDiCaL10FileTracerESaIS2_EE", !131, i64 0}
!133 = !{!"p2 _ZTSN7CaDiCaL10StatTracerE", !30, i64 0}
!134 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10StatTracerESaIS2_EE17_Vector_impl_dataE", !133, i64 0, !133, i64 8, !133, i64 16}
!135 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10StatTracerESaIS2_EE12_Vector_implE", !134, i64 0}
!136 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL10StatTracerESaIS2_EE", !135, i64 0}
!137 = !{!"_ZTSSt6vectorIPN7CaDiCaL10StatTracerESaIS2_EE", !136, i64 0}
!138 = !{!"_ZTSN7CaDiCaL7OptionsE", !63, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !5, i64 208, !5, i64 212, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !5, i64 236, !5, i64 240, !5, i64 244, !5, i64 248, !5, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !5, i64 280, !5, i64 284, !5, i64 288, !5, i64 292, !5, i64 296, !5, i64 300, !5, i64 304, !5, i64 308, !5, i64 312, !5, i64 316, !5, i64 320, !5, i64 324, !5, i64 328, !5, i64 332, !5, i64 336, !5, i64 340, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !5, i64 372, !5, i64 376, !5, i64 380, !5, i64 384, !5, i64 388, !5, i64 392, !5, i64 396, !5, i64 400, !5, i64 404, !5, i64 408, !5, i64 412, !5, i64 416, !5, i64 420, !5, i64 424, !5, i64 428, !5, i64 432, !5, i64 436, !5, i64 440, !5, i64 444, !5, i64 448, !5, i64 452, !5, i64 456, !5, i64 460, !5, i64 464, !5, i64 468, !5, i64 472, !5, i64 476, !5, i64 480, !5, i64 484, !5, i64 488, !5, i64 492, !5, i64 496, !5, i64 500, !5, i64 504, !5, i64 508, !5, i64 512, !5, i64 516, !5, i64 520, !5, i64 524, !5, i64 528, !5, i64 532, !5, i64 536, !5, i64 540, !5, i64 544, !5, i64 548, !5, i64 552, !5, i64 556, !5, i64 560, !5, i64 564, !5, i64 568, !5, i64 572, !5, i64 576, !5, i64 580, !5, i64 584, !5, i64 588, !5, i64 592, !5, i64 596, !5, i64 600, !5, i64 604, !5, i64 608, !5, i64 612, !5, i64 616, !5, i64 620, !5, i64 624, !5, i64 628, !5, i64 632, !5, i64 636, !5, i64 640, !5, i64 644, !5, i64 648, !5, i64 652, !5, i64 656, !5, i64 660, !5, i64 664, !5, i64 668, !5, i64 672, !5, i64 676, !5, i64 680, !5, i64 684, !5, i64 688, !5, i64 692, !5, i64 696, !5, i64 700, !5, i64 704, !5, i64 708}
!139 = !{!"_ZTSN7CaDiCaL5StatsUt_E", !23, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !23, i64 32, !23, i64 40, !23, i64 48}
!140 = !{!"_ZTSN7CaDiCaL5StatsUt0_E", !23, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !23, i64 32, !23, i64 40, !23, i64 48, !23, i64 56, !23, i64 64, !23, i64 72}
!141 = !{!"_ZTSN7CaDiCaL5StatsUt1_E", !23, i64 0, !23, i64 8, !23, i64 16, !23, i64 24}
!142 = !{!"_ZTSN7CaDiCaL5StatsUt2_E", !23, i64 0, !23, i64 8, !23, i64 16}
!143 = !{!"_ZTSN7CaDiCaL5StatsUt3_E", !62, i64 0, !62, i64 8}
!144 = !{!"_ZTSN7CaDiCaL5StatsUt4_E", !23, i64 0, !23, i64 8, !23, i64 16, !23, i64 24}
!145 = !{!"_ZTSN7CaDiCaL5StatsUt5_Ut_E", !23, i64 0, !23, i64 8}
!146 = !{!"_ZTSN7CaDiCaL5StatsUt5_Ut0_E", !23, i64 0, !23, i64 8}
!147 = !{!"_ZTSN7CaDiCaL5StatsUt5_E", !23, i64 0, !23, i64 8, !145, i64 16, !145, i64 32, !145, i64 48, !146, i64 64}
!148 = !{!"_ZTSN7CaDiCaL5StatsUt6_E", !23, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !23, i64 32, !23, i64 40, !23, i64 48}
!149 = !{!"_ZTSN7CaDiCaL5StatsUt7_E", !23, i64 0, !23, i64 8, !23, i64 16, !23, i64 24}
!150 = !{!"_ZTSN7CaDiCaL5StatsUt8_E", !23, i64 0, !23, i64 8, !23, i64 16}
!151 = !{!"_ZTSN7CaDiCaL5StatsUt9_E", !23, i64 0, !23, i64 8}
!152 = !{!"_ZTSN7CaDiCaL5StatsUt10_E", !23, i64 0, !23, i64 8, !23, i64 16}
!153 = !{!"_ZTSN7CaDiCaL5StatsUt11_E", !23, i64 0, !23, i64 8, !23, i64 16, !23, i64 24}
!154 = !{!"_ZTSN7CaDiCaL5StatsUt12_E", !23, i64 0, !23, i64 8}
!155 = !{!"_ZTSN7CaDiCaL5StatsE", !63, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !139, i64 32, !140, i64 88, !23, i64 168, !23, i64 176, !23, i64 184, !23, i64 192, !23, i64 200, !23, i64 208, !23, i64 216, !23, i64 224, !23, i64 232, !23, i64 240, !23, i64 248, !23, i64 256, !141, i64 264, !142, i64 296, !142, i64 320, !143, i64 344, !144, i64 360, !147, i64 392, !148, i64 472, !149, i64 528, !150, i64 560, !23, i64 584, !23, i64 592, !23, i64 600, !23, i64 608, !23, i64 616, !23, i64 624, !23, i64 632, !23, i64 640, !23, i64 648, !23, i64 656, !23, i64 664, !23, i64 672, !23, i64 680, !23, i64 688, !23, i64 696, !23, i64 704, !23, i64 712, !23, i64 720, !23, i64 728, !23, i64 736, !23, i64 744, !23, i64 752, !23, i64 760, !23, i64 768, !23, i64 776, !23, i64 784, !23, i64 792, !23, i64 800, !23, i64 808, !23, i64 816, !23, i64 824, !23, i64 832, !23, i64 840, !23, i64 848, !23, i64 856, !23, i64 864, !23, i64 872, !23, i64 880, !23, i64 888, !23, i64 896, !23, i64 904, !23, i64 912, !23, i64 920, !23, i64 928, !23, i64 936, !23, i64 944, !23, i64 952, !23, i64 960, !23, i64 968, !23, i64 976, !23, i64 984, !23, i64 992, !23, i64 1000, !23, i64 1008, !23, i64 1016, !23, i64 1024, !23, i64 1032, !23, i64 1040, !23, i64 1048, !23, i64 1056, !23, i64 1064, !23, i64 1072, !23, i64 1080, !23, i64 1088, !23, i64 1096, !23, i64 1104, !23, i64 1112, !23, i64 1120, !23, i64 1128, !23, i64 1136, !23, i64 1144, !23, i64 1152, !23, i64 1160, !23, i64 1168, !23, i64 1176, !23, i64 1184, !23, i64 1192, !23, i64 1200, !23, i64 1208, !23, i64 1216, !23, i64 1224, !151, i64 1232, !23, i64 1248, !23, i64 1256, !23, i64 1264, !23, i64 1272, !152, i64 1280, !23, i64 1304, !23, i64 1312, !23, i64 1320, !23, i64 1328, !23, i64 1336, !23, i64 1344, !23, i64 1352, !23, i64 1360, !23, i64 1368, !23, i64 1376, !23, i64 1384, !23, i64 1392, !23, i64 1400, !23, i64 1408, !23, i64 1416, !23, i64 1424, !23, i64 1432, !23, i64 1440, !23, i64 1448, !23, i64 1456, !23, i64 1464, !23, i64 1472, !23, i64 1480, !23, i64 1488, !23, i64 1496, !23, i64 1504, !23, i64 1512, !23, i64 1520, !23, i64 1528, !23, i64 1536, !153, i64 1544, !153, i64 1576, !154, i64 1608, !23, i64 1624, !23, i64 1632, !23, i64 1640}
!156 = !{!"_ZTSN7CaDiCaL5ArenaUt_E", !41, i64 0, !41, i64 8, !41, i64 16}
!157 = !{!"_ZTSN7CaDiCaL5ArenaE", !63, i64 0, !156, i64 8, !156, i64 32}
!158 = !{!"_ZTSN7CaDiCaL6FormatE", !41, i64 0, !23, i64 8, !23, i64 16}
!159 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !41, i64 0}
!160 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !159, i64 0, !23, i64 8, !4, i64 16}
!161 = !{!"p1 _ZTSN7CaDiCaL8ExternalE", !8, i64 0}
!162 = !{!"_ZTSN7CaDiCaL5RangeE", !47, i64 0}
!163 = !{!"_ZTSN7CaDiCaL5SangeE", !47, i64 0}
!164 = !{!"_ZTSN7CaDiCaL8InternalE", !5, i64 0, !22, i64 4, !22, i64 5, !22, i64 6, !22, i64 7, !22, i64 8, !22, i64 9, !22, i64 10, !22, i64 11, !22, i64 12, !22, i64 13, !22, i64 14, !22, i64 15, !22, i64 16, !22, i64 17, !22, i64 18, !4, i64 19, !24, i64 24, !23, i64 72, !5, i64 80, !23, i64 88, !23, i64 96, !23, i64 104, !23, i64 112, !22, i64 120, !29, i64 128, !29, i64 152, !29, i64 176, !29, i64 200, !29, i64 224, !29, i64 248, !35, i64 272, !40, i64 296, !22, i64 320, !22, i64 321, !5, i64 324, !46, i64 328, !41, i64 472, !45, i64 480, !51, i64 504, !55, i64 528, !51, i64 552, !56, i64 576, !61, i64 600, !62, i64 624, !65, i64 632, !70, i64 688, !75, i64 712, !55, i64 736, !80, i64 760, !84, i64 784, !84, i64 808, !89, i64 832, !55, i64 856, !84, i64 880, !94, i64 904, !99, i64 928, !9, i64 952, !9, i64 960, !9, i64 968, !9, i64 976, !9, i64 984, !22, i64 992, !22, i64 993, !22, i64 994, !5, i64 996, !23, i64 1000, !9, i64 1008, !23, i64 1016, !23, i64 1024, !23, i64 1032, !23, i64 1040, !23, i64 1048, !23, i64 1056, !55, i64 1064, !55, i64 1088, !55, i64 1112, !55, i64 1136, !22, i64 1160, !22, i64 1161, !55, i64 1168, !55, i64 1192, !55, i64 1216, !55, i64 1240, !55, i64 1264, !55, i64 1288, !55, i64 1312, !100, i64 1336, !23, i64 2152, !55, i64 2160, !105, i64 2184, !35, i64 2208, !110, i64 2232, !112, i64 2800, !119, i64 2968, !120, i64 3056, !121, i64 3104, !122, i64 3112, !127, i64 3120, !132, i64 3144, !137, i64 3168, !138, i64 3192, !155, i64 3904, !157, i64 5552, !158, i64 5608, !160, i64 5632, !63, i64 5664, !161, i64 5672, !22, i64 5680, !162, i64 5688, !163, i64 5696}
!165 = !{!164, !5, i64 3368}
!166 = !{!164, !22, i64 4}
!167 = !{i8 0, i8 2}
!168 = !{}
!169 = !{!164, !22, i64 5680}
!170 = !{!164, !5, i64 2964}
!171 = !{!164, !161, i64 5672}
!172 = !{!"_ZTSSt18_Bit_iterator_base", !25, i64 0, !5, i64 8}
!173 = !{!"_ZTSSt13_Bit_iterator", !172, i64 0}
!174 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !173, i64 0, !173, i64 16, !25, i64 32}
!175 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !174, i64 0}
!176 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !175, i64 0}
!177 = !{!"_ZTSSt6vectorIbSaIbEE", !176, i64 0}
!178 = !{!"p1 _ZTSN7CaDiCaL10TerminatorE", !8, i64 0}
!179 = !{!"p1 _ZTSN7CaDiCaL7LearnerE", !8, i64 0}
!180 = !{!"p1 _ZTSN7CaDiCaL23FixedAssignmentListenerE", !8, i64 0}
!181 = !{!"p1 _ZTSN7CaDiCaL18ExternalPropagatorE", !8, i64 0}
!182 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !30, i64 0}
!183 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !8, i64 0}
!184 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !183, i64 0}
!185 = !{!"float", !4, i64 0}
!186 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !185, i64 0, !23, i64 8}
!187 = !{!"_ZTSSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE", !182, i64 0, !23, i64 8, !184, i64 16, !23, i64 24, !186, i64 32, !183, i64 48}
!188 = !{!"_ZTSSt13unordered_mapImSt6vectorIiSaIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE", !187, i64 0}
!189 = !{!"_ZTSN7CaDiCaL8ExternalE", !63, i64 0, !5, i64 8, !23, i64 16, !177, i64 24, !55, i64 64, !55, i64 88, !55, i64 112, !29, i64 136, !177, i64 160, !55, i64 200, !22, i64 224, !22, i64 225, !55, i64 232, !177, i64 256, !177, i64 296, !51, i64 336, !178, i64 360, !179, i64 368, !180, i64 376, !181, i64 384, !177, i64 392, !188, i64 432, !41, i64 488, !55, i64 496, !177, i64 520, !162, i64 560}
!190 = !{!189, !178, i64 360}
!191 = !{!164, !5, i64 2960}
!192 = !{!164, !5, i64 3800}
!193 = !{!"vtable pointer", !3, i64 0}
!194 = !{!193, !193, i64 0}
!195 = !{!164, !22, i64 8}
!196 = !{!164, !5, i64 0}
!197 = !{!164, !22, i64 7}
!198 = !{!164, !23, i64 4752}
!199 = !{!162, !47, i64 0}
!200 = !{i64 4}
!201 = !{!77, !76, i64 0}
!202 = !{!96, !95, i64 0}
!203 = !{!11, !11, i64 0}
!204 = !{!42, !41, i64 0}
!205 = !{!4, !4, i64 0}
!206 = !{!"_ZTSN7CaDiCaL5WatchE", !9, i64 0, !5, i64 8, !5, i64 12}
!207 = !{!206, !5, i64 12}
!208 = !{!206, !5, i64 8}
!209 = !{!206, !9, i64 0}
!210 = !{!23, !23, i64 0}
!211 = !{!164, !22, i64 320}
!212 = !{!26, !25, i64 8}
!213 = !{!26, !25, i64 16}
!214 = !{!26, !25, i64 0}
!215 = !{!164, !5, i64 3660}
!219 = distinct !{!219, !14}
!220 = !{!15, !11, i64 8}
!221 = !{!15, !11, i64 0}
!223 = distinct !{!223, i1 false, !"_ZSt19__relocate_object_aIN7CaDiCaL5WatchES1_SaIS1_EEvPT_PT0_RT1_"}
!224 = distinct !{!224, !223, !"_ZSt19__relocate_object_aIN7CaDiCaL5WatchES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!225 = distinct !{!225, !223, !"_ZSt19__relocate_object_aIN7CaDiCaL5WatchES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!226 = !{!224, !225}
end_hunk_0
