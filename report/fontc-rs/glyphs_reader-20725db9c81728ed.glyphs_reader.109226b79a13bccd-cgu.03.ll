Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/glyphs_reader-20725db9c81728ed.glyphs_reader.109226b79a13bccd-cgu.03?download=true
inline.NumInlined: 392
inline.NumDeleted: 198
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData25split_ligature_glyph_name:bb.a
  %i.ci = zext nneg i8 %i.cg to i64               ; 2 uses
  %i.cj = add nsw i64 %i.ci, -23
  %i.ck = select i1 %i.ch, i64 %i.cj, i64 0
  switch i64 %i.ck, label %bb.o [
    i64 0, label %bb.ac
    i64 1, label %bb.ad
    i64 2, label %bb.ae
  ]

bb.ac:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str14SmolStrBuilderECs1qcNTItuk7F_13glyphs_reader.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  br label %bb.af

bb.ad:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str14SmolStrBuilderECs1qcNTItuk7F_13glyphs_reader.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !nonnull !5, !noundef !5
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !noundef !5
  br label %bb.af

bb.ae:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str14SmolStrBuilderECs1qcNTItuk7F_13glyphs_reader.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !5, !noundef !5
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !5
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.sroa.417.0 = phi i64 [ %i.ci, %bb.ac ], [ %i.cp, %bb.ad ], [ %i.ct, %bb.ae ]
  %.sroa.016.0 = phi ptr [ %i.cl, %bb.ac ], [ %i.cn, %bb.ad ], [ %i.cu, %bb.ae ]
  %i.cv = invoke fastcc noundef zeroext i1 @_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData13contains_name(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.016.0, i64 noundef %.sroa.417.0)
          to label %bb.ah unwind label %bb.at

bb.ag:                                            ; preds = %bb.al
  %i.cw = landingpad { ptr, i32 }
          cleanup
  %i.cx = load ptr, ptr %i.f, align 8, !nonnull !5, !align !25, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %.body

bb.ah:                                            ; preds = %bb.af
  br i1 %i.cv, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cy = load i8, ptr %i.e, align 8, !range !13, !noundef !5 ; 2 uses
  %i.cz = icmp samesign ugt i8 %i.cy, 23
  %i.da = zext nneg i8 %i.cy to i64               ; 2 uses
  %i.db = add nsw i64 %i.da, -23
  %i.dc = select i1 %i.cz, i64 %i.db, i64 0
  switch i64 %i.dc, label %bb.o [
    i64 0, label %bb.ao
    i64 1, label %bb.am
    i64 2, label %bb.an
  ]

bb.aj:                                            ; preds = %bb.ap, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !5, !align !25, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !805)
  call void @llvm.experimental.noalias.scope.decl(metadata !806)
  %i.de = load i8, ptr %i.dd, align 8, !range !13, !alias.scope !807, !noundef !5
  %switch.i.i = icmp samesign ult i8 %i.de, 25
  br i1 %switch.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !808)
  call void @llvm.experimental.noalias.scope.decl(metadata !809)
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !810, !nonnull !5, !noundef !5
  %i.dh = atomicrmw add ptr %i.dg, i64 -1 release, align 8, !noalias !810
  %i.di = icmp eq i64 %i.dh, 1
  br i1 %i.di, label %bb.al, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit

bb.al:                                            ; preds = %bb.ak
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs8hFumjqO1Bi_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.df) #19
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit unwind label %bb.ag

bb.am:                                            ; preds = %bb.ai
  %i.dj = load ptr, ptr %i.aw, align 8, !nonnull !5, !noundef !5
  %i.dk = load i64, ptr %i.ax, align 8, !noundef !5
  br label %bb.ao

bb.an:                                            ; preds = %bb.ai
  %i.dl = load ptr, ptr %i.aw, align 8, !nonnull !5, !noundef !5
  %i.dm = load i64, ptr %i.ax, align 8, !noundef !5
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ai, %bb.an, %bb.am
  %.sroa.419.0 = phi i64 [ %i.dm, %bb.an ], [ %i.dk, %bb.am ], [ %i.da, %bb.ai ]
  %.sroa.018.0 = phi ptr [ %i.dn, %bb.an ], [ %i.dj, %bb.am ], [ %i.ay, %bb.ai ]
  %i.do = invoke fastcc noundef zeroext i1 @_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData13contains_name(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.018.0, i64 noundef %.sroa.419.0)
          to label %bb.ap unwind label %bb.at

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.do, label %bb.aj, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !811)
  call void @llvm.experimental.noalias.scope.decl(metadata !812)
  %i.dp = load i8, ptr %i.e, align 8, !range !13, !alias.scope !813, !noundef !5
  %switch.i.i75 = icmp samesign ult i8 %i.dp, 25
  br i1 %switch.i.i75, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit77, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !814)
  call void @llvm.experimental.noalias.scope.decl(metadata !815)
  %i.dq = load ptr, ptr %i.aw, align 8, !alias.scope !816, !nonnull !5, !noundef !5
  %i.dr = atomicrmw add ptr %i.dq, i64 -1 release, align 8, !noalias !816
  %i.ds = icmp eq i64 %i.dr, 1
  br i1 %i.ds, label %bb.as, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit77

bb.as:                                            ; preds = %bb.ar
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs8hFumjqO1Bi_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aw) #19
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit77 unwind label %bb.v

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit77: ; preds = %bb.ar, %bb.aq, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.backedge

.backedge:                                        ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit77, %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit
  %i.dt = icmp eq ptr %i.az, %i.as
  br i1 %i.dt, label %._crit_edge, label %bb.n

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %bb.ak, %bb.aj, %bb.al
  %i.du = load ptr, ptr %i.f, align 8, !nonnull !5, !align !25, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.du, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.backedge

bb.at:                                            ; preds = %bb.ao, %bb.af
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !817)
  call void @llvm.experimental.noalias.scope.decl(metadata !818)
  %i.dw = load i8, ptr %i.e, align 8, !range !13, !alias.scope !819, !noundef !5
  %switch.i.i78 = icmp samesign ult i8 %i.dw, 25
  br i1 %switch.i.i78, label %.body, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !820)
  call void @llvm.experimental.noalias.scope.decl(metadata !821)
  %i.dx = load ptr, ptr %i.aw, align 8, !alias.scope !822, !nonnull !5, !noundef !5
  %i.dy = atomicrmw add ptr %i.dx, i64 -1 release, align 8, !noalias !822
  %i.dz = icmp eq i64 %i.dy, 1
  br i1 %i.dz, label %bb.av, label %.body

bb.av:                                            ; preds = %bb.au
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs8hFumjqO1Bi_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aw) #19
          to label %.body unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.ax:                                            ; preds = %.body
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData5query(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 11 uses
  %.sroa.3.i.i.i.i.i = alloca [23 x i8], align 1  ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [40 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 12 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.7137.i.i.i.i = alloca [16 x i8], align 8 ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 12 uses
  %i.v = alloca [16 x i8], align 8                ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [4 x i8], align 4                 ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %i.ac = alloca [8 x i8], align 8                ; 13 uses
  %i.ad = alloca [24 x i8], align 8               ; 13 uses
  %i.ae = alloca [40 x i8], align 8               ; 8 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 13 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 13 uses
  %i.aj = alloca [32 x i8], align 8               ; 7 uses
  %i.ak = alloca [24 x i8], align 8               ; 14 uses
  %i.al = alloca [4 x i8], align 4                ; 4 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 13 uses
  %i.ao = alloca [24 x i8], align 8               ; 13 uses
  %i.ap = alloca [24 x i8], align 8               ; 6 uses
  %i.aq = alloca [40 x i8], align 8               ; 7 uses
  %i.ar = alloca [40 x i8], align 8               ; 6 uses
  %i.as = alloca [32 x i8], align 8               ; 5 uses
  %.sroa.9.i.i.i = alloca [23 x i8], align 1      ; 6 uses
  %i.at = alloca [40 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData18query_no_synthesis(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  %i.au = load i32, ptr %i.at, align 8, !range !6, !alias.scope !1021, !noundef !5
  %.not.i = icmp eq i32 %i.au, 2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.at, i64 40, i1 false), !alias.scope !1022
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata11QueryResultE7or_elseNCNvMs4_BK_NtBK_9GlyphData5query0EBM_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1024)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1025
  store i32 95, ptr %i.al, align 4, !noalias !1025
  %i.av = invoke noundef zeroext i1 @_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef 1)
          to label %.noexc.i unwind label %bb.gz, !noalias !1026

.noexc.i:                                         ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1025
  br i1 %i.av, label %_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData18construct_category.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !1025
  invoke fastcc void @_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData18split_glyph_suffix(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %.noexc2.i unwind label %bb.gz, !noalias !1026

.noexc2.i:                                        ; preds = %bb.d
  %i.aw = load ptr, ptr %i.as, align 8, !noalias !1025, !nonnull !5, !noundef !5 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !1025, !noundef !5 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !1025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !1025
  invoke void @_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData18query_no_synthesis(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aw, i64 noundef %i.ay, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null)
          to label %.noexc3.i unwind label %bb.gz, !noalias !1026

.noexc3.i:                                        ; preds = %.noexc2.i
  %i.az = load i32, ptr %i.ar, align 8, !range !6, !noalias !1025, !noundef !5
  %.not.i.i.i.i = icmp eq i32 %i.az, 2
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !1025
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, ptr noundef nonnull align 8 dereferenceable(40) %i.ar, i64 40, i1 false), !noalias !1025
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.bb = load i8, ptr %i.ba, align 8, !range !20, !noalias !1025, !noundef !5
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 33
  %i.bd = load i8, ptr %i.bc, align 1, !range !21, !noalias !1025, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  %i.bf = load i8, ptr %i.be, align 8, !range !7, !alias.scope !1029, !noalias !1025, !noundef !5 ; 4 uses
  %i.bg = icmp eq i8 %i.bf, -1
  br i1 %i.bg, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata11QueryResultEBF_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !1030)
  %i.bh = icmp samesign ugt i8 %i.bf, 25
  %i.bi = and i8 %i.bf, 30
  %switch1.i.i.i.i.i.i.i = icmp eq i8 %i.bi, 26
  %switch.i.i.i.i.i.i.i = and i1 %i.bh, %switch1.i.i.i.i.i.i.i
  br i1 %switch.i.i.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata11QueryResultEBF_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  %switch.i.i.i.i.i.i.i.i.i = icmp samesign ult i8 %i.bf, 25
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata11QueryResultEBF_.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1033)
  call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !1035, !noalias !1025, !nonnull !5, !noundef !5
  %i.bl = atomicrmw add ptr %i.bk, i64 -1 release, align 8, !noalias !1036
  %i.bm = icmp eq i64 %i.bl, 1
  br i1 %i.bm, label %bb.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata11QueryResultEBF_.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs8hFumjqO1Bi_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bj) #19
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata11QueryResultEBF_.exit.i.i.i.i unwind label %bb.gz, !noalias !1026

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata11QueryResultEBF_.exit.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1025
  br label %_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData18construct_category.exit.i.i.i

bb.j:                                             ; preds = %.noexc3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !1025
  invoke fastcc void @_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData25split_ligature_glyph_name(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aw, i64 noundef %i.ay)
          to label %.noexc5.i unwind label %bb.gz, !noalias !1026

.noexc5.i:                                        ; preds = %bb.j
  %i.bn = load i64, ptr %i.ap, align 8, !range !8, !noalias !1025, !noundef !5
  %.not4.i.i.i.i = icmp eq i64 %i.bn, -1
  br i1 %.not4.i.i.i.i, label %bb.af, label %bb.k

bb.k:                                             ; preds = %.noexc5.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !1025
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !noalias !1025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !1025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !1025
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !1025, !nonnull !5, !noundef !5 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !noalias !1025, !noundef !5
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %i.br
  store ptr %i.bp, ptr %i.am, align 8, !noalias !1025
  %i.bt = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.bs, ptr %i.bt, align 8, !noalias !1025
  %i.bu = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %1, ptr %i.bu, align 8, !noalias !1025
  invoke void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata11QueryResultEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtCs9NoVXegZYB5_8smol_str7SmolStrENCNvMs4_B1H_NtB1H_9GlyphData18construct_category0EE9from_iterB1J_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.am)
          to label %bb.m unwind label %bb.l, !noalias !1037

.body.i.i.i.i:                                    ; preds = %bb.x, %bb.t, %bb.p, %bb.l
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.cb, %bb.p ], [ %i.ce, %bb.t ], [ %i.bv, %bb.l ], [ %i.cn, %bb.x ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ao) #20
          to label %.body.i unwind label %bb.aa, !noalias !1037

bb.l:                                             ; preds = %bb.y, %bb.u, %bb.k
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1025
  %i.bw = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !1025, !nonnull !5, !noundef !5 ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !noalias !1025, !noundef !5 ; 3 uses
  %.not5.i.i.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not5.i.i.i.i, label %bb.n, label %bb.o, !prof !16

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #21
          to label %bb.q unwind label %bb.p, !noalias !1037

bb.o:                                             ; preds = %bb.m
  %i.ca = load i32, ptr %i.bx, align 8, !range !6, !noalias !1037, !noundef !5
  %.not6.i.i.i.i = icmp eq i32 %i.ca, 2
  br i1 %.not6.i.i.i.i, label %bb.s, label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata11QueryResultEEEB1y_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.an) #20
          to label %.body.i.i.i.i unwind label %bb.aa, !noalias !1037

bb.q:                                             ; preds = %bb.n
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.cd = load i8, ptr %i.cc, align 8, !range !20, !noalias !1037, !noundef !5 ; 2 uses
  switch i8 %i.cd, label %bb.s [
    i8 0, label %.loopexit.sink.split.i.i.i.i
    i8 3, label %bb.w
  ]

bb.s:                                             ; preds = %bb.r, %bb.o
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata11QueryResultEENtNtNtBK_3ops4drop4Drop4dropB1l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %bb.u unwind label %bb.t, !noalias !1037

bb.t:                                             ; preds = %bb.s
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata11QueryResultEENtNtNtBR_3ops4drop4Drop4dropB1s_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.body.i.i.i.i unwind label %bb.v, !noalias !1037

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata11QueryResultEENtNtNtBR_3ops4drop4Drop4dropB1s_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata11QueryResultEEEB1y_.exit.i.i.i.i unwind label %bb.l, !noalias !1037

bb.v:                                             ; preds = %bb.t
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #18, !noalias !1037
end_hunk_0
begin_hunk_1_@_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData5query:bb.a
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !alias.scope !1092, !noalias !1093, !nonnull !5, !noundef !5
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.iz = load i64, ptr %i.iy, align 8, !alias.scope !1092, !noalias !1093, !noundef !5
  br label %bb.de

bb.dd:                                            ; preds = %bb.da
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !alias.scope !1092, !noalias !1093, !nonnull !5, !noundef !5
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.jd = load i64, ptr %i.jc, align 8, !alias.scope !1092, !noalias !1093, !noundef !5
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %bb.db
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ %i.io, %bb.db ], [ %i.iz, %bb.dc ], [ %i.jd, %bb.dd ] ; 7 uses
  %.sroa.02.0.i.i.i.i.i.i = phi ptr [ %i.iv, %bb.db ], [ %i.ix, %bb.dc ], [ %i.je, %bb.dd ] ; 5 uses
  %i.jf = invoke noundef zeroext i1 @_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.02.0.i.i.i.i.i.i, i64 noundef %.sroa.4.0.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 1)
          to label %.noexc68.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1088

.noexc68.i.i.i.i:                                 ; preds = %bb.de
  br i1 %i.jf, label %bb.df, label %_RNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_names1_0B9_.exit.i.i.i.i.i

bb.df:                                            ; preds = %.noexc68.i.i.i.i
  %.not.i.i.i.i67.i.i.i.i = icmp ugt i64 %.sroa.4.0.i.i.i.i.i.i, 1
  br i1 %.not.i.i.i.i67.i.i.i.i, label %_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i:                             ; preds = %bb.df
  %i.jg = icmp eq i64 %.sroa.4.0.i.i.i.i.i.i, 1
  br i1 %i.jg, label %bb.dg, label %bb.dj, !prof !23

_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i.i.i.i: ; preds = %bb.df
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i.i.i, i64 1
  %i.ji = load i8, ptr %i.jh, align 1, !alias.scope !1094, !noalias !1093, !noundef !5
  %i.jj = icmp sgt i8 %i.ji, -65
  br i1 %i.jj, label %bb.dg, label %bb.dj, !prof !23

bb.dg:                                            ; preds = %_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i
  %i.jk = getelementptr i8, ptr %.sroa.02.0.i.i.i.i.i.i, i64 %.sroa.4.0.i.i.i.i.i.i
  %.not.not.not.i.not.i.i.i.i.i.i.i93 = icmp eq i64 %.sroa.4.0.i.i.i.i.i.i, 1
  br i1 %.not.not.not.i.not.i.i.i.i.i.i.i93, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB2f_9GlyphData25construct_production_names1_0EB2h_.exit.i.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.dg
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i.i.i, i64 1
  br label %bb.di

bb.dh:                                            ; preds = %bb.di
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jn, i64 1 ; 2 uses
  %.not.not.not.i.not.i.i.i.i.i.i.i = icmp eq ptr %i.jm, %i.jk
  br i1 %.not.not.not.i.not.i.i.i.i.i.i.i, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB2f_9GlyphData25construct_production_names1_0EB2h_.exit.i.i.i.i, label %bb.di

bb.di:                                            ; preds = %.lr.ph, %bb.dh
  %i.jn = phi ptr [ %i.jl, %.lr.ph ], [ %i.jm, %bb.dh ] ; 2 uses
  %.val.i.i.i.i.i.i.i.i = load i8, ptr %i.jn, align 1, !alias.scope !1095, !noalias !1096, !noundef !5 ; 5 uses
  %i.jo = icmp samesign ugt i8 %.val.i.i.i.i.i.i.i.i, 64
  %i.jp = icmp ugt i8 %.val.i.i.i.i.i.i.i.i, 96
  %i.jq = icmp ugt i8 %.val.i.i.i.i.i.i.i.i, 102
  %i.jr = icmp samesign ugt i8 %.val.i.i.i.i.i.i.i.i, 70
  %i.js = add nsw i8 %.val.i.i.i.i.i.i.i.i, -58
  %i.jt = icmp ult i8 %i.js, -10
  %i.ju = select i1 %i.jo, i1 %i.jr, i1 %i.jt
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = select i1 %i.jp, i1 %i.jq, i1 %i.ju
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, label %_RNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_names1_0B9_.exit.i.i.i.i.i, label %bb.dh

bb.dj:                                            ; preds = %_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.02.0.i.i.i.i.i.i, i64 noundef %.sroa.4.0.i.i.i.i.i.i, i64 noundef 1, i64 noundef %.sroa.4.0.i.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #22
          to label %.noexc69.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1088

.noexc69.i.i.i.i:                                 ; preds = %bb.dj
  unreachable

_RNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_names1_0B9_.exit.i.i.i.i.i: ; preds = %bb.di, %.noexc68.i.i.i.i, %bb.cz
  %.not9.i.i.i.i.i = icmp eq ptr %i.il, %i.ij
  br i1 %.not9.i.i.i.i.i, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB2f_9GlyphData25construct_production_names1_0EB2h_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.dk:                                            ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1065
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit.i20.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit.i20.i.i.i: ; preds = %bb.gd, %bb.dk
  %.sroa.0.0.i.i.i = phi i8 [ -1, %bb.dk ], [ %.sroa.0.0.copyload62.i.i.i, %bb.gd ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1065
  call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  %i.jv = load i8, ptr %i.ai, align 8, !range !7, !alias.scope !1097, !noalias !1065, !noundef !5 ; 4 uses
  %i.jw = icmp eq i8 %i.jv, -1
  br i1 %i.jw, label %_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData25construct_production_name.exit.i.i.i, label %bb.dl

bb.dl:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit.i20.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  %i.jx = icmp samesign ugt i8 %i.jv, 25
  %i.jy = and i8 %i.jv, 30
  %switch1.i.i.i.i.i.i = icmp eq i8 %i.jy, 26
  %switch.i.i.i.i.i.i = and i1 %i.jx, %switch1.i.i.i.i.i.i
  br i1 %switch.i.i.i.i.i.i, label %_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData25construct_production_name.exit.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  %switch.i.i.i.i.i.i.i.i = icmp samesign ult i8 %i.jv, 25
  br i1 %switch.i.i.i.i.i.i.i.i, label %_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData25construct_production_name.exit.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1101)
  call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  %i.ka = load ptr, ptr %i.jz, align 8, !alias.scope !1103, !noalias !1065, !nonnull !5, !noundef !5
  %i.kb = atomicrmw add ptr %i.ka, i64 -1 release, align 8, !noalias !1104
  %i.kc = icmp eq i64 %i.kb, 1
  br i1 %i.kc, label %_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData25construct_production_name.exit.sink.split.i.i.i, label %_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData25construct_production_name.exit.i.i.i

.body117.i.i.i.i:                                 ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.gq, %bb.go, %.thread154.i.i.i.i, %bb.ga, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtNtBI_6borrow3CoweEEECs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i
  %.pn61.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtNtBI_6borrow3CoweEEECs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i ], [ %i.sh, %bb.go ], [ %eh.lpad-body74157.i.i.i.i, %.thread154.i.i.i.i ], [ %i.sl, %bb.gq ], [ %i.rh, %bb.ga ], [ %lpad.loopexit.split-lp109, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ag) #20
          to label %.body.i15.i.i.i unwind label %bb.gk, !noalias !1088

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB2f_9GlyphData25construct_production_names1_0EB2h_.exit.i.i.i.i: ; preds = %_RNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_names1_0B9_.exit.i.i.i.i.i, %bb.dg, %bb.dh, %bb.cx
  %i.kd = phi i1 [ true, %bb.dh ], [ false, %bb.cx ], [ false, %_RNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_names1_0B9_.exit.i.i.i.i.i ], [ true, %bb.dg ]
  %i.ke = load ptr, ptr %i.if, align 8, !noalias !1065, !nonnull !5, !noundef !5 ; 2 uses
  %i.kf = load i64, ptr %i.ih, align 8, !noalias !1065, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.kf, 24
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 %.idx
  %.not.not.not.i.not.i.i.i.i95 = icmp eq i64 %i.kf, 0
  br i1 %.not.not.not.i.not.i.i.i.i95, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB2f_9GlyphData25construct_production_names2_0EB2h_.exit.thread.loopexit.i.i.i.i, label %.lr.ph96

bb.do:                                            ; preds = %.noexc72.i.i.i.i
  %.not.not.not.i.not.i.i.i.i = icmp eq ptr %i.ki, %i.kg
  br i1 %.not.not.not.i.not.i.i.i.i, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB2f_9GlyphData25construct_production_names2_0EB2h_.exit.thread.loopexit.i.i.i.i, label %.lr.ph96

.lr.ph96:                                         ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB2f_9GlyphData25construct_production_names1_0EB2h_.exit.i.i.i.i, %bb.do
  %i.kh = phi ptr [ %i.ki, %bb.do ], [ %i.ke, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB2f_9GlyphData25construct_production_names1_0EB2h_.exit.i.i.i.i ] ; 7 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 24 ; 2 uses
  %i.kj = load i8, ptr %i.kh, align 8, !range !13, !alias.scope !1105, !noalias !1106, !noundef !5 ; 2 uses
  %i.kk = icmp samesign ugt i8 %i.kj, 23
  %i.kl = zext nneg i8 %i.kj to i64               ; 2 uses
  %i.km = add nsw i64 %i.kl, -23
  %i.kn = select i1 %i.kk, i64 %i.km, i64 0
  switch i64 %i.kn, label %bb.dp [
    i64 0, label %bb.dq
    i64 1, label %bb.dr
    i64 2, label %bb.ds
  ]

bb.dp:                                            ; preds = %.lr.ph96
  unreachable

bb.dq:                                            ; preds = %.lr.ph96
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kh, i64 1
  br label %_RNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_names2_0B9_.exit.i.i.i.i.i

bb.dr:                                            ; preds = %.lr.ph96
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8, !alias.scope !1105, !noalias !1106, !nonnull !5, !noundef !5
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.ks = load i64, ptr %i.kr, align 8, !alias.scope !1105, !noalias !1106, !noundef !5
  br label %_RNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_names2_0B9_.exit.i.i.i.i.i

bb.ds:                                            ; preds = %.lr.ph96
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8, !alias.scope !1105, !noalias !1106, !nonnull !5, !noundef !5
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.kw = load i64, ptr %i.kv, align 8, !alias.scope !1105, !noalias !1106, !noundef !5
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  br label %_RNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_names2_0B9_.exit.i.i.i.i.i

_RNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_names2_0B9_.exit.i.i.i.i.i: ; preds = %bb.ds, %bb.dr, %bb.dq
  %.sroa.4.0.i.i71.i.i.i.i = phi i64 [ %i.kl, %bb.dq ], [ %i.ks, %bb.dr ], [ %i.kw, %bb.ds ]
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.ko, %bb.dq ], [ %i.kq, %bb.dr ], [ %i.kx, %bb.ds ]
  %i.ky = invoke noundef zeroext i1 @_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i.i.i, i64 noundef %.sroa.4.0.i.i71.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 3)
          to label %.noexc72.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1088

.noexc72.i.i.i.i:                                 ; preds = %_RNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_names2_0B9_.exit.i.i.i.i.i
  br i1 %i.ky, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB2f_9GlyphData25construct_production_names2_0EB2h_.exit.i.i.i.i, label %bb.do

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB2f_9GlyphData25construct_production_names2_0EB2h_.exit.i.i.i.i: ; preds = %.noexc72.i.i.i.i
  %.pre211.i.i.i.i = load ptr, ptr %i.if, align 8, !noalias !1065 ; 3 uses
  %.pre213.i.i.i.i = load i64, ptr %i.ih, align 8, !noalias !1065 ; 3 uses
  br i1 %i.kd, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB2f_9GlyphData25construct_production_names2_0EB2h_.exit.thread.i.i.i.i, label %bb.dt

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB2f_9GlyphData25construct_production_names2_0EB2h_.exit.thread.loopexit.i.i.i.i: ; preds = %bb.do, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB2f_9GlyphData25construct_production_names1_0EB2h_.exit.i.i.i.i
  %.pre210.i.i.i.i = load ptr, ptr %i.if, align 8, !noalias !1065
  %.pre212.i.i.i.i = load i64, ptr %i.ih, align 8, !noalias !1065
  br label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB2f_9GlyphData25construct_production_names2_0EB2h_.exit.thread.i.i.i.i

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB2f_9GlyphData25construct_production_names2_0EB2h_.exit.thread.i.i.i.i: ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB2f_9GlyphData25construct_production_names2_0EB2h_.exit.thread.loopexit.i.i.i.i, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB2f_9GlyphData25construct_production_names2_0EB2h_.exit.i.i.i.i
  %i.kz = phi i64 [ %.pre212.i.i.i.i, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB2f_9GlyphData25construct_production_names2_0EB2h_.exit.thread.loopexit.i.i.i.i ], [ %.pre213.i.i.i.i, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB2f_9GlyphData25construct_production_names2_0EB2h_.exit.i.i.i.i ]
  %i.la = phi ptr [ %.pre210.i.i.i.i, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB2f_9GlyphData25construct_production_names2_0EB2h_.exit.thread.loopexit.i.i.i.i ], [ %.pre211.i.i.i.i, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB2f_9GlyphData25construct_production_names2_0EB2h_.exit.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1065
  invoke void @_RINvNtCsgCecv3eZDcN_5alloc3str17join_generic_copyehNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.la, i64 noundef %i.kz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 1)
          to label %bb.gl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1088

bb.dt:                                            ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB2f_9GlyphData25construct_production_names2_0EB2h_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1065
  store i64 0, ptr %i.ad, align 8, !noalias !1065
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.lb, align 8, !noalias !1065
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 8 uses
  store i64 0, ptr %i.lc, align 8, !noalias !1065
  %.idx191.i.i.i.i = mul nuw nsw i64 %.pre213.i.i.i.i, 24
  %i.ld = getelementptr inbounds nuw i8, ptr %.pre211.i.i.i.i, i64 %.idx191.i.i.i.i
  %.promoted.i.i.i.i = load ptr, ptr %i.ac, align 8, !noalias !1065
  %i.le = icmp eq i64 %.pre213.i.i.i.i, 0
  br i1 %i.le, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.dt
  %.sroa.441.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.lf = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.li = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  br label %bb.du

bb.du:                                            ; preds = %bb.fo, %.lr.ph.i.i.i.i
  %i.lj = phi ptr [ %.pre211.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.lk, %bb.fo ] ; 34 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 24 ; 2 uses
  %i.ll = load i8, ptr %i.lj, align 8, !range !13, !noalias !1088, !noundef !5 ; 2 uses
  %i.lm = icmp samesign ugt i8 %i.ll, 23
  %i.ln = zext nneg i8 %i.ll to i64               ; 2 uses
  %i.lo = add nsw i64 %i.ln, -23
  %i.lp = select i1 %i.lm, i64 %i.lo, i64 0
  switch i64 %i.lp, label %bb.dv [
    i64 0, label %bb.dw
    i64 1, label %bb.dx
    i64 2, label %bb.dy
  ]

._crit_edge.i.i.i.i:                              ; preds = %bb.fo, %bb.dt
  %.lcssa.i.i.i.i = phi ptr [ %.promoted.i.i.i.i, %bb.dt ], [ %i.lj, %bb.fo ]
  store ptr %.lcssa.i.i.i.i, ptr %i.ac, align 8, !noalias !1065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1065
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.fq unwind label %.thread167.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1088

bb.dv:                                            ; preds = %_RNvNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_name9is_u_name.exit.i.i.i.i, %_RNvNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_name9is_u_name.exit.thread.i.i.i.i, %bb.eh, %bb.du
  unreachable

bb.dw:                                            ; preds = %bb.du
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lj, i64 1
  br label %bb.dz

bb.dx:                                            ; preds = %bb.du
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8, !noalias !1088, !nonnull !5, !noundef !5
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.lu = load i64, ptr %i.lt, align 8, !noalias !1088, !noundef !5
  br label %bb.dz

bb.dy:                                            ; preds = %bb.du
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.lw = load ptr, ptr %i.lv, align 8, !noalias !1088, !nonnull !5, !noundef !5
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.ly = load i64, ptr %i.lx, align 8, !noalias !1088, !noundef !5
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx, %bb.dw
  %.sroa.68.0.i.i.i.i = phi i64 [ %i.ln, %bb.dw ], [ %i.lu, %bb.dx ], [ %i.ly, %bb.dy ] ; 2 uses
  %.sroa.05.0.i.i.i.i = phi ptr [ %i.lq, %bb.dw ], [ %i.ls, %bb.dx ], [ %i.lz, %bb.dy ] ; 2 uses
  %i.ma = invoke noundef zeroext i1 @_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0.i.i.i.i, i64 noundef %.sroa.68.0.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 3)
          to label %bb.ea unwind label %.thread167.loopexit.i.i.i.i, !noalias !1088

.thread167.loopexit.i.i.i.i:                      ; preds = %bb.ew, %bb.eu, %bb.el, %bb.dz
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.lj, ptr %i.ac, align 8, !noalias !1065
  br label %.thread154.i.i.i.i

.thread167.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fr, %bb.fm, %bb.ex, %bb.eq, %._crit_edge.i.i.i.i
  %lpad.loopexit.split-lp99 = landingpad { ptr, i32 }
          cleanup
  br label %.thread154.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_names2_0B9_.exit.i.i.i.i.i, %bb.de, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1qcNTItuk7F_13glyphs_reader.exit.i116.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i.i, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB2f_9GlyphData25construct_production_names2_0EB2h_.exit.thread.i.i.i.i, %bb.dj
  %lpad.loopexit.split-lp109 = landingpad { ptr, i32 }
          cleanup
  br label %.body117.i.i.i.i

bb.ea:                                            ; preds = %bb.dz
  br i1 %i.ma, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.mb = load i8, ptr %i.lj, align 8, !range !13, !noalias !1088, !noundef !5 ; 2 uses
  %i.mc = icmp samesign ugt i8 %i.mb, 23
  %i.md = zext nneg i8 %i.mb to i64               ; 3 uses
  %i.me = add nsw i64 %i.md, -23
  %i.mf = select i1 %i.mc, i64 %i.me, i64 0       ; 2 uses
  %i.mg = icmp eq i64 %i.mf, 0
  br i1 %i.mg, label %bb.eg, label %.sink.split.i.i.i.i

bb.ec:                                            ; preds = %bb.ea
  %i.mh = add i64 %.sroa.68.0.i.i.i.i, -3
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i.i, i64 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1065
  store ptr %i.mi, ptr %i.lh, align 8, !noalias !1065
  store i64 %i.mh, ptr %i.li, align 8, !noalias !1065
  store i64 -1, ptr %i.ab, align 8, !noalias !1065
  %i.mj = load i64, ptr %i.lc, align 8, !alias.scope !1107, !noalias !1065, !noundef !5 ; 3 uses
  %i.mk = load i64, ptr %i.ad, align 8, !range !19, !alias.scope !1107, !noalias !1065, !noundef !5
  %i.ml = icmp eq i64 %i.mj, %i.mk
  br i1 %i.ml, label %bb.ed, label %bb.fp

bb.ed:                                            ; preds = %bb.ec
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CoweEE8grow_oneCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %bb.fp unwind label %bb.ee, !noalias !1108

bb.ee:                                            ; preds = %bb.ed
  %i.mm = landingpad { ptr, i32 }
          cleanup
  store ptr %i.lj, ptr %i.ac, align 8, !noalias !1065
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab) #20
          to label %.thread154.i.i.i.i unwind label %bb.ef, !noalias !1088

bb.ef:                                            ; preds = %bb.ee
  %i.mn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #18, !noalias !1088
  unreachable

.sink.split.i.i.i.i:                              ; preds = %bb.eb
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.mp = load i64, ptr %i.mo, align 8, !noalias !1088, !noundef !5
  br label %bb.eg

bb.eg:                                            ; preds = %.sink.split.i.i.i.i, %bb.eb
  %.sroa.011.0.i.i.i.i = phi i64 [ %i.md, %bb.eb ], [ %i.mp, %.sink.split.i.i.i.i ]
  %i.mq = icmp eq i64 %.sroa.011.0.i.i.i.i, 5
  br i1 %i.mq, label %bb.eh, label %_RNvNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_name9is_u_name.exit.thread.i.i.i.i

bb.eh:                                            ; preds = %bb.eg
  switch i64 %i.mf, label %bb.dv [
    i64 0, label %bb.ei
    i64 1, label %bb.ej
    i64 2, label %bb.ek
  ]

_RNvNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_name9is_u_name.exit.thread.i.i.i.i: ; preds = %bb.ep, %.noexc75.i.i.i.i, %bb.eg
  %i.mr = load i8, ptr %i.lj, align 8, !range !13, !noalias !1088, !noundef !5 ; 2 uses
  %i.ms = icmp samesign ugt i8 %i.mr, 23
  %i.mt = zext nneg i8 %i.mr to i64               ; 2 uses
  %i.mu = add nsw i64 %i.mt, -23
  %i.mv = select i1 %i.ms, i64 %i.mu, i64 0
  switch i64 %i.mv, label %bb.dv [
    i64 0, label %bb.er
    i64 1, label %bb.es
    i64 2, label %bb.et
  ]

bb.ei:                                            ; preds = %bb.eh
  %i.mw = getelementptr inbounds nuw i8, ptr %i.lj, i64 1
  br label %bb.el

bb.ej:                                            ; preds = %bb.eh
  %i.mx = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.my = load ptr, ptr %i.mx, align 8, !noalias !1088, !nonnull !5, !noundef !5
  %i.mz = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.na = load i64, ptr %i.mz, align 8, !noalias !1088, !noundef !5
  br label %bb.el

bb.ek:                                            ; preds = %bb.eh
  %i.nb = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.nc = load ptr, ptr %i.nb, align 8, !noalias !1088, !nonnull !5, !noundef !5
  %i.nd = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.ne = load i64, ptr %i.nd, align 8, !noalias !1088, !noundef !5
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej, %bb.ei
  %.sroa.413.0.i.i.i.i = phi i64 [ %i.md, %bb.ei ], [ %i.na, %bb.ej ], [ %i.ne, %bb.ek ] ; 7 uses
  %.sroa.012.0.i.i.i.i = phi ptr [ %i.mw, %bb.ei ], [ %i.my, %bb.ej ], [ %i.nf, %bb.ek ] ; 5 uses
  %i.ng = invoke noundef zeroext i1 @_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.012.0.i.i.i.i, i64 noundef %.sroa.413.0.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 1)
          to label %.noexc75.i.i.i.i unwind label %.thread167.loopexit.i.i.i.i, !noalias !1088

.noexc75.i.i.i.i:                                 ; preds = %bb.el
  br i1 %i.ng, label %bb.em, label %_RNvNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_name9is_u_name.exit.thread.i.i.i.i

bb.em:                                            ; preds = %.noexc75.i.i.i.i
  %.not.i.i.i21.i.i.i = icmp ugt i64 %.sroa.413.0.i.i.i.i, 1
  br i1 %.not.i.i.i21.i.i.i, label %_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i.i, label %.split.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.em
  %i.nh = icmp eq i64 %.sroa.413.0.i.i.i.i, 1
  br i1 %i.nh, label %bb.en, label %bb.eq, !prof !23

_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i.i: ; preds = %bb.em
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i, i64 1
  %i.nj = load i8, ptr %i.ni, align 1, !alias.scope !1109, !noalias !1088, !noundef !5
  %i.nk = icmp sgt i8 %i.nj, -65
  br i1 %i.nk, label %bb.en, label %bb.eq, !prof !23

bb.en:                                            ; preds = %_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i.i, %.split.i.i.i.i.i
  %i.nl = getelementptr i8, ptr %.sroa.012.0.i.i.i.i, i64 %.sroa.413.0.i.i.i.i
  %.not.not.not.i.not.i.i.i.i.i97 = icmp eq i64 %.sroa.413.0.i.i.i.i, 1
  br i1 %.not.not.not.i.not.i.i.i.i.i97, label %_RNvNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_name9is_u_name.exit.i.i.i.i, label %.lr.ph98

.lr.ph98:                                         ; preds = %bb.en
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i, i64 1
  br label %bb.ep

bb.eo:                                            ; preds = %bb.ep
  %i.nn = getelementptr inbounds nuw i8, ptr %i.no, i64 1 ; 2 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp eq ptr %i.nn, %i.nl
  br i1 %.not.not.not.i.not.i.i.i.i.i, label %_RNvNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_name9is_u_name.exit.i.i.i.i, label %bb.ep

bb.ep:                                            ; preds = %.lr.ph98, %bb.eo
  %i.no = phi ptr [ %i.nm, %.lr.ph98 ], [ %i.nn, %bb.eo ] ; 2 uses
  %.val.i.i.i22.i.i.i = load i8, ptr %i.no, align 1, !alias.scope !1110, !noalias !1111, !noundef !5 ; 5 uses
  %i.np = icmp samesign ugt i8 %.val.i.i.i22.i.i.i, 64
  %i.nq = icmp ugt i8 %.val.i.i.i22.i.i.i, 96
  %i.nr = icmp ugt i8 %.val.i.i.i22.i.i.i, 102
  %i.ns = icmp samesign ugt i8 %.val.i.i.i22.i.i.i, 70
  %i.nt = add nsw i8 %.val.i.i.i22.i.i.i, -58
  %i.nu = icmp ult i8 %i.nt, -10
  %i.nv = select i1 %i.np, i1 %i.ns, i1 %i.nu
  %.sroa.0.0.i.i.i.i.i23.i.i.i = select i1 %i.nq, i1 %i.nr, i1 %i.nv
  br i1 %.sroa.0.0.i.i.i.i.i23.i.i.i, label %_RNvNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_name9is_u_name.exit.thread.i.i.i.i, label %bb.eo

bb.eq:                                            ; preds = %_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i.i, %.split.i.i.i.i.i
  store ptr %i.lj, ptr %i.ac, align 8, !noalias !1065
  invoke void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.012.0.i.i.i.i, i64 noundef %.sroa.413.0.i.i.i.i, i64 noundef 1, i64 noundef %.sroa.413.0.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #22
          to label %.noexc76.i.i.i.i unwind label %.thread167.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1088

.noexc76.i.i.i.i:                                 ; preds = %bb.eq
  unreachable

_RNvNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_name9is_u_name.exit.i.i.i.i: ; preds = %bb.eo, %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1065
  %i.nw = load i8, ptr %i.lj, align 8, !range !13, !noalias !1088, !noundef !5 ; 2 uses
  %i.nx = icmp samesign ugt i8 %i.nw, 23
  %i.ny = zext nneg i8 %i.nw to i64               ; 2 uses
  %i.nz = add nsw i64 %i.ny, -23
  %i.oa = select i1 %i.nx, i64 %i.nz, i64 0
  switch i64 %i.oa, label %bb.dv [
    i64 0, label %bb.fd
    i64 1, label %bb.fe
    i64 2, label %bb.ff
  ]

bb.er:                                            ; preds = %_RNvNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_name9is_u_name.exit.thread.i.i.i.i
  %i.ob = getelementptr inbounds nuw i8, ptr %i.lj, i64 1
  br label %bb.eu

bb.es:                                            ; preds = %_RNvNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_name9is_u_name.exit.thread.i.i.i.i
  %i.oc = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.od = load ptr, ptr %i.oc, align 8, !noalias !1088, !nonnull !5, !noundef !5
  %i.oe = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.of = load i64, ptr %i.oe, align 8, !noalias !1088, !noundef !5
  br label %bb.eu

bb.et:                                            ; preds = %_RNvNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_name9is_u_name.exit.thread.i.i.i.i
  %i.og = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.oh = load ptr, ptr %i.og, align 8, !noalias !1088, !nonnull !5, !noundef !5
  %i.oi = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.oj = load i64, ptr %i.oi, align 8, !noalias !1088, !noundef !5
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es, %bb.er
  %.sroa.423.0.i.i.i.i = phi i64 [ %i.mt, %bb.er ], [ %i.of, %bb.es ], [ %i.oj, %bb.et ]
  %.sroa.022.0.i.i.i.i = phi ptr [ %i.ob, %bb.er ], [ %i.od, %bb.es ], [ %i.ok, %bb.et ]
  %i.ol = invoke noundef i32 @_RNvNtCsgdm2QMcbaeA_10fontdrasil3agl17char_for_agl_name(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.022.0.i.i.i.i, i64 noundef %.sroa.423.0.i.i.i.i)
          to label %bb.ev unwind label %.thread167.loopexit.i.i.i.i, !noalias !1088 ; 2 uses

bb.ev:                                            ; preds = %bb.eu
  %.not53.i.i.i.i = icmp eq i32 %i.ol, -1
  br i1 %.not53.i.i.i.i, label %bb.ex, label %bb.ew, !prof !16

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1065
  store i32 %i.ol, ptr %i.x, align 4, !noalias !1065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1065
  store ptr %i.x, ptr %i.w, align 8, !noalias !1065
  store ptr @_RNvXsw_NtNtCsf3Ta7LF998c_4core3fmt3nummNtB7_8UpperHex3fmt, ptr %.sroa.441.0..sroa_idx.i.i.i.i, align 8, !noalias !1065
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noundef nonnull @16, ptr noundef nonnull %i.w)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i unwind label %.thread167.loopexit.i.i.i.i, !noalias !1088

bb.ex:                                            ; preds = %bb.ev
  store ptr %i.lj, ptr %i.ac, align 8, !noalias !1065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1065
  store ptr %i.ac, ptr %i.v, align 8, !noalias !1065
  %.sroa.447.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtCs9NoVXegZYB5_8smol_str7SmolStrNtB6_7Display3fmtCs1qcNTItuk7F_13glyphs_reader, ptr %.sroa.447.0..sroa_idx.i.i.i.i, align 8, !noalias !1065
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @17, ptr noundef nonnull %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #21
          to label %bb.fc unwind label %.thread167.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1088

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i: ; preds = %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1065
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !1065
  %i.om = load i64, ptr %i.lc, align 8, !alias.scope !1112, !noalias !1065, !noundef !5 ; 3 uses
  %i.on = load i64, ptr %i.ad, align 8, !range !19, !alias.scope !1112, !noalias !1065, !noundef !5
  %i.oo = icmp eq i64 %i.om, %i.on
  br i1 %i.oo, label %bb.ey, label %bb.fb

bb.ey:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CoweEE8grow_oneCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %bb.fb unwind label %bb.ez, !noalias !1113

bb.ez:                                            ; preds = %bb.ey
  %i.op = landingpad { ptr, i32 }
          cleanup
  store ptr %i.lj, ptr %i.ac, align 8, !noalias !1065
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z) #20
          to label %.thread154.i.i.i.i unwind label %bb.fa, !noalias !1088

bb.fa:                                            ; preds = %bb.ez
  %i.oq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #18, !noalias !1088
  unreachable

bb.fb:                                            ; preds = %bb.ey, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i
  %i.or = load ptr, ptr %i.lb, align 8, !alias.scope !1112, !noalias !1065, !nonnull !5, !noundef !5
  %i.os = getelementptr inbounds nuw [24 x i8], ptr %i.or, i64 %i.om
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.os, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !1088
  %i.ot = add i64 %i.om, 1
  store i64 %i.ot, ptr %i.lc, align 8, !alias.scope !1112, !noalias !1065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1065
  br label %bb.fo

bb.fc:                                            ; preds = %bb.fr, %bb.fm, %bb.ex
  unreachable

bb.fd:                                            ; preds = %_RNvNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_name9is_u_name.exit.i.i.i.i
  %i.ou = getelementptr inbounds nuw i8, ptr %i.lj, i64 1
  br label %bb.fg

bb.fe:                                            ; preds = %_RNvNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_name9is_u_name.exit.i.i.i.i
  %i.ov = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.ow = load ptr, ptr %i.ov, align 8, !noalias !1088, !nonnull !5, !noundef !5
  %i.ox = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.oy = load i64, ptr %i.ox, align 8, !noalias !1088, !noundef !5
  br label %bb.fg

bb.ff:                                            ; preds = %_RNvNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_name9is_u_name.exit.i.i.i.i
  %i.oz = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.pa = load ptr, ptr %i.oz, align 8, !noalias !1088, !nonnull !5, !noundef !5
  %i.pb = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.pc = load i64, ptr %i.pb, align 8, !noalias !1088, !noundef !5
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe, %bb.fd
  %.sroa.617.0.i.i.i.i = phi i64 [ %i.ny, %bb.fd ], [ %i.oy, %bb.fe ], [ %i.pc, %bb.ff ] ; 5 uses
  %.sroa.014.0.i.i.i.i = phi ptr [ %i.ou, %bb.fd ], [ %i.ow, %bb.fe ], [ %i.pd, %bb.ff ] ; 3 uses
  %.not.i82.i.i.i.i = icmp ugt i64 %.sroa.617.0.i.i.i.i, 1
  br i1 %.not.i82.i.i.i.i, label %bb.fh, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.fg
  %i.pe = icmp eq i64 %.sroa.617.0.i.i.i.i, 1
  br i1 %i.pe, label %bb.fi, label %bb.fm, !prof !23

bb.fh:                                            ; preds = %bb.fg
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i.i.i.i, i64 1
  %i.pg = load i8, ptr %i.pf, align 1, !alias.scope !1114, !noalias !1088, !noundef !5
  %i.ph = icmp sgt i8 %i.pg, -65
  br i1 %i.ph, label %bb.fi, label %bb.fm, !prof !23

bb.fi:                                            ; preds = %bb.fh, %.split.i.i.i.i
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i.i.i.i, i64 1
  %i.pj = add i64 %.sroa.617.0.i.i.i.i, -1
  store ptr %i.pi, ptr %i.lf, align 8, !noalias !1065
  store i64 %i.pj, ptr %i.lg, align 8, !noalias !1065
  store i64 -1, ptr %i.aa, align 8, !noalias !1065
  %i.pk = load i64, ptr %i.lc, align 8, !alias.scope !1115, !noalias !1065, !noundef !5 ; 3 uses
  %i.pl = load i64, ptr %i.ad, align 8, !range !19, !alias.scope !1115, !noalias !1065, !noundef !5
  %i.pm = icmp eq i64 %i.pk, %i.pl
  br i1 %i.pm, label %bb.fj, label %bb.fn

bb.fj:                                            ; preds = %bb.fi
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CoweEE8grow_oneCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %bb.fn unwind label %bb.fk, !noalias !1116

bb.fk:                                            ; preds = %bb.fj
  %i.pn = landingpad { ptr, i32 }
          cleanup
  store ptr %i.lj, ptr %i.ac, align 8, !noalias !1065
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa) #20
          to label %.thread154.i.i.i.i unwind label %bb.fl, !noalias !1088

bb.fl:                                            ; preds = %bb.fk
  %i.po = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #18, !noalias !1088
  unreachable

bb.fm:                                            ; preds = %bb.fh, %.split.i.i.i.i
  store ptr %i.lj, ptr %i.ac, align 8, !noalias !1065
  invoke void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.014.0.i.i.i.i, i64 noundef %.sroa.617.0.i.i.i.i, i64 noundef 1, i64 noundef %.sroa.617.0.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #21
          to label %bb.fc unwind label %.thread167.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1088

bb.fn:                                            ; preds = %bb.fj, %bb.fi
  %i.pp = load ptr, ptr %i.lb, align 8, !alias.scope !1115, !noalias !1065, !nonnull !5, !noundef !5
  %i.pq = getelementptr inbounds nuw [24 x i8], ptr %i.pp, i64 %i.pk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pq, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !1088
  %i.pr = add i64 %i.pk, 1
  store i64 %i.pr, ptr %i.lc, align 8, !alias.scope !1115, !noalias !1065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1065
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fp, %bb.fn, %bb.fb
  %i.ps = icmp eq ptr %i.lk, %i.ld
  br i1 %i.ps, label %._crit_edge.i.i.i.i, label %bb.du

bb.fp:                                            ; preds = %bb.ed, %bb.ec
  %i.pt = load ptr, ptr %i.lb, align 8, !alias.scope !1107, !noalias !1065, !nonnull !5, !noundef !5
  %i.pu = getelementptr inbounds nuw [24 x i8], ptr %i.pt, i64 %i.mj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pu, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !1088
  %i.pv = add i64 %i.mj, 1
  store i64 %i.pv, ptr %i.lc, align 8, !alias.scope !1107, !noalias !1065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1065
  br label %bb.fo

bb.fq:                                            ; preds = %._crit_edge.i.i.i.i
  %i.pw = load i64, ptr %i.o, align 8, !range !17, !noalias !1065, !noundef !5
  %i.px = trunc nuw i64 %i.pw to i1
  %i.py = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.pz = load i64, ptr %i.py, align 8, !range !18, !noalias !1065, !noundef !5 ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  br i1 %i.px, label %bb.fr, label %bb.fs, !prof !16

bb.fr:                                            ; preds = %bb.fq
  %i.qb = load i64, ptr %i.qa, align 8, !noalias !1065
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.pz, i64 %i.qb) #21
          to label %bb.fc unwind label %.thread167.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1088

bb.fs:                                            ; preds = %bb.fq
  %i.qc = load ptr, ptr %i.qa, align 8, !noalias !1065, !nonnull !5, !noundef !5 ; 2 uses
  %i.qd = icmp samesign ugt i64 %i.pz, 2
  call void @llvm.assume(i1 %i.qd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1065
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.qc, ptr noundef nonnull align 1 dereferenceable(3) @3, i64 3, i1 false), !noalias !1088
  store i64 %i.pz, ptr %i.u, align 8, !noalias !1065
  %.sroa.432.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 5 uses
  store ptr %i.qc, ptr %.sroa.432.0..sroa_idx.i.i.i.i, align 8, !noalias !1065
  %.sroa.633.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 9 uses
  store i64 3, ptr %.sroa.633.0..sroa_idx.i.i.i.i, align 8, !noalias !1065
  %i.qe = load ptr, ptr %i.lb, align 8, !noalias !1065, !nonnull !5, !noundef !5 ; 4 uses
  %i.qf = load i64, ptr %i.ad, align 8, !range !19, !noalias !1065, !noundef !5
  %i.qg = load i64, ptr %i.lc, align 8, !noalias !1065, !noundef !5 ; 3 uses
  %i.qh = icmp ult i64 %i.qg, 384307168202282326
  call void @llvm.assume(i1 %i.qh)
  %.idx192.i.i.i.i = mul nuw nsw i64 %i.qg, 24
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qe, i64 %.idx192.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1065
  store ptr %i.qe, ptr %i.t, align 8, !noalias !1065
  %.sroa.425.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  store ptr %i.qe, ptr %.sroa.425.0..sroa_idx.i.i.i.i, align 8, !noalias !1065
  %.sroa.526.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %i.qf, ptr %.sroa.526.0..sroa_idx.i.i.i.i, align 8, !noalias !1065
  %.sroa.627.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  store ptr %i.qi, ptr %.sroa.627.0..sroa_idx.i.i.i.i, align 8, !noalias !1065
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7137.i.i.i.i)
  %i.qj = icmp eq i64 %i.qg, 0
  br i1 %i.qj, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CoweEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread.i.i.i.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CoweEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.lr.ph.i.i.i.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CoweEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.lr.ph.i.i.i.i: ; preds = %bb.fs
  %.sroa.7137.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CoweEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i

.body105.i.i.i.i:                                 ; preds = %bb.gi, %bb.gf, %bb.ft
  %.pn.i19.i.i.i = phi { ptr, i32 } [ %i.rl, %bb.gf ], [ %i.ql, %bb.ft ], [ %i.rq, %bb.gi ]
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CoweEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtNtBI_6borrow3CoweEEECs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i unwind label %bb.gk, !noalias !1088

bb.ft:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i.i
  %i.ql = landingpad { ptr, i32 }
          cleanup
  br label %.body105.i.i.i.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CoweEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CoweEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.lr.ph.i.i.i.i
  %i.qm = phi ptr [ %i.qe, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CoweEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.lr.ph.i.i.i.i ], [ %i.rt, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1117)
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 24
  store ptr %i.qn, ptr %.sroa.425.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1117, !noalias !1065
  %.sroa.0135.0.copyload136.i.i.i.i = load i64, ptr %i.qm, align 8, !noalias !1118 ; 2 uses
  %.sroa.7137.0..sroa_idx138.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7137.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7137.0..sroa_idx138.i.i.i.i, i64 16, i1 false), !noalias !1118
  %.not55.i.i.i.i = icmp eq i64 %.sroa.0135.0.copyload136.i.i.i.i, -2
  br i1 %.not55.i.i.i.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CoweEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread.i.i.i.i, label %bb.fu

bb.fu:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CoweEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1065
  store i64 %.sroa.0135.0.copyload136.i.i.i.i, ptr %i.s, align 8, !noalias !1065
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7137.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7137.i.i.i.i, i64 16, i1 false), !noalias !1065
  %i.qo = load ptr, ptr %.sroa.7137.0..sroa_idx.i.i.i.i, align 8, !noalias !1065, !nonnull !5
  %i.qp = load i64, ptr %i.qk, align 8, !noalias !1065 ; 4 uses
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u, i64 noundef %i.qp)
          to label %.noexc90.i.i.i.i unwind label %bb.gf, !noalias !1088

.noexc90.i.i.i.i:                                 ; preds = %bb.fu
  %i.qq = load i64, ptr %.sroa.633.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1119, !noalias !1065, !noundef !5 ; 3 uses
  %i.qr = icmp sgt i64 %i.qq, -1
  call void @llvm.assume(i1 %i.qr)
  %.not.i89.i.i.i.i = icmp eq i64 %i.qp, 0
  br i1 %.not.i89.i.i.i.i, label %bb.gg, label %bb.fv

bb.fv:                                            ; preds = %.noexc90.i.i.i.i
  %i.qs = load ptr, ptr %.sroa.432.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1119, !noalias !1065, !nonnull !5, !noundef !5
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 %i.qq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qt, ptr nonnull readonly align 1 %i.qo, i64 %i.qp, i1 false), !noalias !1088
  %.pre.i.i.i.i.i = load i64, ptr %.sroa.633.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1119, !noalias !1065
  br label %bb.gg

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CoweEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread.i.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CoweEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7137.i.i.i.i)
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CoweEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtNtBI_6borrow3CoweEEECs1qcNTItuk7F_13glyphs_reader.exit92.i.i.i.i unwind label %bb.fw, !noalias !1088

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtNtBI_6borrow3CoweEEECs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i: ; preds = %bb.fw, %.body105.i.i.i.i
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.qu, %bb.fw ], [ %.pn.i19.i.i.i, %.body105.i.i.i.i ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) #20
          to label %.body117.i.i.i.i unwind label %bb.gk, !noalias !1088

bb.fw:                                            ; preds = %_RNvNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_name13append_suffix.exit.i.i.i.i, %.noexc96.i.i.i.i, %bb.fx, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CoweEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread.i.i.i.i
  %i.qu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtNtBI_6borrow3CoweEEECs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtNtBI_6borrow3CoweEEECs1qcNTItuk7F_13glyphs_reader.exit92.i.i.i.i: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CoweEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1065
  %.pre.i.i.i.i = load i64, ptr %.sroa.633.0..sroa_idx.i.i.i.i, align 8, !noalias !1065 ; 4 uses
  br i1 %.not49.i.i.i.i, label %_RNvNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_name13append_suffix.exit.i.i.i.i, label %bb.fx

bb.fx:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtNtBI_6borrow3CoweEEECs1qcNTItuk7F_13glyphs_reader.exit92.i.i.i.i
  %i.qv = icmp sgt i64 %.pre.i.i.i.i, -1
  call void @llvm.assume(i1 %i.qv)
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u, i64 noundef 1)
          to label %.noexc96.i.i.i.i unwind label %bb.fw, !noalias !1088

.noexc96.i.i.i.i:                                 ; preds = %bb.fx
  %i.qw = load ptr, ptr %.sroa.432.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1120, !noalias !1065, !nonnull !5, !noundef !5
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 %.pre.i.i.i.i
  store i8 46, ptr %i.qx, align 1, !noalias !1121
  %i.qy = add nuw i64 %.pre.i.i.i.i, 1
  store i64 %i.qy, ptr %.sroa.633.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1120, !noalias !1065
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u, i64 noundef %i.gm)
          to label %.noexc97.i.i.i.i unwind label %bb.fw, !noalias !1088

.noexc97.i.i.i.i:                                 ; preds = %.noexc96.i.i.i.i
  %i.qz = load i64, ptr %.sroa.633.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1122, !noalias !1065, !noundef !5 ; 3 uses
  %i.ra = icmp sgt i64 %i.qz, -1
  call void @llvm.assume(i1 %i.ra)
  %.not.i.i94.i.i.i.i = icmp eq i64 %i.gm, 0
  br i1 %.not.i.i94.i.i.i.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i.i, label %bb.fy

bb.fy:                                            ; preds = %.noexc97.i.i.i.i
  %i.rb = load ptr, ptr %.sroa.432.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1122, !noalias !1065, !nonnull !5, !noundef !5
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 %i.qz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rc, ptr nonnull readonly align 1 %i.gk, i64 %i.gm, i1 false), !noalias !1088
  %.pre.i.i95.i.i.i.i = load i64, ptr %.sroa.633.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1122, !noalias !1065
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i.i: ; preds = %bb.fy, %.noexc97.i.i.i.i
  %i.rd = phi i64 [ %.pre.i.i95.i.i.i.i, %bb.fy ], [ %i.qz, %.noexc97.i.i.i.i ]
  %i.re = add i64 %i.rd, %i.gm                    ; 2 uses
  store i64 %i.re, ptr %.sroa.633.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1122, !noalias !1065
  br label %_RNvNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_name13append_suffix.exit.i.i.i.i

_RNvNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_name13append_suffix.exit.i.i.i.i: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtNtBI_6borrow3CoweEEECs1qcNTItuk7F_13glyphs_reader.exit92.i.i.i.i
  %i.rf = phi i64 [ %i.re, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i.i ], [ %.pre.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtNtBI_6borrow3CoweEEECs1qcNTItuk7F_13glyphs_reader.exit92.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1065
  %i.rg = load ptr, ptr %.sroa.432.0..sroa_idx.i.i.i.i, align 8, !noalias !1065, !nonnull !5, !noundef !5
  invoke void @_RNvXNtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB2_14ProductionNameINtNtCsf3Ta7LF998c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.rg, i64 noundef %i.rf)
          to label %bb.fz unwind label %bb.fw, !noalias !1088

bb.fz:                                            ; preds = %_RNvNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_name13append_suffix.exit.i.i.i.i
  %.sroa.0.0.copyload62.i.i.i = load i8, ptr %i.r, align 8, !noalias !1089
  %.sroa.9.0..sroa_idx65.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9.i.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9.0..sroa_idx65.i.i.i, i64 23, i1 false), !noalias !1089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1065
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i.i unwind label %bb.ga, !noalias !1088

bb.ga:                                            ; preds = %bb.fz
  %i.rh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body117.i.i.i.i unwind label %bb.gb, !noalias !1088

bb.gb:                                            ; preds = %bb.ga
  %i.ri = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #18, !noalias !1088
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i.i: ; preds = %bb.fz
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1088

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1065
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.gd unwind label %bb.gc, !noalias !1088

bb.gc:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i
  %i.rj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body.i15.i.i.i unwind label %bb.ge, !noalias !1088

bb.gd:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit.i20.i.i.i unwind label %bb.cp, !noalias !1088

bb.ge:                                            ; preds = %bb.gc
  %i.rk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #18, !noalias !1088
  unreachable

bb.gf:                                            ; preds = %bb.fu
  %i.rl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #20
          to label %.body105.i.i.i.i unwind label %bb.gk, !noalias !1088

bb.gg:                                            ; preds = %bb.fv, %.noexc90.i.i.i.i
  %i.rm = phi i64 [ %.pre.i.i.i.i.i, %bb.fv ], [ %i.qq, %.noexc90.i.i.i.i ]
  %i.rn = add i64 %i.rm, %i.qp
  store i64 %i.rn, ptr %.sroa.633.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1119, !noalias !1065
  %i.ro = load i64, ptr %i.s, align 8, !range !8, !alias.scope !1123, !noalias !1065, !noundef !5
  %i.rp = icmp eq i64 %i.ro, -1
  br i1 %i.rp, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i.i unwind label %bb.gi, !noalias !1088

bb.gi:                                            ; preds = %bb.gh
  %i.rq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body105.i.i.i.i unwind label %bb.gj, !noalias !1088

bb.gj:                                            ; preds = %bb.gi
  %i.rr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #18, !noalias !1088
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i.i: ; preds = %bb.gh
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i unwind label %bb.ft, !noalias !1088

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i.i, %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1065
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7137.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7137.i.i.i.i)
  %i.rs = load ptr, ptr %.sroa.627.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1124, !noalias !1065, !nonnull !5, !noundef !5
  %i.rt = load ptr, ptr %.sroa.425.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1124, !noalias !1065, !nonnull !5, !noundef !5 ; 2 uses
  %i.ru = icmp eq ptr %i.rt, %i.rs
  br i1 %i.ru, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CoweEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.thread.i.i.i.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CoweEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i

bb.gk:                                            ; preds = %bb.go, %.thread154.i.i.i.i, %bb.gf, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtNtBI_6borrow3CoweEEECs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i, %.body105.i.i.i.i, %.body117.i.i.i.i, %.body.i15.i.i.i
  %i.rv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #18, !noalias !1088
  unreachable

.thread154.i.i.i.i:                               ; preds = %bb.fk, %bb.ez, %bb.ee, %.thread167.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread167.loopexit.i.i.i.i
  %eh.lpad-body74157.i.i.i.i = phi { ptr, i32 } [ %i.op, %bb.ez ], [ %i.pn, %bb.fk ], [ %i.mm, %bb.ee ], [ %lpad.loopexit.i.i.i.i, %.thread167.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp99, %.thread167.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBG_6borrow3CoweEEECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad) #20
          to label %.body117.i.i.i.i unwind label %bb.gk, !noalias !1088

bb.gl:                                            ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB2f_9GlyphData25construct_production_names2_0EB2h_.exit.thread.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !1065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1065
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %.pre214.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !1065 ; 4 uses
  br i1 %.not49.i.i.i.i, label %_RNvNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_name13append_suffix.exit114.i.i.i.i, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.rw = icmp sgt i64 %.pre214.i.i.i.i, -1
  call void @llvm.assume(i1 %i.rw)
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef 1)
          to label %.noexc112.i.i.i.i unwind label %bb.go, !noalias !1088

.noexc112.i.i.i.i:                                ; preds = %bb.gm
  %i.rx = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ry = load ptr, ptr %i.rx, align 8, !alias.scope !1125, !noalias !1065, !nonnull !5, !noundef !5
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 %.pre214.i.i.i.i
  store i8 46, ptr %i.rz, align 1, !noalias !1126
  %i.sa = add nuw i64 %.pre214.i.i.i.i, 1
  store i64 %i.sa, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !1125, !noalias !1065
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.gm)
          to label %.noexc113.i.i.i.i unwind label %bb.go, !noalias !1088

.noexc113.i.i.i.i:                                ; preds = %.noexc112.i.i.i.i
  %i.sb = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !1127, !noalias !1065, !noundef !5 ; 3 uses
  %i.sc = icmp sgt i64 %i.sb, -1
  call void @llvm.assume(i1 %i.sc)
  %.not.i.i109.i.i.i.i = icmp eq i64 %i.gm, 0
  br i1 %.not.i.i109.i.i.i.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs1qcNTItuk7F_13glyphs_reader.exit.i111.i.i.i.i, label %bb.gn

bb.gn:                                            ; preds = %.noexc113.i.i.i.i
  %i.sd = load ptr, ptr %i.rx, align 8, !alias.scope !1127, !noalias !1065, !nonnull !5, !noundef !5
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.sb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.se, ptr nonnull readonly align 1 %i.gk, i64 %i.gm, i1 false), !noalias !1088
  %.pre.i.i110.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !1127, !noalias !1065
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs1qcNTItuk7F_13glyphs_reader.exit.i111.i.i.i.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs1qcNTItuk7F_13glyphs_reader.exit.i111.i.i.i.i: ; preds = %bb.gn, %.noexc113.i.i.i.i
  %i.sf = phi i64 [ %.pre.i.i110.i.i.i.i, %bb.gn ], [ %i.sb, %.noexc113.i.i.i.i ]
  %i.sg = add i64 %i.sf, %i.gm                    ; 2 uses
  store i64 %i.sg, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !1127, !noalias !1065
  br label %_RNvNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_name13append_suffix.exit114.i.i.i.i

bb.go:                                            ; preds = %_RNvNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_name13append_suffix.exit114.i.i.i.i, %.noexc112.i.i.i.i, %bb.gm
  %i.sh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #20
          to label %.body117.i.i.i.i unwind label %bb.gk, !noalias !1088

_RNvNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_name13append_suffix.exit114.i.i.i.i: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs1qcNTItuk7F_13glyphs_reader.exit.i111.i.i.i.i, %bb.gl
  %i.si = phi i64 [ %i.sg, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs1qcNTItuk7F_13glyphs_reader.exit.i111.i.i.i.i ], [ %.pre214.i.i.i.i, %bb.gl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1065
  %i.sj = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.sk = load ptr, ptr %i.sj, align 8, !noalias !1065, !nonnull !5, !noundef !5
  invoke void @_RNvXNtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB2_14ProductionNameINtNtCsf3Ta7LF998c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.sk, i64 noundef %i.si)
          to label %bb.gp unwind label %bb.go, !noalias !1088

bb.gp:                                            ; preds = %_RNvNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB7_9GlyphData25construct_production_name13append_suffix.exit114.i.i.i.i
  %.sroa.0.0.copyload63.i.i.i = load i8, ptr %i.p, align 8, !noalias !1089 ; 5 uses
  %.sroa.9.0..sroa_idx66.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9.i.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9.0..sroa_idx66.i.i.i, i64 23, i1 false), !noalias !1089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1065
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1qcNTItuk7F_13glyphs_reader.exit.i116.i.i.i.i unwind label %bb.gq, !noalias !1088

bb.gq:                                            ; preds = %bb.gp
  %i.sl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body117.i.i.i.i unwind label %bb.gr, !noalias !1088

bb.gr:                                            ; preds = %bb.gq
  %i.sm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #18, !noalias !1088
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1qcNTItuk7F_13glyphs_reader.exit.i116.i.i.i.i: ; preds = %bb.gp
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit120.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1088

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit120.i.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1qcNTItuk7F_13glyphs_reader.exit.i116.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1065
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.gt unwind label %bb.gs, !noalias !1088

bb.gs:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit120.i.i.i.i
  %i.sn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body.i15.i.i.i unwind label %bb.gu, !noalias !1088

bb.gt:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader.exit120.i.i.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit125.i.i.i.i unwind label %bb.cp, !noalias !1088

bb.gu:                                            ; preds = %bb.gs
  %i.so = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #18, !noalias !1088
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit125.i.i.i.i: ; preds = %bb.gt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1065
  call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  %i.sp = load i8, ptr %i.ai, align 8, !range !7, !alias.scope !1128, !noalias !1065, !noundef !5 ; 4 uses
  %i.sq = icmp eq i8 %i.sp, -1
  br i1 %i.sq, label %_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData25construct_production_name.exit.i.i.i, label %bb.gv

bb.gv:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit125.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  %i.sr = icmp samesign ugt i8 %i.sp, 25
  %i.ss = and i8 %i.sp, 30
  %switch1.i.i126.i.i.i.i = icmp eq i8 %i.ss, 26
  %switch.i.i127.i.i.i.i = and i1 %i.sr, %switch1.i.i126.i.i.i.i
  br i1 %switch.i.i127.i.i.i.i, label %_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData25construct_production_name.exit.i.i.i, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  %switch.i.i.i.i128.i.i.i.i = icmp samesign ult i8 %i.sp, 25
  br i1 %switch.i.i.i.i128.i.i.i.i, label %_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData25construct_production_name.exit.i.i.i, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.st = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  %i.su = load ptr, ptr %i.st, align 8, !alias.scope !1134, !noalias !1065, !nonnull !5, !noundef !5
  %i.sv = atomicrmw add ptr %i.su, i64 -1 release, align 8, !noalias !1135
  %i.sw = icmp eq i64 %i.sv, 1
  br i1 %i.sw, label %_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData25construct_production_name.exit.sink.split.i.i.i, label %_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData25construct_production_name.exit.i.i.i

_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData25construct_production_name.exit.sink.split.i.i.i: ; preds = %bb.gx, %bb.dn
  %.sink111.i.i.i = phi ptr [ %i.jz, %bb.dn ], [ %i.st, %bb.gx ]
  %.sroa.0.1.ph.i.i.i = phi i8 [ %.sroa.0.0.i.i.i, %bb.dn ], [ %.sroa.0.0.copyload63.i.i.i, %bb.gx ]
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs8hFumjqO1Bi_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink111.i.i.i) #19
          to label %_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData25construct_production_name.exit.i.i.i unwind label %bb.gz, !noalias !1026

_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData25construct_production_name.exit.i.i.i: ; preds = %_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData25construct_production_name.exit.sink.split.i.i.i, %bb.gx, %bb.gw, %bb.gv, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit125.i.i.i.i, %bb.dn, %bb.dm, %bb.dl, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit.i20.i.i.i
  %.sroa.0.1.i.i.i = phi i8 [ %.sroa.0.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit.i20.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.dl ], [ %.sroa.0.0.i.i.i, %bb.dm ], [ %.sroa.0.0.copyload63.i.i.i, %bb.gx ], [ %.sroa.0.0.i.i.i, %bb.dn ], [ %.sroa.0.0.copyload63.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit125.i.i.i.i ], [ %.sroa.0.0.copyload63.i.i.i, %bb.gv ], [ %.sroa.0.0.copyload63.i.i.i, %bb.gw ], [ %.sroa.0.1.ph.i.i.i, %_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData25construct_production_name.exit.sink.split.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1064
  %.not7.i.i.i = icmp eq i8 %.sroa.0.1.i.i.i.i, -1 ; 2 uses
  %.not.i.i.i = icmp eq i8 %.sroa.0.1.i.i.i, -1
  %or.cond.i.i.i = select i1 %.not7.i.i.i, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %bb.ha, label %bb.gy

bb.gy:                                            ; preds = %_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData25construct_production_name.exit.i.i.i, %_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData25construct_production_name.exit.thread.i.i.i
  %.not798.i.i.i = phi i1 [ %.not794.i.i.i, %_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData25construct_production_name.exit.thread.i.i.i ], [ %.not7.i.i.i, %_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData25construct_production_name.exit.i.i.i ] ; 2 uses
  %.sroa.0.197.i.i.i = phi i8 [ %.pr.pr.i.i.i.i, %_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData25construct_production_name.exit.thread.i.i.i ], [ %.sroa.0.1.i.i.i, %_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData25construct_production_name.exit.i.i.i ]
  %..i.i.i = select i1 %.not798.i.i.i, i8 7, i8 %.sroa.0.1.i.i.i.i
  %.8.i.i.i = select i1 %.not798.i.i.i, i8 -1, i8 %.sroa.7.1.i.i.i.i
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9.i.i.i, i64 23, i1 false), !noalias !1136
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0.197.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !1137
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %..i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8, !alias.scope !1137
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.8.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 1, !alias.scope !1137
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 -1, ptr %.sroa.8.0..sroa_idx.i.i.i, align 2, !alias.scope !1137
  br label %bb.ha

bb.gz:                                            ; preds = %_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData25construct_production_name.exit.sink.split.i.i.i, %bb.cm, %bb.bs, %_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData18construct_category.exit.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit16.sink.split.i.i.i.i.i, %bb.af, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit13.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit.i.i.i.i, %bb.j, %bb.i, %.noexc2.i, %bb.d, %bb.c
  %i.sx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.gz, %.body.i15.i.i.i, %.body.i.i.i.i.i.i, %bb.ap, %bb.ao, %bb.an, %bb.ad, %bb.ab, %.body.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.sx, %bb.gz ], [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %i.er, %bb.an ], [ %i.cq, %bb.ab ], [ %i.cs, %bb.ad ], [ %i.er, %bb.ap ], [ %i.er, %bb.ao ], [ %.pn.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %.pn63.i.i.i.i, %.body.i15.i.i.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata11QueryResultEEB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.at) #20
          to label %bb.hg unwind label %bb.hh, !noalias !1138

bb.ha:                                            ; preds = %bb.gy, %_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData25construct_production_name.exit.i.i.i
  %.sink.i.i.i = phi i32 [ 0, %bb.gy ], [ 2, %_RNvMs4_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_9GlyphData25construct_production_name.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i)
  store i32 %.sink.i.i.i, ptr %0, align 8, !alias.scope !1137
  call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  %i.sy = load i32, ptr %i.at, align 8, !range !6, !alias.scope !1140, !noundef !5
  %i.sz = icmp eq i32 %i.sy, 2
  br i1 %i.sz, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata11QueryResultE7or_elseNCNvMs4_BK_NtBK_9GlyphData5query0EBM_.exit, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  %i.ta = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1142)
  %i.tb = load i8, ptr %i.ta, align 8, !range !7, !alias.scope !1143, !noundef !5 ; 4 uses
  %i.tc = icmp eq i8 %i.tb, -1
  br i1 %i.tc, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata11QueryResultE7or_elseNCNvMs4_BK_NtBK_9GlyphData5query0EBM_.exit, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  %i.td = icmp samesign ugt i8 %i.tb, 25
  %i.te = and i8 %i.tb, 30
end_hunk_1
