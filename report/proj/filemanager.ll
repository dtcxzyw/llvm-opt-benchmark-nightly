Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/filemanager?download=true
inline.NumInlined: 948
inline.NumDeleted: 275
begin_hunk_0_@_ZN5osgeo4proj4File9read_lineB5cxx11EmRbS2_:bb.a
bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit77
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.64, i64 noundef %.sroa.speculated, i64 noundef %i.dz) #32
          to label %.noexc82 unwind label %bb.aq

.noexc82:                                         ; preds = %bb.ah
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i78: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit77
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  store ptr %i.eb, ptr %7, align 8, !tbaa !10, !alias.scope !39
  %i.ec = load ptr, ptr %i.h, align 8, !tbaa !14, !noalias !39
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.sroa.speculated ; 2 uses
  %i.ee = sub nuw i64 %i.dz, %.sroa.speculated    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29, !noalias !39
  store i64 %i.ee, ptr %i.b, align 8, !tbaa !18, !noalias !39
  %i.ef = icmp ugt i64 %i.ee, 15
  br i1 %i.ef, label %.noexc10.i.i81, label %._crit_edge.i.i.i80

.noexc10.i.i81:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i78
  %i.eg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc83 unwind label %bb.aq  ; 2 uses

.noexc83:                                         ; preds = %.noexc10.i.i81
  store ptr %i.eg, ptr %7, align 8, !tbaa !14, !alias.scope !39
  %i.eh = load i64, ptr %i.b, align 8, !tbaa !18, !noalias !39
  store i64 %i.eh, ptr %i.eb, align 8, !tbaa !19, !alias.scope !39
  br label %._crit_edge.i.i.i80

._crit_edge.i.i.i80:                              ; preds = %.noexc83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i78
  %i.ei = phi ptr [ %i.eg, %.noexc83 ], [ %i.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i78 ] ; 2 uses
  switch i64 %i.ee, label %bb.aj [
    i64 1, label %bb.ai
    i64 0, label %bb.ak
  ]

bb.ai:                                            ; preds = %._crit_edge.i.i.i80
  %i.ej = load i8, ptr %i.ed, align 1, !tbaa !19
  store i8 %i.ej, ptr %i.ei, align 1, !tbaa !19
  br label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.i.i.i80
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ei, ptr align 1 %i.ed, i64 %i.ee, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge.i.i.i80
  %i.ek = load i64, ptr %i.b, align 8, !tbaa !18, !noalias !39 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i64 %i.ek, ptr %i.el, align 8, !tbaa !17, !alias.scope !39
  %i.em = load ptr, ptr %7, align 8, !tbaa !14, !alias.scope !39
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ek
  store i8 0, ptr %i.en, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29, !noalias !39
  %i.eo = load ptr, ptr %i.h, align 8, !tbaa !14  ; 6 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  %i.er = load ptr, ptr %7, align 8, !tbaa !14    ; 5 uses
  %i.es = icmp eq ptr %i.er, %i.eb                ; 2 uses
  br i1 %i.eq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i90: ; preds = %bb.ak
  br i1 %i.es, label %bb.al, label %.thread.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i85: ; preds = %bb.ak
  br i1 %i.es, label %bb.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i86

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i90
  %i.et = load i64, ptr %i.el, align 8, !tbaa !17 ; 3 uses
  %i.eu = icmp ult i64 %i.et, 16
  call void @llvm.assume(i1 %i.eu)
  switch i64 %i.et, label %bb.an [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i88
    i64 1, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al
  %i.ev = load i8, ptr %i.er, align 1, !tbaa !19
  store i8 %i.ev, ptr %i.eo, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i88

bb.an:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eo, ptr align 1 %i.er, i64 %i.et, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i88: ; preds = %bb.an, %bb.am, %bb.al
  %i.ew = load i64, ptr %i.el, align 8, !tbaa !17 ; 2 uses
  store i64 %i.ew, ptr %i.j, align 8, !tbaa !17
  %i.ex = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ew
  store i8 0, ptr %i.ey, align 1, !tbaa !19
  %.pre.i89 = load ptr, ptr %7, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit92

.thread.i91:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i90
  store ptr %i.er, ptr %i.h, align 8, !tbaa !14
  %i.ez = load <2 x i64>, ptr %i.el, align 8, !tbaa !19
  store <2 x i64> %i.ez, ptr %i.j, align 8, !tbaa !19
  br label %bb.ap

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i86: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i85
  %i.fa = load i64, ptr %i.ep, align 8, !tbaa !19
  store ptr %i.er, ptr %i.h, align 8, !tbaa !14
  %i.fb = load <2 x i64>, ptr %i.el, align 8, !tbaa !19
  store <2 x i64> %i.fb, ptr %i.j, align 8, !tbaa !19
  %.not.i87 = icmp eq ptr %i.eo, null
  br i1 %.not.i87, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i86
  store ptr %i.eo, ptr %7, align 8, !tbaa !14
  store i64 %i.fa, ptr %i.eb, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit92

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i86, %.thread.i91
  store ptr %i.eb, ptr %7, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i88, %bb.ao, %bb.ap
  %i.fc = phi ptr [ %i.eo, %bb.ao ], [ %i.eb, %bb.ap ], [ %.pre.i89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i88 ]
  store i64 0, ptr %i.el, align 8, !tbaa !17
  store i8 0, ptr %i.fc, align 1, !tbaa !19
  %i.fd = load ptr, ptr %7, align 8, !tbaa !14    ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.eb
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit92
  %i.ff = load i64, ptr %i.eb, align 8, !tbaa !19
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  store i8 1, ptr %3, align 1, !tbaa !29
  br label %.critedge

bb.aq:                                            ; preds = %.noexc10.i.i81, %bb.ah
  %i.fh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.fi = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.do
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.sink.split

bb.ar:                                            ; preds = %bb.ad
  %i.fk = load i8, ptr %i.k, align 8, !tbaa !20, !range !42, !noundef !43
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.fm, ptr %0, align 8, !tbaa !10
  %i.fn = load ptr, ptr %i.h, align 8, !tbaa !14  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.dn, ptr %i.a, align 8, !tbaa !18
  %i.fo = icmp ugt i64 %i.dn, 15
  br i1 %i.fo, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.as
  %i.fp = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.fp, ptr %0, align 8, !tbaa !14
  %i.fq = load i64, ptr %i.a, align 8, !tbaa !18
  store i64 %i.fq, ptr %i.fm, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.as
  %i.fr = phi ptr [ %i.fp, %.noexc.i ], [ %i.fm, %bb.as ] ; 2 uses
  switch i64 %i.dn, label %bb.au [
    i64 1, label %bb.at
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.at:                                            ; preds = %._crit_edge.i.i
  %i.fs = load i8, ptr %i.fn, align 1, !tbaa !19
  store i8 %i.fs, ptr %i.fr, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.au:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fr, ptr align 1 %i.fn, i64 %i.dn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.at, %bb.au
  %i.ft = load i64, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.ft, ptr %i.fu, align 8, !tbaa !17
  %i.fv = load ptr, ptr %0, align 8, !tbaa !14
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.ft
  store i8 0, ptr %i.fw, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  store i64 0, ptr %i.j, align 8, !tbaa !17
  %i.fx = load ptr, ptr %i.h, align 8, !tbaa !14
  store i8 0, ptr %i.fx, align 1, !tbaa !19
  store i8 0, ptr %3, align 1, !tbaa !29
  %i.fy = load i64, ptr %i.fu, align 8, !tbaa !17
  %i.fz = icmp eq i64 %i.fy, 0
  %i.ga = zext i1 %i.fz to i8
  br label %.critedge

bb.av:                                            ; preds = %bb.ar
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %.sroa.speculated, i8 noundef signext 0)
  %i.gb = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.dn
  %i.gd = sub nsw i64 %.sroa.speculated, %i.dn    ; 2 uses
  %i.ge = load ptr, ptr %1, align 8, !tbaa !8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = tail call noundef i64 %i.gg(ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull %i.gc, i64 noundef %i.gd) ; 2 uses
  %i.gi = icmp ult i64 %i.gh, %i.gd
  br i1 %i.gi, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i8 1, ptr %i.k, align 8, !tbaa !20
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.gj = add i64 %i.gh, %i.dn
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %i.gj, i8 noundef signext 0)
  %i.gk = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull @.str, i64 noundef 0, i64 noundef 2) #29 ; 2 uses
  %.not = icmp eq i64 %i.gk, -1
  br i1 %.not, label %bb.ad, label %._crit_edge, !llvm.loop !44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.sink.split: ; preds = %bb.aq, %bb.ac, %bb.n
  %.sink182.in = phi ptr [ %i.n, %bb.ac ], [ %i.n, %bb.n ], [ %i.do, %bb.aq ]
  %.sink180 = phi ptr [ %i.dl, %bb.ac ], [ %i.bi, %bb.n ], [ %i.fi, %bb.aq ]
  %.pn.ph = phi { ptr, i32 } [ %i.dk, %bb.ac ], [ %i.bh, %bb.n ], [ %i.fh, %bb.aq ]
  %.sink182 = load i64, ptr %.sink182.in, align 8, !tbaa !19
  %i.gl = add i64 %.sink182, 1
  call void @_ZdlPvm(ptr noundef %.sink180, i64 noundef %i.gl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.sink.split, %bb.aq, %bb.ac, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.n ], [ %i.dk, %bb.ac ], [ %i.fh, %bb.aq ], [ %.pn.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.sink.split ]
  resume { ptr, i32 } %.pn

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %.sink = phi i8 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ], [ %i.ga, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ]
  store i8 %.sink, ptr %4, align 1, !tbaa !29
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5osgeo4proj9FileStdioD2Ev(ptr nofree noundef nonnull align 8 captures(address) dead_on_return(96) dereferenceable(96) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5osgeo4proj9FileStdioE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = tail call i32 @fclose(ptr noundef %i.b)  ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5osgeo4proj4FileE, i64 16), ptr %0, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !19
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #30, !inline_history !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN5osgeo4proj4FileD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !19
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #30, !inline_history !50
  br label %_ZN5osgeo4proj4FileD2Ev.exit

_ZN5osgeo4proj4FileD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #29 ; 0 uses
  tail call void @_ZSt9terminatev() #31
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5osgeo4proj9FileStdioD0Ev(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5osgeo4proj9FileStdioE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = tail call i32 @fclose(ptr noundef %i.b), !inline_history !51 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5osgeo4proj4FileE, i64 16), ptr %0, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !19
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #30, !inline_history !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN5osgeo4proj9FileStdioD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !19
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #30, !inline_history !52
  br label %_ZN5osgeo4proj9FileStdioD2Ev.exit

_ZN5osgeo4proj9FileStdioD2Ev.exit:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #30
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden noundef i64 @_ZN5osgeo4proj9FileStdio4readEPvm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = tail call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %i.b)
  ret i64 %i.c
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden noundef i64 @_ZN5osgeo4proj9FileStdio5writeEPKvm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %i.b)
  ret i64 %i.c
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden noundef zeroext i1 @_ZN5osgeo4proj9FileStdio4seekEyi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = tail call i32 @fseek(ptr noundef %i.b, i64 noundef %1, i32 noundef %2)
  %i.d = icmp eq i32 %i.c, 0
  ret i1 %i.d
}

declare void @_Z6pj_logP6pj_ctxiPKcz(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden noundef i64 @_ZN5osgeo4proj9FileStdio4tellEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = tail call i64 @ftell(ptr noundef %i.b)
  ret i64 %i.c
}

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj9FileStdio4openEP6pj_ctxPKcNS0_10FileAccessE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = icmp eq i32 %3, 0
end_hunk_0
begin_hunk_1_@_Z11pj_load_iniP6pj_ctx:bb.a

bb.ad:                                            ; preds = %bb.ac
  %i.bg = add i64 %i.bf, -102401
  %or.cond = icmp ult i64 %i.bg, -102400
  br i1 %or.cond, label %_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i, label %bb.ah

bb.ae:                                            ; preds = %bb.z
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit168

bb.af:                                            ; preds = %bb.am, %bb.ab
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ag:                                            ; preds = %bb.ai, %bb.ah, %bb.ac
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i167

bb.ah:                                            ; preds = %bb.ad
  %i.bk = load ptr, ptr %i.ax, align 8, !tbaa !8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = invoke noundef zeroext i1 %i.bm(ptr noundef nonnull align 8 dereferenceable(73) %i.ax, i64 noundef 0, i32 noundef 0)
          to label %bb.ai unwind label %bb.ag     ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bf, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %bb.ag

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %bb.ai
  %i.bo = load ptr, ptr %1, align 8, !tbaa !14
  %i.bp = load i64, ptr %i.aw, align 8, !tbaa !17
  %i.bq = load ptr, ptr %i.ax, align 8, !tbaa !8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = invoke noundef i64 %i.bs(ptr noundef nonnull align 8 dereferenceable(73) %i.ax, ptr noundef nonnull %i.bo, i64 noundef %i.bp)
          to label %bb.aj unwind label %bb.ak     ; 2 uses

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.bu = load i64, ptr %i.aw, align 8, !tbaa !17
  %.not105 = icmp eq i64 %i.bt, %i.bu
  br i1 %.not105, label %bb.al, label %_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i167

bb.al:                                            ; preds = %._crit_edge, %bb.aj
  %i.bw = phi i64 [ %.pre, %._crit_edge ], [ %i.bt, %bb.aj ] ; 4 uses
  %i.bx = add i64 %i.bw, 1                        ; 3 uses
  %i.by = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.av
  br i1 %i.bz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.al
  %i.ca = icmp ult i64 %i.bw, 16
  call void @llvm.assume(i1 %i.ca)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.al
  %i.cb = load i64, ptr %i.av, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.cc = phi i64 [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.cd = icmp ugt i64 %i.bx, %i.cc
  br i1 %i.cd, label %bb.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bw, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.af

.noexc:                                           ; preds = %bb.am
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc
  %i.ce = phi ptr [ %.pre.i.i, %.noexc ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bw
  store i8 10, ptr %i.cf, align 1, !tbaa !19
  store i64 %i.bx, ptr %i.aw, align 8, !tbaa !17
  %i.cg = load ptr, ptr %1, align 8, !tbaa !14
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.bx
  store i8 0, ptr %i.ch, align 1, !tbaa !19
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %.not21.i = icmp eq ptr %4, %i.cm
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %bb.cd
  %.072250 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ], [ %i.kn, %bb.cd ] ; 7 uses
  %i.dc = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str, i64 noundef %.072250, i64 noundef 2) #29 ; 4 uses
  %i.dd = icmp eq i64 %i.dc, -1
  br i1 %i.dd, label %.critedge, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.de = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext 61, i64 noundef %.072250) #29 ; 4 uses
  %i.df = icmp ult i64 %i.de, %i.dc
  br i1 %i.df, label %bb.ap, label %bb.cd

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.dg = load i64, ptr %i.aw, align 8, !tbaa !17, !noalias !124 ; 3 uses
  %i.dh = icmp ugt i64 %.072250, %i.dg
  br i1 %i.dh, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.aq:                                            ; preds = %bb.ap
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.64, i64 noundef %.072250, i64 noundef %i.dg) #32
          to label %.noexc116 unwind label %.loopexit.split-lp

.noexc116:                                        ; preds = %bb.aq
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.ap
  %i.di = sub i64 %i.de, %.072250
  store ptr %i.ci, ptr %3, align 8, !tbaa !10, !alias.scope !124
  %i.dj = load ptr, ptr %1, align 8, !tbaa !14, !noalias !124
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.072250 ; 2 uses
  %i.dl = sub nuw i64 %i.dg, %.072250
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.di, i64 %i.dl) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29, !noalias !124
  store i64 %spec.select.i.i.i, ptr %i.b, align 8, !tbaa !18, !noalias !124
  %i.dm = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.dm, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.dn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc117 unwind label %.loopexit ; 2 uses

.noexc117:                                        ; preds = %.noexc10.i.i
  store ptr %i.dn, ptr %3, align 8, !tbaa !14, !alias.scope !124
  %i.do = load i64, ptr %i.b, align 8, !tbaa !18, !noalias !124
  store i64 %i.do, ptr %i.ci, align 8, !tbaa !19, !alias.scope !124
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.dp = phi ptr [ %i.dn, %.noexc117 ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.as [
    i64 1, label %bb.ar
    i64 0, label %bb.at
  ]

bb.ar:                                            ; preds = %._crit_edge.i.i.i
  %i.dq = load i8, ptr %i.dk, align 1, !tbaa !19
  store i8 %i.dq, ptr %i.dp, align 1, !tbaa !19
  br label %bb.at

bb.as:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dp, ptr align 1 %i.dk, i64 %spec.select.i.i.i, i1 false)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %._crit_edge.i.i.i
  %i.dr = load i64, ptr %i.b, align 8, !tbaa !18, !noalias !124 ; 2 uses
  store i64 %i.dr, ptr %i.cj, align 8, !tbaa !17, !alias.scope !124
  %i.ds = load ptr, ptr %3, align 8, !tbaa !14, !alias.scope !124
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dr
  store i8 0, ptr %i.dt, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29, !noalias !124
  invoke fastcc void @_ZL4trimRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.au unwind label %bb.bg

bb.au:                                            ; preds = %bb.at
  %i.du = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.ci
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.au
  %i.dw = load i64, ptr %i.ci, align 8, !tbaa !19
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.dy = add nuw i64 %i.de, 1                    ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.dz = load i64, ptr %i.aw, align 8, !tbaa !17, !noalias !127 ; 3 uses
  %.not205 = icmp ult i64 %i.de, %i.dz
  br i1 %.not205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i118, label %bb.av

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.64, i64 noundef %i.dy, i64 noundef %i.dz) #32
          to label %.noexc122 unwind label %.loopexit.split-lp208

.noexc122:                                        ; preds = %bb.av
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i118: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %6 = sub i64 %i.dc, %i.dy
  store ptr %i.ck, ptr %5, align 8, !tbaa !10, !alias.scope !127
  %i.ea = load ptr, ptr %1, align 8, !tbaa !14, !noalias !127
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dy ; 2 uses
  %7 = sub nuw i64 %i.dz, %i.dy
  %spec.select.i.i.i119 = call noundef i64 @llvm.umin.i64(i64 %6, i64 %7) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29, !noalias !127
  store i64 %spec.select.i.i.i119, ptr %i.a, align 8, !tbaa !18, !noalias !127
  %i.ec = icmp ugt i64 %spec.select.i.i.i119, 15
  br i1 %i.ec, label %.noexc10.i.i121, label %._crit_edge.i.i.i120

.noexc10.i.i121:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i118
  %i.ed = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc123 unwind label %.loopexit207 ; 2 uses

.noexc123:                                        ; preds = %.noexc10.i.i121
  store ptr %i.ed, ptr %5, align 8, !tbaa !14, !alias.scope !127
  %i.ee = load i64, ptr %i.a, align 8, !tbaa !18, !noalias !127
  store i64 %i.ee, ptr %i.ck, align 8, !tbaa !19, !alias.scope !127
  br label %._crit_edge.i.i.i120

._crit_edge.i.i.i120:                             ; preds = %.noexc123, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i118
  %i.ef = phi ptr [ %i.ed, %.noexc123 ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i118 ] ; 2 uses
  switch i64 %spec.select.i.i.i119, label %bb.ax [
    i64 1, label %bb.aw
    i64 0, label %bb.ay
  ]

bb.aw:                                            ; preds = %._crit_edge.i.i.i120
  %i.eg = load i8, ptr %i.eb, align 1, !tbaa !19
  store i8 %i.eg, ptr %i.ef, align 1, !tbaa !19
  br label %bb.ay

bb.ax:                                            ; preds = %._crit_edge.i.i.i120
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ef, ptr nonnull align 1 %i.eb, i64 %spec.select.i.i.i119, i1 false)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %._crit_edge.i.i.i120
  %i.eh = load i64, ptr %i.a, align 8, !tbaa !18, !noalias !127 ; 2 uses
  store i64 %i.eh, ptr %i.cl, align 8, !tbaa !17, !alias.scope !127
  %i.ei = load ptr, ptr %5, align 8, !tbaa !14, !alias.scope !127
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eh
  store i8 0, ptr %i.ej, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29, !noalias !127
  invoke fastcc void @_ZL4trimRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.az unwind label %bb.bh

bb.az:                                            ; preds = %bb.ay
  %i.ek = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.ck
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %bb.az
  %i.em = load i64, ptr %i.ck, align 8, !tbaa !19
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.eo = load i64, ptr %i.cn, align 8, !tbaa !17
  %i.ep = icmp eq i64 %i.eo, 0
  %.pre272.pre = load i64, ptr %i.co, align 8, !tbaa !17 ; 5 uses
  %i.eq = icmp eq i64 %.pre272.pre, 12
  %or.cond341 = select i1 %i.ep, i1 %i.eq, i1 false
  br i1 %or.cond341, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread185

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127
  %i.er = load ptr, ptr %2, align 8, !tbaa !14    ; 2 uses
  %i.es = load i64, ptr %i.er, align 1
  %i.et = xor i64 %i.es, 8098719411590816867
  %i.eu = getelementptr i8, ptr %i.er, i64 8
  %i.ev = load i32, ptr %i.eu, align 1
  %i.ew = zext i32 %i.ev to i64
  %i.ex = xor i64 %i.ew, 1953393007
  %i.ey = or i64 %i.et, %i.ex
  %i.ez = icmp ne i64 %i.ey, 0
  %i.fa = zext i1 %i.ez to i32
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread193

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.fc = load ptr, ptr %i.cm, align 8, !tbaa !14 ; 6 uses
  %i.fd = icmp eq ptr %i.fc, %i.cz
  %i.fe = load ptr, ptr %4, align 8, !tbaa !14    ; 6 uses
  %i.ff = icmp eq ptr %i.fe, %i.da                ; 2 uses
  br i1 %i.fd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  br i1 %i.ff, label %bb.ba, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  br i1 %i.ff, label %bb.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ba:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.fg = load i64, ptr %i.cp, align 8, !tbaa !17 ; 3 uses
  %i.fh = icmp ult i64 %i.fg, 16
  call void @llvm.assume(i1 %i.fh)
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.bb, !prof !110

bb.bb:                                            ; preds = %bb.ba
  switch i64 %i.fg, label %bb.bd [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.bc
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.fi = load i8, ptr %i.fe, align 1, !tbaa !19
  store i8 %i.fi, ptr %i.fc, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fc, ptr align 1 %i.fe, i64 %i.fg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.fj = load i64, ptr %i.cp, align 8, !tbaa !17 ; 2 uses
  store i64 %i.fj, ptr %i.cn, align 8, !tbaa !17
  %i.fk = load ptr, ptr %i.cm, align 8, !tbaa !14
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fj
  store i8 0, ptr %i.fl, align 1, !tbaa !19
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.fe, ptr %i.cm, align 8, !tbaa !14
  %i.fm = load <2 x i64>, ptr %i.cp, align 8, !tbaa !19
  store <2 x i64> %i.fm, ptr %i.cn, align 8, !tbaa !19
  br label %bb.bf

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.fn = load i64, ptr %i.cz, align 8, !tbaa !19
  store ptr %i.fe, ptr %i.cm, align 8, !tbaa !14
  %i.fo = load <2 x i64>, ptr %i.cp, align 8, !tbaa !19
  store <2 x i64> %i.fo, ptr %i.cn, align 8, !tbaa !19
  %.not.i = icmp eq ptr %i.fc, null
  br i1 %.not.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.fc, ptr %4, align 8, !tbaa !14
  store i64 %i.fn, ptr %i.da, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.bf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.da, ptr %4, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.be, %bb.bf
  %i.fp = phi ptr [ %i.fc, %bb.be ], [ %i.da, %bb.bf ], [ %i.fe, %bb.ba ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.cp, align 8, !tbaa !17
  store i8 0, ptr %i.fp, align 1, !tbaa !19
  br label %bb.cc

.loopexit:                                        ; preds = %.noexc10.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

.loopexit.split-lp:                               ; preds = %bb.aq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

bb.bg:                                            ; preds = %bb.at
  %i.fq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fr = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.ci
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %bb.bg
  %i.ft = load i64, ptr %i.ci, align 8, !tbaa !19
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %bb.bg, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128
  %.pn107 = phi { ptr, i32 } [ %i.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.fq, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

.loopexit207:                                     ; preds = %.noexc10.i.i121
  %lpad.loopexit209 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

.loopexit.split-lp208:                            ; preds = %bb.av
  %lpad.loopexit.split-lp210 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

bb.bh:                                            ; preds = %bb.ay
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fw = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.ck
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %bb.bh
  %i.fy = load i64, ptr %i.ck, align 8, !tbaa !19
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %bb.bh, %.loopexit207, %.loopexit.split-lp208, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131
  %.pn109 = phi { ptr, i32 } [ %i.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131 ], [ %lpad.loopexit.split-lp210, %.loopexit.split-lp208 ], [ %lpad.loopexit209, %.loopexit207 ], [ %i.fv, %bb.bh ]
end_hunk_1
