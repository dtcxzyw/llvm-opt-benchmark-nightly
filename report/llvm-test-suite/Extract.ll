begin_hunk_0
define dso_local noundef i32 @_Z18DecompressArchivesP7CCodecsRK13CRecordVectorIiER13CObjectVectorI11CStringBaseIwEES9_RKN9NWildcard11CCensorNodeERK15CExtractOptionsP15IOpenCallbackUIP18IExtractCallbackUIRS7_R15CDecompressStat(ptr noundef %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %8, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 44)) %9) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %class.CRecordVector.13, align 8   ; 11 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %11 = alloca %class.CStringBase, align 8        ; 9 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %12 = alloca %class.CObjectVector.1, align 8    ; 11 uses
end_hunk_0
begin_hunk_1

_ZN11CStringBaseIwED2Ev.exit.i:                   ; preds = %bb.dn, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  switch i32 %.496.i, label %bb.du [
    i32 0, label %bb.do
    i32 4, label %bb.do
  ]
end_hunk_1
begin_hunk_2
._crit_edge.i:                                    ; preds = %bb.do, %.preheader.i
  %i.ny = load i32, ptr %i.cs, align 4, !tbaa !38
  %i.nz = icmp eq i32 %i.ny, 0
  br i1 %i.nz, label %bb.ds, label %.thread168.i

.thread168.i:                                     ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.dw

bb.ds:                                            ; preds = %._crit_edge.i
  %i.oa = load ptr, ptr %7, align 8, !tbaa !12
end_hunk_2
begin_hunk_3
          cleanup
  br label %bb.dv

.thread164.i:                                     ; preds = %bb.ds, %bb.cy
  %.6.ph.i = phi i32 [ 0, %bb.ds ], [ %i.mx, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.fv

bb.du:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.fv

bb.dv:                                            ; preds = %bb.dt, %_ZN11CStringBaseIwED2Ev.exit123.i, %bb.cz
  %.pn108.i = phi { ptr, i32 } [ %i.oe, %bb.dt ], [ %.pn.pn.pn.i, %_ZN11CStringBaseIwED2Ev.exit123.i ], [ %i.mz, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.fu

bb.dw:                                            ; preds = %.thread168.i, %._crit_edge431
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.cv, align 8, !tbaa !8
end_hunk_3
begin_hunk_4
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %.body306

bb.fv:                                            ; preds = %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit.i, %bb.du, %.thread164.i
  %.4 = phi i64 [ %.1318, %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit.i ], [ 0, %.thread164.i ], [ 0, %bb.du ]
  %.10.i = phi i32 [ %.9.i, %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit.i ], [ %.6.ph.i, %.thread164.i ], [ %.4.i, %bb.du ] ; 2 uses
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %.not274 = icmp eq i32 %.10.i, 0
end_hunk_4
