Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_web-0c8e37cb5d35d0c0.actix_web.c3fc4f4c49456d5e-cgu.0?download=true
inline.NumInlined: 5794
inline.NumDeleted: 2637
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 46
begin_hunk_0_@"_ZN84_$LT$actix_web..guard..acceptable..Acceptable$u20$as$u20$actix_web..guard..Guard$GT$5check17h246fa170f6f97877E":bb.a
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.lcssa445657.i.i.i.i.i.i.i.i
  %i.dd = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17he36c9352b3a3d1fcE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i.i.i.i.i.i), !noalias !9308 ; 2 uses
  %i.de = extractvalue { ptr, i64 } %i.dd, 0      ; 2 uses
  %i.df = extractvalue { ptr, i64 } %i.dd, 1      ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.df, 0
  %.not1.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.de, null
  %.not.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not1.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %select.unfold.i.i.i.i.i.i.i.i
  %i.dg = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17he36c9352b3a3d1fcE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.de, i64 noundef %i.df), !noalias !9309 ; 2 uses
  %i.dh = extractvalue { ptr, i64 } %i.dg, 0      ; 11 uses
  %i.di = extractvalue { ptr, i64 } %i.dg, 1      ; 13 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9310)
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.u
  %indvar = phi i64 [ %indvar.next, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.u ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dj, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.u ] ; 9 uses
  %i.dj = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.dj, %i.di
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader14.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader14.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.v
  %.not36.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -32
  br i1 %.not36.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.v
  %i.dk = icmp ult i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.di
  br i1 %i.dk, label %iter.check, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

iter.check:                                       ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dl = shl i64 %indvar, 5
  %i.dm = sub i64 %i.di, %i.dl                    ; 4 uses
  %min.iters.check = icmp ult i64 %i.dm, 4
  br i1 %min.iters.check, label %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check423 = icmp ult i64 %i.dm, 32
  br i1 %min.iters.check423, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dn = and i64 %i.di, 31                       ; 3 uses
  %n.vec = sub nuw i64 %i.dm, %i.dn               ; 3 uses
  %i.do = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.du, %vector.body ]
  %vec.phi424 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.dv, %vector.body ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load = load <16 x i8>, ptr %i.dq, align 1, !alias.scope !9311, !noalias !9312
  %wide.load425 = load <16 x i8>, ptr %i.dr, align 1, !alias.scope !9311, !noalias !9312
  %i.ds = icmp slt <16 x i8> %wide.load, zeroinitializer
  %i.dt = icmp slt <16 x i8> %wide.load425, zeroinitializer
  %i.du = or <16 x i1> %vec.phi, %i.ds            ; 2 uses
  %i.dv = or <16 x i1> %vec.phi424, %i.dt         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !9178

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.dv, %i.du
  %bin.rdx.fr = freeze <16 x i1> %bin.rdx
  %i.dx = bitcast <16 x i1> %bin.rdx.fr to i16
  %.not435 = icmp eq i16 %i.dx, 0                 ; 3 uses
  %cmp.n = icmp eq i64 %i.dn, 0
  br i1 %cmp.n, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %i.dn, 4
  br i1 %min.epilog.iters.check, label %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !9315

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %.not435, %vec.epilog.iter.check ], [ true, %vector.main.loop.iter.check ]
  %i.dy = and i64 %i.di, 3                        ; 2 uses
  %n.vec426 = sub i64 %i.dm, %i.dy                ; 2 uses
  %i.dz = xor i1 %bc.merge.rdx, true
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %i.dz, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.ea = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec426
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index427 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next430, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi428 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %.fr436, %vec.epilog.vector.body ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %index427
  %wide.load429 = load <4 x i8>, ptr %i.ec, align 1, !alias.scope !9311, !noalias !9312
  %i.ed = icmp slt <4 x i8> %wide.load429, zeroinitializer
  %i.ee = or <4 x i1> %vec.phi428, %i.ed
  %.fr436 = freeze <4 x i1> %i.ee                 ; 2 uses
  %index.next430 = add nuw i64 %index427, 4       ; 2 uses
  %i.ef = icmp eq i64 %index.next430, %n.vec426
  br i1 %i.ef, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9179

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.eg = bitcast <4 x i1> %.fr436 to i4
  %.not437 = icmp eq i4 %i.eg, 0                  ; 2 uses
  %cmp.n431 = icmp eq i64 %i.dy, 0
  br i1 %cmp.n431, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.124.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %iter.check ], [ %i.do, %vec.epilog.iter.check ], [ %i.ea, %vec.epilog.middle.block ]
  %.sroa.011.023.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i1 [ true, %iter.check ], [ %.not435, %vec.epilog.iter.check ], [ %.not437, %vec.epilog.middle.block ]
  br label %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.01.124.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ek, %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.01.124.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.011.023.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ %i.ej, %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.011.023.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.sroa.01.124.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !9311, !noalias !9312, !noundef !25
  %.inv.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i8 %i.ei, -1
  %i.ej = select i1 %.inv.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 %.sroa.011.023.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false ; 2 uses
  %i.ek = add nuw i64 %.sroa.01.124.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ek, %i.di
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !9180

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %.preheader14.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.em = load <32 x i8>, ptr %i.el, align 1, !alias.scope !9311, !noalias !9312
  %i.en = icmp slt <32 x i8> %i.em, zeroinitializer
  %i.eo = bitcast <32 x i1> %i.en to i32
  %i.ep = icmp eq i32 %i.eo, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ep, label %bb.v, label %.loopexit.i.i.i.i.i.i.i.i

_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa404 = phi i1 [ %.not437, %vec.epilog.middle.block ], [ %.not435, %middle.block ], [ %i.ej, %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  br i1 %.lcssa404, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.loopexit.i.i.i.i.i.i.i.i

_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %bb.w
  %i.eq = phi i64 [ %i.eu, %bb.w ], [ %i.di, %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.er = invoke { i64, i64 } @_ZN4core5slice6memchr7memrchr17h0c3e43ac4b055a3eE(i8 noundef 59, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dh, i64 noundef %i.eq)
          to label %.noexc51.i.i unwind label %.loopexit.i.i, !noalias !9290 ; 2 uses

.noexc51.i.i:                                     ; preds = %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.es = extractvalue { i64, i64 } %i.er, 0
  %i.et = trunc nuw i64 %i.es to i1
  br i1 %i.et, label %bb.x, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.y, %bb.x
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.eu, %i.di
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc51.i.i
  %i.eu = extractvalue { i64, i64 } %i.er, 1      ; 6 uses
  %or.cond25.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.eu, %i.di
  br i1 %or.cond25.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.y:                                             ; preds = %bb.x
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.eu
  %lhsc.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.ev, align 1, !alias.scope !9316, !noalias !9317
  %i.ew = icmp eq i8 %lhsc.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 59
  br i1 %i.ew, label %bb.z, label %bb.w

bb.z:                                             ; preds = %bb.y
  %i.ex = add nuw i64 %i.eu, 1                    ; 2 uses
  %i.ey = sub nuw i64 %i.di, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.ex
  %i.fa = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17he36c9352b3a3d1fcE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dh, i64 noundef %i.eu), !noalias !9312 ; 2 uses
  %i.fb = extractvalue { ptr, i64 } %i.fa, 0
  %i.fc = extractvalue { ptr, i64 } %i.fa, 1
  %i.fd = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17he36c9352b3a3d1fcE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ez, i64 noundef %i.ey), !noalias !9312 ; 2 uses
  %i.fe = extractvalue { ptr, i64 } %i.fd, 0      ; 7 uses
  %i.ff = extractvalue { ptr, i64 } %i.fd, 1      ; 5 uses
  %i.fg = icmp ult i64 %i.ff, 2
  br i1 %i.fg, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.aa

.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.w, %.noexc51.i.i, %bb.ag, %bb.ae
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.gh, %bb.ag ], [ 1000, %bb.ae ], [ 1000, %.noexc51.i.i ], [ 1000, %bb.w ]
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fc, %bb.ag ], [ %i.di, %bb.ae ], [ %i.di, %.noexc51.i.i ], [ %i.di, %bb.w ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fb, %bb.ag ], [ %i.dh, %bb.ae ], [ %i.dh, %.noexc51.i.i ], [ %i.dh, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9318
  invoke void @"_ZN57_$LT$mime..Mime$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h3cad4ad1e6f69c56E"(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc52.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !9290

.noexc52.i.i:                                     ; preds = %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fh = load i64, ptr %i.a, align 8, !range !42, !noalias !9318, !noundef !25 ; 2 uses
  %i.fi = icmp eq i64 %i.fh, 2
  br i1 %i.fi, label %bb.ah, label %bb.ai

bb.aa:                                            ; preds = %bb.z
  %.not6.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ff, 2 ; 2 uses
  br i1 %.not6.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  %i.fk = load i8, ptr %i.fj, align 1, !alias.scope !9319, !noalias !9312, !noundef !25
  %i.fl = icmp sgt i8 %i.fk, -65
  br i1 %i.fl, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread184.i.i.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fe) ]
  br label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread184.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i": ; preds = %bb.ad, %bb.ab
  %2 = phi i64 [ 0, %bb.ab ], [ 2, %bb.ad ]
  %3 = phi i64 [ 2, %bb.ab ], [ %i.ff, %bb.ad ]
  %4 = phi ptr [ @56, %bb.ab ], [ @57, %bb.ad ]
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fe, i64 noundef %i.ff, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #52
          to label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.cont.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !9290

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.cont.i.i": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i"
  unreachable

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread184.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ab
  %i.fm = load i16, ptr %i.fe, align 1
  %i.fn = icmp ne i16 %i.fm, 15729
  %i.fo = zext i1 %i.fn to i32
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ae, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread184.i.i.i.i.i.i.i.i.i.i.i.i.i"
  br i1 %.not6.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  %i.fr = load i8, ptr %i.fq, align 1, !alias.scope !9320, !noalias !9312, !noundef !25
  %i.fs = icmp sgt i8 %i.fr, -65
  br i1 %i.fs, label %bb.af, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i"

bb.ae:                                            ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread184.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ft = load i16, ptr %i.fe, align 1
  %i.fu = icmp ne i16 %i.ft, 15697
  %i.fv = zext i1 %i.fu to i32
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %bb.ac, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.fx = add i64 %i.ff, -2                       ; 2 uses
  %i.fy = icmp ugt i64 %i.fx, 5
  br i1 %i.fy, label %.loopexit.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.af, %bb.ac
  %i.fz = phi i64 [ %i.fx, %bb.af ], [ 0, %bb.ac ]
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  %i.gb = invoke i64 @"_ZN4core3num7dec2flt60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$f32$GT$8from_str17hd393ea1bf0d9426cE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ga, i64 noundef %i.fz)
          to label %.noexc55.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !9290 ; 2 uses

.noexc55.i.i:                                     ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gc = trunc i64 %i.gb to i1
  br i1 %i.gc, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %.noexc55.i.i
  %.sroa.5163.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i.i.i = lshr i64 %i.gb, 32
  %.sroa.5163.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.5163.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i.i.i to i32
  %i.gd = bitcast i32 %.sroa.5163.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i to float ; 3 uses
  %i.ge = fcmp oge float %i.gd, 0.000000e+00
  %i.gf = fcmp ole float %i.gd, 1.000000e+00
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.ge, %i.gf
  %i.gg = fmul float %i.gd, 1.000000e+03
  %i.gh = call i16 @llvm.fptoui.sat.i16.f32(float %i.gg)
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i

bb.ah:                                            ; preds = %.noexc52.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9318
  br label %.loopexit.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader14.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ah, %bb.ag, %.noexc55.i.i, %bb.af, %bb.z, %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %select.unfold.i.i.i.i.i.i.i.i
  br i1 %i.dc, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17ha459e49e806ad5f2E.exit.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.backedge

.lr.ph.i.i.i.i.i.i.i.i.backedge:                  ; preds = %.loopexit.i.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heca627093a1cf687E.exit.i.i.i.i"
  %.be = phi i1 [ %i.da, %.loopexit.i.i.i.i.i.i.i.i ], [ false, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heca627093a1cf687E.exit.i.i.i.i" ]
  %.be467 = phi i64 [ %i.db, %.loopexit.i.i.i.i.i.i.i.i ], [ %i.cz, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heca627093a1cf687E.exit.i.i.i.i" ]
  %.lcssa445657.i.i.i.i.i.i.i.i.be = phi i64 [ %.lcssa4455.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i ], [ %.promoted54.i.i.i.i25.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heca627093a1cf687E.exit.i.i.i.i" ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %.noexc52.i.i
  %.sroa.27.24.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5126.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !9321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.29.24..sroa.5126.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !9322
  %.sroa.293.24.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.293.24..sroa.5126.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !9321
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.30.24..sroa.5126.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !9322
  %.sroa.304.24.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.304.24..sroa.5126.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !9321
  %.sroa.31.24.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.31.24..sroa.5126.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !9321
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.32.24..sroa.5126.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !9322
  %i.gi = load <2 x i64>, ptr %.sroa.4125.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !9321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9318
  store i64 %i.fh, ptr %i.b, align 8, !noalias !9322
  store <2 x i64> %i.gi, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !9322
  store ptr %.sroa.27.24.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !noalias !9322
  store i8 %.sroa.293.24.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 8, !noalias !9322
  store i64 %.sroa.304.24.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !noalias !9322
  store ptr %.sroa.31.24.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx.i.i.i.i, align 8, !noalias !9322
  store i16 %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.16.0..sroa_idx.i.i.i.i, align 8, !noalias !9322
  %i.gj = load i64, ptr %i.ba, align 8, !alias.scope !9323, !noalias !9324, !noundef !25 ; 5 uses
  %i.gk = icmp ult i64 %i.gj, 96076792050570582
  call void @llvm.assume(i1 %i.gk)
  %i.gl = load i64, ptr %i.c, align 8, !range !40, !alias.scope !9323, !noalias !9324, !noundef !25
  %i.gm = icmp eq i64 %i.gj, %i.gl
  br i1 %i.gm, label %bb.ak, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heca627093a1cf687E.exit.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heca627093a1cf687E.exit.i.i.i.i": ; preds = %bb.ak, %bb.ai
  %i.gn = load ptr, ptr %i.az, align 8, !alias.scope !9323, !noalias !9324, !nonnull !25, !noundef !25
  %i.go = getelementptr inbounds nuw [96 x i8], ptr %i.gn, i64 %i.gj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.go, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false), !noalias !9322
  %i.gp = add nuw nsw i64 %i.gj, 1
  store i64 %i.gp, ptr %i.ba, align 8, !alias.scope !9323, !noalias !9324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9322
  br i1 %i.da, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17ha459e49e806ad5f2E.exit.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.backedge

bb.aj:                                            ; preds = %bb.ak
  %i.gq = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE"(ptr noalias noundef align 8 dereferenceable(96) %i.b) #53, !noalias !9322
  br label %.body.i.i

bb.ak:                                            ; preds = %bb.ai
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h62a5261d22c07cceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.gj, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 96)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heca627093a1cf687E.exit.i.i.i.i" unwind label %bb.aj, !noalias !9324

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17ha459e49e806ad5f2E.exit.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heca627093a1cf687E.exit.i.i.i.i", %.loopexit.i.i.i.i.i.i.i.i
  %i.gr = icmp eq ptr %i.bd, %.sroa.3.0.i.i
  br i1 %i.gr, label %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.i, label %bb.k

_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.thread.i: ; preds = %bb.q, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6fb81217a625be3dE.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9290
  br label %bb.ao

_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.i: ; preds = %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17ha459e49e806ad5f2E.exit.i.i"
  %.sroa.0.0.copyload1.pre.i = load i64, ptr %i.c, align 8, !noalias !9267 ; 2 uses
  %.sroa.6.0.copyload3.pre.i = load i64, ptr %i.az, align 8, !noalias !9267 ; 2 uses
  %.sroa.7.0.copyload5.pre.i = load i64, ptr %i.ba, align 8, !noalias !9267 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9290
  %i.gs = icmp eq i64 %.sroa.0.0.copyload1.pre.i, -9223372036854775808
  br i1 %i.gs, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.i, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.thread95.i
  %.sroa.0.0.copyload1101.i = phi i64 [ %.sroa.4.0.i.i.i, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.thread95.i ], [ %.sroa.0.0.copyload1.pre.i, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.i ] ; 6 uses
  %.sroa.6.0.copyload3100.i = phi i64 [ %i.bc, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.thread95.i ], [ %.sroa.6.0.copyload3.pre.i, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.i ]
  %.sroa.7.0.copyload599.i = phi i64 [ 0, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.thread95.i ], [ %.sroa.7.0.copyload5.pre.i, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.i ]
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 %.sroa.6.0.copyload3100.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !9267
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.7.0.copyload599.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !9267
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %.sroa.0.0.copyload1101.i, ptr %i.h, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !9325)
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gu = load i8, ptr %i.gt, align 8, !range !31, !alias.scope !9325, !noalias !9326, !noundef !25
  %i.gv = trunc nuw i8 %i.gu to i1                ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i = load ptr, ptr %i.gw, align 8, !alias.scope !9325, !noalias !9326 ; 2 uses
  %.val7.i = load ptr, ptr %i.gy, align 8, !alias.scope !9325, !noalias !9326, !nonnull !25
  %.sroa.0.0.i = select i1 %i.gv, ptr %.val.i, ptr %.val7.i ; 9 uses
  %.val8.i = load i64, ptr %i.gx, align 8, !alias.scope !9325, !noalias !9326
  %.val9.cast.i = ptrtoint ptr %.val.i to i64
  %.sroa.5.0.i = select i1 %i.gv, i64 %.val8.i, i64 %.val9.cast.i ; 7 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ha = load i64, ptr %i.gz, align 8, !alias.scope !9325, !noalias !9326, !noundef !25 ; 10 uses
  %i.hb = icmp eq i64 %i.ha, 0
  br i1 %i.hb, label %_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.not.i.i = icmp ult i64 %i.ha, %.sroa.5.0.i
  br i1 %.not.i.i, label %bb.an, label %.split.i.i

.split.i.i:                                       ; preds = %bb.am
  %i.hc = icmp eq i64 %i.ha, %.sroa.5.0.i
  br i1 %i.hc, label %_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit, label %.invoke371

bb.an:                                            ; preds = %bb.am
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %i.ha
  %i.he = load i8, ptr %i.hd, align 1, !alias.scope !9327, !noalias !9328, !noundef !25
  %i.hf = icmp sgt i8 %i.he, -65
  br i1 %i.hf, label %_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit, label %.invoke371

bb.ao:                                            ; preds = %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.thread.i, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.i
  %.sroa.6.014.i = phi i64 [ undef, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.thread.i ], [ %.sroa.6.0.copyload3.pre.i, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.i ]
  %.sroa.7.013.i = phi i64 [ 5, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.thread.i ], [ %.sroa.7.0.copyload5.pre.i, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.i ]
  %i.hg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.6.014.i, ptr %i.hg, align 8, !alias.scope !9267
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.7.013.i, ptr %.sroa.49.0..sroa_idx.i, align 8, !alias.scope !9267
  store i64 -9223372036854775808, ptr %i.e, align 8, !alias.scope !9267
  call fastcc void @"_ZN4core3ptr120drop_in_place$LT$core..result..Result$LT$actix_web..http..header..accept..Accept$C$actix_http..error..ParseError$GT$$GT$17h2a748ea4736026b3E"(ptr noalias noundef align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bh

_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit:     ; preds = %bb.an, %.split.i.i, %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !9329)
  %i.hh = load i64, ptr %0, align 8, !range !38, !alias.scope !9329, !noalias !9330, !noundef !25
  %i.hi = trunc nuw i64 %i.hh to i1
  br i1 %i.hi, label %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i", label %bb.ap

bb.ap:                                            ; preds = %_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hk = load i64, ptr %i.hj, align 8, !range !24, !alias.scope !9329, !noalias !9330, !noundef !25 ; 3 uses
  %i.hl = icmp ne i64 %i.hk, -9223372036854775807
  call void @llvm.assume(i1 %i.hl)
  %i.hm = xor i64 %i.hk, -9223372036854775808
  %i.hn = icmp slt i64 %i.hk, 0
  %i.ho = select i1 %i.hn, i64 %i.hm, i64 1
  switch i64 %i.ho, label %bb.aq [
    i64 0, label %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i"
end_hunk_0
begin_hunk_1_@"_ZN91_$LT$actix_web..types..payload..BytesExtractFut$u20$as$u20$core..future..future..Future$GT$4poll17h396777c53b1f2e94E":bb.a
"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4a8d6f95e0952909E.exit": ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @598, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4a8d6f95e0952909E.exit"
  %.sink = phi i64 [ 0, %bb.g ], [ 0, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4a8d6f95e0952909E.exit" ], [ 1, %bb.a ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN91_$LT$actix_web..types..payload..HttpMessageBody$u20$as$u20$core..future..future..Future$GT$4poll17h44ee784a1735eb53E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(152) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.413.i.i.i.i.i.i = alloca [52 x i8], align 4 ; 5 uses
  %i.h = alloca [256 x i8], align 128             ; 16 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %i.m = alloca [3 x i8], align 4                 ; 4 uses
  %i.n = alloca [2 x i8], align 1                 ; 10 uses
  %i.o = alloca [48 x i8], align 8                ; 12 uses
  %i.p = alloca [40 x i8], align 8                ; 8 uses
  %i.q = alloca [16 x i8], align 8                ; 7 uses
  %i.r = alloca [40 x i8], align 8                ; 11 uses
  %i.s = alloca [48 x i8], align 8                ; 9 uses
  %i.t = alloca [32 x i8], align 8                ; 6 uses
  %i.u = alloca [40 x i8], align 8                ; 7 uses
  %i.v = alloca [32 x i8], align 8                ; 8 uses
  %i.w = alloca [16 x i8], align 8                ; 9 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [32 x i8], align 8                ; 13 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.sroa.0.0.copyload = load i8, ptr %i.aa, align 8 ; 2 uses
  store i8 11, ptr %i.aa, align 8
  %.not = icmp eq i8 %.sroa.0.0.copyload, 11
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 73
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.6.0..sroa_idx, i64 39, i1 false)
  store i8 %.sroa.0.0.copyload, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 4 uses
  %i.ag = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN5tokio7runtime7context7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hd4467768b74c4adaE") ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 72 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 68
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 69 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.2147.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.2147.sroa.2.0..sroa.2147.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.2147.sroa.3.0..sroa.2147.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.438.sroa.2.0..sroa.438.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.438.sroa.3.0..sroa.438.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.8.0..sroa_idx198.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.9203.0..sroa_idx204.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 5 uses
  %.sroa.413.8..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.413.i.i.i.i.i.i, i64 4
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.67.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.611.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %.sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %.sroa.8.0..sroa_idx200.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.9203.0..sroa_idx206.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.4133.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.449.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %.sroa.451.i.sroa.6.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.sroa.451.i.sroa.7.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %.sroa.455.sroa.0.i.sroa.5.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.463.i.sroa.5.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.463.i.sroa.6.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.463.i.sroa.7.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 3 uses
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  br label %bb.e

bb.d:                                             ; preds = %bb.dc, %bb.dk, %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h7f0addaf21e9fe59E.exit", %bb.b
  ret void

bb.e:                                             ; preds = %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h7f0addaf21e9fe59E.exit47", %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !10020)
  call void @llvm.experimental.noalias.scope.decl(metadata !10021)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  br label %bb.f

bb.f:                                             ; preds = %bb.cr, %bb.e
  %i.bg = load ptr, ptr %i.ae, align 8, !alias.scope !10020, !noalias !10022, !noundef !25 ; 3 uses
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !10023)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !10024
  store i64 5, ptr %i.af, align 8, !noalias !10024
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !10024
  %i.bh = load i8, ptr %i.ah, align 8, !range !39, !noalias !10025, !noundef !25
  switch i8 %i.bh, label %default.unreachable [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %.thread8.i.i
  ], !prof !10026

default.unreachable:                              ; preds = %bb.av, %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN3std3sys12thread_local11destructors10linux_like8register17h1010b5e789139aefE(ptr noundef nonnull align 8 %i.ag, ptr noundef nonnull @_ZN3std3sys12thread_local6native5eager7destroy17he3f0b2eef4cd22a9E)
          to label %.noexc.i.i unwind label %.thread5.i.i, !noalias !10027

.noexc.i.i:                                       ; preds = %bb.h
  store i8 1, ptr %i.ah, align 8, !noalias !10025
  br label %bb.i

bb.i:                                             ; preds = %.noexc.i.i, %bb.g
  %i.bi = load i8, ptr %i.ai, align 4, !range !31, !noalias !10028, !noundef !25 ; 2 uses
  %i.bj = trunc nuw i8 %i.bi to i1
  %i.bk = load i8, ptr %i.aj, align 1, !noalias !10028 ; 4 uses
  br i1 %i.bj, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i.i = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5tokio4task4coop14register_waker17hc1a950aa71c31494E(ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.n unwind label %.thread5.i.i, !noalias !10029

bb.l:                                             ; preds = %bb.j
  %i.bl = add i8 %i.bk, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.sroa.5.0.i.i.i.i.i = phi i8 [ %i.bl, %bb.l ], [ %i.bk, %bb.i ]
  store i8 %.sroa.5.0.i.i.i.i.i, ptr %i.aj, align 1, !noalias !10028
  br label %bb.n

.thread5.i.i:                                     ; preds = %bb.n, %bb.k, %bb.h
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.n:                                             ; preds = %bb.m, %bb.k
  %.sroa.4.0.i.i.i.i.i = phi i8 [ %i.bk, %bb.m ], [ 0, %bb.k ]
  %.sroa.0.0.i.i9.i.i.i = phi i1 [ false, %bb.m ], [ true, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !10024
  store i24 0, ptr %i.m, align 4, !noalias !10024
  invoke void @"_ZN77_$LT$tokio..task..coop..RestoreOnPending$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52db0a92ec3c1fc9E"(ptr noalias noundef nonnull align 1 dereferenceable(2) %i.ak)
          to label %bb.o unwind label %.thread5.i.i, !noalias !10029

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !10024
  br i1 %.sroa.0.0.i.i9.i.i.i, label %bb.p, label %.thread8.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !10024
  %i.bm = load i64, ptr %i.af, align 8, !range !71, !alias.scope !10030, !noalias !10024, !noundef !25
  %.not.i.i.i = icmp eq i64 %i.bm, 5
  br i1 %.not.i.i.i, label %.loopexit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call fastcc void @"_ZN4core3ptr245drop_in_place$LT$core..result..Result$LT$core..result..Result$LT$$LP$core..option..Option$LT$bytes..bytes..Bytes$GT$$C$actix_http..encoding..decoder..ContentDecoder$RP$$C$std..io..error..Error$GT$$C$tokio..runtime..task..error..JoinError$GT$$GT$17h0719772c627a2bfbE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.o), !noalias !10029
  br label %.loopexit.i

.thread8.i.i:                                     ; preds = %bb.o, %bb.g
  %.sroa.03.012.i10.off8.i.i = phi i8 [ %i.bi, %bb.o ], [ 0, %bb.g ]
  %.sroa.03.012.i10.off16.i.i = phi i8 [ %.sroa.4.0.i.i.i.i.i, %bb.o ], [ 0, %bb.g ]
  store i8 %.sroa.03.012.i10.off8.i.i, ptr %i.n, align 1, !noalias !10024
  store i8 %.sroa.03.012.i10.off16.i.i, ptr %i.al, align 1, !noalias !10024
  %i.bn = load ptr, ptr %2, align 8, !alias.scope !10031, !noalias !10032, !nonnull !25, !align !36, !noundef !25
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !10027, !nonnull !25, !align !36, !noundef !25
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !10029, !nonnull !25, !noundef !25
  invoke void %i.br(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bn)
          to label %bb.s unwind label %bb.r, !noalias !10029

bb.r:                                             ; preds = %.thread8.i.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$tokio..task..coop..RestoreOnPending$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52db0a92ec3c1fc9E"(ptr noalias noundef nonnull align 1 dereferenceable(2) %i.n)
          to label %.thread.i.i unwind label %bb.t, !noalias !10029

bb.s:                                             ; preds = %.thread8.i.i
  %i.bt = load i64, ptr %i.af, align 8, !range !71, !noalias !10024, !noundef !25 ; 5 uses
  %.not.i.i = icmp eq i64 %i.bt, 5
  br i1 %.not.i.i, label %"_ZN96_$LT$tokio..runtime..task..join..JoinHandle$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h83f843c2c598bef6E.exit.thread443.i", label %"_ZN96_$LT$tokio..runtime..task..join..JoinHandle$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h83f843c2c598bef6E.exit.i"

"_ZN96_$LT$tokio..runtime..task..join..JoinHandle$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h83f843c2c598bef6E.exit.thread443.i": ; preds = %bb.s
  call void @"_ZN77_$LT$tokio..task..coop..RestoreOnPending$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52db0a92ec3c1fc9E"(ptr noalias noundef nonnull align 1 dereferenceable(2) %i.n), !noalias !10029
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !10024
  br label %.loopexit.i

bb.t:                                             ; preds = %bb.u, %bb.r
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !10029
  unreachable

common.resume:                                    ; preds = %bb.dh, %bb.ds, %.thread.i.i, %bb.u, %.body.i.i, %bb.ag, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i", %bb.ap, %bb.aq, %bb.bb, %.body.i184.i, %bb.cl, %bb.cq, %bb.cw, %bb.cx, %bb.db
  %common.resume.op = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %bb.cl ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %.pn4.i.i, %.thread.i.i ], [ %.pn4.i.i, %bb.u ], [ %i.cn, %bb.ag ], [ %i.cn, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i" ], [ %lpad.thr_comm.split-lp.i, %bb.db ], [ %i.do, %bb.bb ], [ %eh.lpad-body.i185.i, %.body.i184.i ], [ %.pn.i, %bb.aq ], [ %.pn.i, %bb.ap ], [ %i.ft, %bb.cw ], [ %i.fm, %bb.cq ], [ %i.ft, %bb.cx ], [ %lpad.phi143, %bb.ds ], [ %i.gu, %bb.dh ]
  resume { ptr, i32 } %common.resume.op

.thread.i.i:                                      ; preds = %bb.r, %.thread5.i.i
  %.pn4.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.thread5.i.i ], [ %i.bs, %bb.r ] ; 2 uses
  %i.bv = load i64, ptr %i.af, align 8, !range !71, !alias.scope !10033, !noalias !10024, !noundef !25
  %.not.i21.i.i = icmp eq i64 %i.bv, 5
  br i1 %.not.i21.i.i, label %common.resume, label %bb.u

bb.u:                                             ; preds = %.thread.i.i
  invoke fastcc void @"_ZN4core3ptr245drop_in_place$LT$core..result..Result$LT$core..result..Result$LT$$LP$core..option..Option$LT$bytes..bytes..Bytes$GT$$C$actix_http..encoding..decoder..ContentDecoder$RP$$C$std..io..error..Error$GT$$C$tokio..runtime..task..error..JoinError$GT$$GT$17h0719772c627a2bfbE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.o)
          to label %common.resume unwind label %bb.t, !noalias !10029

"_ZN96_$LT$tokio..runtime..task..join..JoinHandle$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h83f843c2c598bef6E.exit.i": ; preds = %bb.s
  store i8 0, ptr %i.n, align 1, !noalias !10024
  %.sroa.0.0.copyload.i = load ptr, ptr %i.o, align 8, !noalias !10034 ; 7 uses
  %.sroa.5.sroa.0.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !10034 ; 8 uses
  %.sroa.5.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !10034 ; 4 uses
  %.sroa.5.sroa.6.0.copyload.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !10034 ; 2 uses
  %.sroa.9.0.copyload.i = load i64, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !10034
  call void @"_ZN77_$LT$tokio..task..coop..RestoreOnPending$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52db0a92ec3c1fc9E"(ptr noalias noundef nonnull align 1 dereferenceable(2) %i.n), !noalias !10029
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !10024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !10024
  %cond.i = icmp eq i64 %i.bt, 4
  br i1 %cond.i, label %bb.w, label %bb.ai

bb.v:                                             ; preds = %bb.at, %bb.f
  %i.bw = load i8, ptr %i.ad, align 8, !range !31, !alias.scope !10020, !noalias !10022, !noundef !25
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %"_ZN96_$LT$actix_http..encoding..decoder..Decoder$LT$S$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17hbbdd60fd67167ed8E.exit", label %bb.av

.loopexit.i:                                      ; preds = %"_ZN96_$LT$tokio..runtime..task..join..JoinHandle$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h83f843c2c598bef6E.exit.thread443.i", %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !10024
  br label %"_ZN96_$LT$actix_http..encoding..decoder..Decoder$LT$S$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17hbbdd60fd67167ed8E.exit"

bb.w:                                             ; preds = %"_ZN96_$LT$tokio..runtime..task..join..JoinHandle$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h83f843c2c598bef6E.exit.i"
  %i.by = inttoptr i64 %.sroa.5.sroa.5.0.copyload.i to ptr ; 7 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !10035
  %i.bz = call noundef dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, 9) 1) #46, !noalias !10035 ; 4 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 40, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @573) #52
          to label %.noexc.i178.i unwind label %.loopexit.split-lp, !noalias !10036

.noexc.i178.i:                                    ; preds = %bb.x
  unreachable

.loopexit:                                        ; preds = %bb.ab
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp:                               ; preds = %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.loopexit, %.loopexit.split-lp, %bb.aa
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.cd, %bb.aa ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$tokio..runtime..task..error..JoinError$GT$17h7b1a23c1af5b2559E"(ptr %.sroa.5.sroa.0.0.copyload.i, ptr readonly %i.by) #53
          to label %common.resume unwind label %bb.ah, !noalias !10036

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.bz, ptr noundef nonnull align 1 dereferenceable(40) @610, i64 40, i1 false), !noalias !10037
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !10038
  %i.cb = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !10038 ; 5 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.z, label %bb.ab, !prof !32

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #52
          to label %.noexc4.i.i unwind label %bb.aa, !noalias !10036

.noexc4.i.i:                                      ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bz, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !10039
  br label %.body.i.i

bb.ab:                                            ; preds = %bb.y
  store i64 40, ptr %i.cb, align 8, !noalias !10036
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %i.bz, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !noalias !10036
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store i64 40, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !10036
  %i.ce = invoke noundef nonnull ptr @_ZN3std2io5error5Error4_new17h6d8eca976092d069E(i8 noundef 40, ptr noundef nonnull align 1 %i.cb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @612)
          to label %bb.ac unwind label %.loopexit, !noalias !10036 ; 3 uses

bb.ac:                                            ; preds = %bb.ab
  %i.cf = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i, null
  br i1 %i.cf, label %"_ZN96_$LT$actix_http..encoding..decoder..Decoder$LT$S$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17hbbdd60fd67167ed8E.exit", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.by) ]
  %i.cg = load ptr, ptr %i.by, align 8, !invariant.load !25, !noalias !10036 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void %i.cg(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i)
          to label %bb.af unwind label %bb.ag, !noalias !10036

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !range !40, !invariant.load !25, !noalias !10036 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !range !41, !invariant.load !25, !noalias !10036 ; 2 uses
  %i.cl = icmp ult i64 %i.ck, -9223372036854775807
  call void @llvm.assume(i1 %i.cl)
  %i.cm = icmp eq i64 %i.ci, 0
  br i1 %i.cm, label %"_ZN96_$LT$actix_http..encoding..decoder..Decoder$LT$S$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17hbbdd60fd67167ed8E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i": ; preds = %bb.af
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i, i64 noundef %i.ci, i64 noundef range(i64 1, -9223372036854775807) %i.ck) #46, !noalias !10036
  br label %"_ZN96_$LT$actix_http..encoding..decoder..Decoder$LT$S$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17hbbdd60fd67167ed8E.exit"

bb.ag:                                            ; preds = %bb.ae
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !range !40, !invariant.load !25, !noalias !10036 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !range !41, !invariant.load !25, !noalias !10036 ; 2 uses
  %i.cs = icmp ult i64 %i.cr, -9223372036854775807
  call void @llvm.assume(i1 %i.cs)
  %i.ct = icmp eq i64 %i.cp, 0
  br i1 %i.ct, label %common.resume, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i": ; preds = %bb.ag
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i, i64 noundef %i.cp, i64 noundef range(i64 1, -9223372036854775807) %i.cr) #46, !noalias !10036
  br label %common.resume

bb.ah:                                            ; preds = %.body.i.i
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !10036
  unreachable

bb.ai:                                            ; preds = %"_ZN96_$LT$tokio..runtime..task..join..JoinHandle$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h83f843c2c598bef6E.exit.i"
  %i.cv = inttoptr i64 %.sroa.9.0.copyload.i to ptr ; 2 uses
  %i.cw = icmp eq i64 %i.bt, 3
  br i1 %i.cw, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  br label %"_ZN96_$LT$actix_http..encoding..decoder..Decoder$LT$S$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17hbbdd60fd67167ed8E.exit"

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !10040
  store ptr %.sroa.0.0.copyload.i, ptr %i.x, align 8, !noalias !10040
  store ptr %.sroa.5.sroa.0.0.copyload.i, ptr %.sroa.2147.0..sroa_idx.i, align 8, !noalias !10040
  store i64 %.sroa.5.sroa.5.0.copyload.i, ptr %.sroa.2147.sroa.2.0..sroa.2147.0..sroa_idx.sroa_idx.i, align 8, !noalias !10040
  store i64 %.sroa.5.sroa.6.0.copyload.i, ptr %.sroa.2147.sroa.3.0..sroa.2147.0..sroa_idx.sroa_idx.i, align 8, !noalias !10040
  %.val174.i = load i64, ptr %i.ab, align 8, !range !44, !alias.scope !10020, !noalias !10022, !noundef !25 ; 2 uses
  %i.cx = icmp eq i64 %.val174.i, 3
  br i1 %i.cx, label %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$actix_http..encoding..decoder..ContentDecoder$GT$$GT$17hc8e33ff00e2afba7E.exit.i", label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.val175.i = load ptr, ptr %i.am, align 8, !alias.scope !10020, !noalias !10022
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$actix_http..encoding..decoder..ContentDecoder$GT$17h73bc997102b9d15bE"(i64 %.val174.i, ptr %.val175.i)
          to label %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$actix_http..encoding..decoder..ContentDecoder$GT$$GT$17hc8e33ff00e2afba7E.exit.i" unwind label %bb.am, !noalias !10041

end_hunk_1
begin_hunk_2_@_ZN9actix_web4http6header19content_disposition18ContentDisposition8from_raw17h09c66776f594e8e5E:bb.a

bb.az:                                            ; preds = %.lr.ph1019
  %i.fv = load i64, ptr %i.e, align 8, !range !40, !alias.scope !11508, !noalias !11509, !noundef !25
  %i.fw = icmp eq i64 %i.fs, %i.fv
  br i1 %i.fw, label %.invoke923, label %.sink.split

bb.ba:                                            ; preds = %bb.ay
  %i.fx = load i64, ptr %i.e, align 8, !range !40, !alias.scope !11502, !noalias !11503, !noundef !25
  %i.fy = icmp eq i64 %i.fs, %i.fx
  br i1 %i.fy, label %.invoke923, label %.sink.split

.invoke923:                                       ; preds = %bb.ba, %bb.az
  %i.fz = phi ptr [ @673, %bb.az ], [ @672, %bb.ba ]
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fz)
          to label %.sink.split unwind label %.loopexit.split-lp.loopexit.loopexit

.loopexit754:                                     ; preds = %.peel.next, %bb.bv
  %.val189.pre = load i64, ptr %i.e, align 8      ; 2 uses
  %.sroa.2141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 5, ptr %.sroa.2141.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  %i.ga = icmp eq i64 %.val189.pre, 0
  br i1 %i.ga, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha6f123b9f1ec0b66E.exit", label %bb.bb

bb.bb:                                            ; preds = %.loopexit754
  %.val190 = load ptr, ptr %i.at, align 8, !nonnull !25, !noundef !25
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val190, i64 noundef %.val189.pre, i64 noundef range(i64 1, -9223372036854775807) 1) #46
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha6f123b9f1ec0b66E.exit"

bb.bc:                                            ; preds = %bb.ay
  %i.gb = add i64 %.sroa.13.01016, 2              ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 0
  br i1 %i.gc, label %bb.be, label %.thread

.thread:                                          ; preds = %bb.aq, %bb.bc
  %.sroa.13.0.lcssa657782 = phi i64 [ %i.gb, %bb.bc ], [ 2, %bb.aq ] ; 7 uses
  %.not.i241 = icmp ult i64 %.sroa.13.0.lcssa657782, %i.bd
  br i1 %.not.i241, label %bb.bd, label %.split.i

.split.i:                                         ; preds = %.thread
  %i.gd = icmp eq i64 %.sroa.13.0.lcssa657782, %i.bd
  br i1 %i.gd, label %bb.be, label %.invoke

bb.bd:                                            ; preds = %.thread
  %i.ge = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.sroa.13.0.lcssa657782
  %i.gf = load i8, ptr %i.ge, align 1, !alias.scope !11510, !noundef !25
  %i.gg = icmp sgt i8 %i.gf, -65
  br i1 %i.gg, label %bb.be, label %.invoke

bb.be:                                            ; preds = %bb.bd, %.split.i, %bb.bc
  %.sroa.13.0.lcssa657783 = phi i64 [ %.sroa.13.0.lcssa657782, %bb.bd ], [ %.sroa.13.0.lcssa657782, %.split.i ], [ 0, %bb.bc ] ; 2 uses
  %i.gh = sub nuw i64 %i.bd, %.sroa.13.0.lcssa657783 ; 5 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.sroa.13.0.lcssa657783 ; 3 uses
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.backedge.i.i.backedge, %bb.be
  %i.gj = phi i64 [ 0, %bb.be ], [ %i.gw, %.backedge.i.i.backedge ] ; 5 uses
  %i.gk = sub nuw i64 %i.gh, %i.gj                ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gj ; 2 uses
  %i.gm = icmp ult i64 %i.gk, 16
  br i1 %i.gm, label %.preheader.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i

.preheader.i.i.i.i:                               ; preds = %.backedge.i.i
  %.not.i.i.i.i = icmp eq i64 %i.gh, %i.gj
  br i1 %.not.i.i.i.i, label %_ZN9actix_web4http6header19content_disposition10split_once17h178f9ec842a287b0E.exit, label %.lr.ph.i.i.i.i243

.lr.ph.i.i.i.i243:                                ; preds = %.preheader.i.i.i.i, %bb.bf
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.gq, %bb.bf ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 %.sroa.01.05.i.i.i.i
  %i.go = load i8, ptr %i.gn, align 1, !alias.scope !11511, !noalias !11512, !noundef !25
  %i.gp = icmp eq i8 %i.go, 59
  br i1 %i.gp, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i.i.i.i243
  %i.gq = add nuw nsw i64 %.sroa.01.05.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.gq, %i.gk
  br i1 %exitcond.not.i.i.i.i, label %_ZN9actix_web4http6header19content_disposition10split_once17h178f9ec842a287b0E.exit, label %.lr.ph.i.i.i.i243

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i: ; preds = %.backedge.i.i
  %i.gr = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 59, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gl, i64 noundef %i.gk)
          to label %.noexc244 unwind label %.loopexit547 ; 2 uses

.noexc244:                                        ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i
  %i.gs = extractvalue { i64, i64 } %i.gr, 0
  %i.gt = extractvalue { i64, i64 } %i.gr, 1
  %i.gu = trunc nuw i64 %i.gs to i1
  br i1 %i.gu, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i, label %_ZN9actix_web4http6header19content_disposition10split_once17h178f9ec842a287b0E.exit

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i: ; preds = %.lr.ph.i.i.i.i243, %.noexc244
  %.sroa.4.0.i27.i.i.i = phi i64 [ %i.gt, %.noexc244 ], [ %.sroa.01.05.i.i.i.i, %.lr.ph.i.i.i.i243 ] ; 2 uses
  %i.gv = add i64 %i.gj, 1
  %i.gw = add i64 %i.gv, %.sroa.4.0.i27.i.i.i     ; 2 uses
  %.not21.i.i.i = icmp ugt i64 %i.gw, %i.gh       ; 2 uses
  %i.gx = add i64 %.sroa.4.0.i27.i.i.i, %i.gj     ; 4 uses
  %or.cond.i.not.i.i = icmp ult i64 %i.gx, %i.gh
  br i1 %or.cond.i.not.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i
  br i1 %.not21.i.i.i, label %_ZN9actix_web4http6header19content_disposition10split_once17h178f9ec842a287b0E.exit, label %.backedge.i.i.backedge

bb.bh:                                            ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gx
  %lhsc.i.i = load i8, ptr %i.gy, align 1, !alias.scope !11513, !noalias !11514
  %i.gz = icmp eq i8 %lhsc.i.i, 59                ; 2 uses
  %brmerge.i.i = or i1 %.not21.i.i.i, %i.gz
  br i1 %brmerge.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h39a21bf43f749675E.exit.i", label %.backedge.i.i.backedge

.backedge.i.i.backedge:                           ; preds = %bb.bh, %bb.bg
  br label %.backedge.i.i

"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h39a21bf43f749675E.exit.i": ; preds = %bb.bh
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gx ; 3 uses
  br i1 %i.gz, label %"_ZN4core3str21_$LT$impl$u20$str$GT$16split_at_checked17h91d8fcfd737e3dc8E.exit.i.i.i", label %_ZN9actix_web4http6header19content_disposition10split_once17h178f9ec842a287b0E.exit

"_ZN4core3str21_$LT$impl$u20$str$GT$16split_at_checked17h91d8fcfd737e3dc8E.exit.i.i.i": ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h39a21bf43f749675E.exit.i"
  %i.hb = sub nuw i64 %i.gh, %i.gx                ; 3 uses
  %.not.i2.i.i.i = icmp ugt i64 %i.hb, 1
  br i1 %.not.i2.i.i.i, label %bb.bi, label %"_ZN9actix_web4http6header19content_disposition10split_once28_$u7b$$u7b$closure$u7d$$u7d$17h67b5a9ba6135d9d7E.exit.i.i"

bb.bi:                                            ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$16split_at_checked17h91d8fcfd737e3dc8E.exit.i.i.i"
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 1
  %i.hd = load i8, ptr %i.hc, align 1, !alias.scope !11515, !noalias !11516, !noundef !25
  %i.he = icmp sgt i8 %i.hd, -65
  br i1 %i.he, label %"_ZN9actix_web4http6header19content_disposition10split_once28_$u7b$$u7b$closure$u7d$$u7d$17h67b5a9ba6135d9d7E.exit.i.i", label %.invoke

"_ZN9actix_web4http6header19content_disposition10split_once28_$u7b$$u7b$closure$u7d$$u7d$17h67b5a9ba6135d9d7E.exit.i.i": ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$16split_at_checked17h91d8fcfd737e3dc8E.exit.i.i.i", %bb.bi
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 1
  %i.hg = add i64 %i.hb, -1
  br label %_ZN9actix_web4http6header19content_disposition10split_once17h178f9ec842a287b0E.exit

.invoke:                                          ; preds = %.split.i, %bb.bd, %bb.bi
  %i.hh = phi ptr [ %i.ha, %bb.bi ], [ %i.bc, %bb.bd ], [ %i.bc, %.split.i ]
  %i.hi = phi i64 [ %i.hb, %bb.bi ], [ %i.bd, %bb.bd ], [ %i.bd, %.split.i ]
  %i.hj = phi i64 [ 0, %bb.bi ], [ %.sroa.13.0.lcssa657782, %bb.bd ], [ %.sroa.13.0.lcssa657782, %.split.i ]
  %i.hk = phi i64 [ 1, %bb.bi ], [ %i.bd, %bb.bd ], [ %i.bd, %.split.i ]
  %i.hl = phi ptr [ @668, %bb.bi ], [ @670, %bb.bd ], [ @670, %.split.i ]
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.hh, i64 noundef %i.hi, i64 noundef %i.hj, i64 noundef %i.hk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hl) #52
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZN9actix_web4http6header19content_disposition10split_once17h178f9ec842a287b0E.exit: ; preds = %bb.bg, %.noexc244, %.preheader.i.i.i.i, %bb.bf, %"_ZN9actix_web4http6header19content_disposition10split_once28_$u7b$$u7b$closure$u7d$$u7d$17h67b5a9ba6135d9d7E.exit.i.i", %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h39a21bf43f749675E.exit.i"
  %.sink3.i.i = phi ptr [ %i.hf, %"_ZN9actix_web4http6header19content_disposition10split_once28_$u7b$$u7b$closure$u7d$$u7d$17h67b5a9ba6135d9d7E.exit.i.i" ], [ inttoptr (i64 1 to ptr), %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h39a21bf43f749675E.exit.i" ], [ inttoptr (i64 1 to ptr), %bb.bf ], [ inttoptr (i64 1 to ptr), %.preheader.i.i.i.i ], [ inttoptr (i64 1 to ptr), %.noexc244 ], [ inttoptr (i64 1 to ptr), %bb.bg ]
  %.sink.i.i = phi i64 [ %i.hg, %"_ZN9actix_web4http6header19content_disposition10split_once28_$u7b$$u7b$closure$u7d$$u7d$17h67b5a9ba6135d9d7E.exit.i.i" ], [ 0, %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h39a21bf43f749675E.exit.i" ], [ 0, %bb.bf ], [ 0, %.preheader.i.i.i.i ], [ 0, %.noexc244 ], [ 0, %bb.bg ]
  %i.hm = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17hb5795610c88f9b77E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sink3.i.i, i64 noundef %.sink.i.i) ; 2 uses
  %i.hn = extractvalue { ptr, i64 } %i.hm, 0
  %i.ho = extractvalue { ptr, i64 } %i.hm, 1
  %.sroa.0351.0.copyload = load i64, ptr %i.e, align 8 ; 5 uses
  %.sroa.6353.0.copyload = load i64, ptr %i.at, align 8 ; 3 uses
  %.sroa.8356.0.copyload = load i64, ptr %i.au, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11517
  %i.hp = inttoptr i64 %.sroa.6353.0.copyload to ptr ; 3 uses
  invoke void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.hp, i64 noundef %.sroa.8356.0.copyload)
          to label %bb.bl unwind label %bb.bj, !noalias !11517

bb.bj:                                            ; preds = %_ZN9actix_web4http6header19content_disposition10split_once17h178f9ec842a287b0E.exit
  %i.hq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hr = icmp eq i64 %.sroa.0351.0.copyload, 0
  br i1 %i.hr, label %.body248, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hp, i64 noundef %.sroa.0351.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !11517
  br label %.body248

bb.bl:                                            ; preds = %_ZN9actix_web4http6header19content_disposition10split_once17h178f9ec842a287b0E.exit
  %i.hs = load i64, ptr %i.a, align 8, !range !38, !noalias !11517, !noundef !25
  %i.ht = trunc nuw i64 %i.hs to i1
  br i1 %i.ht, label %bb.bm, label %.thread504

.thread504:                                       ; preds = %bb.bl
  %.sroa.8356.16.extract.trunc = trunc i64 %.sroa.8356.0.copyload to i8
  %.sroa.8356.17.extract.shift = lshr i64 %.sroa.8356.0.copyload, 8
  %.sroa.8356.17.extract.trunc = trunc nuw i64 %.sroa.8356.17.extract.shift to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11517
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %.sroa.8440.24.copyload = load i8, ptr %i.av, align 8, !noalias !11517
  %.sroa.10441.24.copyload = load i56, ptr %.sroa.10441.24..sroa_idx, align 1, !noalias !11517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11517
  switch i64 %.sroa.0351.0.copyload, label %bb.bn [
    i64 -9223372036854775808, label %bb.bo
    i64 0, label %.loopexit556
  ]

bb.bn:                                            ; preds = %bb.bm
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hp, i64 noundef %.sroa.0351.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #46
  br label %.loopexit556

bb.bo:                                            ; preds = %bb.bm, %.thread504
  %.sroa.8340.0513 = phi i64 [ %.sroa.8356.0.copyload, %bb.bm ], [ %.sroa.6353.0.copyload, %.thread504 ] ; 2 uses
  %.sroa.683.sroa.7.sroa.0.0 = phi i56 [ %.sroa.10441.24.copyload, %bb.bm ], [ %.sroa.8356.17.extract.trunc, %.thread504 ] ; 2 uses
  %.sroa.081.0 = phi i64 [ %.sroa.6353.0.copyload, %bb.bm ], [ %.sroa.0351.0.copyload, %.thread504 ] ; 2 uses
  %.sroa.683.sroa.6.0 = phi i8 [ %.sroa.8440.24.copyload, %bb.bm ], [ %.sroa.8356.16.extract.trunc, %.thread504 ] ; 2 uses
  %i.hu = icmp eq i64 %.sroa.081.0, -9223372036854775808
  br i1 %i.hu, label %.loopexit556, label %.thread516

.loopexit556:                                     ; preds = %bb.bm, %bb.bo, %bb.bn
  %.sroa.683.sroa.6.0525.ph = phi i8 [ 5, %bb.bn ], [ %.sroa.683.sroa.6.0, %bb.bo ], [ 5, %bb.bm ]
  %.sroa.683.sroa.7.sroa.0.0523.ph = phi i56 [ undef, %bb.bn ], [ %.sroa.683.sroa.7.sroa.0.0, %bb.bo ], [ undef, %bb.bm ]
  %.sroa.8340.0513521.ph = phi i64 [ %.sroa.8356.0.copyload, %bb.bn ], [ %.sroa.8340.0513, %bb.bo ], [ %.sroa.8356.0.copyload, %bb.bm ]
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.8340.0513521.ph, ptr %i.hv, align 8
  %.sroa.2172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.683.sroa.6.0525.ph, ptr %.sroa.2172.0..sroa_idx, align 8
  %.sroa.3173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i56 %.sroa.683.sroa.7.sroa.0.0523.ph, ptr %.sroa.3173.0..sroa_idx, align 1
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

.thread516:                                       ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ax

.body271:                                         ; preds = %bb.br
  %i.hw = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr83drop_in_place$LT$actix_web..http..header..content_disposition..DispositionParam$GT$17hf15d9458cd0f2e57E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(144) %i.c) #53, !noalias !11518
  br label %.body248

.preheader.i255.preheader:                        ; preds = %bb.ax
  %i.hx = load i8, ptr %i.ba, align 1, !alias.scope !11519, !noalias !11520, !noundef !25 ; 2 uses
  %i.hy = add i8 %i.hx, -65
  %i.hz = icmp ult i8 %i.hy, 26
  %i.ia = select i1 %i.hz, i8 32, i8 0
  %.sroa.04.0.i261 = or i8 %i.ia, %i.hx
  %i.ib = icmp eq i8 %.sroa.04.0.i261, 102
  br i1 %i.ib, label %.preheader.i255.1, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i264.thread

.preheader.i255.1:                                ; preds = %.preheader.i255.preheader
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.id = load i8, ptr %i.ic, align 1, !alias.scope !11519, !noalias !11520, !noundef !25 ; 2 uses
  %i.ie = add i8 %i.id, -65
  %i.if = icmp ult i8 %i.ie, 26
  %i.ig = select i1 %i.if, i8 32, i8 0
  %.sroa.04.0.i261.1 = or i8 %i.ig, %i.id
  %i.ih = icmp eq i8 %.sroa.04.0.i261.1, 105
  br i1 %i.ih, label %.preheader.i255.2, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i264.thread

.preheader.i255.2:                                ; preds = %.preheader.i255.1
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.ij = load i8, ptr %i.ii, align 1, !alias.scope !11519, !noalias !11520, !noundef !25 ; 2 uses
  %i.ik = add i8 %i.ij, -65
  %i.il = icmp ult i8 %i.ik, 26
  %i.im = select i1 %i.il, i8 32, i8 0
  %.sroa.04.0.i261.2 = or i8 %i.im, %i.ij
  %i.in = icmp eq i8 %.sroa.04.0.i261.2, 108
  br i1 %i.in, label %.preheader.i255.3, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i264.thread

.preheader.i255.3:                                ; preds = %.preheader.i255.2
  %i.io = getelementptr inbounds nuw i8, ptr %i.ba, i64 3
  %i.ip = load i8, ptr %i.io, align 1, !alias.scope !11519, !noalias !11520, !noundef !25 ; 2 uses
  %i.iq = add i8 %i.ip, -65
  %i.ir = icmp ult i8 %i.iq, 26
  %i.is = select i1 %i.ir, i8 32, i8 0
  %.sroa.04.0.i261.3 = or i8 %i.is, %i.ip
  %i.it = icmp eq i8 %.sroa.04.0.i261.3, 101
  br i1 %i.it, label %.preheader.i255.4, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i264.thread

.preheader.i255.4:                                ; preds = %.preheader.i255.3
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.iv = load i8, ptr %i.iu, align 1, !alias.scope !11519, !noalias !11520, !noundef !25 ; 2 uses
  %i.iw = add i8 %i.iv, -65
  %i.ix = icmp ult i8 %i.iw, 26
  %i.iy = select i1 %i.ix, i8 32, i8 0
  %.sroa.04.0.i261.4 = or i8 %i.iy, %i.iv
  %i.iz = icmp eq i8 %.sroa.04.0.i261.4, 110
  br i1 %i.iz, label %.preheader.i255.5, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i264.thread

.preheader.i255.5:                                ; preds = %.preheader.i255.4
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ba, i64 5
  %i.jb = load i8, ptr %i.ja, align 1, !alias.scope !11519, !noalias !11520, !noundef !25 ; 2 uses
  %i.jc = add i8 %i.jb, -65
  %i.jd = icmp ult i8 %i.jc, 26
  %i.je = select i1 %i.jd, i8 32, i8 0
  %.sroa.04.0.i261.5 = or i8 %i.je, %i.jb
  %i.jf = icmp eq i8 %.sroa.04.0.i261.5, 97
  br i1 %i.jf, label %.preheader.i255.6, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i264.thread

.preheader.i255.6:                                ; preds = %.preheader.i255.5
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ba, i64 6
  %i.jh = load i8, ptr %i.jg, align 1, !alias.scope !11519, !noalias !11520, !noundef !25 ; 2 uses
  %i.ji = add i8 %i.jh, -65
  %i.jj = icmp ult i8 %i.ji, 26
  %i.jk = select i1 %i.jj, i8 32, i8 0
  %.sroa.04.0.i261.6 = or i8 %i.jk, %i.jh
  %i.jl = icmp eq i8 %.sroa.04.0.i261.6, 109
  br i1 %i.jl, label %.preheader.i255.7, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i264.thread

.preheader.i255.7:                                ; preds = %.preheader.i255.6
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ba, i64 7
  %i.jn = load i8, ptr %i.jm, align 1, !alias.scope !11519, !noalias !11520, !noundef !25 ; 2 uses
  %i.jo = add i8 %i.jn, -65
  %i.jp = icmp ult i8 %i.jo, 26
  %i.jq = select i1 %i.jp, i8 32, i8 0
  %.sroa.04.0.i261.7 = or i8 %i.jq, %i.jn
  %i.jr = icmp eq i8 %.sroa.04.0.i261.7, 101
  br i1 %i.jr, label %"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E.exit234", label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i264.thread

.loopexit544:                                     ; preds = %bb.ax
  %i.js = icmp slt i64 %i.bb, 0
  br i1 %i.js, label %bb.bp, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i264, !prof !27

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i264: ; preds = %.loopexit544
  %i.jt = icmp eq i64 %i.bb, 0
  br i1 %i.jt, label %bb.bq, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i264.thread

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i264.thread: ; preds = %.preheader.i255.preheader, %.preheader.i255.1, %.preheader.i255.2, %.preheader.i255.3, %.preheader.i255.4, %.preheader.i255.5, %.preheader.i255.6, %.preheader.i255.7, %.preheader.i226.preheader, %.preheader.i226.1, %.preheader.i226.2, %.preheader.i226.3, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i264
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !11521
  %i.ju = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bb, i64 noundef range(i64 1, 9) 1) #46, !noalias !11521 ; 2 uses
  %i.jv = icmp eq ptr %i.ju, null
  br i1 %i.jv, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i264.thread, %.loopexit544
  %.sroa.4.0.ph.i.i268 = phi i64 [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i264.thread ], [ 0, %.loopexit544 ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i268, i64 %i.bb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @573) #52
          to label %.noexc269 unwind label %bb.bt

.noexc269:                                        ; preds = %bb.bp
  unreachable

bb.bq:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i264.thread, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i264
  %.sroa.10.0.i.i265 = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i264 ], [ %i.ju, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i264.thread ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i265, ptr nonnull readonly align 1 %i.ba, i64 %i.bb, i1 false), !noalias !11522
  %i.jw = ptrtoint ptr %.sroa.10.0.i.i265 to i64
  %.sroa.6430.16.extract.trunc = trunc i64 %i.bb to i8
  %.sroa.6430.17.extract.shift = lshr i64 %i.bb, 8
  %.sroa.6430.17.extract.trunc = trunc nuw nsw i64 %.sroa.6430.17.extract.shift to i56
  br label %"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E.exit234"

"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E.exit234": ; preds = %.preheader.i226.3, %.preheader.i255.7, %bb.bq
  %.sroa.992.sroa.5.0 = phi i8 [ %.sroa.11314.0, %bb.bq ], [ undef, %.preheader.i255.7 ], [ undef, %.preheader.i226.3 ]
  %.sroa.992.sroa.6.sroa.0.0 = phi i56 [ %.sroa.12321.sroa.0.0, %bb.bq ], [ undef, %.preheader.i255.7 ], [ undef, %.preheader.i226.3 ]
  %.sroa.691.sroa.8.sroa.0.0 = phi i56 [ %.sroa.6430.17.extract.trunc, %bb.bq ], [ %.sroa.12321.sroa.0.0, %.preheader.i255.7 ], [ %.sroa.12321.sroa.0.0, %.preheader.i226.3 ]
  %.sroa.691.sroa.7.0 = phi i8 [ %.sroa.6430.16.extract.trunc, %bb.bq ], [ %.sroa.11314.0, %.preheader.i255.7 ], [ %.sroa.11314.0, %.preheader.i226.3 ]
  %.sroa.691.sroa.6.0 = phi i64 [ %i.jw, %bb.bq ], [ %.sroa.9307.0, %.preheader.i255.7 ], [ %.sroa.9307.0, %.preheader.i226.3 ]
  %.sroa.691.sroa.0.0 = phi i64 [ %i.bb, %bb.bq ], [ %.sroa.0303.0, %.preheader.i255.7 ], [ %.sroa.0303.0, %.preheader.i226.3 ]
  %.sroa.090.0 = phi i64 [ -9223372036854775805, %bb.bq ], [ -9223372036854775807, %.preheader.i255.7 ], [ -9223372036854775808, %.preheader.i226.3 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.090.0, ptr %i.c, align 8
  store i64 %.sroa.691.sroa.0.0, ptr %.sroa.691.0..sroa_idx, align 8
  store i64 %.sroa.691.sroa.6.0, ptr %.sroa.691.sroa.6.0..sroa.691.0..sroa_idx.sroa_idx, align 8
  store i8 %.sroa.691.sroa.7.0, ptr %.sroa.691.sroa.7.0..sroa.691.0..sroa_idx.sroa_idx, align 8
  store i56 %.sroa.691.sroa.8.sroa.0.0, ptr %.sroa.691.sroa.8.0..sroa.691.0..sroa_idx.sroa_idx, align 1
  store i64 %.sroa.0303.0, ptr %.sroa.992.0..sroa_idx, align 8
  store i64 %.sroa.9307.0, ptr %.sroa.992.sroa.4.0..sroa.992.0..sroa_idx.sroa_idx, align 8
  store i8 %.sroa.992.sroa.5.0, ptr %.sroa.992.sroa.5.0..sroa.992.0..sroa_idx.sroa_idx, align 8
  store i56 %.sroa.992.sroa.6.sroa.0.0, ptr %.sroa.992.sroa.6.0..sroa.992.0..sroa_idx.sroa_idx, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !11518)
  %i.jx = load i64, ptr %i.l, align 8, !range !40, !alias.scope !11518, !noalias !11523, !noundef !25
  %i.jy = icmp eq i64 %.val1.i.i, %i.jx
  br i1 %i.jy, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E.exit234"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h5ed11f735c750f27E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @671)
          to label %._crit_edge758 unwind label %.body271, !noalias !11524

._crit_edge758:                                   ; preds = %bb.br
  %.pre759 = load ptr, ptr %.sroa.425.0..sroa_idx, align 8, !alias.scope !11518, !noalias !11523 ; 2 uses
  br label %bb.bs

bb.bs:                                            ; preds = %._crit_edge758, %"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E.exit234"
  %i.jz = phi ptr [ %.pre759, %._crit_edge758 ], [ %.val.i.i, %"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E.exit234" ]
  %i.ka = phi ptr [ %.pre759, %._crit_edge758 ], [ %i.az, %"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E.exit234" ] ; 2 uses
  %i.kb = getelementptr inbounds nuw [144 x i8], ptr %i.ka, i64 %.val1.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.kb, ptr noundef nonnull readonly align 8 dereferenceable(144) %i.c, i64 144, i1 false), !noalias !11518
  %i.kc = add i64 %.val1.i.i, 1                   ; 2 uses
  store i64 %i.kc, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !11518, !noalias !11523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.al

bb.bt:                                            ; preds = %bb.bp
  %i.kd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ke = icmp eq i64 %.sroa.0303.0, 0
  br i1 %i.ke, label %.body248, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.kf = inttoptr i64 %.sroa.9307.0 to ptr
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kf, i64 noundef %.sroa.0303.0, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !11525
  br label %.body248

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha6f123b9f1ec0b66E.exit": ; preds = %.loopexit754.thread, %bb.bb, %.loopexit754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

"_ZN4core3ptr85drop_in_place$LT$actix_web..http..header..content_disposition..ContentDisposition$GT$17h6d2a594bd6bf77a8E.exit": ; preds = %bb.z, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb3cd1a56c22b38adE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.o

.sink.split:                                      ; preds = %.invoke923, %bb.ba, %bb.az
  %i.kg = load ptr, ptr %i.at, align 8, !noalias !25, !nonnull !25, !noundef !25
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.fs
  store i8 %i.fu, ptr %i.kh, align 1
  %i.ki = add i64 %i.fs, 1                        ; 2 uses
  store i64 %i.ki, ptr %i.au, align 8, !noalias !25
  br label %bb.bv

bb.bv:                                            ; preds = %.sink.split, %bb.ay
  %i.kj = phi i64 [ %i.fs, %bb.ay ], [ %i.ki, %.sink.split ]
  %.sroa.047.1 = phi i1 [ true, %bb.ay ], [ false, %.sink.split ]
  %i.kk = icmp eq ptr %.sink.i.ph.i, %i.eh
  br i1 %i.kk, label %.loopexit754, label %.lr.ph1019, !llvm.loop !11483

end_hunk_2
begin_hunk_3_@_ZN9actix_web4http6header19content_disposition19split_once_and_trim17h4d3c0ab9e27ca417E:bb.a
  %i.ar = phi ptr [ %i.bf, %bb.i ], [ %i.af, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit17.i.i.i.i.i.i" ]
  %.sroa.04.0.i.i.i.i.i.i = phi i32 [ %i.bj, %bb.i ], [ %i.ai, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit17.i.i.i.i.i.i" ]
  %i.as = shl nuw nsw i32 %.sroa.04.0.i.i.i.i.i.i, 6
  %i.at = and i8 %i.ac, 63
  %i.au = zext nneg i8 %i.at to i32
  %i.av = or disjoint i32 %i.as, %i.au
  br label %bb.j

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit21.i.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit19.i.i.i.i.i.i"
  %i.aw = icmp ne ptr %1, %i.am
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds i8, ptr %i.aa, i64 -4 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !alias.scope !11575, !noalias !11576, !noundef !25
  %i.az = and i8 %i.ay, 7
  %i.ba = zext nneg i8 %i.az to i32
  %i.bb = shl nuw nsw i32 %i.ba, 6
  %i.bc = and i8 %i.an, 63
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = or disjoint i32 %i.bb, %i.bd
  br label %bb.i

bb.i:                                             ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit21.i.i.i.i.i.i", %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit19.i.i.i.i.i.i"
  %i.bf = phi ptr [ %i.ax, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit21.i.i.i.i.i.i" ], [ %i.am, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit19.i.i.i.i.i.i" ]
  %.sroa.04.1.i.i.i.i.i.i = phi i32 [ %i.be, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit21.i.i.i.i.i.i" ], [ %i.ap, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit19.i.i.i.i.i.i" ]
  %i.bg = shl nuw nsw i32 %.sroa.04.1.i.i.i.i.i.i, 6
  %i.bh = and i8 %i.ag, 63
  %i.bi = zext nneg i8 %i.bh to i32
  %i.bj = or disjoint i32 %i.bg, %i.bi
  br label %bb.h

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.bk = phi ptr [ %i.ab, %bb.g ], [ %i.ar, %bb.h ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i.i = phi i32 [ %i.ak, %bb.g ], [ %i.av, %bb.h ] ; 8 uses
  %i.bl = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.bl)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i.i, label %bb.k [
    i32 32, label %bb.q
    i32 13, label %bb.q
    i32 12, label %bb.q
    i32 11, label %bb.q
    i32 10, label %bb.q
    i32 9, label %bb.q
  ]

bb.k:                                             ; preds = %bb.j
  %i.bm = icmp samesign ugt i32 %.sroa.4.1.i.ph.i.i.i.i.i, 127
  br i1 %i.bm, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.bn = lshr i32 %.sroa.4.1.i.ph.i.i.i.i.i, 8
  switch i32 %i.bn, label %bb.r [
    i32 0, label %bb.o
    i32 22, label %bb.m
    i32 32, label %bb.p
    i32 48, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.bo = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i.i, 5760
  %i.bp = zext i1 %i.bo to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i.i"

bb.n:                                             ; preds = %bb.l
  %i.bq = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i.i, 12288
  %i.br = zext i1 %i.bq to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i.i"

bb.o:                                             ; preds = %bb.l
  %i.bs = and i32 %.sroa.4.1.i.ph.i.i.i.i.i, 255
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !noalias !11577, !noundef !25
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i.i"

bb.p:                                             ; preds = %bb.l
  %i.bw = and i32 %.sroa.4.1.i.ph.i.i.i.i.i, 255
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !noalias !11577, !noundef !25
  %i.ca = lshr i8 %i.bz, 1
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i.i"

"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i.i": ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i8 [ %i.br, %bb.n ], [ %i.bv, %bb.o ], [ %i.bp, %bb.m ], [ %i.ca, %bb.p ]
  %i.cb = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i to i1
  br i1 %i.cb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i.i", %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j
  %i.cc = icmp eq ptr %1, %i.bk
  br i1 %i.cc, label %"_ZN4core3str21_$LT$impl$u20$str$GT$16trim_end_matches17h6559a91f15506e13E.exit", label %.lr.ph.i.i.i

bb.r:                                             ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i.i", %bb.l, %bb.k
  %i.cd = ptrtoint ptr %i.aa to i64
  %i.ce = ptrtoint ptr %1 to i64
  %i.cf = sub i64 %i.cd, %i.ce
  br label %"_ZN4core3str21_$LT$impl$u20$str$GT$16trim_end_matches17h6559a91f15506e13E.exit"

"_ZN4core3str21_$LT$impl$u20$str$GT$16trim_end_matches17h6559a91f15506e13E.exit": ; preds = %bb.q, %_ZN9actix_web4http6header19content_disposition10split_once17h178f9ec842a287b0E.exit, %bb.r
  %.sink.i.i8 = phi i64 [ %.sink.i.i7, %bb.r ], [ %.sink.i.i, %_ZN9actix_web4http6header19content_disposition10split_once17h178f9ec842a287b0E.exit ], [ %.sink.i.i7, %bb.q ]
  %.sink3.i.i6 = phi ptr [ %.sink3.i.i5, %bb.r ], [ %.sink3.i.i, %_ZN9actix_web4http6header19content_disposition10split_once17h178f9ec842a287b0E.exit ], [ %.sink3.i.i5, %bb.q ]
  %.sroa.0.0.i = phi i64 [ %i.cf, %bb.r ], [ 0, %_ZN9actix_web4http6header19content_disposition10split_once17h178f9ec842a287b0E.exit ], [ 0, %bb.q ]
  %i.cg = tail call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17hb5795610c88f9b77E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sink3.i.i6, i64 noundef %.sink.i.i8) ; 2 uses
  %i.ch = extractvalue { ptr, i64 } %i.cg, 0
  %i.ci = extractvalue { ptr, i64 } %i.cg, 1
  store ptr %1, ptr %0, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ch, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ci, ptr %i.cl, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, i32 } @_ZN9actix_web4http6header4date4Date3now17h4bc8955600ca4f06E() unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i32 } @_ZN3std4time10SystemTime3now17h41032f879594e847E()
  ret { i64, i32 } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN9actix_web4http6header5range13ByteRangeSpec20to_satisfiable_range17h381b9c40f9121484E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !range !42, !noundef !25
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !25 ; 8 uses
  switch i64 %i.b, label %default.unreachable9 [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
  ]

.sink.split:                                      ; preds = %bb.g, %bb.h, %bb.k, %bb.j
  %.sink12 = phi i64 [ %i.o, %bb.j ], [ 0, %bb.k ], [ %i.d, %bb.h ], [ %i.d, %bb.g ]
  %.sink10 = phi i64 [ %i.p, %bb.j ], [ %i.q, %bb.k ], [ %i.m, %bb.h ], [ %.sroa.0.0.i, %bb.g ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink12, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink10, ptr %i.f, align 8
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a, %bb.f, %bb.e, %bb.d
  %.sink = phi i64 [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 1, %.sink.split ]
  store i64 %.sink, ptr %0, align 8
  ret void

default.unreachable9:                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !25 ; 2 uses
  %i.i = icmp ult i64 %i.d, %2
  %i.j = icmp ule i64 %i.d, %i.h
  %or.cond = and i1 %i.i, %i.j
  br i1 %or.cond, label %bb.g, label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.k = icmp ult i64 %i.d, %2
  br i1 %i.k, label %bb.h, label %bb.c

bb.f:                                             ; preds = %bb.b
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.l = add i64 %2, -1
  %.sroa.0.0.i = tail call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.l, i64 %i.h)
  br label %.sink.split

bb.h:                                             ; preds = %bb.e
  %i.m = add i64 %2, -1
  br label %.sink.split

bb.i:                                             ; preds = %bb.f
  %i.n = icmp ugt i64 %i.d, %2
  br i1 %i.n, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = sub nuw i64 %2, %i.d
  %i.p = add i64 %2, -1
  br label %.sink.split

bb.k:                                             ; preds = %bb.i
  %i.q = add i64 %2, -1
  br label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header5range5Range11bytes_multi17h4285cd81cceb357dE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !11626, !noalias !11627 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !11626, !noalias !11627, !nonnull !25, !noundef !25 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !11626, !noalias !11627 ; 7 uses
  %i.a = icmp ult i64 %.sroa.5.0.copyload.i, 576460752303423488
  tail call void @llvm.assume(i1 %i.a)
  %i.b = mul nuw nsw i64 %.sroa.5.0.copyload.i, 24 ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %.sroa.5.0.copyload.i, 384307168202282325
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, !prof !26

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.c = icmp eq i64 %.sroa.5.0.copyload.i, 0
  br i1 %i.c, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !11628
  %i.d = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, 9) 8) #46, !noalias !11628 ; 8 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.b
  %i.f = add nuw nsw i64 %.sroa.5.0.copyload.i, 1152921504606846975
  %i.g = and i64 %i.f, 1152921504606846975        ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %xtraiter = and i64 %i.h, 3                     ; 3 uses
  %i.i = icmp samesign ult i64 %i.g, 3
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.h, 2305843009213693948
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.10.0.ph.i.i.i.i.i.i = phi i64 [ %i.b, %bb.b ], [ undef, %bb.a ]
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %.sroa.10.0.ph.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #52
          to label %.noexc.i.i.i.i.i unwind label %bb.e, !noalias !11629

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.j = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.k = phi ptr [ %.sroa.4.0.copyload.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.j ; 2 uses
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.n = load <2 x i64>, ptr %i.k, align 8, !noalias !11630
  store i64 0, ptr %i.m, align 8, !noalias !11631
  store <2 x i64> %i.n, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !11631
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.j ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load <2 x i64>, ptr %i.l, align 8, !noalias !11630
  store i64 0, ptr %i.q, align 8, !noalias !11631
  store <2 x i64> %i.r, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !11631
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.j ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load <2 x i64>, ptr %i.o, align 8, !noalias !11630
  store i64 0, ptr %i.u, align 8, !noalias !11631
  store <2 x i64> %i.v, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !11631
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.j ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.z = load <2 x i64>, ptr %i.s, align 8, !noalias !11630
  store i64 0, ptr %i.y, align 8, !noalias !11631
  store <2 x i64> %i.z, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !11631
  %i.aa = add nuw nsw i64 %i.j, 4                 ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader:        ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aa, %._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.epil.init18 = phi ptr [ %.sroa.4.0.copyload.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.w, %._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod20 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod20)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.epil:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.ab = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.ac = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init18, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.ab ; 2 uses
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.af = load <2 x i64>, ptr %i.ac, align 8, !noalias !11630
  store i64 0, ptr %i.ae, align 8, !noalias !11631
  store <2 x i64> %i.af, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !11631
  %i.ag = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !11621

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  %.sroa.4.0.i.i.i.i.i.i16 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %.sroa.5.0.copyload.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ %.sroa.5.0.copyload.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.sroa.10.0.i.i.i.i.i.i15 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ %i.d, %._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.val6.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %i.aa, %._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ]
  %i.ah = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.ah, label %_ZN4core4iter6traits8iterator8Iterator7collect17h501d7a6b759730b6E.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ai = shl nuw i64 %.sroa.0.0.copyload.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !11632
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h501d7a6b759730b6E.exit

"_ZN4core3ptr197drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u64$C$u64$RP$$GT$$C$actix_web..http..header..range..Range..bytes_multi..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17ha143777f2a923813E.exit.i.i.i.i.i": ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.aj

bb.e:                                             ; preds = %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.ak, label %"_ZN4core3ptr197drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u64$C$u64$RP$$GT$$C$actix_web..http..header..range..Range..bytes_multi..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17ha143777f2a923813E.exit.i.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = shl nuw i64 %.sroa.0.0.copyload.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !11633
  br label %"_ZN4core3ptr197drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u64$C$u64$RP$$GT$$C$actix_web..http..header..range..Range..bytes_multi..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17ha143777f2a923813E.exit.i.i.i.i.i"

_ZN4core4iter6traits8iterator8Iterator7collect17h501d7a6b759730b6E.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.i.i.i.i.i.i16, ptr %i.am, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i.i.i.i.i.i15, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val6.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header5range5Range5bytes17hcbc2b81a8de86ea0E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #46 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #52
  unreachable

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx5, align 8
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.5.0..sroa_idx6, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_ZN9actix_web4http6header6Writer3new17h5f6fa997e0373a06E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header6Writer4take17h5aefe2556e0aae5eE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN5bytes9bytes_mut8BytesMut5split17hdec65ef5b53cc0f1E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  call fastcc void @_ZN5bytes9bytes_mut8BytesMut6freeze17h3d19f315c4911139E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header6accept6Accept10preference17hdb9302611cbcb7c5E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 11 uses
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 4 uses
  store i64 2, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !25 ; 2 uses
  %.idx = mul nuw nsw i64 %i.g, 96
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not1920 = icmp eq i64 %i.g, 0
  br i1 %.not1920, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.06.022 = phi i16 [ 0, %.lr.ph ], [ %.sroa.06.1, %bb.c ] ; 2 uses
  %.sroa.07.021 = phi ptr [ %i.e, %.lr.ph ], [ %i.n, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.07.021, i64 96 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.07.021, i64 88
  %i.p = load i16, ptr %i.o, align 8, !noundef !25 ; 2 uses
  %i.q = icmp ugt i16 %i.p, %.sroa.06.022
  br i1 %i.q, label %bb.d, label %bb.c

._crit_edge:                                      ; preds = %bb.c
  %.sroa.01.0.copyload.pre = load i64, ptr %i.a, align 8 ; 2 uses
  %.not = icmp eq i64 %.sroa.01.0.copyload.pre, 2
  br i1 %.not, label %._crit_edge.thread, label %"_ZN4core3ptr31drop_in_place$LT$mime..Mime$GT$17h5477106f377882faE.exit"

bb.c:                                             ; preds = %"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit", %bb.b
  %.sroa.06.1 = phi i16 [ %i.p, %"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit" ], [ %.sroa.06.022, %bb.b ]
  %.not19 = icmp eq ptr %i.n, %i.h
  br i1 %.not19, label %._crit_edge, label %bb.b

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @"_ZN49_$LT$mime..Mime$u20$as$u20$core..clone..Clone$GT$5clone17he158e8ae0cbadfb2E"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.07.021)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E"(ptr noalias noundef align 8 dereferenceable(88) %i.a) #53
  resume { ptr, i32 } %i.r

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = load i64, ptr %i.a, align 8, !range !42, !noundef !25
  %i.t = icmp eq i64 %i.s, 2
  br i1 %i.t, label %"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load i8, ptr %i.i, align 8, !range !31, !noundef !25
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val.i.i.i.i = load i64, ptr %i.j, align 8     ; 2 uses
  %i.w = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.w, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val1.i.i.i.i = load ptr, ptr %i.k, align 8, !nonnull !25, !noundef !25
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !11642
  br label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i"

"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i": ; preds = %bb.i, %bb.h, %bb.g
  %.val.i.i = load i64, ptr %i.l, align 8, !range !24, !noundef !25 ; 3 uses
  %i.x = icmp ne i64 %.val.i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %i.x)
  %or.cond.i4.i.i = icmp slt i64 %.val.i.i, 1
  br i1 %or.cond.i4.i.i, label %"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit", label %bb.j

bb.j:                                             ; preds = %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i"
  %.val1.i.i = load ptr, ptr %i.m, align 8, !nonnull !25, !noundef !25
  %i.y = shl nuw i64 %.val.i.i, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !11643
  br label %"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit"

"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit": ; preds = %bb.j, %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i", %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.c

"_ZN4core3ptr31drop_in_place$LT$mime..Mime$GT$17h5477106f377882faE.exit": ; preds = %._crit_edge
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx, i64 80, i1 false)
  store i64 %.sroa.01.0.copyload.pre, ptr %0, align 8
  br label %bb.k

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @675, i64 16, i1 false)
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -9223372036854775806, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @675, i64 32), i64 16, i1 false)
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %.sroa.614.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 49
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @675, i64 49), i64 7, i1 false)
  %.sroa.716.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 ptrtoint (ptr @674 to i64), ptr %.sroa.716.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr inttoptr (i64 3 to ptr), ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @675, i64 72), i64 16, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %"_ZN4core3ptr31drop_in_place$LT$mime..Mime$GT$17h5477106f377882faE.exit", %._crit_edge.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header6accept6Accept4html17hf9ddfd537db9048eE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef 8) #46 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 96) #52
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) @677, i64 88, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i16 1000, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_3
