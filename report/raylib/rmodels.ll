Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 188
begin_hunk_0_@_m3dstbi_zlib_decode_malloc_guesssize_headerflag:bb.a
  %.260.i.i.i = phi ptr [ %i.acx, %bb.dt ], [ %.058.i.i.i, %bb.do ] ; 10 uses
  %i.acz = sub nsw i64 0, %i.acf
  %i.ada = getelementptr inbounds i8, ptr %.260.i.i.i, i64 %i.acz ; 6 uses
  %i.adb = icmp eq i32 %.0.i64.i.i, 1
  %.not75.i.i.i = icmp eq i32 %.054.i.i.i, 0      ; 2 uses
  br i1 %i.adb, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  br i1 %.not75.i.i.i, label %.loopexit.i.i.i.backedge, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.dv
  %i.adc = load i8, ptr %i.ada, align 1
  %i.add = zext i32 %.054.i.i.i to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %.260.i.i.i, i8 %i.adc, i64 %i.add, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %.260.i.i.i, i64 1
  %i.ade = add i32 %.054.i.i.i, -1
  %i.adf = zext i32 %i.ade to i64
  %scevgep173.i.i.i = getelementptr i8, ptr %scevgep.i.i.i, i64 %i.adf
  br label %.loopexit.i.i.i.backedge

bb.dw:                                            ; preds = %bb.du
  br i1 %.not75.i.i.i, label %.loopexit.i.i.i.backedge, label %iter.check

iter.check:                                       ; preds = %bb.dw
  %i.adg = zext i32 %.054.i.i.i to i64            ; 5 uses
  %min.iters.check = icmp ult i32 %.054.i.i.i, 4
  %i.adh = add nsw i64 %i.acf, -1
  %diff.check = icmp ult i64 %i.adh, 31
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.preheader138.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check293 = icmp ult i32 %.054.i.i.i, 32
  br i1 %min.iters.check293, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.adi = and i64 %i.adg, 28
  %n.vec = and i64 %i.adg, 4294967264             ; 6 uses
  %i.adj = getelementptr i8, ptr %.260.i.i.i, i64 %n.vec ; 2 uses
  %i.adk = getelementptr i8, ptr %i.ada, i64 %n.vec
  %i.adl = trunc nuw i64 %n.vec to i32
  %i.adm = sub i32 %.054.i.i.i, %i.adl
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.260.i.i.i, i64 %index ; 2 uses
  %next.gep294 = getelementptr i8, ptr %i.ada, i64 %index ; 2 uses
  %i.adn = getelementptr i8, ptr %next.gep294, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep294, align 1
  %wide.load295 = load <16 x i8>, ptr %i.adn, align 1
  %i.ado = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1
  store <16 x i8> %wide.load295, ptr %i.ado, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.adp = icmp eq i64 %index.next, %n.vec
  br i1 %i.adp, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.adg
  br i1 %cmp.n, label %.loopexit.i.i.i.backedge, label %vec.epilog.iter.check

.loopexit.i.i.i.backedge:                         ; preds = %.preheader138.i.i.i.prol.loopexit, %.preheader138.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.dw, %.preheader.preheader.i.i.i, %bb.dv, %bb.cs
  %.058.i.i.i.be = phi ptr [ %scevgep173.i.i.i, %.preheader.preheader.i.i.i ], [ %.260.i.i.i, %bb.dv ], [ %i.xl, %bb.cs ], [ %.260.i.i.i, %bb.dw ], [ %i.adq, %vec.epilog.middle.block ], [ %i.adj, %middle.block ], [ %.lcssa343.unr, %.preheader138.i.i.i.prol.loopexit ], [ %i.aey, %.preheader138.i.i.i ]
  br label %.loopexit.i.i.i

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.adi, 0
  br i1 %min.epilog.iters.check, label %.preheader138.i.i.i.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec298 = and i64 %i.adg, 4294967292          ; 5 uses
  %i.adq = getelementptr i8, ptr %.260.i.i.i, i64 %n.vec298 ; 2 uses
  %i.adr = getelementptr i8, ptr %i.ada, i64 %n.vec298
  %i.ads = trunc nuw i64 %n.vec298 to i32
  %i.adt = sub i32 %.054.i.i.i, %i.ads
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index299 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next303, %vec.epilog.vector.body ] ; 3 uses
  %next.gep300 = getelementptr i8, ptr %.260.i.i.i, i64 %index299
  %next.gep301 = getelementptr i8, ptr %i.ada, i64 %index299
  %wide.load302 = load <4 x i8>, ptr %next.gep301, align 1
  store <4 x i8> %wide.load302, ptr %next.gep300, align 1
  %index.next303 = add nuw i64 %index299, 4       ; 2 uses
  %i.adu = icmp eq i64 %index.next303, %n.vec298
  br i1 %i.adu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !66

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n304 = icmp eq i64 %n.vec298, %i.adg
  br i1 %cmp.n304, label %.loopexit.i.i.i.backedge, label %.preheader138.i.i.i.preheader

.preheader138.i.i.i.preheader:                    ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.5.i.i.i.ph = phi ptr [ %.260.i.i.i, %iter.check ], [ %i.adj, %vec.epilog.iter.check ], [ %i.adq, %vec.epilog.middle.block ] ; 2 uses
  %.055.i.i.i.ph = phi ptr [ %i.ada, %iter.check ], [ %i.adk, %vec.epilog.iter.check ], [ %i.adr, %vec.epilog.middle.block ] ; 2 uses
  %.2.i.i.i.ph = phi i32 [ %.054.i.i.i, %iter.check ], [ %i.adm, %vec.epilog.iter.check ], [ %i.adt, %vec.epilog.middle.block ] ; 4 uses
  %i.adv = add nsw i32 %.2.i.i.i.ph, -1
  %xtraiter427 = and i32 %.2.i.i.i.ph, 7          ; 2 uses
  %lcmp.mod428.not = icmp eq i32 %xtraiter427, 0
  br i1 %lcmp.mod428.not, label %.preheader138.i.i.i.prol.loopexit, label %.preheader138.i.i.i.prol

.preheader138.i.i.i.prol:                         ; preds = %.preheader138.i.i.i.preheader, %.preheader138.i.i.i.prol
  %.5.i.i.i.prol = phi ptr [ %i.ady, %.preheader138.i.i.i.prol ], [ %.5.i.i.i.ph, %.preheader138.i.i.i.preheader ] ; 2 uses
  %.055.i.i.i.prol = phi ptr [ %i.adw, %.preheader138.i.i.i.prol ], [ %.055.i.i.i.ph, %.preheader138.i.i.i.preheader ] ; 2 uses
  %.2.i.i.i.prol = phi i32 [ %i.adz, %.preheader138.i.i.i.prol ], [ %.2.i.i.i.ph, %.preheader138.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader138.i.i.i.prol ], [ 0, %.preheader138.i.i.i.preheader ]
  %i.adw = getelementptr inbounds nuw i8, ptr %.055.i.i.i.prol, i64 1 ; 2 uses
  %i.adx = load i8, ptr %.055.i.i.i.prol, align 1
  %i.ady = getelementptr inbounds nuw i8, ptr %.5.i.i.i.prol, i64 1 ; 3 uses
  store i8 %i.adx, ptr %.5.i.i.i.prol, align 1
  %i.adz = add nsw i32 %.2.i.i.i.prol, -1         ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter427
  br i1 %prol.iter.cmp.not, label %.preheader138.i.i.i.prol.loopexit, label %.preheader138.i.i.i.prol, !llvm.loop !67

.preheader138.i.i.i.prol.loopexit:                ; preds = %.preheader138.i.i.i.prol, %.preheader138.i.i.i.preheader
  %.lcssa343.unr = phi ptr [ poison, %.preheader138.i.i.i.preheader ], [ %i.ady, %.preheader138.i.i.i.prol ]
  %.5.i.i.i.unr = phi ptr [ %.5.i.i.i.ph, %.preheader138.i.i.i.preheader ], [ %i.ady, %.preheader138.i.i.i.prol ]
  %.055.i.i.i.unr = phi ptr [ %.055.i.i.i.ph, %.preheader138.i.i.i.preheader ], [ %i.adw, %.preheader138.i.i.i.prol ]
  %.2.i.i.i.unr = phi i32 [ %.2.i.i.i.ph, %.preheader138.i.i.i.preheader ], [ %i.adz, %.preheader138.i.i.i.prol ]
  %i.aea = icmp ult i32 %i.adv, 7
  br i1 %i.aea, label %.loopexit.i.i.i.backedge, label %.preheader138.i.i.i

.preheader138.i.i.i:                              ; preds = %.preheader138.i.i.i.prol.loopexit, %.preheader138.i.i.i
  %.5.i.i.i = phi ptr [ %i.aey, %.preheader138.i.i.i ], [ %.5.i.i.i.unr, %.preheader138.i.i.i.prol.loopexit ] ; 9 uses
  %.055.i.i.i = phi ptr [ %i.aew, %.preheader138.i.i.i ], [ %.055.i.i.i.unr, %.preheader138.i.i.i.prol.loopexit ] ; 9 uses
  %.2.i.i.i = phi i32 [ %i.aez, %.preheader138.i.i.i ], [ %.2.i.i.i.unr, %.preheader138.i.i.i.prol.loopexit ]
  %i.aeb = getelementptr inbounds nuw i8, ptr %.055.i.i.i, i64 1
  %i.aec = load i8, ptr %.055.i.i.i, align 1
  %i.aed = getelementptr inbounds nuw i8, ptr %.5.i.i.i, i64 1
  store i8 %i.aec, ptr %.5.i.i.i, align 1
  %i.aee = getelementptr inbounds nuw i8, ptr %.055.i.i.i, i64 2
  %i.aef = load i8, ptr %i.aeb, align 1
  %i.aeg = getelementptr inbounds nuw i8, ptr %.5.i.i.i, i64 2
  store i8 %i.aef, ptr %i.aed, align 1
  %i.aeh = getelementptr inbounds nuw i8, ptr %.055.i.i.i, i64 3
  %i.aei = load i8, ptr %i.aee, align 1
  %i.aej = getelementptr inbounds nuw i8, ptr %.5.i.i.i, i64 3
  store i8 %i.aei, ptr %i.aeg, align 1
  %i.aek = getelementptr inbounds nuw i8, ptr %.055.i.i.i, i64 4
  %i.ael = load i8, ptr %i.aeh, align 1
  %i.aem = getelementptr inbounds nuw i8, ptr %.5.i.i.i, i64 4
  store i8 %i.ael, ptr %i.aej, align 1
  %i.aen = getelementptr inbounds nuw i8, ptr %.055.i.i.i, i64 5
  %i.aeo = load i8, ptr %i.aek, align 1
  %i.aep = getelementptr inbounds nuw i8, ptr %.5.i.i.i, i64 5
  store i8 %i.aeo, ptr %i.aem, align 1
  %i.aeq = getelementptr inbounds nuw i8, ptr %.055.i.i.i, i64 6
  %i.aer = load i8, ptr %i.aen, align 1
  %i.aes = getelementptr inbounds nuw i8, ptr %.5.i.i.i, i64 6
  store i8 %i.aer, ptr %i.aep, align 1
  %i.aet = getelementptr inbounds nuw i8, ptr %.055.i.i.i, i64 7
  %i.aeu = load i8, ptr %i.aeq, align 1
  %i.aev = getelementptr inbounds nuw i8, ptr %.5.i.i.i, i64 7
  store i8 %i.aeu, ptr %i.aes, align 1
  %i.aew = getelementptr inbounds nuw i8, ptr %.055.i.i.i, i64 8
  %i.aex = load i8, ptr %i.aet, align 1
  %i.aey = getelementptr inbounds nuw i8, ptr %.5.i.i.i, i64 8 ; 2 uses
  store i8 %i.aex, ptr %i.aev, align 1
  %i.aez = add nsw i32 %.2.i.i.i, -8              ; 2 uses
  %.not74.i.i.i.7 = icmp eq i32 %i.aez, 0
  br i1 %.not74.i.i.i.7, label %.loopexit.i.i.i.backedge, label %.preheader138.i.i.i, !llvm.loop !68

_m3dstbi__parse_huffman_block.exit.i.i:           ; preds = %bb.ct
  store ptr %.058.i.i.i, ptr %i.k, align 8
  br label %bb.dx

bb.dx:                                            ; preds = %_m3dstbi__parse_huffman_block.exit.i.i, %_m3dstbi__parse_uncompressed_block.exit.i.i
  %.pr.i.i = phi i32 [ %.pr.i60.i.i, %_m3dstbi__parse_huffman_block.exit.i.i ], [ %.pr.i.i115, %_m3dstbi__parse_uncompressed_block.exit.i.i ]
  %i.afa = phi ptr [ %.058.i.i.i, %_m3dstbi__parse_huffman_block.exit.i.i ], [ %i.gh, %_m3dstbi__parse_uncompressed_block.exit.i.i ] ; 2 uses
  %.pre.i.i.i109 = phi i32 [ %.promoted6.i.i86.i.i.i, %_m3dstbi__parse_huffman_block.exit.i.i ], [ %.pre.i.i.i110, %_m3dstbi__parse_uncompressed_block.exit.i.i ]
  %.not22.i.i = icmp eq i32 %i.de, 0
  br i1 %.not22.i.i, label %thread-pre-split.i.i, label %_m3dstbi__do_zlib.exit

_m3dstbi__do_zlib.exit:                           ; preds = %bb.dx
  %.not12 = icmp eq ptr %3, null
  %.pre113 = load ptr, ptr %i.j, align 8          ; 3 uses
  br i1 %.not12, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %_m3dstbi__do_zlib.exit
  %i.afb = ptrtoint ptr %i.afa to i64
  %i.afc = ptrtoint ptr %.pre113 to i64
  %i.afd = sub i64 %i.afb, %i.afc
  %i.afe = trunc i64 %i.afd to i32
  store i32 %i.afe, ptr %3, align 4
  br label %bb.dz

.loopexit:                                        ; preds = %_m3dstbi__compute_huffman_codes.exit.i.i, %bb.ab, %_m3dstbi__zreceive.exit31.i.i, %bb.ac, %bb.ds, %bb.dp, %bb.dn, %bb.dg, %bb.cq, %bb.cn, %bb.ck, %_m3dstbi__zget8.exit11.i.i.i, %_m3dstbi__compute_huffman_codes.exit.thread.i.i, %_m3dstbi__parse_uncompressed_block.exit.thread.i.i
  %i.aff = load ptr, ptr %i.j, align 8
  tail call void @free(ptr noundef %i.aff) #54
  br label %bb.dz

bb.dz:                                            ; preds = %_m3dstbi__do_zlib.exit, %bb.dy, %bb.a, %.loopexit
  %.0 = phi ptr [ null, %.loopexit ], [ null, %bb.a ], [ %.pre113, %bb.dy ], [ %.pre113, %_m3dstbi__do_zlib.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #54
  ret ptr %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @_m3d_safestr(ptr nofree noundef readonly captures(address) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  %.not86 = icmp eq i8 %i.a, 0
  br i1 %.not86, label %bb.e, label %.preheader99

.preheader99:                                     ; preds = %bb.b
  %i.b = and i32 %1, 1
  %.not89 = icmp eq i32 %i.b, 0                   ; 2 uses
  br i1 %.not89, label %.preheader99.split.us, label %.preheader99.split.preheader

.preheader99.split.us:                            ; preds = %.preheader99, %bb.d
  %.0101.us = phi i32 [ %i.g, %bb.d ], [ 0, %.preheader99 ] ; 4 uses
  %.075100.us = phi ptr [ %i.f, %bb.d ], [ %0, %.preheader99 ]
  %i.c = phi i8 [ %.pr.us, %bb.d ], [ %i.a, %.preheader99 ] ; 2 uses
  %.not90.us = icmp eq i8 %i.c, 13
  br i1 %.not90.us, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.preheader99.split.us
  %i.d = icmp ne i8 %i.c, 10
  %i.e = icmp samesign ult i32 %.0101.us, 256
  %or.cond.us = select i1 %i.d, i1 %i.e, i1 false
  br i1 %or.cond.us, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.075100.us, i64 1 ; 2 uses
  %i.g = add nuw nsw i32 %.0101.us, 1             ; 2 uses
  %.pr.us = load i8, ptr %i.f, align 1            ; 2 uses
  %.not88.us = icmp eq i8 %.pr.us, 0
  br i1 %.not88.us, label %.critedge, label %.preheader99.split.us

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call noalias dereferenceable_or_null(1) ptr @malloc(i64 noundef 1) #56 ; 3 uses
  %.not87 = icmp eq ptr %i.h, null
  br i1 %.not87, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.h, align 1
  br label %bb.r

.preheader99.split:                               ; preds = %.preheader99.split.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %.075100151, i64 2
  %.pr.1 = load i8, ptr %i.i, align 1
  %.not88.1 = icmp eq i8 %.pr.1, 0
  br i1 %.not88.1, label %.critedge.loopexit156.split.loop.exit163, label %.preheader99.split.1

.preheader99.split.1:                             ; preds = %.preheader99.split
  %i.j = getelementptr inbounds nuw i8, ptr %.075100151, i64 3
  %.pr.2 = load i8, ptr %i.j, align 1
  %.not88.2 = icmp eq i8 %.pr.2, 0
  br i1 %.not88.2, label %.critedge.loopexit156.split.loop.exit161, label %.preheader99.split.2

.preheader99.split.2:                             ; preds = %.preheader99.split.1
  %i.k = getelementptr inbounds nuw i8, ptr %.075100151, i64 4 ; 2 uses
  %i.l = add nuw nsw i32 %.0101150, 4             ; 3 uses
  %.pr.3 = load i8, ptr %i.k, align 1
  %.not88.3 = icmp eq i8 %.pr.3, 0
  br i1 %.not88.3, label %.critedge, label %.preheader99.split.3

.preheader99.split.3:                             ; preds = %.preheader99.split.2
  %exitcond.not.3 = icmp eq i32 %i.l, 256
  br i1 %exitcond.not.3, label %.critedge, label %.preheader99.split.preheader

.preheader99.split.preheader:                     ; preds = %.preheader99, %.preheader99.split.3
  %.075100151 = phi ptr [ %i.k, %.preheader99.split.3 ], [ %0, %.preheader99 ] ; 4 uses
  %.0101150 = phi i32 [ %i.l, %.preheader99.split.3 ], [ 0, %.preheader99 ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.075100151, i64 1
  %.pr = load i8, ptr %i.m, align 1
  %.not88 = icmp eq i8 %.pr, 0
  br i1 %.not88, label %.critedge.loopexit156.split.loop.exit165, label %.preheader99.split

.critedge.loopexit156.split.loop.exit161:         ; preds = %.preheader99.split.1
  %i.n = or disjoint i32 %.0101150, 3
  br label %.critedge

.critedge.loopexit156.split.loop.exit163:         ; preds = %.preheader99.split
  %i.o = or disjoint i32 %.0101150, 2
  br label %.critedge

.critedge.loopexit156.split.loop.exit165:         ; preds = %.preheader99.split.preheader
  %i.p = or disjoint i32 %.0101150, 1
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit156.split.loop.exit161, %.critedge.loopexit156.split.loop.exit163, %.critedge.loopexit156.split.loop.exit165, %.preheader99.split.3, %.preheader99.split.2, %.preheader99.split.us, %bb.c, %bb.d
  %.us-phi = phi i32 [ %i.g, %bb.d ], [ %.0101.us, %bb.c ], [ %.0101.us, %.preheader99.split.us ], [ 256, %.preheader99.split.3 ], [ %i.o, %.critedge.loopexit156.split.loop.exit163 ], [ %i.n, %.critedge.loopexit156.split.loop.exit161 ], [ %i.p, %.critedge.loopexit156.split.loop.exit165 ], [ %i.l, %.preheader99.split.2 ]
  %i.q = add nuw nsw i32 %.us-phi, 1
  %i.r = zext nneg i32 %i.q to i64
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #56 ; 10 uses
  %i.t = ptrtoaddr ptr %i.s to i64
  %.not91 = icmp eq ptr %i.s, null
  br i1 %.not91, label %bb.r, label %.preheader

.preheader:                                       ; preds = %.critedge
  %.not92.not.not = icmp eq i32 %1, 0             ; 2 uses
  br i1 %.not92.not.not, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %.critedge2.us
  %.074.us = phi ptr [ %i.v, %.critedge2.us ], [ %0, %.preheader ] ; 3 uses
  %i.u = load i8, ptr %.074.us, align 1           ; 2 uses
  switch i8 %i.u, label %.critedge4.preheader [
    i8 32, label %.critedge2.us
    i8 9, label %.critedge2.us
    i8 13, label %.critedge2.us
  ]

.critedge2.us:                                    ; preds = %.preheader.split.us, %.preheader.split.us, %.preheader.split.us
  %i.v = getelementptr inbounds nuw i8, ptr %.074.us, i64 1
  br label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %.critedge2
  %.074 = phi ptr [ %i.ap, %.critedge2 ], [ %0, %.preheader ] ; 3 uses
  %i.w = load i8, ptr %.074, align 1              ; 2 uses
  switch i8 %i.w, label %.critedge4.preheader [
    i8 32, label %.critedge2
    i8 9, label %.critedge2
    i8 13, label %.critedge2
    i8 10, label %.critedge2
  ]

.critedge4.preheader:                             ; preds = %.preheader.split, %.preheader.split.us
  %i.x = phi i8 [ %i.u, %.preheader.split.us ], [ %i.w, %.preheader.split ] ; 3 uses
  %.us-phi103 = phi ptr [ %.074.us, %.preheader.split.us ], [ %.074, %.preheader.split ] ; 2 uses
  %.not93104 = icmp eq i8 %i.x, 0
  br i1 %.not93104, label %.critedge10, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge4.preheader
  %i.y = icmp sgt i32 %1, 2
  %i.z = icmp eq i32 %1, 1
  br i1 %.not92.not.not, label %.lr.ph.split, label %.critedge8.us

.critedge8.us:                                    ; preds = %.lr.ph, %.critedge4.us
  %i.aa = phi i8 [ %i.ao, %.critedge4.us ], [ %i.x, %.lr.ph ] ; 2 uses
  %.1106.us = phi ptr [ %i.an, %.critedge4.us ], [ %.us-phi103, %.lr.ph ] ; 3 uses
  %.176105.us = phi ptr [ %.3.us, %.critedge4.us ], [ %i.s, %.lr.ph ] ; 13 uses
  switch i8 %i.aa, label %bb.p [
    i8 13, label %.critedge4.us
    i8 10, label %bb.h
    i8 32, label %bb.g
    i8 9, label %bb.g
  ]

bb.g:                                             ; preds = %.critedge8.us, %.critedge8.us
  %i.ab = getelementptr inbounds nuw i8, ptr %.176105.us, i64 1
  store i8 32, ptr %.176105.us, align 1
  br label %.critedge4.us

bb.h:                                             ; preds = %.critedge8.us
  %i.ac = icmp ugt ptr %.176105.us, %i.s
  %or.cond98.us = select i1 %i.y, i1 %i.ac, i1 false
  br i1 %or.cond98.us, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds i8, ptr %.176105.us, i64 -1
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = icmp eq i8 %i.ae, 10
  br i1 %i.af, label %.critedge6, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ag = icmp ugt ptr %.1106.us, %0
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds i8, ptr %.1106.us, i64 -1
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = icmp eq i8 %i.ai, 10
  br i1 %i.aj, label %.critedge4.us, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %.not89, label %.critedge6, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.z, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %.176105.us, i64 1
  store i8 13, ptr %.176105.us, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2.us = phi ptr [ %i.ak, %bb.n ], [ %.176105.us, %bb.m ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.2.us, i64 1
  store i8 10, ptr %.2.us, align 1
  br label %.critedge4.us

bb.p:                                             ; preds = %.critedge8.us
  %i.am = getelementptr inbounds nuw i8, ptr %.176105.us, i64 1
  store i8 %i.aa, ptr %.176105.us, align 1
  br label %.critedge4.us

.critedge4.us:                                    ; preds = %bb.p, %bb.o, %bb.k, %bb.g, %.critedge8.us
  %.3.us = phi ptr [ %.176105.us, %.critedge8.us ], [ %.176105.us, %bb.k ], [ %i.al, %bb.o ], [ %i.ab, %bb.g ], [ %i.am, %bb.p ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.1106.us, i64 1 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1             ; 2 uses
  %.not93.us = icmp eq i8 %i.ao, 0
  br i1 %.not93.us, label %.critedge6, label %.critedge8.us

.critedge2:                                       ; preds = %.preheader.split, %.preheader.split, %.preheader.split, %.preheader.split
end_hunk_0
begin_hunk_1_@m3d_load:bb.a
  %i.ecb = load i32, ptr %i.dvm, align 8
  %i.ecc = zext i32 %i.ecb to i64
  %i.ecd = icmp samesign ult i64 %indvars.iv.next3259, %i.ecc
  br i1 %i.ecd, label %.lr.ph3010, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph3010, %.preheader2718, %.preheader, %bb.tx, %bb.tw, %bb.tv, %bb.tu, %bb.tt, %bb.ts, %bb.f, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %._crit_edge2900.thread, %bb.id, %.loopexit2719, %bb.az, %bb.au, %bb.ar, %bb.v
  %.0 = phi ptr [ null, %bb.ar ], [ null, %bb.au ], [ %calloc3500, %.loopexit2719 ], [ null, %bb.f ], [ %calloc3500, %bb.id ], [ %calloc3500, %._crit_edge2900.thread ], [ null, %bb.az ], [ null, %bb.v ], [ null, %bb.a ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ %calloc3500, %bb.ts ], [ %calloc3500, %bb.tt ], [ %calloc3500, %bb.tu ], [ %calloc3500, %bb.tv ], [ %calloc3500, %bb.tw ], [ %calloc3500, %bb.tx ], [ %calloc3500, %.preheader ], [ %calloc3500, %.preheader2718 ], [ %calloc3500, %.lr.ph3010 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  ret ptr %.0
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @m3d_frame(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null, ret: address, provenance) %3) local_unnamed_addr #25 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not71 = icmp eq i32 %i.b, 0
  br i1 %.not71, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not72 = icmp eq ptr %i.d, null
  br i1 %.not72, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ne i32 %1, -1                       ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not73 = icmp eq ptr %i.g, null
  br i1 %.not73, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.i = load i32, ptr %i.h, align 8
  %.not74 = icmp ult i32 %1, %i.i
  br i1 %.not74, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = zext i32 %1 to i64
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.m = load i32, ptr %i.l, align 4
  %.not75 = icmp ult i32 %2, %i.m
  br i1 %.not75, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 -69, ptr %i.n, align 1
  br label %.loopexit

bb.i:                                             ; preds = %bb.g, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  store i8 0, ptr %i.o, align 1
  %.not76 = icmp eq ptr %3, null
  br i1 %.not76, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.p = zext i32 %i.b to i64
  %i.q = mul nuw nsw i64 %i.p, 12
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #56 ; 3 uses
  %.not77 = icmp eq ptr %i.r, null
  br i1 %.not77, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  store i8 -1, ptr %i.o, align 1
  br label %.loopexit

bb.l:                                             ; preds = %bb.i
  %i.s = icmp ne i32 %2, 0
  %or.cond = and i1 %i.e, %i.s
  br i1 %or.cond, label %.loopexit81, label %.lr.ph.preheader

bb.m:                                             ; preds = %bb.j
  %.pre = load i32, ptr %i.a, align 8
  %i.t = icmp eq i32 %.pre, 0
  br i1 %i.t, label %.loopexit81, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l, %bb.m
  %.062105 = phi ptr [ %i.r, %bb.m ], [ %3, %bb.l ] ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 5 uses
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %.062105, i64 %indvars.iv ; 3 uses
  %i.v = trunc nuw i64 %indvars.iv to i32
  store i32 %i.v, ptr %i.u, align 4
  %i.w = load ptr, ptr %i.c, align 8
  %i.x = getelementptr inbounds nuw [104 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.z, ptr %i.aa, align 4
  %i.ab = load ptr, ptr %i.c, align 8
  %i.ac = getelementptr inbounds nuw [104 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %i.ae, ptr %i.af, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = load i32, ptr %i.a, align 8
  %i.ah = zext i32 %i.ag to i64
  %i.ai = icmp samesign ult i64 %indvars.iv.next, %i.ah
  br i1 %i.ai, label %.lr.ph, label %.loopexit81

.loopexit81:                                      ; preds = %.lr.ph, %bb.m, %bb.l
  %.163 = phi ptr [ %3, %bb.l ], [ %i.r, %bb.m ], [ %.062105, %.lr.ph ] ; 5 uses
  %.0 = phi i32 [ %2, %bb.l ], [ 0, %bb.m ], [ 0, %.lr.ph ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = icmp ult i32 %1, %i.ak
  br i1 %i.al, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %.loopexit81
  %.not78 = icmp eq i32 %2, 0
  br i1 %.not78, label %bb.o, label %._crit_edge93

._crit_edge93:                                    ; preds = %bb.n
  %.pre94 = zext i32 %1 to i64
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = zext i32 %1 to i64                      ; 2 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = load i32, ptr %i.ar, align 8
  %.not79 = icmp eq i32 %i.as, 0
  br i1 %.not79, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %._crit_edge93, %bb.o
  %.pre-phi = phi i64 [ %.pre94, %._crit_edge93 ], [ %i.ao, %bb.o ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge
  %.185 = phi i32 [ %.0, %bb.p ], [ %i.bw, %._crit_edge ] ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %.pre-phi
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = zext i32 %.185 to i64
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4
  %.not87 = icmp eq i32 %i.bb, 0
  br i1 %.not87, label %._crit_edge, label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph84, %bb.r
  %indvars.iv89 = phi i64 [ 0, %.lr.ph84 ], [ %indvars.iv.next90, %bb.r ] ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw [12 x i8], ptr %i.bd, i64 %indvars.iv89 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = load i32, ptr %i.be, align 4
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [12 x i8], ptr %.163, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i32 %i.bg, ptr %i.bk, align 4
  %i.bl = load ptr, ptr %i.bc, align 8
  %i.bm = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %indvars.iv89 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = load i32, ptr %i.bm, align 4
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [12 x i8], ptr %.163, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 %i.bo, ptr %i.bs, align 4
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %i.bt = load i32, ptr %i.ba, align 4
  %i.bu = zext i32 %i.bt to i64
  %i.bv = icmp samesign ult i64 %indvars.iv.next90, %i.bu
  br i1 %i.bv, label %bb.r, label %._crit_edge

._crit_edge:                                      ; preds = %bb.r, %bb.q
  %i.bw = add i32 %.185, 1                        ; 2 uses
  %.not80 = icmp ugt i32 %i.bw, %2
  br i1 %.not80, label %.loopexit, label %bb.q

.loopexit:                                        ; preds = %._crit_edge, %.loopexit81, %bb.o, %bb.k, %bb.h
  %.064 = phi ptr [ %3, %bb.h ], [ null, %bb.k ], [ %.163, %.loopexit81 ], [ %.163, %bb.o ], [ %.163, %._crit_edge ]
  ret ptr %.064
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @m3d_pose(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = alloca [16 x float], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %.not259 = icmp eq i32 %i.c, 0
  br i1 %.not259, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not260 = icmp eq ptr %i.e, null
  br i1 %.not260, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 -69, ptr %i.f, align 1
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.g = zext i32 %i.c to i64
  %i.h = mul nuw nsw i64 %i.g, 104
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #56 ; 20 uses
  %.not261 = icmp eq ptr %i.i, null
  br i1 %.not261, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 -1, ptr %i.j, align 1
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.k = load i32, ptr %i.b, align 8              ; 4 uses
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = mul nuw nsw i64 %i.l, 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 8 %i.e, i64 %i.m, i1 false)
  %.not300 = icmp eq i32 %i.k, 0
  br i1 %.not300, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.g ] ; 2 uses
  %i.n = getelementptr inbounds nuw [104 x i8], ptr %i.i, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  tail call void @_m3d_inv(ptr noundef nonnull %i.o)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not262 = icmp eq ptr %i.q, null
  br i1 %.not262, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.s = load i32, ptr %i.r, align 8
  %.not263 = icmp ult i32 %1, %i.s
  br i1 %.not263, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 -69, ptr %i.t, align 1
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.u = zext i32 %1 to i64                       ; 2 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.u ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 8
  %i.y = urem i32 %2, %i.x                        ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  store i8 0, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.ab = load i32, ptr %i.aa, align 4            ; 3 uses
  %.not301 = icmp eq i32 %i.ab, 0
  br i1 %.not301, label %.critedge, label %.lr.ph279

.lr.ph279:                                        ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %wide.trip.count316 = zext i32 %i.ab to i64
  %i.ae = load i32, ptr %i.ad, align 8            ; 2 uses
  %.not264362 = icmp ugt i32 %i.ae, %i.y
  br i1 %.not264362, label %.critedge, label %.preheader271

bb.k:                                             ; preds = %._crit_edge275
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %indvars.iv.next314
  %i.ag = load i32, ptr %i.af, align 8            ; 2 uses
  %.not264 = icmp ugt i32 %i.ag, %i.y
  br i1 %.not264, label %..critedge.loopexit.split.loop.exit355_crit_edge, label %.preheader271

.preheader271:                                    ; preds = %.lr.ph279, %bb.k
  %i.ah = phi i32 [ %i.ag, %bb.k ], [ %i.ae, %.lr.ph279 ] ; 2 uses
  %indvars.iv313363 = phi i64 [ %indvars.iv.next314, %bb.k ], [ 0, %.lr.ph279 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %indvars.iv313363 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.aj, align 4            ; 3 uses
  %.not302 = icmp eq i32 %i.ak, 0
  br i1 %.not302, label %._crit_edge275, label %.lr.ph274

.lr.ph274:                                        ; preds = %.preheader271
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load ptr, ptr %i.al, align 8            ; 5 uses
  %wide.trip.count311 = zext i32 %i.ak to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count311, 3      ; 3 uses
  %i.an = icmp ult i32 %i.ak, 4
  br i1 %i.an, label %.epil.preheader, label %.lr.ph274.new

.lr.ph274.new:                                    ; preds = %.lr.ph274
  %unroll_iter = and i64 %wide.trip.count311, 4294967292
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph274.new
  %indvars.iv308 = phi i64 [ 0, %.lr.ph274.new ], [ %indvars.iv.next309.3, %bb.l ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph274.new ], [ %niter.next.3, %bb.l ]
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %indvars.iv308 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ao, align 4
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [104 x i8], ptr %i.i, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load <2 x i32>, ptr %i.ap, align 4
  store <2 x i32> %i.au, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %indvars.iv308 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ay = load i32, ptr %i.aw, align 4
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [104 x i8], ptr %i.i, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load <2 x i32>, ptr %i.ax, align 4
  store <2 x i32> %i.bc, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %indvars.iv308 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 28
  %i.bg = load i32, ptr %i.be, align 4
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [104 x i8], ptr %i.i, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load <2 x i32>, ptr %i.bf, align 4
  store <2 x i32> %i.bk, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %indvars.iv308 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 36
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bo = load i32, ptr %i.bm, align 4
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [104 x i8], ptr %i.i, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load <2 x i32>, ptr %i.bn, align 4
  store <2 x i32> %i.bs, ptr %i.br, align 8
  %indvars.iv.next309.3 = add nuw nsw i64 %indvars.iv308, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge275.loopexit.unr-lcssa, label %bb.l

._crit_edge275.loopexit.unr-lcssa:                ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge275, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge275.loopexit.unr-lcssa, %.lr.ph274
  %indvars.iv308.epil.init = phi i64 [ 0, %.lr.ph274 ], [ %indvars.iv.next309.3, %._crit_edge275.loopexit.unr-lcssa ]
  %lcmp.mod371 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod371)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %indvars.iv308.epil = phi i64 [ %indvars.iv308.epil.init, %.epil.preheader ], [ %indvars.iv.next309.epil, %bb.m ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %i.bt = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %indvars.iv308.epil ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bt, align 4
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [104 x i8], ptr %i.i, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load <2 x i32>, ptr %i.bu, align 4
  store <2 x i32> %i.bz, ptr %i.by, align 8
  %indvars.iv.next309.epil = add nuw nsw i64 %indvars.iv308.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge275, label %bb.m, !llvm.loop !78

._crit_edge275:                                   ; preds = %._crit_edge275.loopexit.unr-lcssa, %bb.m, %.preheader271
  %indvars.iv.next314 = add nuw nsw i64 %indvars.iv313363, 1 ; 4 uses
  %exitcond317.not = icmp eq i64 %indvars.iv.next314, %wide.trip.count316
  br i1 %exitcond317.not, label %.critedge, label %bb.k

..critedge.loopexit.split.loop.exit355_crit_edge: ; preds = %bb.k
  %i.ca = trunc nuw i64 %indvars.iv.next314 to i32
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge275, %.lr.ph279, %..critedge.loopexit.split.loop.exit355_crit_edge, %bb.j
  %.0237.lcssa = phi i32 [ 0, %bb.j ], [ 0, %.lr.ph279 ], [ %i.ca, %..critedge.loopexit.split.loop.exit355_crit_edge ], [ %i.ab, %._crit_edge275 ]
  %.0236.lcssa = phi i32 [ 0, %bb.j ], [ 0, %.lr.ph279 ], [ %i.ah, %..critedge.loopexit.split.loop.exit355_crit_edge ], [ %i.ah, %._crit_edge275 ] ; 4 uses
  %.not265 = icmp eq i32 %.0236.lcssa, %i.y
  br i1 %.not265, label %bb.y, label %bb.n
end_hunk_1
begin_hunk_2_@par_shapes_create_cone:bb.a
  %i.x = fdiv float %i.w, %i.l                    ; 2 uses
  %i.y = fsub float 1.000000e+00, %i.x            ; 2 uses
  br label %bb.b

._crit_edge.i:                                    ; preds = %bb.b
  %i.z = add nuw i32 %.08194.i, 1
  %exitcond124.not.i = icmp eq i32 %.08194.i, %1
  br i1 %exitcond124.not.i, label %._crit_edge97.i, label %.lr.ph.i

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.08091.i = phi i32 [ 0, %.lr.ph.i ], [ %i.an, %bb.b ] ; 3 uses
  %.18390.i = phi ptr [ %.08293.i, %.lr.ph.i ], [ %i.am, %bb.b ] ; 4 uses
  %i.aa = uitofp nneg i32 %.08091.i to float
  %i.ab = fdiv float %i.aa, %i.m
  %i.ac = fmul float %i.ab, 2.000000e+00
  %i.ad = fpext float %i.ac to double
  %i.ae = fmul double %i.ad, f0x400921FB54442EEA
  %i.af = fptrunc double %i.ae to float           ; 2 uses
  %i.ag = tail call float @sinf(float noundef %i.af) #54
  %i.ah = fmul float %i.y, %i.ag
  %i.ai = tail call float @cosf(float noundef %i.af) #54
  %i.aj = fmul float %i.y, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %.18390.i, i64 4
  store float %i.ah, ptr %.18390.i, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %.18390.i, i64 8
  store float %i.aj, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %.18390.i, i64 12 ; 2 uses
  store float %i.x, ptr %i.al, align 4
  %i.an = add nuw i32 %.08091.i, 1
  %exitcond.not.i = icmp eq i32 %.08091.i, %0
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b

.preheader.i.preheader:                           ; preds = %._crit_edge104.i
  %i.ao = shl nuw nsw i32 %0, 1
  %i.ap = mul nuw nsw i32 %i.ao, %1               ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.ap, ptr %i.aq, align 8
  %i.ar = mul i32 %i.ap, 6
  %i.as = zext i32 %i.ar to i64
  %i.at = tail call noalias ptr @calloc(i64 noundef %i.as, i64 noundef 1) #57 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.at, ptr %i.au, align 8
  %xtraiter = and i32 %0, 1
  %unroll_iter = and i32 %0, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod25 = trunc i32 %0 to i1
  br label %.preheader.i

.lr.ph103.i:                                      ; preds = %._crit_edge97.i, %._crit_edge104.i
  %.077108.i = phi i32 [ %i.bc, %._crit_edge104.i ], [ 0, %._crit_edge97.i ] ; 3 uses
  %.078107.i = phi ptr [ %.lcssa18, %._crit_edge104.i ], [ %i.q, %._crit_edge97.i ] ; 2 uses
  %i.av = uitofp nneg i32 %.077108.i to float
  %i.aw = fdiv float %i.av, %i.l                  ; 2 uses
  %i.ax = getelementptr i8, ptr %.078107.i, i64 %i.v ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.aw, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph103.i
  %index = phi i64 [ 0, %.lr.ph103.i ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %.lr.ph103.i ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.078107.i, i64 %i.ay
  %i.az = uitofp nneg <4 x i32> %vec.ind to <4 x float>
  %i.ba = fdiv <4 x float> %i.az, %broadcast.splat21
  %interleaved.vec = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %i.ba, <8 x i32> <i32 0, i32 4, i32 0, i32 5, i32 0, i32 6, i32 0, i32 7>
  store <8 x float> %interleaved.vec, ptr %next.gep, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge104.i, label %scalar.ph

._crit_edge104.i:                                 ; preds = %scalar.ph, %middle.block
  %.lcssa18 = phi ptr [ %i.ax, %middle.block ], [ %i.bg, %scalar.ph ]
  %i.bc = add nuw i32 %.077108.i, 1
  %exitcond126.not.i = icmp eq i32 %.077108.i, %1
  br i1 %exitcond126.not.i, label %.preheader.i.preheader, label %.lr.ph103.i

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %.076101.i = phi i32 [ %i.bh, %scalar.ph ], [ %i.u, %middle.block ] ; 3 uses
  %.179100.i = phi ptr [ %i.bg, %scalar.ph ], [ %i.ax, %middle.block ] ; 3 uses
  %i.bd = uitofp nneg i32 %.076101.i to float
  %i.be = fdiv float %i.bd, %i.m
  %i.bf = getelementptr inbounds nuw i8, ptr %.179100.i, i64 4
  store float %i.aw, ptr %.179100.i, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.179100.i, i64 8 ; 2 uses
  store float %i.be, ptr %i.bf, align 4
  %i.bh = add nuw i32 %.076101.i, 1
  %exitcond125.not.i = icmp eq i32 %.076101.i, %0
  br i1 %exitcond125.not.i, label %._crit_edge104.i, label %scalar.ph, !llvm.loop !94

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge116.i
  %.073120.i = phi i32 [ %i.ca, %._crit_edge116.i ], [ 0, %.preheader.i.preheader ]
  %.074119.i = phi ptr [ %.lcssa, %._crit_edge116.i ], [ %i.at, %.preheader.i.preheader ]
  %.075118.i = phi i32 [ %i.bz, %._crit_edge116.i ], [ 0, %.preheader.i.preheader ] ; 7 uses
  br label %bb.c

._crit_edge116.i.unr-lcssa:                       ; preds = %bb.c
  br i1 %lcmp.mod.not, label %._crit_edge116.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge116.i.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.bi = add nuw nsw i32 %i.cs, 1
  %i.bj = add nuw nsw i32 %i.cs, %.075118.i       ; 2 uses
  %i.bk = add nuw nsw i32 %i.bj, %0
  %i.bl = trunc i32 %i.bk to i16
  %i.bm = add i16 %i.bl, 1                        ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.di, i64 2
  store i16 %i.bm, ptr %i.di, align 2
  %i.bo = add nuw nsw i32 %i.bi, %.075118.i       ; 2 uses
  %i.bp = trunc i32 %i.bo to i16                  ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  store i16 %i.bp, ptr %i.bn, align 2
  %i.br = trunc i32 %i.bj to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.di, i64 6
  store i16 %i.br, ptr %i.bq, align 2
  %i.bt = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i16 %i.bm, ptr %i.bs, align 2
  %i.bu = add nuw nsw i32 %i.bo, %0
  %i.bv = trunc i32 %i.bu to i16
  %i.bw = add i16 %i.bv, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.di, i64 10
  store i16 %i.bw, ptr %i.bt, align 2
  %i.by = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  store i16 %i.bp, ptr %i.bx, align 2
  br label %._crit_edge116.i

._crit_edge116.i:                                 ; preds = %._crit_edge116.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi ptr [ %i.di, %._crit_edge116.i.unr-lcssa ], [ %i.by, %.epil.preheader ]
  %i.bz = add nuw nsw i32 %.075118.i, %i.d
  %i.ca = add nuw nsw i32 %.073120.i, 1           ; 2 uses
  %exitcond128.not.i = icmp eq i32 %i.ca, %1
  br i1 %exitcond128.not.i, label %par_shapes_create_parametric.exit, label %.preheader.i

bb.c:                                             ; preds = %bb.c, %.preheader.i
  %.0114.i = phi i32 [ 0, %.preheader.i ], [ %i.cs, %bb.c ] ; 3 uses
  %.1113.i = phi ptr [ %.074119.i, %.preheader.i ], [ %i.di, %bb.c ] ; 13 uses
  %niter = phi i32 [ 0, %.preheader.i ], [ %niter.next.1, %bb.c ]
  %i.cb = or disjoint i32 %.0114.i, 1             ; 2 uses
  %i.cc = add nuw nsw i32 %.0114.i, %.075118.i    ; 2 uses
  %i.cd = add nuw nsw i32 %i.cc, %0
  %i.ce = trunc i32 %i.cd to i16
  %i.cf = add i16 %i.ce, 1                        ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.1113.i, i64 2
  store i16 %i.cf, ptr %.1113.i, align 2
  %i.ch = add nuw nsw i32 %i.cb, %.075118.i       ; 2 uses
  %i.ci = trunc i32 %i.ch to i16                  ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.1113.i, i64 4
  store i16 %i.ci, ptr %i.cg, align 2
  %i.ck = trunc i32 %i.cc to i16
  %i.cl = getelementptr inbounds nuw i8, ptr %.1113.i, i64 6
  store i16 %i.ck, ptr %i.cj, align 2
  %i.cm = getelementptr inbounds nuw i8, ptr %.1113.i, i64 8
  store i16 %i.cf, ptr %i.cl, align 2
  %i.cn = add nuw nsw i32 %i.ch, %0
  %i.co = trunc i32 %i.cn to i16
  %i.cp = add i16 %i.co, 1
  %i.cq = getelementptr inbounds nuw i8, ptr %.1113.i, i64 10
  store i16 %i.cp, ptr %i.cm, align 2
  %i.cr = getelementptr inbounds nuw i8, ptr %.1113.i, i64 12
  store i16 %i.ci, ptr %i.cq, align 2
  %i.cs = add nuw nsw i32 %.0114.i, 2             ; 4 uses
  %i.ct = add nuw nsw i32 %i.cb, %.075118.i       ; 2 uses
  %i.cu = add nuw nsw i32 %i.ct, %0
  %i.cv = trunc i32 %i.cu to i16
  %i.cw = add i16 %i.cv, 1                        ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.1113.i, i64 14
  store i16 %i.cw, ptr %i.cr, align 2
  %i.cy = add nuw nsw i32 %i.cs, %.075118.i       ; 2 uses
  %i.cz = trunc i32 %i.cy to i16                  ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.1113.i, i64 16
  store i16 %i.cz, ptr %i.cx, align 2
  %i.db = trunc i32 %i.ct to i16
  %i.dc = getelementptr inbounds nuw i8, ptr %.1113.i, i64 18
  store i16 %i.db, ptr %i.da, align 2
  %i.dd = getelementptr inbounds nuw i8, ptr %.1113.i, i64 20
  store i16 %i.cw, ptr %i.dc, align 2
  %i.de = add nuw nsw i32 %i.cy, %0
  %i.df = trunc i32 %i.de to i16
  %i.dg = add i16 %i.df, 1
  %i.dh = getelementptr inbounds nuw i8, ptr %.1113.i, i64 22
  store i16 %i.dg, ptr %i.dd, align 2
  %i.di = getelementptr inbounds nuw i8, ptr %.1113.i, i64 24 ; 9 uses
  store i16 %i.cz, ptr %i.dh, align 2
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge116.i.unr-lcssa, label %bb.c

par_shapes_create_parametric.exit:                ; preds = %._crit_edge116.i
  tail call void @par_shapes__compute_welded_normals(ptr noundef nonnull %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %par_shapes_create_parametric.exit
  %.0 = phi ptr [ %i.c, %par_shapes_create_parametric.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @par_shapes_create_parametric_disk(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @par_shapes_create_cone(i32 noundef %0, i32 noundef %1) ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %par_shapes_scale.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8              ; 5 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i, label %par_shapes_scale.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %xtraiter = and i32 %i.c, 3                     ; 3 uses
  %i.f = icmp ult i32 %i.c, 4
  br i1 %i.f, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i32 %i.c, 2147483644
  br label %.lr.ph.i

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.preheader.i
  %.05768.i.epil.init = phi ptr [ %i.e, %.lr.ph.preheader.i ], [ %i.w, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod11 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod11)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.05768.i.epil = phi ptr [ %i.h, %.lr.ph.i.epil ], [ %.05768.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.g = getelementptr inbounds nuw i8, ptr %.05768.i.epil, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05768.i.epil, i64 12
  %i.i = load float, ptr %i.g, align 4
  %i.j = fmul float %i.i, 0.000000e+00
  store float %i.j, ptr %i.g, align 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !95

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil, %._crit_edge.i.unr-lcssa
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not65.i = icmp eq ptr %i.l, null
  br i1 %.not65.i, label %par_shapes_scale.exit, label %.lr.ph73.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.05768.i = phi ptr [ %i.e, %.lr.ph.preheader.i.new ], [ %i.w, %.lr.ph.i ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %.05768.i, i64 8 ; 2 uses
  %i.n = load float, ptr %i.m, align 4
  %i.o = fmul float %i.n, 0.000000e+00
  store float %i.o, ptr %i.m, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %.05768.i, i64 20 ; 2 uses
  %i.q = load float, ptr %i.p, align 4
  %i.r = fmul float %i.q, 0.000000e+00
  store float %i.r, ptr %i.p, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %.05768.i, i64 32 ; 2 uses
  %i.t = load float, ptr %i.s, align 4
  %i.u = fmul float %i.t, 0.000000e+00
  store float %i.u, ptr %i.s, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %.05768.i, i64 44 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05768.i, i64 48 ; 2 uses
  %i.x = load float, ptr %i.v, align 4
  %i.y = fmul float %i.x, 0.000000e+00
  store float %i.y, ptr %i.v, align 4
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i

.lr.ph73.i:                                       ; preds = %._crit_edge.i, %par_shapes__normalize3.exit.i
  %.071.i = phi i32 [ %i.an, %par_shapes__normalize3.exit.i ], [ 0, %._crit_edge.i ]
  %.05570.i = phi ptr [ %i.ao, %par_shapes__normalize3.exit.i ], [ %i.l, %._crit_edge.i ] ; 5 uses
  %i.z = load <2 x float>, ptr %.05570.i, align 4
  %i.aa = fmul <2 x float> %i.z, zeroinitializer  ; 5 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 0 ; 2 uses
  store <2 x float> %i.aa, ptr %.05570.i, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.05570.i, i64 8 ; 2 uses
  %i.ad = load float, ptr %i.ac, align 4          ; 3 uses
  %foldExtExtBinop = fmul ninf <2 x float> %i.aa, %i.aa
  %i.ae = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.ab, float %i.ae)
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.ad, float %i.af) ; 2 uses
  %i.ah = fcmp ogt float %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.c, label %par_shapes__normalize3.exit.i

bb.c:                                             ; preds = %.lr.ph73.i
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.ag)
  %i.ai = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.aj = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x float> %i.aa, %i.ak
  store <2 x float> %i.al, ptr %.05570.i, align 4
  %i.am = fmul float %i.ad, %i.ai
  store float %i.am, ptr %i.ac, align 4
  br label %par_shapes__normalize3.exit.i

par_shapes__normalize3.exit.i:                    ; preds = %bb.c, %.lr.ph73.i
  %i.an = add nuw nsw i32 %.071.i, 1              ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.05570.i, i64 12
  %exitcond5.not = icmp eq i32 %i.an, %i.c
  br i1 %exitcond5.not, label %par_shapes_scale.exit, label %.lr.ph73.i

par_shapes_scale.exit:                            ; preds = %par_shapes__normalize3.exit.i, %bb.b, %._crit_edge.i, %bb.a
  ret ptr %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @par_shapes_scale(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = insertelement <2 x float> poison, float %1, i64 0
  %i.f = insertelement <2 x float> %i.e, float %2, i64 1
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.g = icmp sgt i32 %i.r, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.h = phi i1 [ %i.g, %._crit_edge.loopexit ], [ false, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not65 = icmp eq ptr %i.j, null
  br i1 %.not65, label %.loopexit, label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.05669 = phi i32 [ %i.q, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.05768 = phi ptr [ %i.n, %.lr.ph ], [ %i.d, %.lr.ph.preheader ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05768, i64 8 ; 2 uses
  %i.l = load <2 x float>, ptr %.05768, align 4
  %i.m = fmul <2 x float> %i.f, %i.l
  store <2 x float> %i.m, ptr %.05768, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %.05768, i64 12
  %i.o = load float, ptr %i.k, align 4
  %i.p = fmul float %3, %i.o
  store float %i.p, ptr %i.k, align 4
  %i.q = add nuw nsw i32 %.05669, 1               ; 2 uses
  %i.r = load i32, ptr %i.a, align 8              ; 2 uses
  %i.s = icmp slt i32 %i.q, %i.r
  br i1 %i.s, label %.lr.ph, label %._crit_edge.loopexit

bb.b:                                             ; preds = %._crit_edge
  %i.t = fcmp oeq float %1, %2
  %i.u = fcmp oeq float %2, %3
  %or.cond67 = and i1 %i.t, %i.u
  br i1 %or.cond67, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = fcmp oeq float %1, 0.000000e+00          ; 3 uses
  %i.w = fcmp oeq float %2, 0.000000e+00          ; 3 uses
  %i.x = fcmp oeq float %3, 0.000000e+00          ; 4 uses
  %or.cond = or i1 %i.v, %i.w                     ; 2 uses
  %or.cond3 = or i1 %or.cond, %i.x
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = insertelement <2 x float> poison, float %1, i64 0
  %i.z = insertelement <2 x float> %i.y, float %2, i64 1
  %i.aa = fdiv <2 x float> splat (float 1.000000e+00), %i.z
  %i.ab = fdiv float 1.000000e+00, %3
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ac = or i1 %i.w, %i.x
  %i.ad = or i1 %i.v, %i.x
  %i.ae = xor i1 %i.ac, true
  %i.af = and i1 %i.v, %i.ae
  %i.ag = uitofp i1 %i.af to float
  %i.ah = xor i1 %i.ad, true
  %i.ai = and i1 %i.w, %i.ah
  %i.aj = uitofp i1 %i.ai to float
  %i.ak = xor i1 %or.cond, true
  %i.al = and i1 %i.x, %i.ak
  %i.am = uitofp i1 %i.al to float
  %i.an = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ao = insertelement <2 x float> %i.an, float %i.aj, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.058 = phi float [ %i.am, %bb.e ], [ %i.ab, %bb.d ]
  %i.ap = phi <2 x float> [ %i.ao, %bb.e ], [ %i.aa, %bb.d ]
  br i1 %i.h, label %.lr.ph73, label %.loopexit

.lr.ph73:                                         ; preds = %bb.f, %par_shapes__normalize3.exit
  %.071 = phi i32 [ %i.bf, %par_shapes__normalize3.exit ], [ 0, %bb.f ]
  %.05570 = phi ptr [ %i.bg, %par_shapes__normalize3.exit ], [ %i.j, %bb.f ] ; 5 uses
  %i.aq = load <2 x float>, ptr %.05570, align 4
  %i.ar = fmul <2 x float> %i.ap, %i.aq           ; 5 uses
  %i.as = extractelement <2 x float> %i.ar, i64 0 ; 2 uses
  store <2 x float> %i.ar, ptr %.05570, align 4
end_hunk_2
begin_hunk_3_@LoadModelAnimations:bb.a
  %.sroa.012.0.copyload.i = load <2 x float>, ptr %i.qw, align 4
  %.sroa.213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qw, i64 8 ; 2 uses
  %.sroa.213.0.copyload.i = load float, ptr %.sroa.213.0..sroa_idx.i, align 4
  %.sroa.010.0.copyload.i = load <2 x float>, ptr %i.qx, align 4
  %.sroa.211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qx, i64 8
  %.sroa.211.0.copyload.i = load float, ptr %.sroa.211.0..sroa_idx.i, align 4
  %i.qy = fadd <2 x float> %.sroa.012.0.copyload.i, %.sroa.010.0.copyload.i
  %i.qz = fadd float %.sroa.213.0.copyload.i, %.sroa.211.0.copyload.i
  store <2 x float> %i.qy, ptr %i.qw, align 4
  store float %i.qz, ptr %.sroa.213.0..sroa_idx.i, align 4
  %i.ra = load ptr, ptr %i.bq, align 8
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.ra, i64 %indvars.iv451.i
  %i.rc = load ptr, ptr %i.rb, align 8            ; 2 uses
  %i.rd = getelementptr inbounds nuw [40 x i8], ptr %i.rc, i64 %indvars.iv448.i ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 28 ; 2 uses
  %i.rf = getelementptr inbounds nuw [40 x i8], ptr %i.rc, i64 %i.nm ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 28
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.re, align 4
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rd, i64 36 ; 2 uses
  %.sroa.24.0.copyload.i = load float, ptr %.sroa.24.0..sroa_idx.i, align 4
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.rg, align 4
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rf, i64 36
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 4
  %i.rh = fmul <2 x float> %.sroa.03.0.copyload.i, %.sroa.01.0.copyload.i
  %i.ri = fmul float %.sroa.24.0.copyload.i, %.sroa.22.0.copyload.i
  store <2 x float> %i.rh, ptr %i.re, align 4
  store float %i.ri, ptr %.sroa.24.0..sroa_idx.i, align 4
  %.pre.i = load i32, ptr %i.bh, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph417.i
  %i.rj = phi i32 [ %i.nc, %.lr.ph417.i ], [ %.pre.i, %bb.ac ] ; 4 uses
  %indvars.iv.next449.i = add nuw nsw i64 %indvars.iv448.i, 1 ; 2 uses
  %i.rk = sext i32 %i.rj to i64
  %i.rl = icmp slt i64 %indvars.iv.next449.i, %i.rk
  br i1 %i.rl, label %.lr.ph417.i, label %._crit_edge418.i

LoadModelAnimationsIQM.exit:                      ; preds = %bb.b, %bb.d, %bb.f, %._crit_edge424.i
  %.1.i = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.f ], [ %i.am, %._crit_edge424.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #54
  br label %bb.ae

bb.ae:                                            ; preds = %LoadModelAnimationsIQM.exit, %bb.a
  %.0 = phi ptr [ %.1.i, %LoadModelAnimationsIQM.exit ], [ null, %bb.a ]
  %i.rm = call zeroext i1 @IsFileExtension(ptr noundef %0, ptr noundef nonnull @.str.40) #54
  br i1 %i.rm, label %bb.af, label %bb.ar

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #54
  store i32 0, ptr %i.e, align 4
  %i.rn = call ptr @LoadFileData(ptr noundef %0, ptr noundef nonnull %i.e) #54 ; 3 uses
  %.not.i10 = icmp eq ptr %i.rn, null
  br i1 %.not.i10, label %LoadModelAnimationsM3D.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ro = call ptr @m3d_load(ptr noundef nonnull %i.rn, ptr noundef nonnull @m3d_loaderhook, ptr noundef nonnull @m3d_freehook, ptr noundef null) ; 12 uses
  %.not287.i = icmp eq ptr %i.ro, null
  br i1 %.not287.i, label %.critedge.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 9
  %i.rq = load i8, ptr %i.rp, align 1             ; 2 uses
  %or.cond.i = icmp ugt i8 %i.rq, -65
  br i1 %or.cond.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.rr = sext i8 %i.rq to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.ai, %bb.ag
  %i.rs = phi i32 [ %i.rr, %bb.ai ], [ -2, %bb.ag ]
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.389, ptr noundef %0, i32 noundef %i.rs) #54
  br label %.sink.split.i

bb.aj:                                            ; preds = %bb.ah
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ro, i64 248 ; 4 uses
  %i.ru = load i32, ptr %i.rt, align 8
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ro, i64 104 ; 7 uses
  %i.rw = load i32, ptr %i.rv, align 8
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ro, i64 136
  %i.ry = load i32, ptr %i.rx, align 8
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.394, ptr noundef %0, i32 noundef %i.ru, i32 noundef %i.rw, i32 noundef %i.ry) #54
  %i.rz = load i32, ptr %i.rt, align 8            ; 2 uses
  %.not288.i = icmp eq i32 %i.rz, 0
  br i1 %.not288.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.sa = load i32, ptr %i.rv, align 8
  %.not289.i = icmp eq i32 %i.sa, 0
  br i1 %.not289.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.aj
  call void @m3d_free(ptr noundef nonnull %i.ro)
  br label %.sink.split.i

bb.am:                                            ; preds = %bb.ak
  %i.sb = zext i32 %i.rz to i64
  %i.sc = call noalias ptr @calloc(i64 noundef %i.sb, i64 noundef 48) #57 ; 2 uses
  %i.sd = load i32, ptr %i.rt, align 8            ; 2 uses
  store i32 %i.sd, ptr %1, align 4
  %.not322.i = icmp eq i32 %i.sd, 0
  br i1 %.not322.i, label %._crit_edge321.i, label %.lr.ph320.i

.lr.ph320.i:                                      ; preds = %bb.am
  %i.se = getelementptr inbounds nuw i8, ptr %i.ro, i64 256
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ro, i64 112
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ro, i64 128 ; 7 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ro, i64 56 ; 3 uses
  br label %bb.an

._crit_edge321.i:                                 ; preds = %._crit_edge317.i, %bb.am
  call void @m3d_free(ptr noundef nonnull %i.ro)
  br label %.sink.split.i

bb.an:                                            ; preds = %._crit_edge317.i, %.lr.ph320.i
  %indvars.iv331.i = phi i64 [ 0, %.lr.ph320.i ], [ %indvars.iv.next332.i, %._crit_edge317.i ] ; 4 uses
  %i.si = load i32, ptr %i.rv, align 8
  %i.sj = add i32 %i.si, 1                        ; 2 uses
  %i.sk = getelementptr inbounds nuw [48 x i8], ptr %i.sc, i64 %indvars.iv331.i ; 5 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 32
  store i32 %i.sj, ptr %i.sl, align 8
  %i.sm = zext i32 %i.sj to i64
  %i.sn = call noalias ptr @calloc(i64 noundef %i.sm, i64 noundef 36) #57 ; 4 uses
  %i.so = load ptr, ptr %i.se, align 8
  %i.sp = getelementptr inbounds nuw [24 x i8], ptr %i.so, i64 %indvars.iv331.i ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 8 ; 2 uses
  %i.sr = load i32, ptr %i.sq, align 8
  %i.ss = udiv i32 %i.sr, 17                      ; 3 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.sk, i64 36 ; 3 uses
  store i32 %i.ss, ptr %i.st, align 4
  %i.su = zext nneg i32 %i.ss to i64
  %i.sv = call noalias ptr @calloc(i64 noundef %i.su, i64 noundef 8) #57
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sk, i64 40 ; 27 uses
  store ptr %i.sv, ptr %i.sw, align 8
  %i.sx = load ptr, ptr %i.sp, align 8
  %i.sy = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.sk, ptr noundef nonnull dereferenceable(1) %i.sx, i64 noundef 31) #54 ; 0 uses
  %i.sz = load i32, ptr %i.sq, align 8
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.383, ptr noundef %0, ptr noundef nonnull %i.sk, i32 noundef %i.ss, i32 noundef %i.sz) #54
  %i.ta = load i32, ptr %i.rv, align 8            ; 2 uses
  %i.tb = icmp sgt i32 %i.ta, 0
  br i1 %i.tb, label %.lr.ph.preheader.i58, label %._crit_edge.i

.lr.ph.preheader.i58:                             ; preds = %bb.an
  %.pre.i59 = load ptr, ptr %i.sf, align 8
  %i.tc = zext nneg i32 %i.ta to i64              ; 2 uses
  br label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %.lr.ph.i60, %.lr.ph.preheader.i58
  %indvars.iv.i61 = phi i64 [ 0, %.lr.ph.preheader.i58 ], [ %indvars.iv.next.i62, %.lr.ph.i60 ] ; 3 uses
  %i.td = getelementptr inbounds nuw [104 x i8], ptr %.pre.i59, i64 %indvars.iv.i61 ; 2 uses
  %i.te = load i32, ptr %i.td, align 8
  %i.tf = getelementptr inbounds nuw [36 x i8], ptr %i.sn, i64 %indvars.iv.i61 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 32
  store i32 %i.te, ptr %i.tg, align 4
  %i.th = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  %i.ti = load ptr, ptr %i.th, align 8
  %i.tj = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.tf, ptr noundef nonnull dereferenceable(1) %i.ti, i64 noundef 31) #54 ; 0 uses
  %indvars.iv.next.i62 = add nuw nsw i64 %indvars.iv.i61, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i62, %i.tc
  br i1 %exitcond.not, label %._crit_edge.i, label %.lr.ph.i60

._crit_edge.i:                                    ; preds = %.lr.ph.i60, %bb.an
  %.0277.lcssa.i = phi i64 [ 0, %bb.an ], [ %i.tc, %.lr.ph.i60 ]
  %i.tk = getelementptr inbounds nuw [36 x i8], ptr %i.sn, i64 %.0277.lcssa.i ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 32
  store i32 -1, ptr %i.tl, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %i.tk, ptr noundef nonnull align 1 dereferenceable(7) @.str.393, i64 7, i1 false)
  %i.tm = load i32, ptr %i.st, align 4
  %i.tn = icmp sgt i32 %i.tm, 0
  br i1 %i.tn, label %.lr.ph316.preheader.i, label %._crit_edge317.i

.lr.ph316.preheader.i:                            ; preds = %._crit_edge.i
  %i.to = trunc nuw i64 %indvars.iv331.i to i32
  br label %.lr.ph316.i

.lr.ph316.i:                                      ; preds = %bb.aq, %.lr.ph316.preheader.i
  %indvars.iv328.i = phi i64 [ 0, %.lr.ph316.preheader.i ], [ %indvars.iv.next329.i, %bb.aq ] ; 28 uses
  %i.tp = load i32, ptr %i.rv, align 8
  %i.tq = add i32 %i.tp, 1
  %i.tr = zext i32 %i.tq to i64
  %i.ts = call noalias ptr @calloc(i64 noundef %i.tr, i64 noundef 40) #57
  %i.tt = load ptr, ptr %i.sw, align 8
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %indvars.iv328.i
  store ptr %i.ts, ptr %i.tu, align 8
  %i.tv = trunc i64 %indvars.iv328.i to i32
  %i.tw = mul i32 %i.tv, 17
  %i.tx = call ptr @m3d_pose(ptr noundef nonnull %i.ro, i32 noundef %i.to, i32 noundef %i.tw) ; 3 uses
  %.not290.i = icmp eq ptr %i.tx, null
  br i1 %.not290.i, label %bb.aq, label %.preheader.i11

.preheader.i11:                                   ; preds = %.lr.ph316.i
  %i.ty = load i32, ptr %i.rv, align 8
  %i.tz = icmp sgt i32 %i.ty, 0
  br i1 %i.tz, label %.lr.ph311.i, label %._crit_edge312.i

.lr.ph311.i:                                      ; preds = %.preheader.i11, %bb.ap
  %indvars.iv325.i = phi i64 [ %indvars.iv.next326.i, %bb.ap ], [ 0, %.preheader.i11 ] ; 18 uses
  %i.ua = load ptr, ptr %i.sg, align 8
  %i.ub = getelementptr inbounds nuw [104 x i8], ptr %i.tx, i64 %indvars.iv325.i ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 16 ; 3 uses
  %i.ud = load i32, ptr %i.uc, align 8
  %i.ue = zext i32 %i.ud to i64
  %i.uf = getelementptr inbounds nuw [24 x i8], ptr %i.ua, i64 %i.ue
  %i.ug = load float, ptr %i.uf, align 4
  %i.uh = load float, ptr %i.sh, align 8
  %i.ui = fmul float %i.ug, %i.uh
  %i.uj = load ptr, ptr %i.sw, align 8
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.uj, i64 %indvars.iv328.i
  %i.ul = load ptr, ptr %i.uk, align 8
  %i.um = getelementptr inbounds nuw [40 x i8], ptr %i.ul, i64 %indvars.iv325.i
  store float %i.ui, ptr %i.um, align 4
  %i.un = load ptr, ptr %i.sg, align 8
  %9 = load i32, ptr %i.uc, align 8
  %10 = zext i32 %9 to i64
  %i.uo = getelementptr inbounds nuw [24 x i8], ptr %i.un, i64 %10
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 4
  %i.uq = load float, ptr %i.up, align 4
  %i.ur = load float, ptr %i.sh, align 8
  %i.us = fmul float %i.uq, %i.ur
  %i.ut = load ptr, ptr %i.sw, align 8
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.ut, i64 %indvars.iv328.i
  %i.uv = load ptr, ptr %i.uu, align 8
  %i.uw = getelementptr inbounds nuw [40 x i8], ptr %i.uv, i64 %indvars.iv325.i
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 4
  store float %i.us, ptr %i.ux, align 4
  %i.uy = load ptr, ptr %i.sg, align 8
  %11 = load i32, ptr %i.uc, align 8
  %12 = zext i32 %11 to i64
  %i.uz = getelementptr inbounds nuw [24 x i8], ptr %i.uy, i64 %12
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  %i.vb = load float, ptr %i.va, align 4
  %i.vc = load float, ptr %i.sh, align 8
  %i.vd = fmul float %i.vb, %i.vc
  %i.ve = load ptr, ptr %i.sw, align 8
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.ve, i64 %indvars.iv328.i
  %i.vg = load ptr, ptr %i.vf, align 8
  %i.vh = getelementptr inbounds nuw [40 x i8], ptr %i.vg, i64 %indvars.iv325.i
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 8
  store float %i.vd, ptr %i.vi, align 4
  %i.vj = load ptr, ptr %i.sg, align 8
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ub, i64 20 ; 4 uses
  %i.vl = load i32, ptr %i.vk, align 4
  %i.vm = zext i32 %i.vl to i64
  %i.vn = getelementptr inbounds nuw [24 x i8], ptr %i.vj, i64 %i.vm
  %i.vo = load float, ptr %i.vn, align 4
  %i.vp = load ptr, ptr %i.sw, align 8
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.vp, i64 %indvars.iv328.i
  %i.vr = load ptr, ptr %i.vq, align 8
  %i.vs = getelementptr inbounds nuw [40 x i8], ptr %i.vr, i64 %indvars.iv325.i
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 12
  store float %i.vo, ptr %i.vt, align 4
  %i.vu = load ptr, ptr %i.sg, align 8
  %13 = load i32, ptr %i.vk, align 4
  %14 = zext i32 %13 to i64
  %i.vv = getelementptr inbounds nuw [24 x i8], ptr %i.vu, i64 %14
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 4
  %i.vx = load float, ptr %i.vw, align 4
  %i.vy = load ptr, ptr %i.sw, align 8
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv328.i
  %i.wa = load ptr, ptr %i.vz, align 8
  %i.wb = getelementptr inbounds nuw [40 x i8], ptr %i.wa, i64 %indvars.iv325.i
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 16
  store float %i.vx, ptr %i.wc, align 4
  %i.wd = load ptr, ptr %i.sg, align 8
  %15 = load i32, ptr %i.vk, align 4
  %16 = zext i32 %15 to i64
  %i.we = getelementptr inbounds nuw [24 x i8], ptr %i.wd, i64 %16
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  %i.wg = load float, ptr %i.wf, align 4
  %i.wh = load ptr, ptr %i.sw, align 8
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.wh, i64 %indvars.iv328.i
  %i.wj = load ptr, ptr %i.wi, align 8
  %i.wk = getelementptr inbounds nuw [40 x i8], ptr %i.wj, i64 %indvars.iv325.i
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 20
  store float %i.wg, ptr %i.wl, align 4
  %i.wm = load ptr, ptr %i.sg, align 8
  %17 = load i32, ptr %i.vk, align 4
  %18 = zext i32 %17 to i64
  %i.wn = getelementptr inbounds nuw [24 x i8], ptr %i.wm, i64 %18
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 12
  %i.wp = load float, ptr %i.wo, align 4
  %i.wq = load ptr, ptr %i.sw, align 8
  %i.wr = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %indvars.iv328.i
  %i.ws = load ptr, ptr %i.wr, align 8
  %i.wt = getelementptr inbounds nuw [40 x i8], ptr %i.ws, i64 %indvars.iv325.i
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 24
  store float %i.wp, ptr %i.wu, align 4
  %i.wv = load ptr, ptr %i.sw, align 8
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.wv, i64 %indvars.iv328.i
  %i.wx = load ptr, ptr %i.ww, align 8
  %i.wy = getelementptr inbounds nuw [40 x i8], ptr %i.wx, i64 %indvars.iv325.i ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 12 ; 2 uses
  %i.xa = load <2 x float>, ptr %i.wz, align 4    ; 4 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wy, i64 20 ; 2 uses
  %i.xc = load <2 x float>, ptr %i.xb, align 4    ; 3 uses
  %.sroa.0.0.vec.extract.i.i12 = extractelement <2 x float> %i.xa, i64 0 ; 2 uses
  %foldExtExtBinop152 = fmul <2 x float> %i.xa, %i.xa
  %i.xd = extractelement <2 x float> %foldExtExtBinop152, i64 1
  %i.xe = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i.i12, float %.sroa.0.0.vec.extract.i.i12, float %i.xd)
  %.sroa.7.8.vec.extract.i.i14 = extractelement <2 x float> %i.xc, i64 0 ; 2 uses
  %i.xf = call float @llvm.fmuladd.f32(float %.sroa.7.8.vec.extract.i.i14, float %.sroa.7.8.vec.extract.i.i14, float %i.xe)
  %.sroa.7.12.vec.extract.i.i15 = extractelement <2 x float> %i.xc, i64 1 ; 2 uses
  %i.xg = call float @llvm.fmuladd.f32(float %.sroa.7.12.vec.extract.i.i15, float %.sroa.7.12.vec.extract.i.i15, float %i.xf) ; 2 uses
  %sqrt.i.i16 = call float @llvm.sqrt.f32(float %i.xg)
  %i.xh = fcmp oeq float %i.xg, 0.000000e+00
  %i.xi = fdiv float 1.000000e+00, %sqrt.i.i16
  %i.xj = select i1 %i.xh, float 1.000000e+00, float %i.xi
  %i.xk = insertelement <2 x float> poison, float %i.xj, i64 0
  %i.xl = shufflevector <2 x float> %i.xk, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xm = fmul <2 x float> %i.xa, %i.xl
  %i.xn = fmul <2 x float> %i.xc, %i.xl
  store <2 x float> %i.xm, ptr %i.wz, align 4
  store <2 x float> %i.xn, ptr %i.xb, align 4
  %i.xo = load ptr, ptr %i.sw, align 8
  %i.xp = getelementptr inbounds nuw [8 x i8], ptr %i.xo, i64 %indvars.iv328.i
  %i.xq = load ptr, ptr %i.xp, align 8
  %i.xr = getelementptr inbounds nuw [40 x i8], ptr %i.xq, i64 %indvars.iv325.i
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 36
  store float 1.000000e+00, ptr %i.xs, align 4
  %i.xt = load ptr, ptr %i.sw, align 8
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %i.xt, i64 %indvars.iv328.i
  %i.xv = load ptr, ptr %i.xu, align 8
  %i.xw = getelementptr inbounds nuw [40 x i8], ptr %i.xv, i64 %indvars.iv325.i
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 32
  store float 1.000000e+00, ptr %i.xx, align 4
  %i.xy = load ptr, ptr %i.sw, align 8
  %i.xz = getelementptr inbounds nuw [8 x i8], ptr %i.xy, i64 %indvars.iv328.i
  %i.ya = load ptr, ptr %i.xz, align 8
  %i.yb = getelementptr inbounds nuw [40 x i8], ptr %i.ya, i64 %indvars.iv325.i
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 28
  store float 1.000000e+00, ptr %i.yc, align 4
  %i.yd = getelementptr inbounds nuw [36 x i8], ptr %i.sn, i64 %indvars.iv325.i
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 32 ; 4 uses
  %i.yf = load i32, ptr %i.ye, align 4            ; 2 uses
  %i.yg = icmp sgt i32 %i.yf, -1
  br i1 %i.yg, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph311.i
  %i.yh = load ptr, ptr %i.sw, align 8
  %i.yi = getelementptr inbounds nuw [8 x i8], ptr %i.yh, i64 %indvars.iv328.i
  %i.yj = load ptr, ptr %i.yi, align 8            ; 2 uses
  %i.yk = getelementptr inbounds nuw [40 x i8], ptr %i.yj, i64 %indvars.iv325.i ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 12 ; 2 uses
  %i.ym = zext nneg i32 %i.yf to i64
  %i.yn = getelementptr inbounds nuw [40 x i8], ptr %i.yj, i64 %i.ym ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 12
  %i.yp = load <2 x float>, ptr %i.yo, align 4    ; 5 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yn, i64 20
  %i.yr = load <2 x float>, ptr %i.yq, align 4    ; 5 uses
  %i.ys = load <2 x float>, ptr %i.yl, align 4    ; 6 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yk, i64 20 ; 2 uses
  %i.yu = load <2 x float>, ptr %i.yt, align 4    ; 5 uses
  %i.yv = shufflevector <2 x float> %i.yp, <2 x float> %i.yr, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.yw = fneg <2 x float> %i.yv                  ; 2 uses
  %i.yx = shufflevector <2 x float> %i.yr, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.yy = fmul <2 x float> %i.yx, %i.ys
  %i.yz = shufflevector <2 x float> %i.yu, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.za = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yp, <2 x float> %i.yz, <2 x float> %i.yy)
  %i.zb = shufflevector <2 x float> %i.yu, <2 x float> %i.ys, <2 x i32> <i32 0, i32 2>
  %i.zc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yv, <2 x float> %i.zb, <2 x float> %i.za)
  %i.zd = shufflevector <2 x float> %i.yr, <2 x float> %i.yp, <2 x i32> <i32 0, i32 2>
  %i.ze = fneg <2 x float> %i.zd
  %i.zf = shufflevector <2 x float> %i.ys, <2 x float> %i.yu, <2 x i32> <i32 1, i32 2>
  %i.zg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ze, <2 x float> %i.zf, <2 x float> %i.zc)
  %i.zh = shufflevector <2 x float> %i.yr, <2 x float> %i.yp, <2 x i32> <i32 1, i32 2>
  %i.zi = fneg <2 x float> %i.ys
  %i.zj = shufflevector <2 x float> %i.yu, <2 x float> %i.zi, <2 x i32> <i32 0, i32 2>
  %i.zk = fmul <2 x float> %i.zh, %i.zj
  %i.zl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yr, <2 x float> %i.yz, <2 x float> %i.zk)
  %i.zm = shufflevector <2 x float> %i.yp, <2 x float> %i.yw, <2 x i32> <i32 0, i32 2>
  %i.zn = shufflevector <2 x float> %i.ys, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.zo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zm, <2 x float> %i.zn, <2 x float> %i.zl)
  %i.zp = shufflevector <2 x float> %i.ys, <2 x float> %i.yu, <2 x i32> <i32 0, i32 2>
  %i.zq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yw, <2 x float> %i.zp, <2 x float> %i.zo)
  store <2 x float> %i.zg, ptr %i.yl, align 4
  store <2 x float> %i.zq, ptr %i.yt, align 4
  %i.zr = load ptr, ptr %i.sw, align 8
  %i.zs = getelementptr inbounds nuw [8 x i8], ptr %i.zr, i64 %indvars.iv328.i
  %i.zt = load ptr, ptr %i.zs, align 8            ; 2 uses
  %i.zu = getelementptr inbounds nuw [40 x i8], ptr %i.zt, i64 %indvars.iv325.i ; 3 uses
  %i.zv = load i32, ptr %i.ye, align 4
  %i.zw = sext i32 %i.zv to i64
  %i.zx = getelementptr inbounds [40 x i8], ptr %i.zt, i64 %i.zw ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 12
  %.sroa.020.0.copyload.i29 = load <2 x float>, ptr %i.zu, align 4 ; 4 uses
  %.sroa.221.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %i.zu, i64 8 ; 2 uses
  %.sroa.221.0.copyload.i31 = load float, ptr %.sroa.221.0..sroa_idx.i30, align 4 ; 3 uses
  %i.zz = load <2 x float>, ptr %i.zy, align 4    ; 3 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zx, i64 20
  %i.aab = load <2 x float>, ptr %i.aaa, align 4  ; 4 uses
  %.sroa.092.0.vec.extract.i.i32 = extractelement <2 x float> %.sroa.020.0.copyload.i29, i64 0 ; 2 uses
  %.sroa.01.0.vec.extract.i.i33 = extractelement <2 x float> %i.zz, i64 0 ; 6 uses
  %.sroa.25.12.vec.extract.i.i34 = extractelement <2 x float> %i.aab, i64 1 ; 4 uses
  %i.aac = fmul float %.sroa.25.12.vec.extract.i.i34, %.sroa.25.12.vec.extract.i.i34
  %i.aad = call float @llvm.fmuladd.f32(float %.sroa.01.0.vec.extract.i.i33, float %.sroa.01.0.vec.extract.i.i33, float %i.aac)
  %.sroa.01.4.vec.extract.i.i35 = extractelement <2 x float> %i.zz, i64 1 ; 8 uses
  %i.aae = fneg float %.sroa.01.4.vec.extract.i.i35 ; 2 uses
  %i.aaf = call float @llvm.fmuladd.f32(float %i.aae, float %.sroa.01.4.vec.extract.i.i35, float %i.aad)
  %.sroa.25.8.vec.extract.i.i36 = extractelement <2 x float> %i.aab, i64 0 ; 7 uses
  %i.aag = fneg float %.sroa.25.8.vec.extract.i.i36 ; 3 uses
  %.sroa.092.4.vec.extract.i.i37 = extractelement <2 x float> %.sroa.020.0.copyload.i29, i64 1 ; 2 uses
  %i.aah = fneg float %.sroa.01.0.vec.extract.i.i33
  %i.aai = call float @llvm.fmuladd.f32(float %i.aag, float %.sroa.25.8.vec.extract.i.i36, float %i.aaf)
  %i.aaj = fmul float %.sroa.01.0.vec.extract.i.i33, 2.000000e+00 ; 4 uses
  %i.aak = fmul float %.sroa.25.12.vec.extract.i.i34, 2.000000e+00 ; 4 uses
  %i.aal = fmul float %i.aak, %i.aag
  %i.aam = call float @llvm.fmuladd.f32(float %i.aaj, float %.sroa.01.4.vec.extract.i.i35, float %i.aal)
  %i.aan = shufflevector <2 x float> %.sroa.020.0.copyload.i29, <2 x float> %i.zz, <4 x i32> <i32 1, i32 3, i32 3, i32 2>
  %i.aao = insertelement <4 x float> poison, float %i.aam, i64 0
  %i.aap = insertelement <4 x float> %i.aao, float %i.aak, i64 1
  %i.aaq = insertelement <4 x float> %i.aap, float %i.aaj, i64 2
  %i.aar = insertelement <4 x float> %i.aaq, float %i.aah, i64 3
  %i.aas = fmul <4 x float> %i.aan, %i.aar
  %i.aat = shufflevector <2 x float> %.sroa.020.0.copyload.i29, <2 x float> %i.aab, <4 x i32> <i32 0, i32 2, i32 2, i32 3>
  %i.aau = shufflevector <2 x float> %i.aab, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %i.aav = insertelement <4 x float> %i.aau, float %i.aai, i64 0
  %i.aaw = insertelement <4 x float> %i.aav, float %i.aaj, i64 1
  %i.aax = insertelement <4 x float> %i.aaw, float %i.aak, i64 2
  %i.aay = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aat, <4 x float> %i.aax, <4 x float> %i.aas) ; 4 uses
  %i.aaz = extractelement <4 x float> %i.aay, i64 0
  %i.aba = extractelement <4 x float> %i.aay, i64 1
  %i.abb = call float @llvm.fmuladd.f32(float %.sroa.221.0.copyload.i31, float %i.aba, float %i.aaz)
  %.sroa.0103.0.vec.insert.i.i38 = insertelement <2 x float> poison, float %i.abb, i64 0
  %i.abc = extractelement <4 x float> %i.aay, i64 3 ; 2 uses
  %i.abd = call float @llvm.fmuladd.f32(float %.sroa.01.4.vec.extract.i.i35, float %.sroa.01.4.vec.extract.i.i35, float %i.abc)
  %i.abe = call float @llvm.fmuladd.f32(float %i.aag, float %.sroa.25.8.vec.extract.i.i36, float %i.abd)
  %i.abf = fmul float %.sroa.092.4.vec.extract.i.i37, %i.abe
  %i.abg = extractelement <4 x float> %i.aay, i64 2
  %i.abh = call float @llvm.fmuladd.f32(float %.sroa.092.0.vec.extract.i.i32, float %i.abg, float %i.abf)
  %i.abi = fmul float %.sroa.25.12.vec.extract.i.i34, -2.000000e+00 ; 2 uses
  %i.abj = fmul float %.sroa.01.4.vec.extract.i.i35, 2.000000e+00
  %i.abk = fmul float %i.abj, %.sroa.25.8.vec.extract.i.i36 ; 2 uses
  %i.abl = call float @llvm.fmuladd.f32(float %i.abi, float %.sroa.01.0.vec.extract.i.i33, float %i.abk)
  %i.abm = call float @llvm.fmuladd.f32(float %.sroa.221.0.copyload.i31, float %i.abl, float %i.abh)
  %.sroa.0103.4.vec.insert.i.i39 = insertelement <2 x float> %.sroa.0103.0.vec.insert.i.i38, float %i.abm, i64 1
  %i.abn = fmul float %i.aaj, %.sroa.25.8.vec.extract.i.i36
  %i.abo = call float @llvm.fmuladd.f32(float %i.abi, float %.sroa.01.4.vec.extract.i.i35, float %i.abn)
  %i.abp = call float @llvm.fmuladd.f32(float %i.aak, float %.sroa.01.0.vec.extract.i.i33, float %i.abk)
  %i.abq = fmul float %.sroa.092.4.vec.extract.i.i37, %i.abp
  %i.abr = call float @llvm.fmuladd.f32(float %.sroa.092.0.vec.extract.i.i32, float %i.abo, float %i.abq)
  %i.abs = call float @llvm.fmuladd.f32(float %i.aae, float %.sroa.01.4.vec.extract.i.i35, float %i.abc)
  %i.abt = call float @llvm.fmuladd.f32(float %.sroa.25.8.vec.extract.i.i36, float %.sroa.25.8.vec.extract.i.i36, float %i.abs)
  %i.abu = call float @llvm.fmuladd.f32(float %.sroa.221.0.copyload.i31, float %i.abt, float %i.abr)
  store <2 x float> %.sroa.0103.4.vec.insert.i.i39, ptr %i.zu, align 4
  store float %i.abu, ptr %.sroa.221.0..sroa_idx.i30, align 4
  %i.abv = load ptr, ptr %i.sw, align 8
  %i.abw = getelementptr inbounds nuw [8 x i8], ptr %i.abv, i64 %indvars.iv328.i
  %i.abx = load ptr, ptr %i.abw, align 8          ; 2 uses
  %i.aby = getelementptr inbounds nuw [40 x i8], ptr %i.abx, i64 %indvars.iv325.i ; 3 uses
  %i.abz = load i32, ptr %i.ye, align 4
  %i.aca = sext i32 %i.abz to i64
  %i.acb = getelementptr inbounds [40 x i8], ptr %i.abx, i64 %i.aca ; 2 uses
  %.sroa.012.0.copyload.i40 = load <2 x float>, ptr %i.aby, align 4
  %.sroa.213.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %i.aby, i64 8 ; 2 uses
  %.sroa.213.0.copyload.i42 = load float, ptr %.sroa.213.0..sroa_idx.i41, align 4
  %.sroa.010.0.copyload.i43 = load <2 x float>, ptr %i.acb, align 4
  %.sroa.211.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %i.acb, i64 8
  %.sroa.211.0.copyload.i45 = load float, ptr %.sroa.211.0..sroa_idx.i44, align 4
  %i.acc = fadd <2 x float> %.sroa.012.0.copyload.i40, %.sroa.010.0.copyload.i43
  %i.acd = fadd float %.sroa.213.0.copyload.i42, %.sroa.211.0.copyload.i45
  store <2 x float> %i.acc, ptr %i.aby, align 4
  store float %i.acd, ptr %.sroa.213.0..sroa_idx.i41, align 4
  %i.ace = load ptr, ptr %i.sw, align 8
  %i.acf = getelementptr inbounds nuw [8 x i8], ptr %i.ace, i64 %indvars.iv328.i
  %i.acg = load ptr, ptr %i.acf, align 8          ; 2 uses
  %i.ach = getelementptr inbounds nuw [40 x i8], ptr %i.acg, i64 %indvars.iv325.i ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 28 ; 2 uses
  %i.acj = load i32, ptr %i.ye, align 4
  %i.ack = sext i32 %i.acj to i64
  %i.acl = getelementptr inbounds [40 x i8], ptr %i.acg, i64 %i.ack ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 28
  %.sroa.03.0.copyload.i52 = load <2 x float>, ptr %i.aci, align 4
  %.sroa.24.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %i.ach, i64 36 ; 2 uses
  %.sroa.24.0.copyload.i54 = load float, ptr %.sroa.24.0..sroa_idx.i53, align 4
  %.sroa.01.0.copyload.i55 = load <2 x float>, ptr %i.acm, align 4
  %.sroa.22.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %i.acl, i64 36
  %.sroa.22.0.copyload.i57 = load float, ptr %.sroa.22.0..sroa_idx.i56, align 4
  %i.acn = fmul <2 x float> %.sroa.03.0.copyload.i52, %.sroa.01.0.copyload.i55
  %i.aco = fmul float %.sroa.24.0.copyload.i54, %.sroa.22.0.copyload.i57
end_hunk_3
