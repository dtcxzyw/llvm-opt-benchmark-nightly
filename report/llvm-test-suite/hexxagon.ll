inline.NumInlined: 20
inline.NumDeleted: 4
begin_hunk_0_@main:bb.a
  br i1 %.not233, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %puts234 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.71) ; 0 uses
  br label %.loopexit

bb.bt:                                            ; preds = %bb.br
  %i.cu = call i32 @strncasecmp(ptr noundef nonnull @.str.91, ptr noundef nonnull %i.a, i64 noundef 5) #18
  %.not235 = icmp eq i32 %i.cu, 0
  br i1 %.not235, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.cv = call i32 @strncasecmp(ptr noundef nonnull @.str.92, ptr noundef nonnull %i.a, i64 noundef 2) #18
  %.not236 = icmp eq i32 %i.cv, 0
  br i1 %.not236, label %bb.bv, label %bb.cf

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.cw = call i32 @strncasecmp(ptr noundef nonnull @.str.92, ptr noundef nonnull %i.a, i64 noundef 2) #18
  %.not237 = icmp eq i32 %i.cw, 0                 ; 4 uses
  %.sroa.gep285 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.sroa.gep286 = getelementptr inbounds nuw i8, ptr %i.a, i64 5 ; 2 uses
  %.0151.v.sroa.sel = select i1 %.not237, ptr %.sroa.gep285, ptr %.sroa.gep286 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.cx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0151.v.sroa.sel) #18
  %i.cy = trunc i64 %i.cx to i32
  switch i32 %i.cy, label %bb.cd [
    i32 5, label %.thread273
    i32 4, label %bb.bw
  ]

bb.bw:                                            ; preds = %bb.bv
  %i.cz = call noundef i32 @_Z10parseCordsPc(ptr noundef nonnull %.0151.v.sroa.sel)
  %i.da = trunc i32 %i.cz to i8                   ; 2 uses
  store i8 %i.da, ptr %2, align 4, !tbaa !19
  %.0151.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not237, i64 4, i64 7
  %.0151.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0151.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.db = call noundef i32 @_Z10parseCordsPc(ptr noundef nonnull %.0151.sroa.sel.v.sroa.sel.v.sroa.sel)
  %i.dc = trunc i32 %i.db to i8                   ; 2 uses
  store i8 %i.dc, ptr %i.g, align 1, !tbaa !21
  %i.dd = icmp ne i8 %i.da, -1
  %i.de = icmp ne i8 %i.dc, -1
  %i.df = and i1 %i.dd, %i.de
  br i1 %i.df, label %bb.bx, label %bb.cc

.thread273:                                       ; preds = %bb.bv
  %i.dg = call noundef i32 @_Z10parseCordsPc(ptr noundef nonnull %.0151.v.sroa.sel)
  %i.dh = trunc i32 %i.dg to i8                   ; 2 uses
  store i8 %i.dh, ptr %2, align 4, !tbaa !19
  %.sroa.gep288 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.0151.sroa.sel268.v.sroa.sel = select i1 %.not237, ptr %.sroa.gep286, ptr %.sroa.gep288
  %i.di = call noundef i32 @_Z10parseCordsPc(ptr noundef nonnull %.0151.sroa.sel268.v.sroa.sel)
  %i.dj = trunc i32 %i.di to i8                   ; 2 uses
  store i8 %i.dj, ptr %i.g, align 1, !tbaa !21
  %i.dk = icmp ne i8 %i.dh, -1
  %i.dl = icmp ne i8 %i.dj, -1
  %or.cond274 = and i1 %i.dl, %i.dk
  br i1 %or.cond274, label %bb.bx, label %.thread275

bb.bx:                                            ; preds = %.thread273, %bb.bw
  %i.dm = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.dn = call noundef i32 @_ZN13HexxagonBoard11isMoveValidER12HexxagonMove(ptr noundef nonnull align 4 dereferenceable(16) %i.dm, ptr noundef nonnull align 4 dereferenceable(8) %2)
  %.not242 = icmp eq i32 %i.dn, 0
  br i1 %.not242, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.do = call noundef i32 @_ZN12HexxagonGame9applyMoveER12HexxagonMove(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 4 dereferenceable(8) %2) ; 0 uses
  %i.dp = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.dq = load i32, ptr %i.b, align 8, !tbaa !15
  call void @_ZN13HexxagonBoard16displayBoardTextEi(ptr noundef nonnull align 4 dereferenceable(16) %i.dp, i32 noundef %i.dq)
  %i.dr = call noundef i32 @_ZN12HexxagonGame12computerMoveEiPFvvEi(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i32 noundef 4, ptr noundef null, i32 noundef 12000) ; 0 uses
  %i.ds = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.dt = load i32, ptr %i.b, align 8, !tbaa !15
  call void @_ZN13HexxagonBoard16displayBoardTextEi(ptr noundef nonnull align 4 dereferenceable(16) %i.ds, i32 noundef %i.dt)
  br label %bb.ce

bb.bz:                                            ; preds = %bb.bx
  %puts243 = call i32 @puts(ptr nonnull dereferenceable(1) @str.80) ; 0 uses
  br label %bb.ce

.thread275:                                       ; preds = %.thread273
  %.0151.sroa.sel265.v.sroa.sel.v.sroa.sel.v = select i1 %.not237, i64 4, i64 7
  %.0151.sroa.sel265.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0151.sroa.sel265.v.sroa.sel.v.sroa.sel.v
  %i.du = load i8, ptr %.0151.sroa.sel265.v.sroa.sel.v.sroa.sel, align 1, !tbaa !8
  %i.dv = icmp eq i8 %i.du, 32
  br i1 %i.dv, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %.thread275
  %puts241 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.75) ; 0 uses
  br label %bb.ce

bb.cb:                                            ; preds = %.thread275
  %puts240 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.77) ; 0 uses
  br label %bb.ce

bb.cc:                                            ; preds = %bb.bw
  %puts239 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.75) ; 0 uses
  br label %bb.ce

bb.cd:                                            ; preds = %bb.bv
  %puts238 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.77) ; 0 uses
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cb, %bb.ca, %bb.cd, %bb.cc, %bb.bz, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.loopexit

bb.cf:                                            ; preds = %bb.bu
  %i.dw = call i32 @strcasecmp(ptr noundef nonnull @.str.96, ptr noundef nonnull %i.a) #18
  %.not245 = icmp eq i32 %i.dw, 0
  br i1 %.not245, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.dx = call i32 @strcasecmp(ptr noundef nonnull @.str.97, ptr noundef nonnull %i.a) #18
  %.not246 = icmp eq i32 %i.dx, 0
  br i1 %.not246, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %puts247 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.77) ; 0 uses
  br label %.loopexit

bb.ci:                                            ; preds = %bb.cg
  %i.dy = call i32 @strncasecmp(ptr noundef nonnull @.str.98, ptr noundef nonnull %i.a, i64 noundef 6) #18
  %.not248 = icmp eq i32 %i.dy, 0
  br i1 %.not248, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.dz = call i32 @strncasecmp(ptr noundef nonnull @.str.99, ptr noundef nonnull %i.a, i64 noundef 2) #18
  %.not249 = icmp eq i32 %i.dz, 0
  br i1 %.not249, label %bb.ck, label %bb.cs

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.ea = call i32 @strncasecmp(ptr noundef nonnull @.str.99, ptr noundef nonnull %i.a, i64 noundef 2) #18
  %.not250 = icmp eq i32 %i.ea, 0
  %.0.v.sroa.sel.v.sroa.sel.v = select i1 %.not250, i64 2, i64 6
  %.0.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.v.sroa.sel.v.sroa.sel.v ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.eb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.v.sroa.sel.v.sroa.sel) #18
  %i.ec = icmp eq i64 %i.eb, 2
  br i1 %i.ec, label %bb.cl, label %bb.cq

bb.cl:                                            ; preds = %bb.ck
  %i.ed = call noundef i32 @_Z10parseCordsPc(ptr noundef nonnull %.0.v.sroa.sel.v.sroa.sel) ; 2 uses
  %i.ee = trunc i32 %i.ed to i8                   ; 2 uses
  store i8 %i.ee, ptr %i.f, align 1, !tbaa !21
  store i8 %i.ee, ptr %3, align 4, !tbaa !19
  %sext252.mask = and i32 %i.ed, 255
  %.not253 = icmp eq i32 %sext252.mask, 255
  br i1 %.not253, label %bb.cp, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ef = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.eg = call noundef i32 @_ZN13HexxagonBoard11isMoveValidER12HexxagonMove(ptr noundef nonnull align 4 dereferenceable(16) %i.ef, ptr noundef nonnull align 4 dereferenceable(8) %3)
  %.not255 = icmp eq i32 %i.eg, 0
  br i1 %.not255, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.eh = call noundef i32 @_ZN12HexxagonGame9applyMoveER12HexxagonMove(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 4 dereferenceable(8) %3) ; 0 uses
  %i.ei = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.ej = load i32, ptr %i.b, align 8, !tbaa !15
  call void @_ZN13HexxagonBoard16displayBoardTextEi(ptr noundef nonnull align 4 dereferenceable(16) %i.ei, i32 noundef %i.ej)
  %i.ek = call noundef i32 @_ZN12HexxagonGame12computerMoveEiPFvvEi(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i32 noundef 4, ptr noundef null, i32 noundef 12000) ; 0 uses
  %i.el = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.em = load i32, ptr %i.b, align 8, !tbaa !15
  call void @_ZN13HexxagonBoard16displayBoardTextEi(ptr noundef nonnull align 4 dereferenceable(16) %i.el, i32 noundef %i.em)
  br label %bb.cr

bb.co:                                            ; preds = %bb.cm
  %puts256 = call i32 @puts(ptr nonnull dereferenceable(1) @str.80) ; 0 uses
  br label %bb.cr

bb.cp:                                            ; preds = %bb.cl
  %puts254 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.79) ; 0 uses
  br label %bb.cr

bb.cq:                                            ; preds = %bb.ck
  %puts251 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.81) ; 0 uses
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cp, %bb.cn, %bb.co, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %.loopexit

bb.cs:                                            ; preds = %bb.cj
  %i.en = call i32 @strcasecmp(ptr noundef nonnull @.str.102, ptr noundef nonnull %i.a) #18
  %.not258 = icmp eq i32 %i.en, 0
  br i1 %.not258, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.eo = call i32 @strcasecmp(ptr noundef nonnull @.str.103, ptr noundef nonnull %i.a) #18
  %.not259 = icmp eq i32 %i.eo, 0
  br i1 %.not259, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %puts260 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.81) ; 0 uses
  br label %.loopexit

bb.cv:                                            ; preds = %bb.ct
  %puts261 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.82) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.e, %bb.bo, %bb.l, %bb.j, %bb.o, %bb.w, %bb.ac, %bb.ab, %bb.ai, %bb.aq, %bb.ax, %bb.bs, %bb.ch, %bb.cu, %bb.cv, %bb.cr, %bb.ce, %bb.bq, %bb.bj, %bb.bp, %bb.af, %bb.ag, %bb.y, %bb.m, %bb.h, %bb.f, %.thread, %bb.u, %bb.t, %bb.am, %bb.ao, %bb.an, %bb.al, %bb.au, %bb.av, %bb.at, %bb.bf, %bb.bf, %bb.bl, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 0

bb.cw:                                            ; preds = %bb.bg, %bb.d
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.bg ], [ %i.o, %bb.d ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

declare void @_ZN12HexxagonGameC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

declare noundef i32 @_ZN12HexxagonGame4prevEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare noundef i32 @_ZN12HexxagonGame4nextEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare noundef i32 @_ZN12HexxagonGame12computerMoveEiPFvvEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZN12HexxagonGame8loadGameEPc(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #5

declare noundef i32 @_ZN12HexxagonGame8saveGameEPc(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12HexxagonGameD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN12HexxagonGame11destroyRestEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void

bb.e:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #20
  unreachable
}

declare noundef i32 @_ZN12HexxagonGame9applyMoveER12HexxagonMove(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN13HexxagonBoard16displayBoardTextEi(ptr noundef nonnull align 4 dereferenceable(16), i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

declare void @_ZN12HexxagonGame11destroyRestEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #14

declare noundef i32 @_ZN13HexxagonBoard9endOfGameEv(ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #5

declare noundef i32 @_ZN13HexxagonBoard11isMoveValidER12HexxagonMove(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { nofree nounwind }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !13, i64 16}
!12 = !{!"_ZTS12HexxagonGame", !5, i64 0, !13, i64 8, !13, i64 16}
!13 = !{!"p1 _ZTS8GameList", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!12, !5, i64 0}
!16 = distinct !{!16, !10}
!17 = distinct !{null}
!18 = distinct !{!18, !10}
!19 = !{!20, !6, i64 0}
!20 = !{!"_ZTS12HexxagonMove", !6, i64 0, !6, i64 1, !5, i64 4}
!21 = !{!20, !6, i64 1}
!22 = !{!12, !13, i64 8}
end_hunk_0
