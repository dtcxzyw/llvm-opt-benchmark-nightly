Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/crow/original/example?download=true
inline.NumInlined: 14924
inline.NumDeleted: 5588
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN4crow7utilityL17sanitize_filenameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc:bb.a
  %i.dw = sext i8 %i.dv to i32                    ; 2 uses
  %i.dx = add i8 %i.dv, -97
  %or.cond.i.i108.2 = icmp ult i8 %i.dx, 26
  %i.dy = add nsw i32 %i.dw, -32
  %i.dz = select i1 %or.cond.i.i108.2, i32 %i.dy, i32 %i.dw
  %.not42.i109.2 = icmp eq i32 %i.dz, 84
  br i1 %.not42.i109.2, label %._crit_edge.i111, label %_ZZN4crow7utilityL17sanitize_filenameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcENKUlS7_jPKcbcE_clES7_jS9_bc.exit

._crit_edge.i111:                                 ; preds = %bb.ac
  %i.ea = zext i32 %indvars.iv239 to i64          ; 2 uses
  %.not39.i112 = icmp ugt i64 %i.e, %i.ea
  br i1 %.not39.i112, label %bb.ad, label %_ZZN4crow7utilityL17sanitize_filenameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcENKUlS7_jPKcbcE_clES7_jS9_bc.exit

bb.ad:                                            ; preds = %._crit_edge.i111
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !114
  %i.ed = add i8 %i.ec, -58
  %or.cond.i113 = icmp ult i8 %i.ed, -9
  br i1 %or.cond.i113, label %_ZZN4crow7utilityL17sanitize_filenameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcENKUlS7_jPKcbcE_clES7_jS9_bc.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ee = add i32 %indvars.iv, 2
  %i.ef = zext i32 %i.ee to i64                   ; 2 uses
  %.not40.i114 = icmp ugt i64 %i.e, %i.ef
  br i1 %.not40.i114, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.eg = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !114
  switch i8 %i.eh, label %_ZZN4crow7utilityL17sanitize_filenameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcENKUlS7_jPKcbcE_clES7_jS9_bc.exit [
    i8 46, label %bb.ag
    i8 58, label %bb.ag
    i8 47, label %bb.ag
    i8 92, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af, %bb.af, %bb.af, %bb.af, %bb.ae
  %i.ei = icmp ult i64 %i.e, %i.dl
  br i1 %i.ei, label %bb.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i118

bb.ah:                                            ; preds = %bb.ag
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.300, ptr noundef nonnull @.str.383, i64 noundef %i.dl, i64 noundef %i.e) #39
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i118: ; preds = %bb.ag
  %i.ej = sub nuw i64 %i.e, %i.dl
  %spec.select.i.i.i117 = tail call noundef i64 @llvm.umin.i64(i64 %i.ej, i64 3)
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.dl, i64 noundef %spec.select.i.i.i117)
  br label %_ZZN4crow7utilityL17sanitize_filenameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcENKUlS7_jPKcbcE_clES7_jS9_bc.exit.sink.split

bb.ai:                                            ; preds = %.preheader164.preheader
  %i.ek = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.p
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !114 ; 2 uses
  %i.em = sext i8 %i.el to i32                    ; 2 uses
  %i.en = add i8 %i.el, -97
  %or.cond.i.i123 = icmp ult i8 %i.en, 26
  %i.eo = add nsw i32 %i.em, -32
  %i.ep = select i1 %or.cond.i.i123, i32 %i.eo, i32 %i.em
  %.not42.i124 = icmp eq i32 %i.ep, 78
  br i1 %.not42.i124, label %.preheader164.1, label %_ZZN4crow7utilityL17sanitize_filenameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcENKUlS7_jPKcbcE_clES7_jS9_bc.exit

.preheader164.1:                                  ; preds = %bb.ai
  %i.eq = add i32 %.0200, 1
  %i.er = zext i32 %i.eq to i64                   ; 6 uses
  %.not41.i122.1 = icmp ugt i64 %i.e, %i.er
  br i1 %.not41.i122.1, label %bb.aj, label %_ZZN4crow7utilityL17sanitize_filenameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcENKUlS7_jPKcbcE_clES7_jS9_bc.exit

bb.aj:                                            ; preds = %.preheader164.1
  %i.es = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !114 ; 2 uses
  %i.eu = sext i8 %i.et to i32                    ; 2 uses
  %i.ev = add i8 %i.et, -97
  %or.cond.i.i123.1 = icmp ult i8 %i.ev, 26
  %i.ew = add nsw i32 %i.eu, -32
  %i.ex = select i1 %or.cond.i.i123.1, i32 %i.ew, i32 %i.eu
  %.not42.i124.1 = icmp eq i32 %i.ex, 85
  br i1 %.not42.i124.1, label %.preheader164.2, label %_ZZN4crow7utilityL17sanitize_filenameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcENKUlS7_jPKcbcE_clES7_jS9_bc.exit

.preheader164.2:                                  ; preds = %bb.aj
  %i.ey = add i32 %.0200, 2
  %i.ez = zext i32 %i.ey to i64                   ; 2 uses
  %.not41.i122.2 = icmp ugt i64 %i.e, %i.ez
  br i1 %.not41.i122.2, label %bb.ak, label %_ZZN4crow7utilityL17sanitize_filenameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcENKUlS7_jPKcbcE_clES7_jS9_bc.exit

bb.ak:                                            ; preds = %.preheader164.2
  %i.fa = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !114 ; 2 uses
  %i.fc = sext i8 %i.fb to i32                    ; 2 uses
  %i.fd = add i8 %i.fb, -97
  %or.cond.i.i123.2 = icmp ult i8 %i.fd, 26
  %i.fe = add nsw i32 %i.fc, -32
  %i.ff = select i1 %or.cond.i.i123.2, i32 %i.fe, i32 %i.fc
  %.not42.i124.2 = icmp eq i32 %i.ff, 76
  br i1 %.not42.i124.2, label %._crit_edge.i126, label %_ZZN4crow7utilityL17sanitize_filenameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcENKUlS7_jPKcbcE_clES7_jS9_bc.exit

._crit_edge.i126:                                 ; preds = %bb.ak
  %i.fg = zext i32 %indvars.iv239 to i64          ; 2 uses
  %.not40.i127 = icmp ugt i64 %i.e, %i.fg
  br i1 %.not40.i127, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge.i126
  %i.fh = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !114
  switch i8 %i.fi, label %_ZZN4crow7utilityL17sanitize_filenameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcENKUlS7_jPKcbcE_clES7_jS9_bc.exit [
    i8 46, label %bb.am
    i8 58, label %bb.am
    i8 47, label %bb.am
    i8 92, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al, %bb.al, %bb.al, %bb.al, %._crit_edge.i126
  %i.fj = icmp ult i64 %i.e, %i.er
  br i1 %i.fj, label %bb.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i131

bb.an:                                            ; preds = %bb.am
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.300, ptr noundef nonnull @.str.383, i64 noundef %i.er, i64 noundef %i.e) #39
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i131: ; preds = %bb.am
  %i.fk = sub nuw i64 %i.e, %i.er
  %spec.select.i.i.i130 = tail call noundef i64 @llvm.umin.i64(i64 %i.fk, i64 2)
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.er, i64 noundef %spec.select.i.i.i130)
  br label %_ZZN4crow7utilityL17sanitize_filenameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcENKUlS7_jPKcbcE_clES7_jS9_bc.exit.sink.split

bb.ao:                                            ; preds = %.preheader166.preheader
  %i.fl = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.o
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !114 ; 2 uses
  %i.fn = sext i8 %i.fm to i32                    ; 2 uses
  %i.fo = add i8 %i.fm, -97
  %or.cond.i.i136 = icmp ult i8 %i.fo, 26
  %i.fp = add nsw i32 %i.fn, -32
  %i.fq = select i1 %or.cond.i.i136, i32 %i.fp, i32 %i.fn
  %.not42.i137 = icmp eq i32 %i.fq, 80
  br i1 %.not42.i137, label %.preheader166.1, label %_ZZN4crow7utilityL17sanitize_filenameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcENKUlS7_jPKcbcE_clES7_jS9_bc.exit

.preheader166.1:                                  ; preds = %bb.ao
  %i.fr = add i32 %.0200, 1
  %i.fs = zext i32 %i.fr to i64                   ; 6 uses
  %.not41.i135.1 = icmp ugt i64 %i.e, %i.fs
  br i1 %.not41.i135.1, label %bb.ap, label %_ZZN4crow7utilityL17sanitize_filenameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcENKUlS7_jPKcbcE_clES7_jS9_bc.exit

bb.ap:                                            ; preds = %.preheader166.1
  %i.ft = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !114 ; 2 uses
  %i.fv = sext i8 %i.fu to i32                    ; 2 uses
  %i.fw = add i8 %i.fu, -97
  %or.cond.i.i136.1 = icmp ult i8 %i.fw, 26
  %i.fx = add nsw i32 %i.fv, -32
  %i.fy = select i1 %or.cond.i.i136.1, i32 %i.fx, i32 %i.fv
  %.not42.i137.1 = icmp eq i32 %i.fy, 82
  br i1 %.not42.i137.1, label %.preheader166.2, label %_ZZN4crow7utilityL17sanitize_filenameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcENKUlS7_jPKcbcE_clES7_jS9_bc.exit

.preheader166.2:                                  ; preds = %bb.ap
  %i.fz = add i32 %.0200, 2
  %i.ga = zext i32 %i.fz to i64                   ; 2 uses
  %.not41.i135.2 = icmp ugt i64 %i.e, %i.ga
  br i1 %.not41.i135.2, label %bb.aq, label %_ZZN4crow7utilityL17sanitize_filenameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcENKUlS7_jPKcbcE_clES7_jS9_bc.exit

bb.aq:                                            ; preds = %.preheader166.2
  %i.gb = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !114 ; 2 uses
  %i.gd = sext i8 %i.gc to i32                    ; 2 uses
  %i.ge = add i8 %i.gc, -97
  %or.cond.i.i136.2 = icmp ult i8 %i.ge, 26
  %i.gf = add nsw i32 %i.gd, -32
  %i.gg = select i1 %or.cond.i.i136.2, i32 %i.gf, i32 %i.gd
  %.not42.i137.2 = icmp eq i32 %i.gg, 78
  br i1 %.not42.i137.2, label %._crit_edge.i139, label %_ZZN4crow7utilityL17sanitize_filenameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcENKUlS7_jPKcbcE_clES7_jS9_bc.exit

._crit_edge.i139:                                 ; preds = %bb.aq
  %i.gh = zext i32 %indvars.iv239 to i64          ; 2 uses
  %.not40.i140 = icmp ugt i64 %i.e, %i.gh
  br i1 %.not40.i140, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %._crit_edge.i139
  %i.gi = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !114
  switch i8 %i.gj, label %_ZZN4crow7utilityL17sanitize_filenameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcENKUlS7_jPKcbcE_clES7_jS9_bc.exit [
    i8 46, label %bb.as
    i8 58, label %bb.as
    i8 47, label %bb.as
    i8 92, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar, %bb.ar, %bb.ar, %bb.ar, %._crit_edge.i139
  %i.gk = icmp ult i64 %i.e, %i.fs
  br i1 %i.gk, label %bb.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i144

bb.at:                                            ; preds = %bb.as
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.300, ptr noundef nonnull @.str.383, i64 noundef %i.fs, i64 noundef %i.e) #39
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i144: ; preds = %bb.as
  %i.gl = sub nuw i64 %i.e, %i.fs
  %spec.select.i.i.i143 = tail call noundef i64 @llvm.umin.i64(i64 %i.gl, i64 2)
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.fs, i64 noundef %spec.select.i.i.i143)
  br label %_ZZN4crow7utilityL17sanitize_filenameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcENKUlS7_jPKcbcE_clES7_jS9_bc.exit.sink.split

bb.au:                                            ; preds = %.preheader168.preheader
  %i.gm = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.n
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !114 ; 2 uses
  %1 = sext i8 %i.gn to i32                       ; 2 uses
  %2 = add i8 %i.gn, -97
  %or.cond.i.i149 = icmp ult i8 %2, 26
  %3 = add nsw i32 %1, -32
  %4 = select i1 %or.cond.i.i149, i32 %3, i32 %1
  %.not42.i150 = icmp eq i32 %4, 46
  br i1 %.not42.i150, label %.preheader168.1, label %_ZZN4crow7utilityL17sanitize_filenameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcENKUlS7_jPKcbcE_clES7_jS9_bc.exit

.preheader168.1:                                  ; preds = %bb.au
  %i.go = add i32 %.0200, 1
  %i.gp = zext i32 %i.go to i64                   ; 6 uses
  %.not41.i148.1 = icmp ugt i64 %i.e, %i.gp
  br i1 %.not41.i148.1, label %bb.av, label %_ZZN4crow7utilityL17sanitize_filenameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcENKUlS7_jPKcbcE_clES7_jS9_bc.exit

bb.av:                                            ; preds = %.preheader168.1
  %i.gq = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !114 ; 2 uses
  %5 = sext i8 %i.gr to i32                       ; 2 uses
  %6 = add i8 %i.gr, -97
  %or.cond.i.i149.1 = icmp ult i8 %6, 26
  %7 = add nsw i32 %5, -32
  %8 = select i1 %or.cond.i.i149.1, i32 %7, i32 %5
  %.not42.i150.1 = icmp eq i32 %8, 46
  br i1 %.not42.i150.1, label %._crit_edge.i152, label %_ZZN4crow7utilityL17sanitize_filenameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcENKUlS7_jPKcbcE_clES7_jS9_bc.exit

._crit_edge.i152:                                 ; preds = %bb.av
  %i.gs = zext i32 %indvars.iv to i64             ; 2 uses
  %.not40.i153 = icmp ugt i64 %i.e, %i.gs
  br i1 %.not40.i153, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %._crit_edge.i152
  %i.gt = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !114
  switch i8 %i.gu, label %_ZZN4crow7utilityL17sanitize_filenameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcENKUlS7_jPKcbcE_clES7_jS9_bc.exit [
    i8 46, label %bb.ax
    i8 58, label %bb.ax
    i8 47, label %bb.ax
    i8 92, label %bb.ax
  ]

bb.ax:                                            ; preds = %bb.aw, %bb.aw, %bb.aw, %bb.aw, %._crit_edge.i152
  %i.gv = icmp ult i64 %i.e, %i.gp
  br i1 %i.gv, label %bb.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i157

bb.ay:                                            ; preds = %bb.ax
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.300, ptr noundef nonnull @.str.383, i64 noundef %i.gp, i64 noundef %i.e) #39
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i157: ; preds = %bb.ax
  %i.gw = icmp ne i64 %i.e, %i.gp
  %spec.select.i.i.i156 = zext i1 %i.gw to i64
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.gp, i64 noundef %spec.select.i.i.i156)
  br label %_ZZN4crow7utilityL17sanitize_filenameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcENKUlS7_jPKcbcE_clES7_jS9_bc.exit.sink.split

_ZZN4crow7utilityL17sanitize_filenameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcENKUlS7_jPKcbcE_clES7_jS9_bc.exit.sink.split: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i144, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i157
  %.pre241 = load ptr, ptr %0, align 8, !tbaa !113
  %i.gx = getelementptr inbounds nuw i8, ptr %.pre241, i64 %i.f
  store i8 95, ptr %i.gx, align 1, !tbaa !114
  br label %_ZZN4crow7utilityL17sanitize_filenameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcENKUlS7_jPKcbcE_clES7_jS9_bc.exit

_ZZN4crow7utilityL17sanitize_filenameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcENKUlS7_jPKcbcE_clES7_jS9_bc.exit: ; preds = %_ZZN4crow7utilityL17sanitize_filenameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcENKUlS7_jPKcbcE_clES7_jS9_bc.exit.sink.split, %bb.au, %.preheader168.preheader, %.preheader168.1, %bb.av, %bb.ao, %.preheader166.preheader, %.preheader166.1, %bb.ap, %.preheader166.2, %bb.aq, %bb.ai, %.preheader164.preheader, %.preheader164.1, %bb.aj, %.preheader164.2, %bb.ak, %bb.aa, %.preheader162.preheader, %.preheader162.1, %bb.ab, %.preheader162.2, %bb.ac, %bb.q, %_ZZN4crow7utilityL17sanitize_filenameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcENKUlS7_jPKcbcE_clES7_jS9_bc.exit90, %bb.r, %bb.s, %bb.t, %bb.u, %bb.e, %.preheader.preheader, %.preheader.1, %bb.f, %.preheader.2, %bb.g, %bb.aw, %bb.ar, %bb.al, %bb.af, %bb.ad, %._crit_edge.i111, %bb.x, %bb.v, %._crit_edge.i97, %bb.h, %bb.d, %.lr.ph
  %i.gy = load ptr, ptr %0, align 8, !tbaa !113
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.f ; 2 uses
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !114
  %.fr = freeze i8 %i.ha                          ; 2 uses
  %i.hb = and i8 %.fr, 96
  %or.cond159 = icmp eq i8 %i.hb, 0
  br i1 %or.cond159, label %.sink.split, label %switch.early.test

switch.early.test:                                ; preds = %_ZZN4crow7utilityL17sanitize_filenameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcENKUlS7_jPKcbcE_clES7_jS9_bc.exit
  switch i8 %.fr, label %bb.ba [
    i8 124, label %.sink.split
    i8 63, label %.sink.split
    i8 62, label %.sink.split
    i8 60, label %.sink.split
    i8 58, label %.sink.split
    i8 42, label %.sink.split
    i8 34, label %.sink.split
    i8 92, label %bb.az
    i8 47, label %bb.az
  ]

bb.az:                                            ; preds = %switch.early.test, %switch.early.test
  %i.hc = icmp eq i32 %.0200, 0
  br i1 %i.hc, label %.sink.split, label %bb.ba, !prof !117

.sink.split:                                      ; preds = %bb.az, %_ZZN4crow7utilityL17sanitize_filenameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcENKUlS7_jPKcbcE_clES7_jS9_bc.exit, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test
  store i8 95, ptr %i.gz, align 1, !tbaa !114
  br label %bb.ba

bb.ba:                                            ; preds = %.sink.split, %switch.early.test, %bb.az
  %.2 = phi i1 [ false, %switch.early.test ], [ true, %bb.az ], [ false, %.sink.split ]
  %i.hd = add i32 %.0200, 1                       ; 2 uses
  %i.he = zext i32 %i.hd to i64                   ; 2 uses
  %i.hf = load i64, ptr %i.a, align 8, !tbaa !115 ; 2 uses
  %i.hg = icmp ugt i64 %i.hf, %i.he
  %indvars.iv.next = add i32 %indvars.iv, 1
  %indvars.iv.next240 = add i32 %indvars.iv239, 1
  br i1 %i.hg, label %.lr.ph, label %._crit_edge, !llvm.loop !1707
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4crow8mustache14default_loaderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 10 uses
  %3 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %4 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::basic_ifstream", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.crow::logger", align 8     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  %i.d = load atomic i8, ptr @_ZGVZN4crow8mustache6detail31get_template_base_directory_refB5cxx11EvE23template_base_directoryB5cxx11 acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN4crow8mustache6detail31get_template_base_directory_refB5cxx11Ev.exit, !prof !116

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4crow8mustache6detail31get_template_base_directory_refB5cxx11EvE23template_base_directoryB5cxx11) #40
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN4crow8mustache6detail31get_template_base_directory_refB5cxx11Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN4crow8mustache6detail31get_template_base_directory_refB5cxx11EvE23template_base_directoryB5cxx11, ptr noundef nonnull @.str.306, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  %i.g = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZN4crow8mustache6detail31get_template_base_directory_refB5cxx11EvE23template_base_directoryB5cxx11, ptr nonnull @__dso_handle) #40 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4crow8mustache6detail31get_template_base_directory_refB5cxx11EvE23template_base_directoryB5cxx11) #40
  br label %_ZN4crow8mustache6detail31get_template_base_directory_refB5cxx11Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.e ], [ %.pn10.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4crow8mustache6detail31get_template_base_directory_refB5cxx11EvE23template_base_directoryB5cxx11) #40
  br label %common.resume

_ZN4crow8mustache6detail31get_template_base_directory_refB5cxx11Ev.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !109
  %i.j = load ptr, ptr @_ZZN4crow8mustache6detail31get_template_base_directory_refB5cxx11EvE23template_base_directoryB5cxx11, align 8, !tbaa !113 ; 2 uses
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4crow8mustache6detail31get_template_base_directory_refB5cxx11EvE23template_base_directoryB5cxx11, i64 8), align 8, !tbaa !115 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  store i64 %i.k, ptr %i.c, align 8, !tbaa !111
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN4crow8mustache6detail31get_template_base_directory_refB5cxx11Ev.exit
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %6, align 8, !tbaa !113
  %i.n = load i64, ptr %i.c, align 8, !tbaa !111
  store i64 %i.n, ptr %i.i, align 8, !tbaa !114
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %_ZN4crow8mustache6detail31get_template_base_directory_refB5cxx11Ev.exit
  %i.o = phi ptr [ %i.m, %.noexc.i ], [ %i.i, %_ZN4crow8mustache6detail31get_template_base_directory_refB5cxx11Ev.exit ] ; 2 uses
  switch i64 %i.k, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %i.j, align 1, !tbaa !114
  store i8 %i.p, ptr %i.o, align 1, !tbaa !114
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.j, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.q = load i64, ptr %i.c, align 8, !tbaa !111  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.q, ptr %i.r, align 8, !tbaa !115
  %i.s = load ptr, ptr %6, align 8, !tbaa !113
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.u, ptr %9, align 8, !tbaa !109
  %i.v = load ptr, ptr %6, align 8, !tbaa !113    ; 2 uses
  %i.w = load i64, ptr %i.r, align 8, !tbaa !115  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i64 %i.w, ptr %i.b, align 8, !tbaa !111
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %.noexc.i15, label %._crit_edge.i.i14

.noexc.i15:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.af    ; 2 uses

.noexc:                                           ; preds = %.noexc.i15
  store ptr %i.y, ptr %9, align 8, !tbaa !113
  %i.z = load i64, ptr %i.b, align 8, !tbaa !111
  store i64 %i.z, ptr %i.u, align 8, !tbaa !114
  br label %._crit_edge.i.i14

._crit_edge.i.i14:                                ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.aa = phi ptr [ %i.y, %.noexc ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.w, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i14
  %i.ab = load i8, ptr %i.v, align 1, !tbaa !114
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !114
  br label %bb.j
end_hunk_0
