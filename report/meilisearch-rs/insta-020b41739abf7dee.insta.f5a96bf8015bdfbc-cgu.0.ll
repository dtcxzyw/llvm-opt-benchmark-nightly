Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/insta-020b41739abf7dee.insta.f5a96bf8015bdfbc-cgu.0?download=true
inline.NumInlined: 7723
inline.NumDeleted: 3104
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 145
begin_hunk_0_@_ZN5insta6output15SnapshotPrinter15print_changeset17h296982a1490293ddE:bb.a
  %.not.i.i.i.i.i1552 = icmp eq ptr %i.awg, null
  br i1 %.not.i.i.i.i.i1552, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1553.loopexit", label %.lr.ph.i3.i.i1547

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1553.loopexit": ; preds = %.lr.ph.i3.i.i1547
  %i.awh = icmp eq i64 %i.awf, 0
  %i.awi = select i1 %i.awh, i64 24, i64 120
  br label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1553"

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1553": ; preds = %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1553.loopexit", %.loopexit.i.i1543
  %.sroa.5.0.lcssa.i.i.i1554 = phi i64 [ 24, %.loopexit.i.i1543 ], [ %i.awi, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1553.loopexit" ]
  %.sroa.0.0.lcssa.i.i.i1555 = phi ptr [ %.sroa.0.0.ph.i.i1545, %.loopexit.i.i1543 ], [ %i.awe, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1553.loopexit" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i.i1555, i64 noundef %.sroa.5.0.lcssa.i.i.i1554, i64 noundef 8) #51, !noalias !8780
  br label %"_ZN4core3ptr62drop_in_place$LT$console..utils..StyledObject$LT$usize$GT$$GT$17h10e4dff4493942ebE.exit750"

bb.jh:                                            ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i742"
  br i1 %i.avg, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1499", label %.lr.ph.i.i2.i1528.preheader

.lr.ph.i.i2.i1528.preheader:                      ; preds = %bb.jh
  %xtraiter9895 = and i64 %.sroa.4.0.copyload.i.i.i.i.i735, 7 ; 2 uses
  %lcmp.mod9896.not = icmp eq i64 %xtraiter9895, 0
  br i1 %lcmp.mod9896.not, label %.lr.ph.i.i2.i1528.prol.loopexit, label %.lr.ph.i.i2.i1528.prol

.lr.ph.i.i2.i1528.prol:                           ; preds = %.lr.ph.i.i2.i1528.preheader, %.lr.ph.i.i2.i1528.prol
  %.sroa.012.015.i.i.i1529.prol = phi ptr [ %.sroa.012.0.i.i.i1531.prol, %.lr.ph.i.i2.i1528.prol ], [ %.sroa.0.0.copyload.i.i.i.i.i730, %.lr.ph.i.i2.i1528.preheader ]
  %.sroa.011.014.i.i.i1530.prol = phi i64 [ %i.awk, %.lr.ph.i.i2.i1528.prol ], [ %.sroa.4.0.copyload.i.i.i.i.i735, %.lr.ph.i.i2.i1528.preheader ]
  %prol.iter9897 = phi i64 [ %prol.iter9897.next, %.lr.ph.i.i2.i1528.prol ], [ 0, %.lr.ph.i.i2.i1528.preheader ]
  %i.awj = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i1529.prol, i64 24
  %i.awk = add i64 %.sroa.011.014.i.i.i1530.prol, -1 ; 2 uses
  %.sroa.012.0.i.i.i1531.prol = load ptr, ptr %i.awj, align 8, !noalias !8781, !nonnull !17, !noundef !17 ; 3 uses
  %prol.iter9897.next = add i64 %prol.iter9897, 1 ; 2 uses
  %prol.iter9897.cmp.not = icmp eq i64 %prol.iter9897.next, %xtraiter9895
  br i1 %prol.iter9897.cmp.not, label %.lr.ph.i.i2.i1528.prol.loopexit, label %.lr.ph.i.i2.i1528.prol, !llvm.loop !7630

.lr.ph.i.i2.i1528.prol.loopexit:                  ; preds = %.lr.ph.i.i2.i1528.prol, %.lr.ph.i.i2.i1528.preheader
  %.sroa.012.0.i.i.i1531.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.i1528.preheader ], [ %.sroa.012.0.i.i.i1531.prol, %.lr.ph.i.i2.i1528.prol ]
  %.sroa.012.015.i.i.i1529.unr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i730, %.lr.ph.i.i2.i1528.preheader ], [ %.sroa.012.0.i.i.i1531.prol, %.lr.ph.i.i2.i1528.prol ]
  %.sroa.011.014.i.i.i1530.unr = phi i64 [ %.sroa.4.0.copyload.i.i.i.i.i735, %.lr.ph.i.i2.i1528.preheader ], [ %i.awk, %.lr.ph.i.i2.i1528.prol ]
  %i.awl = icmp ult i64 %.sroa.4.0.copyload.i.i.i.i.i735, 8
  br i1 %i.awl, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1499", label %.lr.ph.i.i2.i1528

.lr.ph.i.i2.i1528:                                ; preds = %.lr.ph.i.i2.i1528.prol.loopexit, %.lr.ph.i.i2.i1528
  %.sroa.012.015.i.i.i1529 = phi ptr [ %.sroa.012.0.i.i.i1531.7, %.lr.ph.i.i2.i1528 ], [ %.sroa.012.015.i.i.i1529.unr, %.lr.ph.i.i2.i1528.prol.loopexit ]
  %.sroa.011.014.i.i.i1530 = phi i64 [ %i.awu, %.lr.ph.i.i2.i1528 ], [ %.sroa.011.014.i.i.i1530.unr, %.lr.ph.i.i2.i1528.prol.loopexit ]
  %i.awm = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i1529, i64 24
  %.sroa.012.0.i.i.i1531 = load ptr, ptr %i.awm, align 8, !noalias !8781, !nonnull !17, !noundef !17
  %i.awn = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i1531, i64 24
  %.sroa.012.0.i.i.i1531.1 = load ptr, ptr %i.awn, align 8, !noalias !8781, !nonnull !17, !noundef !17
  %i.awo = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i1531.1, i64 24
  %.sroa.012.0.i.i.i1531.2 = load ptr, ptr %i.awo, align 8, !noalias !8781, !nonnull !17, !noundef !17
  %i.awp = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i1531.2, i64 24
  %.sroa.012.0.i.i.i1531.3 = load ptr, ptr %i.awp, align 8, !noalias !8781, !nonnull !17, !noundef !17
  %i.awq = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i1531.3, i64 24
  %.sroa.012.0.i.i.i1531.4 = load ptr, ptr %i.awq, align 8, !noalias !8781, !nonnull !17, !noundef !17
  %i.awr = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i1531.4, i64 24
  %.sroa.012.0.i.i.i1531.5 = load ptr, ptr %i.awr, align 8, !noalias !8781, !nonnull !17, !noundef !17
  %i.aws = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i1531.5, i64 24
  %.sroa.012.0.i.i.i1531.6 = load ptr, ptr %i.aws, align 8, !noalias !8781, !nonnull !17, !noundef !17
  %i.awt = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i1531.6, i64 24
  %i.awu = add i64 %.sroa.011.014.i.i.i1530, -8   ; 2 uses
  %.sroa.012.0.i.i.i1531.7 = load ptr, ptr %i.awt, align 8, !noalias !8781, !nonnull !17, !noundef !17 ; 2 uses
  %i.awv = icmp eq i64 %i.awu, 0
  br i1 %i.awv, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1499", label %.lr.ph.i.i2.i1528

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1499": ; preds = %.lr.ph.i.i2.i1528.prol.loopexit, %.lr.ph.i.i2.i1528, %bb.jh
  %.sroa.012.0.lcssa.i.i.i1533 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i730, %bb.jh ], [ %.sroa.012.0.i.i.i1531.lcssa.unr, %.lr.ph.i.i2.i1528.prol.loopexit ], [ %.sroa.012.0.i.i.i1531.7, %.lr.ph.i.i2.i1528 ] ; 3 uses
  %i.aww = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i1533, i64 10
  %i.awx = load i16, ptr %i.aww, align 2, !noalias !8782, !noundef !17
  %.not6014 = icmp eq i16 %i.awx, 0
  br i1 %.not6014, label %.lr.ph.i.i.i.i.i1503, label %.noexc748

.lr.ph.i.i.i.i.i1503:                             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1499", %bb.jj
  %.sroa.0.060.i.i.i.i.i1504 = phi ptr [ %i.awy, %bb.jj ], [ %.sroa.012.0.lcssa.i.i.i1533, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1499" ] ; 4 uses
  %.sroa.5.059.i.i.i.i.i1505 = phi i64 [ %i.axq, %bb.jj ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1499" ] ; 4 uses
  %i.awy = load ptr, ptr %.sroa.0.060.i.i.i.i.i1504, align 8, !noalias !8783, !noundef !17 ; 5 uses
  %.not.i.i.i.i.i.i.i1506 = icmp eq ptr %i.awy, null
  br i1 %.not.i.i.i.i.i.i.i1506, label %bb.jk, label %bb.jj

._crit_edge.i.i.i.i.i1510:                        ; preds = %bb.jj
  %i.awz = zext i16 %i.axs to i64
  %i.axa = icmp eq i64 %i.axq, 0
  %i.axb = add nuw nsw i64 %i.awz, 1              ; 2 uses
  br i1 %i.axa, label %.noexc748, label %bb.ji

bb.ji:                                            ; preds = %._crit_edge.i.i.i.i.i1510
  %i.axc = getelementptr inbounds nuw i8, ptr %i.awy, i64 24
  %i.axd = icmp ult i16 %i.axs, 11
  call void @llvm.assume(i1 %i.axd)
  %i.axe = getelementptr inbounds nuw [8 x i8], ptr %i.axc, i64 %i.axb ; 2 uses
  %xtraiter9903 = and i64 %i.axq, 7               ; 2 uses
  %lcmp.mod9904.not = icmp eq i64 %xtraiter9903, 0
  br i1 %lcmp.mod9904.not, label %.prol.loopexit9899, label %.prol.preheader9898

.prol.preheader9898:                              ; preds = %bb.ji, %.prol.preheader9898
  %.pn30.in.i.i.i.i.i.i1514.prol = phi ptr [ %i.axf, %.prol.preheader9898 ], [ %i.axe, %bb.ji ]
  %.pn28.in.i.i.i.i.i.i1515.prol = phi i64 [ %.pn28.i.i.i.i.i.i1516.prol, %.prol.preheader9898 ], [ %i.axq, %bb.ji ]
  %prol.iter9905 = phi i64 [ %prol.iter9905.next, %.prol.preheader9898 ], [ 0, %bb.ji ]
  %.pn28.i.i.i.i.i.i1516.prol = add i64 %.pn28.in.i.i.i.i.i.i1515.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i1517.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i1514.prol, align 8, !noalias !8784, !nonnull !17, !noundef !17 ; 2 uses
  %i.axf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1517.prol, i64 24 ; 2 uses
  %prol.iter9905.next = add i64 %prol.iter9905, 1 ; 2 uses
  %prol.iter9905.cmp.not = icmp eq i64 %prol.iter9905.next, %xtraiter9903
  br i1 %prol.iter9905.cmp.not, label %.prol.loopexit9899, label %.prol.preheader9898, !llvm.loop !7647

.prol.loopexit9899:                               ; preds = %.prol.preheader9898, %bb.ji
  %.pn30.i.i.i.i.i.i1517.lcssa.unr = phi ptr [ poison, %bb.ji ], [ %.pn30.i.i.i.i.i.i1517.prol, %.prol.preheader9898 ]
  %.pn30.in.i.i.i.i.i.i1514.unr = phi ptr [ %i.axe, %bb.ji ], [ %i.axf, %.prol.preheader9898 ]
  %.pn28.in.i.i.i.i.i.i1515.unr = phi i64 [ %i.axq, %bb.ji ], [ %.pn28.i.i.i.i.i.i1516.prol, %.prol.preheader9898 ]
  %i.axg = icmp ult i64 %.sroa.5.059.i.i.i.i.i1505, 7
  br i1 %i.axg, label %.noexc748, label %.new9900

.new9900:                                         ; preds = %.prol.loopexit9899, %.new9900
  %.pn30.in.i.i.i.i.i.i1514 = phi ptr [ %i.axp, %.new9900 ], [ %.pn30.in.i.i.i.i.i.i1514.unr, %.prol.loopexit9899 ]
  %.pn28.in.i.i.i.i.i.i1515 = phi i64 [ %.pn28.i.i.i.i.i.i1516.7, %.new9900 ], [ %.pn28.in.i.i.i.i.i.i1515.unr, %.prol.loopexit9899 ]
  %.pn30.i.i.i.i.i.i1517 = load ptr, ptr %.pn30.in.i.i.i.i.i.i1514, align 8, !noalias !8784, !nonnull !17, !noundef !17
  %i.axh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1517, i64 24
  %.pn30.i.i.i.i.i.i1517.1 = load ptr, ptr %i.axh, align 8, !noalias !8784, !nonnull !17, !noundef !17
  %i.axi = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1517.1, i64 24
  %.pn30.i.i.i.i.i.i1517.2 = load ptr, ptr %i.axi, align 8, !noalias !8784, !nonnull !17, !noundef !17
  %i.axj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1517.2, i64 24
  %.pn30.i.i.i.i.i.i1517.3 = load ptr, ptr %i.axj, align 8, !noalias !8784, !nonnull !17, !noundef !17
  %i.axk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1517.3, i64 24
  %.pn30.i.i.i.i.i.i1517.4 = load ptr, ptr %i.axk, align 8, !noalias !8784, !nonnull !17, !noundef !17
  %i.axl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1517.4, i64 24
  %.pn30.i.i.i.i.i.i1517.5 = load ptr, ptr %i.axl, align 8, !noalias !8784, !nonnull !17, !noundef !17
  %i.axm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1517.5, i64 24
  %.pn30.i.i.i.i.i.i1517.6 = load ptr, ptr %i.axm, align 8, !noalias !8784, !nonnull !17, !noundef !17
  %i.axn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1517.6, i64 24
  %.pn28.i.i.i.i.i.i1516.7 = add i64 %.pn28.in.i.i.i.i.i.i1515, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i1517.7 = load ptr, ptr %i.axn, align 8, !noalias !8784, !nonnull !17, !noundef !17 ; 2 uses
  %i.axo = icmp eq i64 %.pn28.i.i.i.i.i.i1516.7, 0
  %i.axp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1517.7, i64 24
  br i1 %i.axo, label %.noexc748, label %.new9900

bb.jj:                                            ; preds = %.lr.ph.i.i.i.i.i1503
  %i.axq = add i64 %.sroa.5.059.i.i.i.i.i1505, 1  ; 5 uses
  %i.axr = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i.i1504, i64 8
  %i.axs = load i16, ptr %i.axr, align 8, !noalias !8783 ; 3 uses
  %.not.i.i.i.i.i.i1507 = icmp eq i64 %.sroa.5.059.i.i.i.i.i1505, 0
  %..i.i.i.i.i.i1508 = select i1 %.not.i.i.i.i.i.i1507, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i1504, i64 noundef %..i.i.i.i.i.i1508, i64 noundef 8) #51, !noalias !8785
  %i.axt = getelementptr inbounds nuw i8, ptr %i.awy, i64 10
  %i.axu = load i16, ptr %i.axt, align 2, !noalias !8782, !noundef !17
  %i.axv = icmp ult i16 %i.axs, %i.axu
  br i1 %i.axv, label %._crit_edge.i.i.i.i.i1510, label %.lr.ph.i.i.i.i.i1503

bb.jk:                                            ; preds = %.lr.ph.i.i.i.i.i1503
  %.not.i54.i.i.i.i.i1524 = icmp eq i64 %.sroa.5.059.i.i.i.i.i1505, 0
  %..i55.i.i.i.i.i1525 = select i1 %.not.i54.i.i.i.i.i1524, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i1504, i64 noundef %..i55.i.i.i.i.i1525, i64 noundef 8) #51, !noalias !8785
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #54
          to label %.noexc.i.i.i1526 unwind label %bb.jl, !noalias !8786

.noexc.i.i.i1526:                                 ; preds = %bb.jk
  unreachable

bb.jl:                                            ; preds = %bb.jk
  %i.axw = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.noexc748:                                        ; preds = %.prol.loopexit9899, %.new9900, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1499", %._crit_edge.i.i.i.i.i1510
  %.sroa.114955.3 = phi ptr [ %.sroa.012.0.lcssa.i.i.i1533, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1499" ], [ %i.awy, %._crit_edge.i.i.i.i.i1510 ], [ %.pn30.i.i.i.i.i.i1517.lcssa.unr, %.prol.loopexit9899 ], [ %.pn30.i.i.i.i.i.i1517.7, %.new9900 ] ; 2 uses
  %.sroa.27.3 = phi i64 [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1499" ], [ %i.axb, %._crit_edge.i.i.i.i.i1510 ], [ 0, %.new9900 ], [ 0, %.prol.loopexit9899 ]
  %.sroa.40.07081 = add i64 %.sroa.5.0.copyload.i.i.i.i.i733, -1 ; 2 uses
  %i.axx = icmp eq i64 %.sroa.40.07081, 0
  br i1 %i.axx, label %.loopexit.i.i1473, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1429"

.loopexit.i.i1473:                                ; preds = %.noexc749, %.noexc748
  %.sroa.114955.1.lcssa = phi ptr [ %.sroa.114955.3, %.noexc748 ], [ %.sroa.114955.2, %.noexc749 ] ; 3 uses
  %i.axy = load ptr, ptr %.sroa.114955.1.lcssa, align 8, !noalias !8787, !noundef !17 ; 2 uses
  %.not.i.i4.i.i.i1476 = icmp eq ptr %i.axy, null
  br i1 %.not.i.i4.i.i.i1476, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1483", label %.lr.ph.i3.i.i1477

.lr.ph.i3.i.i1477:                                ; preds = %.loopexit.i.i1473, %.lr.ph.i3.i.i1477
  %i.axz = phi ptr [ %i.ayb, %.lr.ph.i3.i.i1477 ], [ %i.axy, %.loopexit.i.i1473 ] ; 3 uses
  %.sroa.0.06.i.i.i1478 = phi ptr [ %i.axz, %.lr.ph.i3.i.i1477 ], [ %.sroa.114955.1.lcssa, %.loopexit.i.i1473 ]
  %.sroa.5.05.i.i.i1479 = phi i64 [ %i.aya, %.lr.ph.i3.i.i1477 ], [ 0, %.loopexit.i.i1473 ] ; 2 uses
  %i.aya = add i64 %.sroa.5.05.i.i.i1479, 1       ; 2 uses
  %.not.i.i.i.i1480 = icmp eq i64 %.sroa.5.05.i.i.i1479, 0
  %..i.i.i.i1481 = select i1 %.not.i.i.i.i1480, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i.i1478, i64 noundef %..i.i.i.i1481, i64 noundef 8) #51, !noalias !8788
  %i.ayb = load ptr, ptr %i.axz, align 8, !noalias !8787, !noundef !17 ; 2 uses
  %.not.i.i.i.i.i1482 = icmp eq ptr %i.ayb, null
  br i1 %.not.i.i.i.i.i1482, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1483.loopexit", label %.lr.ph.i3.i.i1477

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1483.loopexit": ; preds = %.lr.ph.i3.i.i1477
  %i.ayc = icmp eq i64 %i.aya, 0
  %i.ayd = select i1 %i.ayc, i64 24, i64 120
  br label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1483"

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1483": ; preds = %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1483.loopexit", %.loopexit.i.i1473
  %.sroa.5.0.lcssa.i.i.i1484 = phi i64 [ 24, %.loopexit.i.i1473 ], [ %i.ayd, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1483.loopexit" ]
  %.sroa.0.0.lcssa.i.i.i1485 = phi ptr [ %.sroa.114955.1.lcssa, %.loopexit.i.i1473 ], [ %i.axz, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1483.loopexit" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i.i1485, i64 noundef %.sroa.5.0.lcssa.i.i.i1484, i64 noundef 8) #51, !noalias !8788
  br label %"_ZN4core3ptr62drop_in_place$LT$console..utils..StyledObject$LT$usize$GT$$GT$17h10e4dff4493942ebE.exit750"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1429": ; preds = %.noexc748, %.noexc749
  %.sroa.40.07084 = phi i64 [ %.sroa.40.0, %.noexc749 ], [ %.sroa.40.07081, %.noexc748 ]
  %.sroa.27.17083 = phi i64 [ %.sroa.27.2, %.noexc749 ], [ %.sroa.27.3, %.noexc748 ] ; 2 uses
  %.sroa.114955.17082 = phi ptr [ %.sroa.114955.2, %.noexc749 ], [ %.sroa.114955.3, %.noexc748 ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.114955.17082) ]
  %i.aye = getelementptr inbounds nuw i8, ptr %.sroa.114955.17082, i64 10
  %i.ayf = load i16, ptr %i.aye, align 2, !noalias !8789, !noundef !17
  %i.ayg = zext i16 %i.ayf to i64
  %i.ayh = icmp ult i64 %.sroa.27.17083, %i.ayg
  br i1 %i.ayh, label %._crit_edge.i.i.i.i.i1440.thread, label %.lr.ph.i.i.i.i.i1433

._crit_edge.i.i.i.i.i1440.thread:                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1429"
  %i.ayi = add nuw nsw i64 %.sroa.27.17083, 1
  br label %.noexc749

.lr.ph.i.i.i.i.i1433:                             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1429", %bb.jn
  %.sroa.0.060.i.i.i.i.i1434 = phi ptr [ %i.ayj, %bb.jn ], [ %.sroa.114955.17082, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1429" ] ; 4 uses
  %.sroa.5.059.i.i.i.i.i1435 = phi i64 [ %i.azb, %bb.jn ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1429" ] ; 4 uses
  %i.ayj = load ptr, ptr %.sroa.0.060.i.i.i.i.i1434, align 8, !noalias !8790, !noundef !17 ; 5 uses
  %.not.i.i.i.i.i.i.i1436 = icmp eq ptr %i.ayj, null
  br i1 %.not.i.i.i.i.i.i.i1436, label %bb.jo, label %bb.jn

._crit_edge.i.i.i.i.i1440:                        ; preds = %bb.jn
  %i.ayk = zext i16 %i.azd to i64
  %i.ayl = icmp eq i64 %i.azb, 0
  %i.aym = add nuw nsw i64 %i.ayk, 1              ; 2 uses
  br i1 %i.ayl, label %.noexc749, label %bb.jm

bb.jm:                                            ; preds = %._crit_edge.i.i.i.i.i1440
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.ayj, i64 24
  %i.ayo = icmp ult i16 %i.azd, 11
  call void @llvm.assume(i1 %i.ayo)
  %i.ayp = getelementptr inbounds nuw [8 x i8], ptr %i.ayn, i64 %i.aym ; 2 uses
  %xtraiter9911 = and i64 %i.azb, 7               ; 2 uses
  %lcmp.mod9912.not = icmp eq i64 %xtraiter9911, 0
  br i1 %lcmp.mod9912.not, label %.prol.loopexit9907, label %.prol.preheader9906

.prol.preheader9906:                              ; preds = %bb.jm, %.prol.preheader9906
  %.pn30.in.i.i.i.i.i.i1444.prol = phi ptr [ %i.ayq, %.prol.preheader9906 ], [ %i.ayp, %bb.jm ]
  %.pn28.in.i.i.i.i.i.i1445.prol = phi i64 [ %.pn28.i.i.i.i.i.i1446.prol, %.prol.preheader9906 ], [ %i.azb, %bb.jm ]
  %prol.iter9913 = phi i64 [ %prol.iter9913.next, %.prol.preheader9906 ], [ 0, %bb.jm ]
  %.pn28.i.i.i.i.i.i1446.prol = add i64 %.pn28.in.i.i.i.i.i.i1445.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i1447.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i1444.prol, align 8, !noalias !8791, !nonnull !17, !noundef !17 ; 2 uses
  %i.ayq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1447.prol, i64 24 ; 2 uses
  %prol.iter9913.next = add i64 %prol.iter9913, 1 ; 2 uses
  %prol.iter9913.cmp.not = icmp eq i64 %prol.iter9913.next, %xtraiter9911
  br i1 %prol.iter9913.cmp.not, label %.prol.loopexit9907, label %.prol.preheader9906, !llvm.loop !7676

.prol.loopexit9907:                               ; preds = %.prol.preheader9906, %bb.jm
  %.pn30.i.i.i.i.i.i1447.lcssa.unr = phi ptr [ poison, %bb.jm ], [ %.pn30.i.i.i.i.i.i1447.prol, %.prol.preheader9906 ]
  %.pn30.in.i.i.i.i.i.i1444.unr = phi ptr [ %i.ayp, %bb.jm ], [ %i.ayq, %.prol.preheader9906 ]
  %.pn28.in.i.i.i.i.i.i1445.unr = phi i64 [ %i.azb, %bb.jm ], [ %.pn28.i.i.i.i.i.i1446.prol, %.prol.preheader9906 ]
  %i.ayr = icmp ult i64 %.sroa.5.059.i.i.i.i.i1435, 7
  br i1 %i.ayr, label %.noexc749, label %.new9908

.new9908:                                         ; preds = %.prol.loopexit9907, %.new9908
  %.pn30.in.i.i.i.i.i.i1444 = phi ptr [ %i.aza, %.new9908 ], [ %.pn30.in.i.i.i.i.i.i1444.unr, %.prol.loopexit9907 ]
  %.pn28.in.i.i.i.i.i.i1445 = phi i64 [ %.pn28.i.i.i.i.i.i1446.7, %.new9908 ], [ %.pn28.in.i.i.i.i.i.i1445.unr, %.prol.loopexit9907 ]
  %.pn30.i.i.i.i.i.i1447 = load ptr, ptr %.pn30.in.i.i.i.i.i.i1444, align 8, !noalias !8791, !nonnull !17, !noundef !17
  %i.ays = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1447, i64 24
  %.pn30.i.i.i.i.i.i1447.1 = load ptr, ptr %i.ays, align 8, !noalias !8791, !nonnull !17, !noundef !17
  %i.ayt = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1447.1, i64 24
  %.pn30.i.i.i.i.i.i1447.2 = load ptr, ptr %i.ayt, align 8, !noalias !8791, !nonnull !17, !noundef !17
  %i.ayu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1447.2, i64 24
  %.pn30.i.i.i.i.i.i1447.3 = load ptr, ptr %i.ayu, align 8, !noalias !8791, !nonnull !17, !noundef !17
  %i.ayv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1447.3, i64 24
  %.pn30.i.i.i.i.i.i1447.4 = load ptr, ptr %i.ayv, align 8, !noalias !8791, !nonnull !17, !noundef !17
  %i.ayw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1447.4, i64 24
  %.pn30.i.i.i.i.i.i1447.5 = load ptr, ptr %i.ayw, align 8, !noalias !8791, !nonnull !17, !noundef !17
  %i.ayx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1447.5, i64 24
  %.pn30.i.i.i.i.i.i1447.6 = load ptr, ptr %i.ayx, align 8, !noalias !8791, !nonnull !17, !noundef !17
  %i.ayy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1447.6, i64 24
  %.pn28.i.i.i.i.i.i1446.7 = add i64 %.pn28.in.i.i.i.i.i.i1445, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i1447.7 = load ptr, ptr %i.ayy, align 8, !noalias !8791, !nonnull !17, !noundef !17 ; 2 uses
  %i.ayz = icmp eq i64 %.pn28.i.i.i.i.i.i1446.7, 0
  %i.aza = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1447.7, i64 24
  br i1 %i.ayz, label %.noexc749, label %.new9908

bb.jn:                                            ; preds = %.lr.ph.i.i.i.i.i1433
  %i.azb = add i64 %.sroa.5.059.i.i.i.i.i1435, 1  ; 5 uses
  %i.azc = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i.i1434, i64 8
  %i.azd = load i16, ptr %i.azc, align 8, !noalias !8790 ; 3 uses
  %.not.i.i.i.i.i.i1437 = icmp eq i64 %.sroa.5.059.i.i.i.i.i1435, 0
  %..i.i.i.i.i.i1438 = select i1 %.not.i.i.i.i.i.i1437, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i1434, i64 noundef %..i.i.i.i.i.i1438, i64 noundef 8) #51, !noalias !8792
  %i.aze = getelementptr inbounds nuw i8, ptr %i.ayj, i64 10
  %i.azf = load i16, ptr %i.aze, align 2, !noalias !8789, !noundef !17
  %i.azg = icmp ult i16 %i.azd, %i.azf
  br i1 %i.azg, label %._crit_edge.i.i.i.i.i1440, label %.lr.ph.i.i.i.i.i1433

bb.jo:                                            ; preds = %.lr.ph.i.i.i.i.i1433
  %.not.i54.i.i.i.i.i1454 = icmp eq i64 %.sroa.5.059.i.i.i.i.i1435, 0
  %..i55.i.i.i.i.i1455 = select i1 %.not.i54.i.i.i.i.i1454, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i1434, i64 noundef %..i55.i.i.i.i.i1455, i64 noundef 8) #51, !noalias !8792
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #54
          to label %.noexc.i.i.i1456 unwind label %bb.jp, !noalias !8793

.noexc.i.i.i1456:                                 ; preds = %bb.jo
  unreachable

bb.jp:                                            ; preds = %bb.jo
  %i.azh = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.noexc749:                                        ; preds = %.prol.loopexit9907, %.new9908, %._crit_edge.i.i.i.i.i1440.thread, %._crit_edge.i.i.i.i.i1440
  %.sroa.114955.2 = phi ptr [ %i.ayj, %._crit_edge.i.i.i.i.i1440 ], [ %.sroa.114955.17082, %._crit_edge.i.i.i.i.i1440.thread ], [ %.pn30.i.i.i.i.i.i1447.lcssa.unr, %.prol.loopexit9907 ], [ %.pn30.i.i.i.i.i.i1447.7, %.new9908 ] ; 2 uses
  %.sroa.27.2 = phi i64 [ %i.aym, %._crit_edge.i.i.i.i.i1440 ], [ %i.ayi, %._crit_edge.i.i.i.i.i1440.thread ], [ 0, %.new9908 ], [ 0, %.prol.loopexit9907 ]
  %.sroa.40.0 = add i64 %.sroa.40.07084, -1       ; 2 uses
  %i.azi = icmp eq i64 %.sroa.40.0, 0
  br i1 %i.azi, label %.loopexit.i.i1473, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1429"

"_ZN4core3ptr62drop_in_place$LT$console..utils..StyledObject$LT$usize$GT$$GT$17h10e4dff4493942ebE.exit750": ; preds = %bb.jf, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1483", %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1553"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  %.sroa.0.0.copyload.i.i.i.i.i751 = load ptr, ptr %.sroa.04426.sroa.4.0..sroa_idx, align 8, !alias.scope !8794 ; 7 uses
  %.not.i.i.i.i.i.i752 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i751, null
  br i1 %.not.i.i.i.i.i.i752, label %"_ZN4core3ptr62drop_in_place$LT$console..utils..StyledObject$LT$usize$GT$$GT$17h10e4dff4493942ebE.exit771", label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i763"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i763": ; preds = %"_ZN4core3ptr62drop_in_place$LT$console..utils..StyledObject$LT$usize$GT$$GT$17h10e4dff4493942ebE.exit750"
  %.sroa.5.0.copyload.i.i.i.i.i754 = load i64, ptr %.sroa.04426.sroa.8.0..sroa_idx, align 8, !alias.scope !8794 ; 2 uses
  %.sroa.4.0.copyload.i.i.i.i.i756 = load i64, ptr %.sroa.04426.sroa.7.0..sroa_idx, align 8, !alias.scope !8794 ; 9 uses
  %i.azj = icmp eq i64 %.sroa.5.0.copyload.i.i.i.i.i754, 0
  %i.azk = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i756, 0 ; 2 uses
  br i1 %i.azj, label %bb.jq, label %bb.jr

bb.jq:                                            ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i763"
  br i1 %i.azk, label %.loopexit.i.i1683, label %.lr.ph.i.i.i1698.preheader

.lr.ph.i.i.i1698.preheader:                       ; preds = %bb.jq
  %xtraiter9936 = and i64 %.sroa.4.0.copyload.i.i.i.i.i756, 7 ; 2 uses
  %lcmp.mod9937.not = icmp eq i64 %xtraiter9936, 0
  br i1 %lcmp.mod9937.not, label %.lr.ph.i.i.i1698.prol.loopexit, label %.lr.ph.i.i.i1698.prol

.lr.ph.i.i.i1698.prol:                            ; preds = %.lr.ph.i.i.i1698.preheader, %.lr.ph.i.i.i1698.prol
  %.sroa.019.021.i.i.i1699.prol = phi ptr [ %i.azm, %.lr.ph.i.i.i1698.prol ], [ %.sroa.0.0.copyload.i.i.i.i.i751, %.lr.ph.i.i.i1698.preheader ]
  %.sroa.018.020.i.i.i1700.prol = phi i64 [ %i.azn, %.lr.ph.i.i.i1698.prol ], [ %.sroa.4.0.copyload.i.i.i.i.i756, %.lr.ph.i.i.i1698.preheader ]
  %prol.iter9938 = phi i64 [ %prol.iter9938.next, %.lr.ph.i.i.i1698.prol ], [ 0, %.lr.ph.i.i.i1698.preheader ]
  %i.azl = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i.i1699.prol, i64 24
  %i.azm = load ptr, ptr %i.azl, align 8, !noalias !8795, !nonnull !17, !noundef !17 ; 3 uses
  %i.azn = add i64 %.sroa.018.020.i.i.i1700.prol, -1 ; 2 uses
  %prol.iter9938.next = add i64 %prol.iter9938, 1 ; 2 uses
  %prol.iter9938.cmp.not = icmp eq i64 %prol.iter9938.next, %xtraiter9936
  br i1 %prol.iter9938.cmp.not, label %.lr.ph.i.i.i1698.prol.loopexit, label %.lr.ph.i.i.i1698.prol, !llvm.loop !7697

.lr.ph.i.i.i1698.prol.loopexit:                   ; preds = %.lr.ph.i.i.i1698.prol, %.lr.ph.i.i.i1698.preheader
  %.lcssa9431.unr = phi ptr [ poison, %.lr.ph.i.i.i1698.preheader ], [ %i.azm, %.lr.ph.i.i.i1698.prol ]
  %.sroa.019.021.i.i.i1699.unr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i751, %.lr.ph.i.i.i1698.preheader ], [ %i.azm, %.lr.ph.i.i.i1698.prol ]
  %.sroa.018.020.i.i.i1700.unr = phi i64 [ %.sroa.4.0.copyload.i.i.i.i.i756, %.lr.ph.i.i.i1698.preheader ], [ %i.azn, %.lr.ph.i.i.i1698.prol ]
  %i.azo = icmp ult i64 %.sroa.4.0.copyload.i.i.i.i.i756, 8
  br i1 %i.azo, label %.loopexit.i.i1683, label %.lr.ph.i.i.i1698

.lr.ph.i.i.i1698:                                 ; preds = %.lr.ph.i.i.i1698.prol.loopexit, %.lr.ph.i.i.i1698
  %.sroa.019.021.i.i.i1699 = phi ptr [ %i.bae, %.lr.ph.i.i.i1698 ], [ %.sroa.019.021.i.i.i1699.unr, %.lr.ph.i.i.i1698.prol.loopexit ]
  %.sroa.018.020.i.i.i1700 = phi i64 [ %i.baf, %.lr.ph.i.i.i1698 ], [ %.sroa.018.020.i.i.i1700.unr, %.lr.ph.i.i.i1698.prol.loopexit ]
  %i.azp = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i.i1699, i64 24
  %i.azq = load ptr, ptr %i.azp, align 8, !noalias !8795, !nonnull !17, !noundef !17
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azq, i64 24
  %i.azs = load ptr, ptr %i.azr, align 8, !noalias !8795, !nonnull !17, !noundef !17
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azs, i64 24
  %i.azu = load ptr, ptr %i.azt, align 8, !noalias !8795, !nonnull !17, !noundef !17
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azu, i64 24
  %i.azw = load ptr, ptr %i.azv, align 8, !noalias !8795, !nonnull !17, !noundef !17
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azw, i64 24
  %i.azy = load ptr, ptr %i.azx, align 8, !noalias !8795, !nonnull !17, !noundef !17
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azy, i64 24
  %i.baa = load ptr, ptr %i.azz, align 8, !noalias !8795, !nonnull !17, !noundef !17
  %i.bab = getelementptr inbounds nuw i8, ptr %i.baa, i64 24
  %i.bac = load ptr, ptr %i.bab, align 8, !noalias !8795, !nonnull !17, !noundef !17
  %i.bad = getelementptr inbounds nuw i8, ptr %i.bac, i64 24
  %i.bae = load ptr, ptr %i.bad, align 8, !noalias !8795, !nonnull !17, !noundef !17 ; 2 uses
  %i.baf = add i64 %.sroa.018.020.i.i.i1700, -8   ; 2 uses
  %i.bag = icmp eq i64 %i.baf, 0
  br i1 %i.bag, label %.loopexit.i.i1683, label %.lr.ph.i.i.i1698

.loopexit.i.i1683:                                ; preds = %.lr.ph.i.i.i1698.prol.loopexit, %.lr.ph.i.i.i1698, %bb.jq
  %.sroa.0.0.ph.i.i1685 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i751, %bb.jq ], [ %.lcssa9431.unr, %.lr.ph.i.i.i1698.prol.loopexit ], [ %i.bae, %.lr.ph.i.i.i1698 ] ; 3 uses
  %i.bah = load ptr, ptr %.sroa.0.0.ph.i.i1685, align 8, !noalias !8796, !noundef !17 ; 2 uses
  %.not.i.i4.i.i.i1686 = icmp eq ptr %i.bah, null
  br i1 %.not.i.i4.i.i.i1686, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1693", label %.lr.ph.i3.i.i1687

.lr.ph.i3.i.i1687:                                ; preds = %.loopexit.i.i1683, %.lr.ph.i3.i.i1687
  %i.bai = phi ptr [ %i.bak, %.lr.ph.i3.i.i1687 ], [ %i.bah, %.loopexit.i.i1683 ] ; 3 uses
  %.sroa.0.06.i.i.i1688 = phi ptr [ %i.bai, %.lr.ph.i3.i.i1687 ], [ %.sroa.0.0.ph.i.i1685, %.loopexit.i.i1683 ]
  %.sroa.5.05.i.i.i1689 = phi i64 [ %i.baj, %.lr.ph.i3.i.i1687 ], [ 0, %.loopexit.i.i1683 ] ; 2 uses
  %i.baj = add i64 %.sroa.5.05.i.i.i1689, 1       ; 2 uses
  %.not.i.i.i.i1690 = icmp eq i64 %.sroa.5.05.i.i.i1689, 0
  %..i.i.i.i1691 = select i1 %.not.i.i.i.i1690, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i.i1688, i64 noundef %..i.i.i.i1691, i64 noundef 8) #51, !noalias !8797
  %i.bak = load ptr, ptr %i.bai, align 8, !noalias !8796, !noundef !17 ; 2 uses
  %.not.i.i.i.i.i1692 = icmp eq ptr %i.bak, null
  br i1 %.not.i.i.i.i.i1692, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1693.loopexit", label %.lr.ph.i3.i.i1687

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1693.loopexit": ; preds = %.lr.ph.i3.i.i1687
  %i.bal = icmp eq i64 %i.baj, 0
  %i.bam = select i1 %i.bal, i64 24, i64 120
  br label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1693"

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1693": ; preds = %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1693.loopexit", %.loopexit.i.i1683
  %.sroa.5.0.lcssa.i.i.i1694 = phi i64 [ 24, %.loopexit.i.i1683 ], [ %i.bam, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1693.loopexit" ]
  %.sroa.0.0.lcssa.i.i.i1695 = phi ptr [ %.sroa.0.0.ph.i.i1685, %.loopexit.i.i1683 ], [ %i.bai, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1693.loopexit" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i.i1695, i64 noundef %.sroa.5.0.lcssa.i.i.i1694, i64 noundef 8) #51, !noalias !8797
  br label %"_ZN4core3ptr62drop_in_place$LT$console..utils..StyledObject$LT$usize$GT$$GT$17h10e4dff4493942ebE.exit771"

bb.jr:                                            ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i763"
  br i1 %i.azk, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1639", label %.lr.ph.i.i2.i1668.preheader

.lr.ph.i.i2.i1668.preheader:                      ; preds = %bb.jr
  %xtraiter9917 = and i64 %.sroa.4.0.copyload.i.i.i.i.i756, 7 ; 2 uses
  %lcmp.mod9918.not = icmp eq i64 %xtraiter9917, 0
  br i1 %lcmp.mod9918.not, label %.lr.ph.i.i2.i1668.prol.loopexit, label %.lr.ph.i.i2.i1668.prol

.lr.ph.i.i2.i1668.prol:                           ; preds = %.lr.ph.i.i2.i1668.preheader, %.lr.ph.i.i2.i1668.prol
  %.sroa.012.015.i.i.i1669.prol = phi ptr [ %.sroa.012.0.i.i.i1671.prol, %.lr.ph.i.i2.i1668.prol ], [ %.sroa.0.0.copyload.i.i.i.i.i751, %.lr.ph.i.i2.i1668.preheader ]
  %.sroa.011.014.i.i.i1670.prol = phi i64 [ %i.bao, %.lr.ph.i.i2.i1668.prol ], [ %.sroa.4.0.copyload.i.i.i.i.i756, %.lr.ph.i.i2.i1668.preheader ]
  %prol.iter9919 = phi i64 [ %prol.iter9919.next, %.lr.ph.i.i2.i1668.prol ], [ 0, %.lr.ph.i.i2.i1668.preheader ]
  %i.ban = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i1669.prol, i64 24
  %i.bao = add i64 %.sroa.011.014.i.i.i1670.prol, -1 ; 2 uses
  %.sroa.012.0.i.i.i1671.prol = load ptr, ptr %i.ban, align 8, !noalias !8798, !nonnull !17, !noundef !17 ; 3 uses
  %prol.iter9919.next = add i64 %prol.iter9919, 1 ; 2 uses
  %prol.iter9919.cmp.not = icmp eq i64 %prol.iter9919.next, %xtraiter9917
  br i1 %prol.iter9919.cmp.not, label %.lr.ph.i.i2.i1668.prol.loopexit, label %.lr.ph.i.i2.i1668.prol, !llvm.loop !7707

.lr.ph.i.i2.i1668.prol.loopexit:                  ; preds = %.lr.ph.i.i2.i1668.prol, %.lr.ph.i.i2.i1668.preheader
  %.sroa.012.0.i.i.i1671.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.i1668.preheader ], [ %.sroa.012.0.i.i.i1671.prol, %.lr.ph.i.i2.i1668.prol ]
  %.sroa.012.015.i.i.i1669.unr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i751, %.lr.ph.i.i2.i1668.preheader ], [ %.sroa.012.0.i.i.i1671.prol, %.lr.ph.i.i2.i1668.prol ]
  %.sroa.011.014.i.i.i1670.unr = phi i64 [ %.sroa.4.0.copyload.i.i.i.i.i756, %.lr.ph.i.i2.i1668.preheader ], [ %i.bao, %.lr.ph.i.i2.i1668.prol ]
  %i.bap = icmp ult i64 %.sroa.4.0.copyload.i.i.i.i.i756, 8
  br i1 %i.bap, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1639", label %.lr.ph.i.i2.i1668

.lr.ph.i.i2.i1668:                                ; preds = %.lr.ph.i.i2.i1668.prol.loopexit, %.lr.ph.i.i2.i1668
  %.sroa.012.015.i.i.i1669 = phi ptr [ %.sroa.012.0.i.i.i1671.7, %.lr.ph.i.i2.i1668 ], [ %.sroa.012.015.i.i.i1669.unr, %.lr.ph.i.i2.i1668.prol.loopexit ]
  %.sroa.011.014.i.i.i1670 = phi i64 [ %i.bay, %.lr.ph.i.i2.i1668 ], [ %.sroa.011.014.i.i.i1670.unr, %.lr.ph.i.i2.i1668.prol.loopexit ]
  %i.baq = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i1669, i64 24
  %.sroa.012.0.i.i.i1671 = load ptr, ptr %i.baq, align 8, !noalias !8798, !nonnull !17, !noundef !17
  %i.bar = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i1671, i64 24
  %.sroa.012.0.i.i.i1671.1 = load ptr, ptr %i.bar, align 8, !noalias !8798, !nonnull !17, !noundef !17
  %i.bas = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i1671.1, i64 24
  %.sroa.012.0.i.i.i1671.2 = load ptr, ptr %i.bas, align 8, !noalias !8798, !nonnull !17, !noundef !17
  %i.bat = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i1671.2, i64 24
  %.sroa.012.0.i.i.i1671.3 = load ptr, ptr %i.bat, align 8, !noalias !8798, !nonnull !17, !noundef !17
  %i.bau = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i1671.3, i64 24
  %.sroa.012.0.i.i.i1671.4 = load ptr, ptr %i.bau, align 8, !noalias !8798, !nonnull !17, !noundef !17
  %i.bav = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i1671.4, i64 24
  %.sroa.012.0.i.i.i1671.5 = load ptr, ptr %i.bav, align 8, !noalias !8798, !nonnull !17, !noundef !17
  %i.baw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i1671.5, i64 24
  %.sroa.012.0.i.i.i1671.6 = load ptr, ptr %i.baw, align 8, !noalias !8798, !nonnull !17, !noundef !17
  %i.bax = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i1671.6, i64 24
  %i.bay = add i64 %.sroa.011.014.i.i.i1670, -8   ; 2 uses
  %.sroa.012.0.i.i.i1671.7 = load ptr, ptr %i.bax, align 8, !noalias !8798, !nonnull !17, !noundef !17 ; 2 uses
  %i.baz = icmp eq i64 %i.bay, 0
  br i1 %i.baz, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1639", label %.lr.ph.i.i2.i1668

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1639": ; preds = %.lr.ph.i.i2.i1668.prol.loopexit, %.lr.ph.i.i2.i1668, %bb.jr
  %.sroa.012.0.lcssa.i.i.i1673 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i751, %bb.jr ], [ %.sroa.012.0.i.i.i1671.lcssa.unr, %.lr.ph.i.i2.i1668.prol.loopexit ], [ %.sroa.012.0.i.i.i1671.7, %.lr.ph.i.i2.i1668 ] ; 3 uses
  %i.bba = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i1673, i64 10
  %i.bbb = load i16, ptr %i.bba, align 2, !noalias !8799, !noundef !17
  %.not6015 = icmp eq i16 %i.bbb, 0
  br i1 %.not6015, label %.lr.ph.i.i.i.i.i1643, label %.noexc769

.lr.ph.i.i.i.i.i1643:                             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1639", %bb.jt
  %.sroa.0.060.i.i.i.i.i1644 = phi ptr [ %i.bbc, %bb.jt ], [ %.sroa.012.0.lcssa.i.i.i1673, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1639" ] ; 4 uses
  %.sroa.5.059.i.i.i.i.i1645 = phi i64 [ %i.bbu, %bb.jt ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1639" ] ; 4 uses
  %i.bbc = load ptr, ptr %.sroa.0.060.i.i.i.i.i1644, align 8, !noalias !8800, !noundef !17 ; 5 uses
  %.not.i.i.i.i.i.i.i1646 = icmp eq ptr %i.bbc, null
  br i1 %.not.i.i.i.i.i.i.i1646, label %bb.ju, label %bb.jt

._crit_edge.i.i.i.i.i1650:                        ; preds = %bb.jt
  %i.bbd = zext i16 %i.bbw to i64
  %i.bbe = icmp eq i64 %i.bbu, 0
  %i.bbf = add nuw nsw i64 %i.bbd, 1              ; 2 uses
  br i1 %i.bbe, label %.noexc769, label %bb.js

bb.js:                                            ; preds = %._crit_edge.i.i.i.i.i1650
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.bbc, i64 24
  %i.bbh = icmp ult i16 %i.bbw, 11
  call void @llvm.assume(i1 %i.bbh)
  %i.bbi = getelementptr inbounds nuw [8 x i8], ptr %i.bbg, i64 %i.bbf ; 2 uses
  %xtraiter9925 = and i64 %i.bbu, 7               ; 2 uses
  %lcmp.mod9926.not = icmp eq i64 %xtraiter9925, 0
  br i1 %lcmp.mod9926.not, label %.prol.loopexit9921, label %.prol.preheader9920

.prol.preheader9920:                              ; preds = %bb.js, %.prol.preheader9920
  %.pn30.in.i.i.i.i.i.i1654.prol = phi ptr [ %i.bbj, %.prol.preheader9920 ], [ %i.bbi, %bb.js ]
  %.pn28.in.i.i.i.i.i.i1655.prol = phi i64 [ %.pn28.i.i.i.i.i.i1656.prol, %.prol.preheader9920 ], [ %i.bbu, %bb.js ]
  %prol.iter9927 = phi i64 [ %prol.iter9927.next, %.prol.preheader9920 ], [ 0, %bb.js ]
  %.pn28.i.i.i.i.i.i1656.prol = add i64 %.pn28.in.i.i.i.i.i.i1655.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i1657.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i1654.prol, align 8, !noalias !8801, !nonnull !17, !noundef !17 ; 2 uses
  %i.bbj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1657.prol, i64 24 ; 2 uses
  %prol.iter9927.next = add i64 %prol.iter9927, 1 ; 2 uses
  %prol.iter9927.cmp.not = icmp eq i64 %prol.iter9927.next, %xtraiter9925
  br i1 %prol.iter9927.cmp.not, label %.prol.loopexit9921, label %.prol.preheader9920, !llvm.loop !7724

.prol.loopexit9921:                               ; preds = %.prol.preheader9920, %bb.js
  %.pn30.i.i.i.i.i.i1657.lcssa.unr = phi ptr [ poison, %bb.js ], [ %.pn30.i.i.i.i.i.i1657.prol, %.prol.preheader9920 ]
  %.pn30.in.i.i.i.i.i.i1654.unr = phi ptr [ %i.bbi, %bb.js ], [ %i.bbj, %.prol.preheader9920 ]
  %.pn28.in.i.i.i.i.i.i1655.unr = phi i64 [ %i.bbu, %bb.js ], [ %.pn28.i.i.i.i.i.i1656.prol, %.prol.preheader9920 ]
  %i.bbk = icmp ult i64 %.sroa.5.059.i.i.i.i.i1645, 7
  br i1 %i.bbk, label %.noexc769, label %.new9922

.new9922:                                         ; preds = %.prol.loopexit9921, %.new9922
  %.pn30.in.i.i.i.i.i.i1654 = phi ptr [ %i.bbt, %.new9922 ], [ %.pn30.in.i.i.i.i.i.i1654.unr, %.prol.loopexit9921 ]
  %.pn28.in.i.i.i.i.i.i1655 = phi i64 [ %.pn28.i.i.i.i.i.i1656.7, %.new9922 ], [ %.pn28.in.i.i.i.i.i.i1655.unr, %.prol.loopexit9921 ]
  %.pn30.i.i.i.i.i.i1657 = load ptr, ptr %.pn30.in.i.i.i.i.i.i1654, align 8, !noalias !8801, !nonnull !17, !noundef !17
  %i.bbl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1657, i64 24
  %.pn30.i.i.i.i.i.i1657.1 = load ptr, ptr %i.bbl, align 8, !noalias !8801, !nonnull !17, !noundef !17
  %i.bbm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1657.1, i64 24
  %.pn30.i.i.i.i.i.i1657.2 = load ptr, ptr %i.bbm, align 8, !noalias !8801, !nonnull !17, !noundef !17
  %i.bbn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1657.2, i64 24
  %.pn30.i.i.i.i.i.i1657.3 = load ptr, ptr %i.bbn, align 8, !noalias !8801, !nonnull !17, !noundef !17
  %i.bbo = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1657.3, i64 24
  %.pn30.i.i.i.i.i.i1657.4 = load ptr, ptr %i.bbo, align 8, !noalias !8801, !nonnull !17, !noundef !17
  %i.bbp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1657.4, i64 24
  %.pn30.i.i.i.i.i.i1657.5 = load ptr, ptr %i.bbp, align 8, !noalias !8801, !nonnull !17, !noundef !17
  %i.bbq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1657.5, i64 24
  %.pn30.i.i.i.i.i.i1657.6 = load ptr, ptr %i.bbq, align 8, !noalias !8801, !nonnull !17, !noundef !17
  %i.bbr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1657.6, i64 24
  %.pn28.i.i.i.i.i.i1656.7 = add i64 %.pn28.in.i.i.i.i.i.i1655, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i1657.7 = load ptr, ptr %i.bbr, align 8, !noalias !8801, !nonnull !17, !noundef !17 ; 2 uses
  %i.bbs = icmp eq i64 %.pn28.i.i.i.i.i.i1656.7, 0
  %i.bbt = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1657.7, i64 24
  br i1 %i.bbs, label %.noexc769, label %.new9922

bb.jt:                                            ; preds = %.lr.ph.i.i.i.i.i1643
  %i.bbu = add i64 %.sroa.5.059.i.i.i.i.i1645, 1  ; 5 uses
  %i.bbv = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i.i1644, i64 8
  %i.bbw = load i16, ptr %i.bbv, align 8, !noalias !8800 ; 3 uses
  %.not.i.i.i.i.i.i1647 = icmp eq i64 %.sroa.5.059.i.i.i.i.i1645, 0
  %..i.i.i.i.i.i1648 = select i1 %.not.i.i.i.i.i.i1647, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i1644, i64 noundef %..i.i.i.i.i.i1648, i64 noundef 8) #51, !noalias !8802
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbc, i64 10
  %i.bby = load i16, ptr %i.bbx, align 2, !noalias !8799, !noundef !17
  %i.bbz = icmp ult i16 %i.bbw, %i.bby
  br i1 %i.bbz, label %._crit_edge.i.i.i.i.i1650, label %.lr.ph.i.i.i.i.i1643

bb.ju:                                            ; preds = %.lr.ph.i.i.i.i.i1643
  %.not.i54.i.i.i.i.i1664 = icmp eq i64 %.sroa.5.059.i.i.i.i.i1645, 0
  %..i55.i.i.i.i.i1665 = select i1 %.not.i54.i.i.i.i.i1664, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i1644, i64 noundef %..i55.i.i.i.i.i1665, i64 noundef 8) #51, !noalias !8802
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #54
          to label %.noexc.i.i.i1666 unwind label %bb.jv, !noalias !8803

.noexc.i.i.i1666:                                 ; preds = %bb.ju
  unreachable

bb.jv:                                            ; preds = %bb.ju
  %i.bca = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.noexc769:                                        ; preds = %.prol.loopexit9921, %.new9922, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1639", %._crit_edge.i.i.i.i.i1650
  %.sroa.114972.3 = phi ptr [ %.sroa.012.0.lcssa.i.i.i1673, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1639" ], [ %i.bbc, %._crit_edge.i.i.i.i.i1650 ], [ %.pn30.i.i.i.i.i.i1657.lcssa.unr, %.prol.loopexit9921 ], [ %.pn30.i.i.i.i.i.i1657.7, %.new9922 ] ; 2 uses
  %.sroa.274976.3 = phi i64 [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1639" ], [ %i.bbf, %._crit_edge.i.i.i.i.i1650 ], [ 0, %.new9922 ], [ 0, %.prol.loopexit9921 ]
  %.sroa.404986.07086 = add i64 %.sroa.5.0.copyload.i.i.i.i.i754, -1 ; 2 uses
  %i.bcb = icmp eq i64 %.sroa.404986.07086, 0
  br i1 %i.bcb, label %.loopexit.i.i1613, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1569"

.loopexit.i.i1613:                                ; preds = %.noexc770, %.noexc769
  %.sroa.114972.1.lcssa = phi ptr [ %.sroa.114972.3, %.noexc769 ], [ %.sroa.114972.2, %.noexc770 ] ; 3 uses
  %i.bcc = load ptr, ptr %.sroa.114972.1.lcssa, align 8, !noalias !8804, !noundef !17 ; 2 uses
  %.not.i.i4.i.i.i1616 = icmp eq ptr %i.bcc, null
  br i1 %.not.i.i4.i.i.i1616, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1623", label %.lr.ph.i3.i.i1617

.lr.ph.i3.i.i1617:                                ; preds = %.loopexit.i.i1613, %.lr.ph.i3.i.i1617
  %i.bcd = phi ptr [ %i.bcf, %.lr.ph.i3.i.i1617 ], [ %i.bcc, %.loopexit.i.i1613 ] ; 3 uses
  %.sroa.0.06.i.i.i1618 = phi ptr [ %i.bcd, %.lr.ph.i3.i.i1617 ], [ %.sroa.114972.1.lcssa, %.loopexit.i.i1613 ]
  %.sroa.5.05.i.i.i1619 = phi i64 [ %i.bce, %.lr.ph.i3.i.i1617 ], [ 0, %.loopexit.i.i1613 ] ; 2 uses
  %i.bce = add i64 %.sroa.5.05.i.i.i1619, 1       ; 2 uses
  %.not.i.i.i.i1620 = icmp eq i64 %.sroa.5.05.i.i.i1619, 0
  %..i.i.i.i1621 = select i1 %.not.i.i.i.i1620, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i.i1618, i64 noundef %..i.i.i.i1621, i64 noundef 8) #51, !noalias !8805
  %i.bcf = load ptr, ptr %i.bcd, align 8, !noalias !8804, !noundef !17 ; 2 uses
  %.not.i.i.i.i.i1622 = icmp eq ptr %i.bcf, null
  br i1 %.not.i.i.i.i.i1622, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1623.loopexit", label %.lr.ph.i3.i.i1617

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1623.loopexit": ; preds = %.lr.ph.i3.i.i1617
  %i.bcg = icmp eq i64 %i.bce, 0
  %i.bch = select i1 %i.bcg, i64 24, i64 120
  br label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1623"

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1623": ; preds = %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1623.loopexit", %.loopexit.i.i1613
  %.sroa.5.0.lcssa.i.i.i1624 = phi i64 [ 24, %.loopexit.i.i1613 ], [ %i.bch, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1623.loopexit" ]
  %.sroa.0.0.lcssa.i.i.i1625 = phi ptr [ %.sroa.114972.1.lcssa, %.loopexit.i.i1613 ], [ %i.bcd, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1623.loopexit" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i.i1625, i64 noundef %.sroa.5.0.lcssa.i.i.i1624, i64 noundef 8) #51, !noalias !8805
  br label %"_ZN4core3ptr62drop_in_place$LT$console..utils..StyledObject$LT$usize$GT$$GT$17h10e4dff4493942ebE.exit771"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1569": ; preds = %.noexc769, %.noexc770
  %.sroa.404986.07089 = phi i64 [ %.sroa.404986.0, %.noexc770 ], [ %.sroa.404986.07086, %.noexc769 ]
  %.sroa.274976.17088 = phi i64 [ %.sroa.274976.2, %.noexc770 ], [ %.sroa.274976.3, %.noexc769 ] ; 2 uses
  %.sroa.114972.17087 = phi ptr [ %.sroa.114972.2, %.noexc770 ], [ %.sroa.114972.3, %.noexc769 ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.114972.17087) ]
  %i.bci = getelementptr inbounds nuw i8, ptr %.sroa.114972.17087, i64 10
  %i.bcj = load i16, ptr %i.bci, align 2, !noalias !8806, !noundef !17
  %i.bck = zext i16 %i.bcj to i64
  %i.bcl = icmp ult i64 %.sroa.274976.17088, %i.bck
  br i1 %i.bcl, label %._crit_edge.i.i.i.i.i1580.thread, label %.lr.ph.i.i.i.i.i1573

._crit_edge.i.i.i.i.i1580.thread:                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1569"
  %i.bcm = add nuw nsw i64 %.sroa.274976.17088, 1
  br label %.noexc770

.lr.ph.i.i.i.i.i1573:                             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1569", %bb.jx
  %.sroa.0.060.i.i.i.i.i1574 = phi ptr [ %i.bcn, %bb.jx ], [ %.sroa.114972.17087, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1569" ] ; 4 uses
  %.sroa.5.059.i.i.i.i.i1575 = phi i64 [ %i.bdf, %bb.jx ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1569" ] ; 4 uses
  %i.bcn = load ptr, ptr %.sroa.0.060.i.i.i.i.i1574, align 8, !noalias !8807, !noundef !17 ; 5 uses
  %.not.i.i.i.i.i.i.i1576 = icmp eq ptr %i.bcn, null
  br i1 %.not.i.i.i.i.i.i.i1576, label %bb.jy, label %bb.jx

._crit_edge.i.i.i.i.i1580:                        ; preds = %bb.jx
  %i.bco = zext i16 %i.bdh to i64
  %i.bcp = icmp eq i64 %i.bdf, 0
  %i.bcq = add nuw nsw i64 %i.bco, 1              ; 2 uses
  br i1 %i.bcp, label %.noexc770, label %bb.jw

bb.jw:                                            ; preds = %._crit_edge.i.i.i.i.i1580
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bcn, i64 24
  %i.bcs = icmp ult i16 %i.bdh, 11
  call void @llvm.assume(i1 %i.bcs)
  %i.bct = getelementptr inbounds nuw [8 x i8], ptr %i.bcr, i64 %i.bcq ; 2 uses
  %xtraiter9933 = and i64 %i.bdf, 7               ; 2 uses
  %lcmp.mod9934.not = icmp eq i64 %xtraiter9933, 0
  br i1 %lcmp.mod9934.not, label %.prol.loopexit9929, label %.prol.preheader9928

.prol.preheader9928:                              ; preds = %bb.jw, %.prol.preheader9928
  %.pn30.in.i.i.i.i.i.i1584.prol = phi ptr [ %i.bcu, %.prol.preheader9928 ], [ %i.bct, %bb.jw ]
  %.pn28.in.i.i.i.i.i.i1585.prol = phi i64 [ %.pn28.i.i.i.i.i.i1586.prol, %.prol.preheader9928 ], [ %i.bdf, %bb.jw ]
  %prol.iter9935 = phi i64 [ %prol.iter9935.next, %.prol.preheader9928 ], [ 0, %bb.jw ]
  %.pn28.i.i.i.i.i.i1586.prol = add i64 %.pn28.in.i.i.i.i.i.i1585.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i1587.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i1584.prol, align 8, !noalias !8808, !nonnull !17, !noundef !17 ; 2 uses
  %i.bcu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1587.prol, i64 24 ; 2 uses
  %prol.iter9935.next = add i64 %prol.iter9935, 1 ; 2 uses
  %prol.iter9935.cmp.not = icmp eq i64 %prol.iter9935.next, %xtraiter9933
  br i1 %prol.iter9935.cmp.not, label %.prol.loopexit9929, label %.prol.preheader9928, !llvm.loop !7753

.prol.loopexit9929:                               ; preds = %.prol.preheader9928, %bb.jw
  %.pn30.i.i.i.i.i.i1587.lcssa.unr = phi ptr [ poison, %bb.jw ], [ %.pn30.i.i.i.i.i.i1587.prol, %.prol.preheader9928 ]
  %.pn30.in.i.i.i.i.i.i1584.unr = phi ptr [ %i.bct, %bb.jw ], [ %i.bcu, %.prol.preheader9928 ]
  %.pn28.in.i.i.i.i.i.i1585.unr = phi i64 [ %i.bdf, %bb.jw ], [ %.pn28.i.i.i.i.i.i1586.prol, %.prol.preheader9928 ]
  %i.bcv = icmp ult i64 %.sroa.5.059.i.i.i.i.i1575, 7
  br i1 %i.bcv, label %.noexc770, label %.new9930

.new9930:                                         ; preds = %.prol.loopexit9929, %.new9930
  %.pn30.in.i.i.i.i.i.i1584 = phi ptr [ %i.bde, %.new9930 ], [ %.pn30.in.i.i.i.i.i.i1584.unr, %.prol.loopexit9929 ]
  %.pn28.in.i.i.i.i.i.i1585 = phi i64 [ %.pn28.i.i.i.i.i.i1586.7, %.new9930 ], [ %.pn28.in.i.i.i.i.i.i1585.unr, %.prol.loopexit9929 ]
  %.pn30.i.i.i.i.i.i1587 = load ptr, ptr %.pn30.in.i.i.i.i.i.i1584, align 8, !noalias !8808, !nonnull !17, !noundef !17
  %i.bcw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1587, i64 24
  %.pn30.i.i.i.i.i.i1587.1 = load ptr, ptr %i.bcw, align 8, !noalias !8808, !nonnull !17, !noundef !17
  %i.bcx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1587.1, i64 24
  %.pn30.i.i.i.i.i.i1587.2 = load ptr, ptr %i.bcx, align 8, !noalias !8808, !nonnull !17, !noundef !17
  %i.bcy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1587.2, i64 24
  %.pn30.i.i.i.i.i.i1587.3 = load ptr, ptr %i.bcy, align 8, !noalias !8808, !nonnull !17, !noundef !17
  %i.bcz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1587.3, i64 24
  %.pn30.i.i.i.i.i.i1587.4 = load ptr, ptr %i.bcz, align 8, !noalias !8808, !nonnull !17, !noundef !17
  %i.bda = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1587.4, i64 24
  %.pn30.i.i.i.i.i.i1587.5 = load ptr, ptr %i.bda, align 8, !noalias !8808, !nonnull !17, !noundef !17
  %i.bdb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1587.5, i64 24
  %.pn30.i.i.i.i.i.i1587.6 = load ptr, ptr %i.bdb, align 8, !noalias !8808, !nonnull !17, !noundef !17
  %i.bdc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1587.6, i64 24
  %.pn28.i.i.i.i.i.i1586.7 = add i64 %.pn28.in.i.i.i.i.i.i1585, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i1587.7 = load ptr, ptr %i.bdc, align 8, !noalias !8808, !nonnull !17, !noundef !17 ; 2 uses
  %i.bdd = icmp eq i64 %.pn28.i.i.i.i.i.i1586.7, 0
  %i.bde = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1587.7, i64 24
  br i1 %i.bdd, label %.noexc770, label %.new9930

bb.jx:                                            ; preds = %.lr.ph.i.i.i.i.i1573
  %i.bdf = add i64 %.sroa.5.059.i.i.i.i.i1575, 1  ; 5 uses
  %i.bdg = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i.i1574, i64 8
  %i.bdh = load i16, ptr %i.bdg, align 8, !noalias !8807 ; 3 uses
  %.not.i.i.i.i.i.i1577 = icmp eq i64 %.sroa.5.059.i.i.i.i.i1575, 0
  %..i.i.i.i.i.i1578 = select i1 %.not.i.i.i.i.i.i1577, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i1574, i64 noundef %..i.i.i.i.i.i1578, i64 noundef 8) #51, !noalias !8809
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bcn, i64 10
  %i.bdj = load i16, ptr %i.bdi, align 2, !noalias !8806, !noundef !17
  %i.bdk = icmp ult i16 %i.bdh, %i.bdj
  br i1 %i.bdk, label %._crit_edge.i.i.i.i.i1580, label %.lr.ph.i.i.i.i.i1573

bb.jy:                                            ; preds = %.lr.ph.i.i.i.i.i1573
  %.not.i54.i.i.i.i.i1594 = icmp eq i64 %.sroa.5.059.i.i.i.i.i1575, 0
  %..i55.i.i.i.i.i1595 = select i1 %.not.i54.i.i.i.i.i1594, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i1574, i64 noundef %..i55.i.i.i.i.i1595, i64 noundef 8) #51, !noalias !8809
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #54
          to label %.noexc.i.i.i1596 unwind label %bb.jz, !noalias !8810

.noexc.i.i.i1596:                                 ; preds = %bb.jy
  unreachable

bb.jz:                                            ; preds = %bb.jy
  %i.bdl = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.noexc770:                                        ; preds = %.prol.loopexit9929, %.new9930, %._crit_edge.i.i.i.i.i1580.thread, %._crit_edge.i.i.i.i.i1580
  %.sroa.114972.2 = phi ptr [ %i.bcn, %._crit_edge.i.i.i.i.i1580 ], [ %.sroa.114972.17087, %._crit_edge.i.i.i.i.i1580.thread ], [ %.pn30.i.i.i.i.i.i1587.lcssa.unr, %.prol.loopexit9929 ], [ %.pn30.i.i.i.i.i.i1587.7, %.new9930 ] ; 2 uses
  %.sroa.274976.2 = phi i64 [ %i.bcq, %._crit_edge.i.i.i.i.i1580 ], [ %i.bcm, %._crit_edge.i.i.i.i.i1580.thread ], [ 0, %.new9930 ], [ 0, %.prol.loopexit9929 ]
  %.sroa.404986.0 = add i64 %.sroa.404986.07089, -1 ; 2 uses
  %i.bdm = icmp eq i64 %.sroa.404986.0, 0
  br i1 %i.bdm, label %.loopexit.i.i1613, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1569"

"_ZN4core3ptr62drop_in_place$LT$console..utils..StyledObject$LT$usize$GT$$GT$17h10e4dff4493942ebE.exit771": ; preds = %"_ZN4core3ptr62drop_in_place$LT$console..utils..StyledObject$LT$usize$GT$$GT$17h10e4dff4493942ebE.exit750", %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1623", %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1693"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0.copyload) ]
  %.idx7118 = mul nuw nsw i64 %.sroa.19.0.copyload, 24
  %i.bdn = getelementptr inbounds nuw i8, ptr %.sroa.13.0.copyload, i64 %.idx7118
  %i.bdo = icmp eq i64 %.sroa.19.0.copyload, 0
  br i1 %i.bdo, label %"_ZN7similar4text6inline21InlineChange$LT$T$GT$15missing_newline17he6fc54d025be7b49E.exit.thread", label %.lr.ph7100.preheader

.lr.ph7100.preheader:                             ; preds = %"_ZN4core3ptr62drop_in_place$LT$console..utils..StyledObject$LT$usize$GT$$GT$17h10e4dff4493942ebE.exit771"
  %.sroa.0452.17097 = getelementptr inbounds nuw i8, ptr %.sroa.13.0.copyload, i64 24
  br label %.lr.ph7100

.lr.ph7100:                                       ; preds = %.lr.ph7100.preheader, %"_ZN4core3ptr86drop_in_place$LT$console..utils..StyledObject$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h313fc6ceec913453E.exit"
  %.sroa.0452.17099 = phi ptr [ %.sroa.0452.1, %"_ZN4core3ptr86drop_in_place$LT$console..utils..StyledObject$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h313fc6ceec913453E.exit" ], [ %.sroa.0452.17097, %.lr.ph7100.preheader ] ; 3 uses
  %.sroa.0452.07098 = phi ptr [ %.sroa.0452.17099, %"_ZN4core3ptr86drop_in_place$LT$console..utils..StyledObject$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h313fc6ceec913453E.exit" ], [ %.sroa.13.0.copyload, %.lr.ph7100.preheader ] ; 2 uses
  %i.bdp = getelementptr inbounds nuw i8, ptr %.sroa.0452.07098, i64 8
  %i.bdq = load ptr, ptr %i.bdp, align 8, !nonnull !17, !align !31, !noundef !17
  %i.bdr = getelementptr inbounds nuw i8, ptr %.sroa.0452.07098, i64 16
  %i.bds = load i64, ptr %i.bdr, align 8, !noundef !17
  invoke fastcc void @_ZN5insta6output16render_invisible17hdca59b7d9af24b28E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cs, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bdq, i64 noundef %i.bds, i1 noundef zeroext %.sroa.0.0.i)
          to label %.noexc785.thread unwind label %.loopexit6038

.loopexit6037:                                    ; preds = %bb.oi, %bb.mc, %"_ZN4core3ptr86drop_in_place$LT$console..utils..StyledObject$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h313fc6ceec913453E.exit"
  %.sroa.03.3 = phi i1 [ true, %bb.mc ], [ %.sroa.03.2, %"_ZN4core3ptr86drop_in_place$LT$console..utils..StyledObject$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h313fc6ceec913453E.exit" ], [ true, %bb.oi ] ; 3 uses
  %.not.i772 = icmp eq i64 %.sroa.19.0.copyload, 0
  %i.bdt = getelementptr [24 x i8], ptr %.sroa.13.0.copyload, i64 %.sroa.19.0.copyload ; 3 uses
  %i.bdu = getelementptr i8, ptr %i.bdt, i64 -24
  %.not.i1.i = icmp eq ptr %i.bdu, null
  %.not.i.i773 = select i1 %.not.i772, i1 true, i1 %.not.i1.i
  br i1 %.not.i.i773, label %"_ZN7similar4text6inline21InlineChange$LT$T$GT$15missing_newline17he6fc54d025be7b49E.exit.thread", label %bb.ka

bb.ka:                                            ; preds = %.loopexit6037
  %i.bdv = getelementptr i8, ptr %i.bdt, i64 -16
  %.val.i.i = load ptr, ptr %i.bdv, align 8, !alias.scope !8811, !nonnull !17, !align !31, !noundef !17
  %i.bdw = getelementptr i8, ptr %i.bdt, i64 -8
  %.val5.i.i = load i64, ptr %i.bdw, align 8, !alias.scope !8811, !noundef !17
  %i.bdx = invoke noundef zeroext i1 @"_ZN63_$LT$str$u20$as$u20$similar..text..abstraction..DiffableStr$GT$17ends_with_newline17h2faf1f04b76a7f49E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i, i64 noundef %.val5.i.i)
          to label %"_ZN7similar4text6inline21InlineChange$LT$T$GT$15missing_newline17he6fc54d025be7b49E.exit" unwind label %.loopexit.split-lp6039.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc785.thread:                                 ; preds = %.lr.ph7100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  %.sroa.04471.0.copyload4472 = load i64, ptr %i.cs, align 8, !alias.scope !8812, !noalias !8813 ; 3 uses
  %.sroa.54473.0.copyload4475 = load ptr, ptr %.sroa.54473.0..sroa_idx4474, align 8, !alias.scope !8812, !noalias !8813 ; 3 uses
  %.sroa.64476.0.copyload4478 = load i64, ptr %.sroa.64476.0..sroa_idx4477, align 8, !alias.scope !8812, !noalias !8813
  call void @llvm.experimental.noalias.scope.decl(metadata !8814)
  call void @llvm.experimental.noalias.scope.decl(metadata !8815)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !8816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !8816
  store ptr null, ptr %i.k, align 8, !noalias !8814
  store i64 0, ptr %.sroa.94484.24..sroa_idx, align 8, !noalias !8814
  store i8 9, ptr %.sroa.104487.24..sroa_idx, align 8, !noalias !8814
  store i8 9, ptr %.sroa.114493.24..sroa_idx, align 2, !noalias !8814
  store <4 x i8> <i8 2, i8 0, i8 0, i8 0>, ptr %.sroa.124499.24..sroa_idx, align 4, !noalias !8814
  invoke fastcc void @_ZN7console5utils5Style4attr17hbad207136d17f2d6E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.l, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.k, i8 noundef 1)
          to label %bb.kd unwind label %bb.kb, !noalias !8816

bb.kb:                                            ; preds = %.noexc785.thread
  %i.bdy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %switch.i788 = icmp sgt i64 %.sroa.04471.0.copyload4472, 0
  br i1 %switch.i788, label %bb.kc, label %.body790

bb.kc:                                            ; preds = %bb.kb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.54473.0.copyload4475) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.54473.0.copyload4475, i64 noundef %.sroa.04471.0.copyload4472, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !8817
  br label %.body790

bb.kd:                                            ; preds = %.noexc785.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !8816
  %.sroa.64479.24.copyload4480 = load ptr, ptr %i.l, align 8, !noalias !8814
  %i.bdz = load <8 x i8>, ptr %.sroa.104487.24..sroa_idx4488, align 8, !noalias !8814
  %i.bea = load <2 x i64>, ptr %.sroa.94481.24..sroa_idx4482, align 8, !noalias !8814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !8816
  store i64 %.sroa.04471.0.copyload4472, ptr %i.cp, align 8, !alias.scope !8816
  store ptr %.sroa.54473.0.copyload4475, ptr %.sroa.54473.0..sroa_idx, align 8, !alias.scope !8816
  store i64 %.sroa.64476.0.copyload4478, ptr %.sroa.64476.0..sroa_idx, align 8, !alias.scope !8816
  store ptr %.sroa.64479.24.copyload4480, ptr %.sroa.64479.0..sroa_idx, align 8, !alias.scope !8816
  store <2 x i64> %i.bea, ptr %.sroa.94481.0..sroa_idx, align 8, !alias.scope !8816
  store <8 x i8> %i.bdz, ptr %.sroa.104487.0..sroa_idx, align 8, !alias.scope !8816
  store ptr %i.cp, ptr %i.cq, align 8
  store ptr @"_ZN76_$LT$console..utils..StyledObject$LT$D$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h8ba3abe9e05663c5E", ptr %.sroa.4403.0..sroa_idx, align 8
  store ptr @305, ptr %i.cr, align 8
  store i64 1, ptr %i.acq, align 8
  store ptr null, ptr %i.acr, align 8
  store ptr %i.cq, ptr %i.acs, align 8
  store i64 1, ptr %i.act, align 8
  invoke void @_ZN3std2io5stdio6_print17h361a6d98ea723aceE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.cr)
          to label %bb.kf unwind label %bb.ke

bb.ke:                                            ; preds = %bb.kd
end_hunk_0
begin_hunk_1_@_ZN5insta6output15SnapshotPrinter15print_changeset17h296982a1490293ddE:bb.a
  %.not.i.i.i.i.i1972 = icmp eq ptr %i.bfd, null
  br i1 %.not.i.i.i.i.i1972, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1973.loopexit", label %.lr.ph.i3.i.i1967

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1973.loopexit": ; preds = %.lr.ph.i3.i.i1967
  %i.bfe = icmp eq i64 %i.bfc, 0
  %i.bff = select i1 %i.bfe, i64 24, i64 120
  br label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1973"

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1973": ; preds = %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1973.loopexit", %.loopexit.i.i1963
  %.sroa.5.0.lcssa.i.i.i1974 = phi i64 [ 24, %.loopexit.i.i1963 ], [ %i.bff, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1973.loopexit" ]
  %.sroa.0.0.lcssa.i.i.i1975 = phi ptr [ %.sroa.0.0.ph.i.i1965, %.loopexit.i.i1963 ], [ %i.bfb, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1973.loopexit" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i.i1975, i64 noundef %.sroa.5.0.lcssa.i.i.i1974, i64 noundef 8) #51, !noalias !8822
  br label %.loopexit7.i

bb.kh:                                            ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i804"
  br i1 %i.bed, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1919", label %.lr.ph.i.i2.i1948.preheader

.lr.ph.i.i2.i1948.preheader:                      ; preds = %bb.kh
  %xtraiter9939 = and i64 %.sroa.4.0.copyload.i.i.i.i.i797, 7 ; 2 uses
  %lcmp.mod9940.not = icmp eq i64 %xtraiter9939, 0
  br i1 %lcmp.mod9940.not, label %.lr.ph.i.i2.i1948.prol.loopexit, label %.lr.ph.i.i2.i1948.prol

.lr.ph.i.i2.i1948.prol:                           ; preds = %.lr.ph.i.i2.i1948.preheader, %.lr.ph.i.i2.i1948.prol
  %.sroa.012.015.i.i.i1949.prol = phi ptr [ %.sroa.012.0.i.i.i1951.prol, %.lr.ph.i.i2.i1948.prol ], [ %.sroa.0.0.copyload.i.i.i.i.i792, %.lr.ph.i.i2.i1948.preheader ]
  %.sroa.011.014.i.i.i1950.prol = phi i64 [ %i.bfh, %.lr.ph.i.i2.i1948.prol ], [ %.sroa.4.0.copyload.i.i.i.i.i797, %.lr.ph.i.i2.i1948.preheader ]
  %prol.iter9941 = phi i64 [ %prol.iter9941.next, %.lr.ph.i.i2.i1948.prol ], [ 0, %.lr.ph.i.i2.i1948.preheader ]
  %i.bfg = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i1949.prol, i64 24
  %i.bfh = add i64 %.sroa.011.014.i.i.i1950.prol, -1 ; 2 uses
  %.sroa.012.0.i.i.i1951.prol = load ptr, ptr %i.bfg, align 8, !noalias !8823, !nonnull !17, !noundef !17 ; 3 uses
  %prol.iter9941.next = add i64 %prol.iter9941, 1 ; 2 uses
  %prol.iter9941.cmp.not = icmp eq i64 %prol.iter9941.next, %xtraiter9939
  br i1 %prol.iter9941.cmp.not, label %.lr.ph.i.i2.i1948.prol.loopexit, label %.lr.ph.i.i2.i1948.prol, !llvm.loop !7798

.lr.ph.i.i2.i1948.prol.loopexit:                  ; preds = %.lr.ph.i.i2.i1948.prol, %.lr.ph.i.i2.i1948.preheader
  %.sroa.012.0.i.i.i1951.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.i1948.preheader ], [ %.sroa.012.0.i.i.i1951.prol, %.lr.ph.i.i2.i1948.prol ]
  %.sroa.012.015.i.i.i1949.unr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i792, %.lr.ph.i.i2.i1948.preheader ], [ %.sroa.012.0.i.i.i1951.prol, %.lr.ph.i.i2.i1948.prol ]
  %.sroa.011.014.i.i.i1950.unr = phi i64 [ %.sroa.4.0.copyload.i.i.i.i.i797, %.lr.ph.i.i2.i1948.preheader ], [ %i.bfh, %.lr.ph.i.i2.i1948.prol ]
  %i.bfi = icmp ult i64 %.sroa.4.0.copyload.i.i.i.i.i797, 8
  br i1 %i.bfi, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1919", label %.lr.ph.i.i2.i1948

.lr.ph.i.i2.i1948:                                ; preds = %.lr.ph.i.i2.i1948.prol.loopexit, %.lr.ph.i.i2.i1948
  %.sroa.012.015.i.i.i1949 = phi ptr [ %.sroa.012.0.i.i.i1951.7, %.lr.ph.i.i2.i1948 ], [ %.sroa.012.015.i.i.i1949.unr, %.lr.ph.i.i2.i1948.prol.loopexit ]
  %.sroa.011.014.i.i.i1950 = phi i64 [ %i.bfr, %.lr.ph.i.i2.i1948 ], [ %.sroa.011.014.i.i.i1950.unr, %.lr.ph.i.i2.i1948.prol.loopexit ]
  %i.bfj = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i1949, i64 24
  %.sroa.012.0.i.i.i1951 = load ptr, ptr %i.bfj, align 8, !noalias !8823, !nonnull !17, !noundef !17
  %i.bfk = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i1951, i64 24
  %.sroa.012.0.i.i.i1951.1 = load ptr, ptr %i.bfk, align 8, !noalias !8823, !nonnull !17, !noundef !17
  %i.bfl = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i1951.1, i64 24
  %.sroa.012.0.i.i.i1951.2 = load ptr, ptr %i.bfl, align 8, !noalias !8823, !nonnull !17, !noundef !17
  %i.bfm = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i1951.2, i64 24
  %.sroa.012.0.i.i.i1951.3 = load ptr, ptr %i.bfm, align 8, !noalias !8823, !nonnull !17, !noundef !17
  %i.bfn = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i1951.3, i64 24
  %.sroa.012.0.i.i.i1951.4 = load ptr, ptr %i.bfn, align 8, !noalias !8823, !nonnull !17, !noundef !17
  %i.bfo = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i1951.4, i64 24
  %.sroa.012.0.i.i.i1951.5 = load ptr, ptr %i.bfo, align 8, !noalias !8823, !nonnull !17, !noundef !17
  %i.bfp = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i1951.5, i64 24
  %.sroa.012.0.i.i.i1951.6 = load ptr, ptr %i.bfp, align 8, !noalias !8823, !nonnull !17, !noundef !17
  %i.bfq = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i1951.6, i64 24
  %i.bfr = add i64 %.sroa.011.014.i.i.i1950, -8   ; 2 uses
  %.sroa.012.0.i.i.i1951.7 = load ptr, ptr %i.bfq, align 8, !noalias !8823, !nonnull !17, !noundef !17 ; 2 uses
  %i.bfs = icmp eq i64 %i.bfr, 0
  br i1 %i.bfs, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1919", label %.lr.ph.i.i2.i1948

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1919": ; preds = %.lr.ph.i.i2.i1948.prol.loopexit, %.lr.ph.i.i2.i1948, %bb.kh
  %.sroa.012.0.lcssa.i.i.i1953 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i792, %bb.kh ], [ %.sroa.012.0.i.i.i1951.lcssa.unr, %.lr.ph.i.i2.i1948.prol.loopexit ], [ %.sroa.012.0.i.i.i1951.7, %.lr.ph.i.i2.i1948 ] ; 3 uses
  %i.bft = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i1953, i64 10
  %i.bfu = load i16, ptr %i.bft, align 2, !noalias !8824, !noundef !17
  %.not6017 = icmp eq i16 %i.bfu, 0
  br i1 %.not6017, label %.lr.ph.i.i.i.i.i1923, label %.noexc.i810

.lr.ph.i.i.i.i.i1923:                             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1919", %bb.kj
  %.sroa.0.060.i.i.i.i.i1924 = phi ptr [ %i.bfv, %bb.kj ], [ %.sroa.012.0.lcssa.i.i.i1953, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1919" ] ; 4 uses
  %.sroa.5.059.i.i.i.i.i1925 = phi i64 [ %i.bgn, %bb.kj ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1919" ] ; 4 uses
  %i.bfv = load ptr, ptr %.sroa.0.060.i.i.i.i.i1924, align 8, !noalias !8825, !noundef !17 ; 5 uses
  %.not.i.i.i.i.i.i.i1926 = icmp eq ptr %i.bfv, null
  br i1 %.not.i.i.i.i.i.i.i1926, label %bb.kk, label %bb.kj

._crit_edge.i.i.i.i.i1930:                        ; preds = %bb.kj
  %i.bfw = zext i16 %i.bgp to i64
  %i.bfx = icmp eq i64 %i.bgn, 0
  %i.bfy = add nuw nsw i64 %i.bfw, 1              ; 2 uses
  br i1 %i.bfx, label %.noexc.i810, label %bb.ki

bb.ki:                                            ; preds = %._crit_edge.i.i.i.i.i1930
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.bfv, i64 24
  %i.bga = icmp ult i16 %i.bgp, 11
  call void @llvm.assume(i1 %i.bga), !noalias !8818
  %i.bgb = getelementptr inbounds nuw [8 x i8], ptr %i.bfz, i64 %i.bfy ; 2 uses
  %xtraiter9947 = and i64 %i.bgn, 7               ; 2 uses
  %lcmp.mod9948.not = icmp eq i64 %xtraiter9947, 0
  br i1 %lcmp.mod9948.not, label %.prol.loopexit9943, label %.prol.preheader9942

.prol.preheader9942:                              ; preds = %bb.ki, %.prol.preheader9942
  %.pn30.in.i.i.i.i.i.i1934.prol = phi ptr [ %i.bgc, %.prol.preheader9942 ], [ %i.bgb, %bb.ki ]
  %.pn28.in.i.i.i.i.i.i1935.prol = phi i64 [ %.pn28.i.i.i.i.i.i1936.prol, %.prol.preheader9942 ], [ %i.bgn, %bb.ki ]
  %prol.iter9949 = phi i64 [ %prol.iter9949.next, %.prol.preheader9942 ], [ 0, %bb.ki ]
  %.pn28.i.i.i.i.i.i1936.prol = add i64 %.pn28.in.i.i.i.i.i.i1935.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i1937.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i1934.prol, align 8, !noalias !8826, !nonnull !17, !noundef !17 ; 2 uses
  %i.bgc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1937.prol, i64 24 ; 2 uses
  %prol.iter9949.next = add i64 %prol.iter9949, 1 ; 2 uses
  %prol.iter9949.cmp.not = icmp eq i64 %prol.iter9949.next, %xtraiter9947
  br i1 %prol.iter9949.cmp.not, label %.prol.loopexit9943, label %.prol.preheader9942, !llvm.loop !7815

.prol.loopexit9943:                               ; preds = %.prol.preheader9942, %bb.ki
  %.pn30.i.i.i.i.i.i1937.lcssa.unr = phi ptr [ poison, %bb.ki ], [ %.pn30.i.i.i.i.i.i1937.prol, %.prol.preheader9942 ]
  %.pn30.in.i.i.i.i.i.i1934.unr = phi ptr [ %i.bgb, %bb.ki ], [ %i.bgc, %.prol.preheader9942 ]
  %.pn28.in.i.i.i.i.i.i1935.unr = phi i64 [ %i.bgn, %bb.ki ], [ %.pn28.i.i.i.i.i.i1936.prol, %.prol.preheader9942 ]
  %i.bgd = icmp ult i64 %.sroa.5.059.i.i.i.i.i1925, 7
  br i1 %i.bgd, label %.noexc.i810, label %.new9944

.new9944:                                         ; preds = %.prol.loopexit9943, %.new9944
  %.pn30.in.i.i.i.i.i.i1934 = phi ptr [ %i.bgm, %.new9944 ], [ %.pn30.in.i.i.i.i.i.i1934.unr, %.prol.loopexit9943 ]
  %.pn28.in.i.i.i.i.i.i1935 = phi i64 [ %.pn28.i.i.i.i.i.i1936.7, %.new9944 ], [ %.pn28.in.i.i.i.i.i.i1935.unr, %.prol.loopexit9943 ]
  %.pn30.i.i.i.i.i.i1937 = load ptr, ptr %.pn30.in.i.i.i.i.i.i1934, align 8, !noalias !8826, !nonnull !17, !noundef !17
  %i.bge = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1937, i64 24
  %.pn30.i.i.i.i.i.i1937.1 = load ptr, ptr %i.bge, align 8, !noalias !8826, !nonnull !17, !noundef !17
  %i.bgf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1937.1, i64 24
  %.pn30.i.i.i.i.i.i1937.2 = load ptr, ptr %i.bgf, align 8, !noalias !8826, !nonnull !17, !noundef !17
  %i.bgg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1937.2, i64 24
  %.pn30.i.i.i.i.i.i1937.3 = load ptr, ptr %i.bgg, align 8, !noalias !8826, !nonnull !17, !noundef !17
  %i.bgh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1937.3, i64 24
  %.pn30.i.i.i.i.i.i1937.4 = load ptr, ptr %i.bgh, align 8, !noalias !8826, !nonnull !17, !noundef !17
  %i.bgi = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1937.4, i64 24
  %.pn30.i.i.i.i.i.i1937.5 = load ptr, ptr %i.bgi, align 8, !noalias !8826, !nonnull !17, !noundef !17
  %i.bgj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1937.5, i64 24
  %.pn30.i.i.i.i.i.i1937.6 = load ptr, ptr %i.bgj, align 8, !noalias !8826, !nonnull !17, !noundef !17
  %i.bgk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1937.6, i64 24
  %.pn28.i.i.i.i.i.i1936.7 = add i64 %.pn28.in.i.i.i.i.i.i1935, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i1937.7 = load ptr, ptr %i.bgk, align 8, !noalias !8826, !nonnull !17, !noundef !17 ; 2 uses
  %i.bgl = icmp eq i64 %.pn28.i.i.i.i.i.i1936.7, 0
  %i.bgm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1937.7, i64 24
  br i1 %i.bgl, label %.noexc.i810, label %.new9944

bb.kj:                                            ; preds = %.lr.ph.i.i.i.i.i1923
  %i.bgn = add i64 %.sroa.5.059.i.i.i.i.i1925, 1  ; 5 uses
  %i.bgo = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i.i1924, i64 8
  %i.bgp = load i16, ptr %i.bgo, align 8, !noalias !8825 ; 3 uses
  %.not.i.i.i.i.i.i1927 = icmp eq i64 %.sroa.5.059.i.i.i.i.i1925, 0
  %..i.i.i.i.i.i1928 = select i1 %.not.i.i.i.i.i.i1927, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i1924, i64 noundef %..i.i.i.i.i.i1928, i64 noundef 8) #51, !noalias !8827
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bfv, i64 10
  %i.bgr = load i16, ptr %i.bgq, align 2, !noalias !8824, !noundef !17
  %i.bgs = icmp ult i16 %i.bgp, %i.bgr
  br i1 %i.bgs, label %._crit_edge.i.i.i.i.i1930, label %.lr.ph.i.i.i.i.i1923

bb.kk:                                            ; preds = %.lr.ph.i.i.i.i.i1923
  %.not.i54.i.i.i.i.i1944 = icmp eq i64 %.sroa.5.059.i.i.i.i.i1925, 0
  %..i55.i.i.i.i.i1945 = select i1 %.not.i54.i.i.i.i.i1944, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i1924, i64 noundef %..i55.i.i.i.i.i1945, i64 noundef 8) #51, !noalias !8827
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #54
          to label %.noexc.i.i.i1946 unwind label %bb.kl, !noalias !8828

.noexc.i.i.i1946:                                 ; preds = %bb.kk
  unreachable

bb.kl:                                            ; preds = %bb.kk
  %i.bgt = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !8818
  unreachable

.noexc.i810:                                      ; preds = %.prol.loopexit9943, %.new9944, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1919", %._crit_edge.i.i.i.i.i1930
  %.sroa.115018.3 = phi ptr [ %.sroa.012.0.lcssa.i.i.i1953, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1919" ], [ %i.bfv, %._crit_edge.i.i.i.i.i1930 ], [ %.pn30.i.i.i.i.i.i1937.lcssa.unr, %.prol.loopexit9943 ], [ %.pn30.i.i.i.i.i.i1937.7, %.new9944 ] ; 2 uses
  %.sroa.275022.3 = phi i64 [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1919" ], [ %i.bfy, %._crit_edge.i.i.i.i.i1930 ], [ 0, %.new9944 ], [ 0, %.prol.loopexit9943 ]
  %.sroa.405032.07091 = add i64 %.sroa.5.0.copyload.i.i.i.i.i795, -1 ; 2 uses
  %i.bgu = icmp eq i64 %.sroa.405032.07091, 0
  br i1 %i.bgu, label %.loopexit.i.i1893, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1849"

.loopexit.i.i1893:                                ; preds = %.noexc4.i, %.noexc.i810
  %.sroa.115018.1.lcssa = phi ptr [ %.sroa.115018.3, %.noexc.i810 ], [ %.sroa.115018.2, %.noexc4.i ] ; 3 uses
  %i.bgv = load ptr, ptr %.sroa.115018.1.lcssa, align 8, !noalias !8829, !noundef !17 ; 2 uses
  %.not.i.i4.i.i.i1896 = icmp eq ptr %i.bgv, null
  br i1 %.not.i.i4.i.i.i1896, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1903", label %.lr.ph.i3.i.i1897

.lr.ph.i3.i.i1897:                                ; preds = %.loopexit.i.i1893, %.lr.ph.i3.i.i1897
  %i.bgw = phi ptr [ %i.bgy, %.lr.ph.i3.i.i1897 ], [ %i.bgv, %.loopexit.i.i1893 ] ; 3 uses
  %.sroa.0.06.i.i.i1898 = phi ptr [ %i.bgw, %.lr.ph.i3.i.i1897 ], [ %.sroa.115018.1.lcssa, %.loopexit.i.i1893 ]
  %.sroa.5.05.i.i.i1899 = phi i64 [ %i.bgx, %.lr.ph.i3.i.i1897 ], [ 0, %.loopexit.i.i1893 ] ; 2 uses
  %i.bgx = add i64 %.sroa.5.05.i.i.i1899, 1       ; 2 uses
  %.not.i.i.i.i1900 = icmp eq i64 %.sroa.5.05.i.i.i1899, 0
  %..i.i.i.i1901 = select i1 %.not.i.i.i.i1900, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i.i1898, i64 noundef %..i.i.i.i1901, i64 noundef 8) #51, !noalias !8830
  %i.bgy = load ptr, ptr %i.bgw, align 8, !noalias !8829, !noundef !17 ; 2 uses
  %.not.i.i.i.i.i1902 = icmp eq ptr %i.bgy, null
  br i1 %.not.i.i.i.i.i1902, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1903.loopexit", label %.lr.ph.i3.i.i1897

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1903.loopexit": ; preds = %.lr.ph.i3.i.i1897
  %i.bgz = icmp eq i64 %i.bgx, 0
  %i.bha = select i1 %i.bgz, i64 24, i64 120
  br label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1903"

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1903": ; preds = %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1903.loopexit", %.loopexit.i.i1893
  %.sroa.5.0.lcssa.i.i.i1904 = phi i64 [ 24, %.loopexit.i.i1893 ], [ %i.bha, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1903.loopexit" ]
  %.sroa.0.0.lcssa.i.i.i1905 = phi ptr [ %.sroa.115018.1.lcssa, %.loopexit.i.i1893 ], [ %i.bgw, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1903.loopexit" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i.i1905, i64 noundef %.sroa.5.0.lcssa.i.i.i1904, i64 noundef 8) #51, !noalias !8830
  br label %.loopexit7.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1849": ; preds = %.noexc.i810, %.noexc4.i
  %.sroa.405032.07094 = phi i64 [ %.sroa.405032.0, %.noexc4.i ], [ %.sroa.405032.07091, %.noexc.i810 ]
  %.sroa.275022.17093 = phi i64 [ %.sroa.275022.2, %.noexc4.i ], [ %.sroa.275022.3, %.noexc.i810 ] ; 2 uses
  %.sroa.115018.17092 = phi ptr [ %.sroa.115018.2, %.noexc4.i ], [ %.sroa.115018.3, %.noexc.i810 ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.115018.17092) ]
  %i.bhb = getelementptr inbounds nuw i8, ptr %.sroa.115018.17092, i64 10
  %i.bhc = load i16, ptr %i.bhb, align 2, !noalias !8831, !noundef !17
  %i.bhd = zext i16 %i.bhc to i64
  %i.bhe = icmp ult i64 %.sroa.275022.17093, %i.bhd
  br i1 %i.bhe, label %._crit_edge.i.i.i.i.i1860.thread, label %.lr.ph.i.i.i.i.i1853

._crit_edge.i.i.i.i.i1860.thread:                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1849"
  %i.bhf = add nuw nsw i64 %.sroa.275022.17093, 1
  br label %.noexc4.i

.lr.ph.i.i.i.i.i1853:                             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1849", %bb.kn
  %.sroa.0.060.i.i.i.i.i1854 = phi ptr [ %i.bhg, %bb.kn ], [ %.sroa.115018.17092, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1849" ] ; 4 uses
  %.sroa.5.059.i.i.i.i.i1855 = phi i64 [ %i.bhy, %bb.kn ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1849" ] ; 4 uses
  %i.bhg = load ptr, ptr %.sroa.0.060.i.i.i.i.i1854, align 8, !noalias !8832, !noundef !17 ; 5 uses
  %.not.i.i.i.i.i.i.i1856 = icmp eq ptr %i.bhg, null
  br i1 %.not.i.i.i.i.i.i.i1856, label %bb.ko, label %bb.kn

._crit_edge.i.i.i.i.i1860:                        ; preds = %bb.kn
  %i.bhh = zext i16 %i.bia to i64
  %i.bhi = icmp eq i64 %i.bhy, 0
  %i.bhj = add nuw nsw i64 %i.bhh, 1              ; 2 uses
  br i1 %i.bhi, label %.noexc4.i, label %bb.km

bb.km:                                            ; preds = %._crit_edge.i.i.i.i.i1860
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.bhg, i64 24
  %i.bhl = icmp ult i16 %i.bia, 11
  call void @llvm.assume(i1 %i.bhl), !noalias !8818
  %i.bhm = getelementptr inbounds nuw [8 x i8], ptr %i.bhk, i64 %i.bhj ; 2 uses
  %xtraiter9955 = and i64 %i.bhy, 7               ; 2 uses
  %lcmp.mod9956.not = icmp eq i64 %xtraiter9955, 0
  br i1 %lcmp.mod9956.not, label %.prol.loopexit9951, label %.prol.preheader9950

.prol.preheader9950:                              ; preds = %bb.km, %.prol.preheader9950
  %.pn30.in.i.i.i.i.i.i1864.prol = phi ptr [ %i.bhn, %.prol.preheader9950 ], [ %i.bhm, %bb.km ]
  %.pn28.in.i.i.i.i.i.i1865.prol = phi i64 [ %.pn28.i.i.i.i.i.i1866.prol, %.prol.preheader9950 ], [ %i.bhy, %bb.km ]
  %prol.iter9957 = phi i64 [ %prol.iter9957.next, %.prol.preheader9950 ], [ 0, %bb.km ]
  %.pn28.i.i.i.i.i.i1866.prol = add i64 %.pn28.in.i.i.i.i.i.i1865.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i1867.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i1864.prol, align 8, !noalias !8833, !nonnull !17, !noundef !17 ; 2 uses
  %i.bhn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1867.prol, i64 24 ; 2 uses
  %prol.iter9957.next = add i64 %prol.iter9957, 1 ; 2 uses
  %prol.iter9957.cmp.not = icmp eq i64 %prol.iter9957.next, %xtraiter9955
  br i1 %prol.iter9957.cmp.not, label %.prol.loopexit9951, label %.prol.preheader9950, !llvm.loop !7844

.prol.loopexit9951:                               ; preds = %.prol.preheader9950, %bb.km
  %.pn30.i.i.i.i.i.i1867.lcssa.unr = phi ptr [ poison, %bb.km ], [ %.pn30.i.i.i.i.i.i1867.prol, %.prol.preheader9950 ]
  %.pn30.in.i.i.i.i.i.i1864.unr = phi ptr [ %i.bhm, %bb.km ], [ %i.bhn, %.prol.preheader9950 ]
  %.pn28.in.i.i.i.i.i.i1865.unr = phi i64 [ %i.bhy, %bb.km ], [ %.pn28.i.i.i.i.i.i1866.prol, %.prol.preheader9950 ]
  %i.bho = icmp ult i64 %.sroa.5.059.i.i.i.i.i1855, 7
  br i1 %i.bho, label %.noexc4.i, label %.new9952

.new9952:                                         ; preds = %.prol.loopexit9951, %.new9952
  %.pn30.in.i.i.i.i.i.i1864 = phi ptr [ %i.bhx, %.new9952 ], [ %.pn30.in.i.i.i.i.i.i1864.unr, %.prol.loopexit9951 ]
  %.pn28.in.i.i.i.i.i.i1865 = phi i64 [ %.pn28.i.i.i.i.i.i1866.7, %.new9952 ], [ %.pn28.in.i.i.i.i.i.i1865.unr, %.prol.loopexit9951 ]
  %.pn30.i.i.i.i.i.i1867 = load ptr, ptr %.pn30.in.i.i.i.i.i.i1864, align 8, !noalias !8833, !nonnull !17, !noundef !17
  %i.bhp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1867, i64 24
  %.pn30.i.i.i.i.i.i1867.1 = load ptr, ptr %i.bhp, align 8, !noalias !8833, !nonnull !17, !noundef !17
  %i.bhq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1867.1, i64 24
  %.pn30.i.i.i.i.i.i1867.2 = load ptr, ptr %i.bhq, align 8, !noalias !8833, !nonnull !17, !noundef !17
  %i.bhr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1867.2, i64 24
  %.pn30.i.i.i.i.i.i1867.3 = load ptr, ptr %i.bhr, align 8, !noalias !8833, !nonnull !17, !noundef !17
  %i.bhs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1867.3, i64 24
  %.pn30.i.i.i.i.i.i1867.4 = load ptr, ptr %i.bhs, align 8, !noalias !8833, !nonnull !17, !noundef !17
  %i.bht = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1867.4, i64 24
  %.pn30.i.i.i.i.i.i1867.5 = load ptr, ptr %i.bht, align 8, !noalias !8833, !nonnull !17, !noundef !17
  %i.bhu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1867.5, i64 24
  %.pn30.i.i.i.i.i.i1867.6 = load ptr, ptr %i.bhu, align 8, !noalias !8833, !nonnull !17, !noundef !17
  %i.bhv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1867.6, i64 24
  %.pn28.i.i.i.i.i.i1866.7 = add i64 %.pn28.in.i.i.i.i.i.i1865, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i1867.7 = load ptr, ptr %i.bhv, align 8, !noalias !8833, !nonnull !17, !noundef !17 ; 2 uses
  %i.bhw = icmp eq i64 %.pn28.i.i.i.i.i.i1866.7, 0
  %i.bhx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i1867.7, i64 24
  br i1 %i.bhw, label %.noexc4.i, label %.new9952

bb.kn:                                            ; preds = %.lr.ph.i.i.i.i.i1853
  %i.bhy = add i64 %.sroa.5.059.i.i.i.i.i1855, 1  ; 5 uses
  %i.bhz = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i.i1854, i64 8
  %i.bia = load i16, ptr %i.bhz, align 8, !noalias !8832 ; 3 uses
  %.not.i.i.i.i.i.i1857 = icmp eq i64 %.sroa.5.059.i.i.i.i.i1855, 0
  %..i.i.i.i.i.i1858 = select i1 %.not.i.i.i.i.i.i1857, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i1854, i64 noundef %..i.i.i.i.i.i1858, i64 noundef 8) #51, !noalias !8834
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bhg, i64 10
  %i.bic = load i16, ptr %i.bib, align 2, !noalias !8831, !noundef !17
  %i.bid = icmp ult i16 %i.bia, %i.bic
  br i1 %i.bid, label %._crit_edge.i.i.i.i.i1860, label %.lr.ph.i.i.i.i.i1853

bb.ko:                                            ; preds = %.lr.ph.i.i.i.i.i1853
  %.not.i54.i.i.i.i.i1874 = icmp eq i64 %.sroa.5.059.i.i.i.i.i1855, 0
  %..i55.i.i.i.i.i1875 = select i1 %.not.i54.i.i.i.i.i1874, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i1854, i64 noundef %..i55.i.i.i.i.i1875, i64 noundef 8) #51, !noalias !8834
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #54
          to label %.noexc.i.i.i1876 unwind label %bb.kp, !noalias !8835

.noexc.i.i.i1876:                                 ; preds = %bb.ko
  unreachable

bb.kp:                                            ; preds = %bb.ko
  %i.bie = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !8818
  unreachable

.noexc4.i:                                        ; preds = %.prol.loopexit9951, %.new9952, %._crit_edge.i.i.i.i.i1860.thread, %._crit_edge.i.i.i.i.i1860
  %.sroa.115018.2 = phi ptr [ %i.bhg, %._crit_edge.i.i.i.i.i1860 ], [ %.sroa.115018.17092, %._crit_edge.i.i.i.i.i1860.thread ], [ %.pn30.i.i.i.i.i.i1867.lcssa.unr, %.prol.loopexit9951 ], [ %.pn30.i.i.i.i.i.i1867.7, %.new9952 ] ; 2 uses
  %.sroa.275022.2 = phi i64 [ %i.bhj, %._crit_edge.i.i.i.i.i1860 ], [ %i.bhf, %._crit_edge.i.i.i.i.i1860.thread ], [ 0, %.new9952 ], [ 0, %.prol.loopexit9951 ]
  %.sroa.405032.0 = add i64 %.sroa.405032.07094, -1 ; 2 uses
  %i.bif = icmp eq i64 %.sroa.405032.0, 0
  br i1 %i.bif, label %.loopexit.i.i1893, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i1849"

.loopexit7.i:                                     ; preds = %bb.kf, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1903", %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i1973"
  %.val.i814 = load i64, ptr %i.cp, align 8, !range !30, !alias.scope !8818, !noundef !17 ; 2 uses
  %switch6.i = icmp sgt i64 %.val.i814, 0
  br i1 %switch6.i, label %bb.kq, label %"_ZN4core3ptr86drop_in_place$LT$console..utils..StyledObject$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h313fc6ceec913453E.exit"

bb.kq:                                            ; preds = %.loopexit7.i
  %.val1.i815 = load ptr, ptr %.sroa.54473.0..sroa_idx, align 8, !alias.scope !8818, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i815, i64 noundef %.val.i814, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !8836
  br label %"_ZN4core3ptr86drop_in_place$LT$console..utils..StyledObject$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h313fc6ceec913453E.exit"

"_ZN4core3ptr86drop_in_place$LT$console..utils..StyledObject$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h313fc6ceec913453E.exit": ; preds = %bb.kq, %.loopexit7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  %i.big = icmp eq ptr %.sroa.0452.17099, %i.bdn  ; 2 uses
  %.sroa.0452.1.idx = select i1 %i.big, i64 0, i64 24
  %.sroa.0452.1 = getelementptr inbounds nuw i8, ptr %.sroa.0452.17099, i64 %.sroa.0452.1.idx
  br i1 %i.big, label %.loopexit6037, label %.lr.ph7100

.noexc829.thread:                                 ; preds = %bb.iv
  call void @llvm.experimental.noalias.scope.decl(metadata !8837)
  call void @llvm.experimental.noalias.scope.decl(metadata !8838)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !8839
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8839
  store ptr null, ptr %i.i, align 8, !noalias !8837
  store i64 0, ptr %.sroa.04359.sroa.8.8..sroa_idx, align 8, !noalias !8837
  store i8 6, ptr %.sroa.64361.8..sroa_idx, align 8, !noalias !8837
  store i8 9, ptr %.sroa.74364.sroa.5.0..sroa.74364.8..sroa_idx.sroa_idx, align 2, !noalias !8837
  store <4 x i8> <i8 2, i8 0, i8 0, i8 0>, ptr %.sroa.74364.sroa.7.0..sroa.74364.8..sroa_idx.sroa_idx, align 4, !noalias !8837
  invoke fastcc void @_ZN7console5utils5Style4attr17hbad207136d17f2d6E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.j, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.i, i8 noundef 1)
          to label %.noexc845.thread unwind label %.loopexit.split-lp6039.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc845.thread:                                 ; preds = %.noexc829.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8839
  %.sroa.04359.sroa.4.8.copyload4733 = load ptr, ptr %i.j, align 8, !noalias !8837
  %i.bih = load <8 x i8>, ptr %.sroa.64361.8..sroa_idx4362, align 8, !noalias !8837
  %i.bii = load <2 x i64>, ptr %.sroa.04359.sroa.7.8..sroa_idx4734, align 8, !noalias !8837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8839
  store i64 %.sroa.54273.0.copyload, ptr %i.dg, align 8, !alias.scope !8839
  store ptr %.sroa.04359.sroa.4.8.copyload4733, ptr %.sroa.04359.sroa.4.0..sroa_idx, align 8, !alias.scope !8839
  store <2 x i64> %i.bii, ptr %.sroa.04359.sroa.7.0..sroa_idx, align 8, !alias.scope !8839
  store <8 x i8> %i.bih, ptr %.sroa.64361.0..sroa_idx, align 8, !alias.scope !8839
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  store ptr @5, ptr %i.df, align 8
  store i64 1, ptr %.sroa.0270.sroa.4.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.0270.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.0270.sroa.9.0..sroa_idx, align 8
  store i8 1, ptr %.sroa.6272.0..sroa_idx273, align 8
  store i8 9, ptr %.sroa.10278.0..sroa_idx279, align 2
  store <4 x i8> <i8 2, i8 0, i8 0, i8 0>, ptr %.sroa.10278.sroa.7.0..sroa.10278.0..sroa_idx279.sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de)
  store ptr %i.dg, ptr %i.de, align 8
  store <2 x ptr> <ptr @"_ZN76_$LT$console..utils..StyledObject$LT$D$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17he234217d3283371fE", ptr @305>, ptr %.sroa.4283.0..sroa_idx, align 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7b792248e218ac2cE", ptr %.sroa.4287.0..sroa_idx, align 8
  store ptr %i.df, ptr %i.abv, align 8
  store ptr @"_ZN76_$LT$console..utils..StyledObject$LT$D$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hab29918bae2e7f3fE", ptr %.sroa.4291.0..sroa_idx, align 8
  store ptr @338, ptr %i.dh, align 8
  store i64 3, ptr %i.abw, align 8
  store ptr @327, ptr %i.abx, align 8
  store i64 3, ptr %i.aby, align 8
  store ptr %i.de, ptr %i.abz, align 8
  store i64 3, ptr %i.aca, align 8
  invoke void @_ZN3std2io5stdio6_print17h361a6d98ea723aceE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.dh)
          to label %bb.kt unwind label %bb.ks

bb.kr:                                            ; preds = %bb.ks
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$console..utils..StyledObject$LT$usize$GT$$GT$17h10e4dff4493942ebE"(ptr noalias noundef align 8 dereferenceable(40) %i.dg) #55
          to label %.body790 unwind label %.loopexit.split-lp6035.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ks:                                            ; preds = %.noexc845.thread
  %i.bij = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$console..utils..StyledObject$LT$$RF$str$GT$$GT$17h1e14615d2c6972d3E"(ptr noalias noundef align 8 dereferenceable(48) %i.df) #55
          to label %bb.kr unwind label %.loopexit.split-lp6035.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kt:                                            ; preds = %.noexc845.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  %.sroa.0.0.copyload.i.i.i.i.i848 = load ptr, ptr %.sroa.0270.sroa.5.0..sroa_idx, align 8, !alias.scope !8840 ; 7 uses
  %.not.i.i.i.i.i.i849 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i848, null
  br i1 %.not.i.i.i.i.i.i849, label %"_ZN4core3ptr64drop_in_place$LT$console..utils..StyledObject$LT$$RF$str$GT$$GT$17h1e14615d2c6972d3E.exit868", label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i860"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i860": ; preds = %bb.kt
  %.sroa.5.0.copyload.i.i.i.i.i851 = load i64, ptr %.sroa.0270.sroa.9.0..sroa_idx, align 8, !alias.scope !8840 ; 2 uses
  %.sroa.4.0.copyload.i.i.i.i.i853 = load i64, ptr %.sroa.0270.sroa.8.0..sroa_idx, align 8, !alias.scope !8840 ; 9 uses
  %i.bik = icmp eq i64 %.sroa.5.0.copyload.i.i.i.i.i851, 0
  %i.bil = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i853, 0 ; 2 uses
  br i1 %i.bik, label %bb.ku, label %bb.kv

bb.ku:                                            ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i860"
  br i1 %i.bil, label %.loopexit.i.i2383, label %.lr.ph.i.i.i2398.preheader

.lr.ph.i.i.i2398.preheader:                       ; preds = %bb.ku
end_hunk_1
begin_hunk_2_@_ZN5insta6output15SnapshotPrinter15print_changeset17h296982a1490293ddE:bb.a
  %.not.i.i.i.i.i2392 = icmp eq ptr %i.bjl, null
  br i1 %.not.i.i.i.i.i2392, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2393.loopexit", label %.lr.ph.i3.i.i2387

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2393.loopexit": ; preds = %.lr.ph.i3.i.i2387
  %i.bjm = icmp eq i64 %i.bjk, 0
  %i.bjn = select i1 %i.bjm, i64 24, i64 120
  br label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2393"

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2393": ; preds = %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2393.loopexit", %.loopexit.i.i2383
  %.sroa.5.0.lcssa.i.i.i2394 = phi i64 [ 24, %.loopexit.i.i2383 ], [ %i.bjn, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2393.loopexit" ]
  %.sroa.0.0.lcssa.i.i.i2395 = phi ptr [ %.sroa.0.0.ph.i.i2385, %.loopexit.i.i2383 ], [ %i.bjj, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2393.loopexit" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i.i2395, i64 noundef %.sroa.5.0.lcssa.i.i.i2394, i64 noundef 8) #51, !noalias !8843
  br label %"_ZN4core3ptr64drop_in_place$LT$console..utils..StyledObject$LT$$RF$str$GT$$GT$17h1e14615d2c6972d3E.exit868"

bb.kv:                                            ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i860"
  br i1 %i.bil, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2339", label %.lr.ph.i.i2.i2368.preheader

.lr.ph.i.i2.i2368.preheader:                      ; preds = %bb.kv
  %xtraiter9807 = and i64 %.sroa.4.0.copyload.i.i.i.i.i853, 7 ; 2 uses
  %lcmp.mod9808.not = icmp eq i64 %xtraiter9807, 0
  br i1 %lcmp.mod9808.not, label %.lr.ph.i.i2.i2368.prol.loopexit, label %.lr.ph.i.i2.i2368.prol

.lr.ph.i.i2.i2368.prol:                           ; preds = %.lr.ph.i.i2.i2368.preheader, %.lr.ph.i.i2.i2368.prol
  %.sroa.012.015.i.i.i2369.prol = phi ptr [ %.sroa.012.0.i.i.i2371.prol, %.lr.ph.i.i2.i2368.prol ], [ %.sroa.0.0.copyload.i.i.i.i.i848, %.lr.ph.i.i2.i2368.preheader ]
  %.sroa.011.014.i.i.i2370.prol = phi i64 [ %i.bjp, %.lr.ph.i.i2.i2368.prol ], [ %.sroa.4.0.copyload.i.i.i.i.i853, %.lr.ph.i.i2.i2368.preheader ]
  %prol.iter9809 = phi i64 [ %prol.iter9809.next, %.lr.ph.i.i2.i2368.prol ], [ 0, %.lr.ph.i.i2.i2368.preheader ]
  %i.bjo = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i2369.prol, i64 24
  %i.bjp = add i64 %.sroa.011.014.i.i.i2370.prol, -1 ; 2 uses
  %.sroa.012.0.i.i.i2371.prol = load ptr, ptr %i.bjo, align 8, !noalias !8844, !nonnull !17, !noundef !17 ; 3 uses
  %prol.iter9809.next = add i64 %prol.iter9809, 1 ; 2 uses
  %prol.iter9809.cmp.not = icmp eq i64 %prol.iter9809.next, %xtraiter9807
  br i1 %prol.iter9809.cmp.not, label %.lr.ph.i.i2.i2368.prol.loopexit, label %.lr.ph.i.i2.i2368.prol, !llvm.loop !7880

.lr.ph.i.i2.i2368.prol.loopexit:                  ; preds = %.lr.ph.i.i2.i2368.prol, %.lr.ph.i.i2.i2368.preheader
  %.sroa.012.0.i.i.i2371.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.i2368.preheader ], [ %.sroa.012.0.i.i.i2371.prol, %.lr.ph.i.i2.i2368.prol ]
  %.sroa.012.015.i.i.i2369.unr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i848, %.lr.ph.i.i2.i2368.preheader ], [ %.sroa.012.0.i.i.i2371.prol, %.lr.ph.i.i2.i2368.prol ]
  %.sroa.011.014.i.i.i2370.unr = phi i64 [ %.sroa.4.0.copyload.i.i.i.i.i853, %.lr.ph.i.i2.i2368.preheader ], [ %i.bjp, %.lr.ph.i.i2.i2368.prol ]
  %i.bjq = icmp ult i64 %.sroa.4.0.copyload.i.i.i.i.i853, 8
  br i1 %i.bjq, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2339", label %.lr.ph.i.i2.i2368

.lr.ph.i.i2.i2368:                                ; preds = %.lr.ph.i.i2.i2368.prol.loopexit, %.lr.ph.i.i2.i2368
  %.sroa.012.015.i.i.i2369 = phi ptr [ %.sroa.012.0.i.i.i2371.7, %.lr.ph.i.i2.i2368 ], [ %.sroa.012.015.i.i.i2369.unr, %.lr.ph.i.i2.i2368.prol.loopexit ]
  %.sroa.011.014.i.i.i2370 = phi i64 [ %i.bjz, %.lr.ph.i.i2.i2368 ], [ %.sroa.011.014.i.i.i2370.unr, %.lr.ph.i.i2.i2368.prol.loopexit ]
  %i.bjr = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i2369, i64 24
  %.sroa.012.0.i.i.i2371 = load ptr, ptr %i.bjr, align 8, !noalias !8844, !nonnull !17, !noundef !17
  %i.bjs = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i2371, i64 24
  %.sroa.012.0.i.i.i2371.1 = load ptr, ptr %i.bjs, align 8, !noalias !8844, !nonnull !17, !noundef !17
  %i.bjt = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i2371.1, i64 24
  %.sroa.012.0.i.i.i2371.2 = load ptr, ptr %i.bjt, align 8, !noalias !8844, !nonnull !17, !noundef !17
  %i.bju = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i2371.2, i64 24
  %.sroa.012.0.i.i.i2371.3 = load ptr, ptr %i.bju, align 8, !noalias !8844, !nonnull !17, !noundef !17
  %i.bjv = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i2371.3, i64 24
  %.sroa.012.0.i.i.i2371.4 = load ptr, ptr %i.bjv, align 8, !noalias !8844, !nonnull !17, !noundef !17
  %i.bjw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i2371.4, i64 24
  %.sroa.012.0.i.i.i2371.5 = load ptr, ptr %i.bjw, align 8, !noalias !8844, !nonnull !17, !noundef !17
  %i.bjx = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i2371.5, i64 24
  %.sroa.012.0.i.i.i2371.6 = load ptr, ptr %i.bjx, align 8, !noalias !8844, !nonnull !17, !noundef !17
  %i.bjy = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i2371.6, i64 24
  %i.bjz = add i64 %.sroa.011.014.i.i.i2370, -8   ; 2 uses
  %.sroa.012.0.i.i.i2371.7 = load ptr, ptr %i.bjy, align 8, !noalias !8844, !nonnull !17, !noundef !17 ; 2 uses
  %i.bka = icmp eq i64 %i.bjz, 0
  br i1 %i.bka, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2339", label %.lr.ph.i.i2.i2368

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2339": ; preds = %.lr.ph.i.i2.i2368.prol.loopexit, %.lr.ph.i.i2.i2368, %bb.kv
  %.sroa.012.0.lcssa.i.i.i2373 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i848, %bb.kv ], [ %.sroa.012.0.i.i.i2371.lcssa.unr, %.lr.ph.i.i2.i2368.prol.loopexit ], [ %.sroa.012.0.i.i.i2371.7, %.lr.ph.i.i2.i2368 ] ; 3 uses
  %i.bkb = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i2373, i64 10
  %i.bkc = load i16, ptr %i.bkb, align 2, !noalias !8845, !noundef !17
  %.not6009 = icmp eq i16 %i.bkc, 0
  br i1 %.not6009, label %.lr.ph.i.i.i.i.i2343, label %.noexc866

.lr.ph.i.i.i.i.i2343:                             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2339", %bb.kx
  %.sroa.0.060.i.i.i.i.i2344 = phi ptr [ %i.bkd, %bb.kx ], [ %.sroa.012.0.lcssa.i.i.i2373, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2339" ] ; 4 uses
  %.sroa.5.059.i.i.i.i.i2345 = phi i64 [ %i.bkv, %bb.kx ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2339" ] ; 4 uses
  %i.bkd = load ptr, ptr %.sroa.0.060.i.i.i.i.i2344, align 8, !noalias !8846, !noundef !17 ; 5 uses
  %.not.i.i.i.i.i.i.i2346 = icmp eq ptr %i.bkd, null
  br i1 %.not.i.i.i.i.i.i.i2346, label %bb.ky, label %bb.kx

._crit_edge.i.i.i.i.i2350:                        ; preds = %bb.kx
  %i.bke = zext i16 %i.bkx to i64
  %i.bkf = icmp eq i64 %i.bkv, 0
  %i.bkg = add nuw nsw i64 %i.bke, 1              ; 2 uses
  br i1 %i.bkf, label %.noexc866, label %bb.kw

bb.kw:                                            ; preds = %._crit_edge.i.i.i.i.i2350
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bkd, i64 24
  %i.bki = icmp ult i16 %i.bkx, 11
  call void @llvm.assume(i1 %i.bki)
  %i.bkj = getelementptr inbounds nuw [8 x i8], ptr %i.bkh, i64 %i.bkg ; 2 uses
  %xtraiter9815 = and i64 %i.bkv, 7               ; 2 uses
  %lcmp.mod9816.not = icmp eq i64 %xtraiter9815, 0
  br i1 %lcmp.mod9816.not, label %.prol.loopexit9811, label %.prol.preheader9810

.prol.preheader9810:                              ; preds = %bb.kw, %.prol.preheader9810
  %.pn30.in.i.i.i.i.i.i2354.prol = phi ptr [ %i.bkk, %.prol.preheader9810 ], [ %i.bkj, %bb.kw ]
  %.pn28.in.i.i.i.i.i.i2355.prol = phi i64 [ %.pn28.i.i.i.i.i.i2356.prol, %.prol.preheader9810 ], [ %i.bkv, %bb.kw ]
  %prol.iter9817 = phi i64 [ %prol.iter9817.next, %.prol.preheader9810 ], [ 0, %bb.kw ]
  %.pn28.i.i.i.i.i.i2356.prol = add i64 %.pn28.in.i.i.i.i.i.i2355.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i2357.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i2354.prol, align 8, !noalias !8847, !nonnull !17, !noundef !17 ; 2 uses
  %i.bkk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2357.prol, i64 24 ; 2 uses
  %prol.iter9817.next = add i64 %prol.iter9817, 1 ; 2 uses
  %prol.iter9817.cmp.not = icmp eq i64 %prol.iter9817.next, %xtraiter9815
  br i1 %prol.iter9817.cmp.not, label %.prol.loopexit9811, label %.prol.preheader9810, !llvm.loop !7897

.prol.loopexit9811:                               ; preds = %.prol.preheader9810, %bb.kw
  %.pn30.i.i.i.i.i.i2357.lcssa.unr = phi ptr [ poison, %bb.kw ], [ %.pn30.i.i.i.i.i.i2357.prol, %.prol.preheader9810 ]
  %.pn30.in.i.i.i.i.i.i2354.unr = phi ptr [ %i.bkj, %bb.kw ], [ %i.bkk, %.prol.preheader9810 ]
  %.pn28.in.i.i.i.i.i.i2355.unr = phi i64 [ %i.bkv, %bb.kw ], [ %.pn28.i.i.i.i.i.i2356.prol, %.prol.preheader9810 ]
  %i.bkl = icmp ult i64 %.sroa.5.059.i.i.i.i.i2345, 7
  br i1 %i.bkl, label %.noexc866, label %.new9812

.new9812:                                         ; preds = %.prol.loopexit9811, %.new9812
  %.pn30.in.i.i.i.i.i.i2354 = phi ptr [ %i.bku, %.new9812 ], [ %.pn30.in.i.i.i.i.i.i2354.unr, %.prol.loopexit9811 ]
  %.pn28.in.i.i.i.i.i.i2355 = phi i64 [ %.pn28.i.i.i.i.i.i2356.7, %.new9812 ], [ %.pn28.in.i.i.i.i.i.i2355.unr, %.prol.loopexit9811 ]
  %.pn30.i.i.i.i.i.i2357 = load ptr, ptr %.pn30.in.i.i.i.i.i.i2354, align 8, !noalias !8847, !nonnull !17, !noundef !17
  %i.bkm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2357, i64 24
  %.pn30.i.i.i.i.i.i2357.1 = load ptr, ptr %i.bkm, align 8, !noalias !8847, !nonnull !17, !noundef !17
  %i.bkn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2357.1, i64 24
  %.pn30.i.i.i.i.i.i2357.2 = load ptr, ptr %i.bkn, align 8, !noalias !8847, !nonnull !17, !noundef !17
  %i.bko = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2357.2, i64 24
  %.pn30.i.i.i.i.i.i2357.3 = load ptr, ptr %i.bko, align 8, !noalias !8847, !nonnull !17, !noundef !17
  %i.bkp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2357.3, i64 24
  %.pn30.i.i.i.i.i.i2357.4 = load ptr, ptr %i.bkp, align 8, !noalias !8847, !nonnull !17, !noundef !17
  %i.bkq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2357.4, i64 24
  %.pn30.i.i.i.i.i.i2357.5 = load ptr, ptr %i.bkq, align 8, !noalias !8847, !nonnull !17, !noundef !17
  %i.bkr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2357.5, i64 24
  %.pn30.i.i.i.i.i.i2357.6 = load ptr, ptr %i.bkr, align 8, !noalias !8847, !nonnull !17, !noundef !17
  %i.bks = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2357.6, i64 24
  %.pn28.i.i.i.i.i.i2356.7 = add i64 %.pn28.in.i.i.i.i.i.i2355, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i2357.7 = load ptr, ptr %i.bks, align 8, !noalias !8847, !nonnull !17, !noundef !17 ; 2 uses
  %i.bkt = icmp eq i64 %.pn28.i.i.i.i.i.i2356.7, 0
  %i.bku = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2357.7, i64 24
  br i1 %i.bkt, label %.noexc866, label %.new9812

bb.kx:                                            ; preds = %.lr.ph.i.i.i.i.i2343
  %i.bkv = add i64 %.sroa.5.059.i.i.i.i.i2345, 1  ; 5 uses
  %i.bkw = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i.i2344, i64 8
  %i.bkx = load i16, ptr %i.bkw, align 8, !noalias !8846 ; 3 uses
  %.not.i.i.i.i.i.i2347 = icmp eq i64 %.sroa.5.059.i.i.i.i.i2345, 0
  %..i.i.i.i.i.i2348 = select i1 %.not.i.i.i.i.i.i2347, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i2344, i64 noundef %..i.i.i.i.i.i2348, i64 noundef 8) #51, !noalias !8848
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bkd, i64 10
  %i.bkz = load i16, ptr %i.bky, align 2, !noalias !8845, !noundef !17
  %i.bla = icmp ult i16 %i.bkx, %i.bkz
  br i1 %i.bla, label %._crit_edge.i.i.i.i.i2350, label %.lr.ph.i.i.i.i.i2343

bb.ky:                                            ; preds = %.lr.ph.i.i.i.i.i2343
  %.not.i54.i.i.i.i.i2364 = icmp eq i64 %.sroa.5.059.i.i.i.i.i2345, 0
  %..i55.i.i.i.i.i2365 = select i1 %.not.i54.i.i.i.i.i2364, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i2344, i64 noundef %..i55.i.i.i.i.i2365, i64 noundef 8) #51, !noalias !8848
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #54
          to label %.noexc.i.i.i2366 unwind label %bb.kz, !noalias !8849

.noexc.i.i.i2366:                                 ; preds = %bb.ky
  unreachable

bb.kz:                                            ; preds = %bb.ky
  %i.blb = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.noexc866:                                        ; preds = %.prol.loopexit9811, %.new9812, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2339", %._crit_edge.i.i.i.i.i2350
  %.sroa.115086.3 = phi ptr [ %.sroa.012.0.lcssa.i.i.i2373, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2339" ], [ %i.bkd, %._crit_edge.i.i.i.i.i2350 ], [ %.pn30.i.i.i.i.i.i2357.lcssa.unr, %.prol.loopexit9811 ], [ %.pn30.i.i.i.i.i.i2357.7, %.new9812 ] ; 2 uses
  %.sroa.275090.3 = phi i64 [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2339" ], [ %i.bkg, %._crit_edge.i.i.i.i.i2350 ], [ 0, %.new9812 ], [ 0, %.prol.loopexit9811 ]
  %.sroa.405100.07056 = add i64 %.sroa.5.0.copyload.i.i.i.i.i851, -1 ; 2 uses
  %i.blc = icmp eq i64 %.sroa.405100.07056, 0
  br i1 %i.blc, label %.loopexit.i.i2313, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2269"

.loopexit.i.i2313:                                ; preds = %.noexc867, %.noexc866
  %.sroa.115086.1.lcssa = phi ptr [ %.sroa.115086.3, %.noexc866 ], [ %.sroa.115086.2, %.noexc867 ] ; 3 uses
  %i.bld = load ptr, ptr %.sroa.115086.1.lcssa, align 8, !noalias !8850, !noundef !17 ; 2 uses
  %.not.i.i4.i.i.i2316 = icmp eq ptr %i.bld, null
  br i1 %.not.i.i4.i.i.i2316, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2323", label %.lr.ph.i3.i.i2317

.lr.ph.i3.i.i2317:                                ; preds = %.loopexit.i.i2313, %.lr.ph.i3.i.i2317
  %i.ble = phi ptr [ %i.blg, %.lr.ph.i3.i.i2317 ], [ %i.bld, %.loopexit.i.i2313 ] ; 3 uses
  %.sroa.0.06.i.i.i2318 = phi ptr [ %i.ble, %.lr.ph.i3.i.i2317 ], [ %.sroa.115086.1.lcssa, %.loopexit.i.i2313 ]
  %.sroa.5.05.i.i.i2319 = phi i64 [ %i.blf, %.lr.ph.i3.i.i2317 ], [ 0, %.loopexit.i.i2313 ] ; 2 uses
  %i.blf = add i64 %.sroa.5.05.i.i.i2319, 1       ; 2 uses
  %.not.i.i.i.i2320 = icmp eq i64 %.sroa.5.05.i.i.i2319, 0
  %..i.i.i.i2321 = select i1 %.not.i.i.i.i2320, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i.i2318, i64 noundef %..i.i.i.i2321, i64 noundef 8) #51, !noalias !8851
  %i.blg = load ptr, ptr %i.ble, align 8, !noalias !8850, !noundef !17 ; 2 uses
  %.not.i.i.i.i.i2322 = icmp eq ptr %i.blg, null
  br i1 %.not.i.i.i.i.i2322, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2323.loopexit", label %.lr.ph.i3.i.i2317

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2323.loopexit": ; preds = %.lr.ph.i3.i.i2317
  %i.blh = icmp eq i64 %i.blf, 0
  %i.bli = select i1 %i.blh, i64 24, i64 120
  br label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2323"

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2323": ; preds = %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2323.loopexit", %.loopexit.i.i2313
  %.sroa.5.0.lcssa.i.i.i2324 = phi i64 [ 24, %.loopexit.i.i2313 ], [ %i.bli, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2323.loopexit" ]
  %.sroa.0.0.lcssa.i.i.i2325 = phi ptr [ %.sroa.115086.1.lcssa, %.loopexit.i.i2313 ], [ %i.ble, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2323.loopexit" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i.i2325, i64 noundef %.sroa.5.0.lcssa.i.i.i2324, i64 noundef 8) #51, !noalias !8851
  br label %"_ZN4core3ptr64drop_in_place$LT$console..utils..StyledObject$LT$$RF$str$GT$$GT$17h1e14615d2c6972d3E.exit868"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2269": ; preds = %.noexc866, %.noexc867
  %.sroa.405100.07059 = phi i64 [ %.sroa.405100.0, %.noexc867 ], [ %.sroa.405100.07056, %.noexc866 ]
  %.sroa.275090.17058 = phi i64 [ %.sroa.275090.2, %.noexc867 ], [ %.sroa.275090.3, %.noexc866 ] ; 2 uses
  %.sroa.115086.17057 = phi ptr [ %.sroa.115086.2, %.noexc867 ], [ %.sroa.115086.3, %.noexc866 ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.115086.17057) ]
  %i.blj = getelementptr inbounds nuw i8, ptr %.sroa.115086.17057, i64 10
  %i.blk = load i16, ptr %i.blj, align 2, !noalias !8852, !noundef !17
  %i.bll = zext i16 %i.blk to i64
  %i.blm = icmp ult i64 %.sroa.275090.17058, %i.bll
  br i1 %i.blm, label %._crit_edge.i.i.i.i.i2280.thread, label %.lr.ph.i.i.i.i.i2273

._crit_edge.i.i.i.i.i2280.thread:                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2269"
  %i.bln = add nuw nsw i64 %.sroa.275090.17058, 1
  br label %.noexc867

.lr.ph.i.i.i.i.i2273:                             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2269", %bb.lb
  %.sroa.0.060.i.i.i.i.i2274 = phi ptr [ %i.blo, %bb.lb ], [ %.sroa.115086.17057, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2269" ] ; 4 uses
  %.sroa.5.059.i.i.i.i.i2275 = phi i64 [ %i.bmg, %bb.lb ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2269" ] ; 4 uses
  %i.blo = load ptr, ptr %.sroa.0.060.i.i.i.i.i2274, align 8, !noalias !8853, !noundef !17 ; 5 uses
  %.not.i.i.i.i.i.i.i2276 = icmp eq ptr %i.blo, null
  br i1 %.not.i.i.i.i.i.i.i2276, label %bb.lc, label %bb.lb

._crit_edge.i.i.i.i.i2280:                        ; preds = %bb.lb
  %i.blp = zext i16 %i.bmi to i64
  %i.blq = icmp eq i64 %i.bmg, 0
  %i.blr = add nuw nsw i64 %i.blp, 1              ; 2 uses
  br i1 %i.blq, label %.noexc867, label %bb.la

bb.la:                                            ; preds = %._crit_edge.i.i.i.i.i2280
  %i.bls = getelementptr inbounds nuw i8, ptr %i.blo, i64 24
  %i.blt = icmp ult i16 %i.bmi, 11
  call void @llvm.assume(i1 %i.blt)
  %i.blu = getelementptr inbounds nuw [8 x i8], ptr %i.bls, i64 %i.blr ; 2 uses
  %xtraiter9823 = and i64 %i.bmg, 7               ; 2 uses
  %lcmp.mod9824.not = icmp eq i64 %xtraiter9823, 0
  br i1 %lcmp.mod9824.not, label %.prol.loopexit9819, label %.prol.preheader9818

.prol.preheader9818:                              ; preds = %bb.la, %.prol.preheader9818
  %.pn30.in.i.i.i.i.i.i2284.prol = phi ptr [ %i.blv, %.prol.preheader9818 ], [ %i.blu, %bb.la ]
  %.pn28.in.i.i.i.i.i.i2285.prol = phi i64 [ %.pn28.i.i.i.i.i.i2286.prol, %.prol.preheader9818 ], [ %i.bmg, %bb.la ]
  %prol.iter9825 = phi i64 [ %prol.iter9825.next, %.prol.preheader9818 ], [ 0, %bb.la ]
  %.pn28.i.i.i.i.i.i2286.prol = add i64 %.pn28.in.i.i.i.i.i.i2285.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i2287.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i2284.prol, align 8, !noalias !8854, !nonnull !17, !noundef !17 ; 2 uses
  %i.blv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2287.prol, i64 24 ; 2 uses
  %prol.iter9825.next = add i64 %prol.iter9825, 1 ; 2 uses
  %prol.iter9825.cmp.not = icmp eq i64 %prol.iter9825.next, %xtraiter9823
  br i1 %prol.iter9825.cmp.not, label %.prol.loopexit9819, label %.prol.preheader9818, !llvm.loop !7926

.prol.loopexit9819:                               ; preds = %.prol.preheader9818, %bb.la
  %.pn30.i.i.i.i.i.i2287.lcssa.unr = phi ptr [ poison, %bb.la ], [ %.pn30.i.i.i.i.i.i2287.prol, %.prol.preheader9818 ]
  %.pn30.in.i.i.i.i.i.i2284.unr = phi ptr [ %i.blu, %bb.la ], [ %i.blv, %.prol.preheader9818 ]
  %.pn28.in.i.i.i.i.i.i2285.unr = phi i64 [ %i.bmg, %bb.la ], [ %.pn28.i.i.i.i.i.i2286.prol, %.prol.preheader9818 ]
  %i.blw = icmp ult i64 %.sroa.5.059.i.i.i.i.i2275, 7
  br i1 %i.blw, label %.noexc867, label %.new9820

.new9820:                                         ; preds = %.prol.loopexit9819, %.new9820
  %.pn30.in.i.i.i.i.i.i2284 = phi ptr [ %i.bmf, %.new9820 ], [ %.pn30.in.i.i.i.i.i.i2284.unr, %.prol.loopexit9819 ]
  %.pn28.in.i.i.i.i.i.i2285 = phi i64 [ %.pn28.i.i.i.i.i.i2286.7, %.new9820 ], [ %.pn28.in.i.i.i.i.i.i2285.unr, %.prol.loopexit9819 ]
  %.pn30.i.i.i.i.i.i2287 = load ptr, ptr %.pn30.in.i.i.i.i.i.i2284, align 8, !noalias !8854, !nonnull !17, !noundef !17
  %i.blx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2287, i64 24
  %.pn30.i.i.i.i.i.i2287.1 = load ptr, ptr %i.blx, align 8, !noalias !8854, !nonnull !17, !noundef !17
  %i.bly = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2287.1, i64 24
  %.pn30.i.i.i.i.i.i2287.2 = load ptr, ptr %i.bly, align 8, !noalias !8854, !nonnull !17, !noundef !17
  %i.blz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2287.2, i64 24
  %.pn30.i.i.i.i.i.i2287.3 = load ptr, ptr %i.blz, align 8, !noalias !8854, !nonnull !17, !noundef !17
  %i.bma = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2287.3, i64 24
  %.pn30.i.i.i.i.i.i2287.4 = load ptr, ptr %i.bma, align 8, !noalias !8854, !nonnull !17, !noundef !17
  %i.bmb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2287.4, i64 24
  %.pn30.i.i.i.i.i.i2287.5 = load ptr, ptr %i.bmb, align 8, !noalias !8854, !nonnull !17, !noundef !17
  %i.bmc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2287.5, i64 24
  %.pn30.i.i.i.i.i.i2287.6 = load ptr, ptr %i.bmc, align 8, !noalias !8854, !nonnull !17, !noundef !17
  %i.bmd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2287.6, i64 24
  %.pn28.i.i.i.i.i.i2286.7 = add i64 %.pn28.in.i.i.i.i.i.i2285, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i2287.7 = load ptr, ptr %i.bmd, align 8, !noalias !8854, !nonnull !17, !noundef !17 ; 2 uses
  %i.bme = icmp eq i64 %.pn28.i.i.i.i.i.i2286.7, 0
  %i.bmf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2287.7, i64 24
  br i1 %i.bme, label %.noexc867, label %.new9820

bb.lb:                                            ; preds = %.lr.ph.i.i.i.i.i2273
  %i.bmg = add i64 %.sroa.5.059.i.i.i.i.i2275, 1  ; 5 uses
  %i.bmh = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i.i2274, i64 8
  %i.bmi = load i16, ptr %i.bmh, align 8, !noalias !8853 ; 3 uses
  %.not.i.i.i.i.i.i2277 = icmp eq i64 %.sroa.5.059.i.i.i.i.i2275, 0
  %..i.i.i.i.i.i2278 = select i1 %.not.i.i.i.i.i.i2277, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i2274, i64 noundef %..i.i.i.i.i.i2278, i64 noundef 8) #51, !noalias !8855
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.blo, i64 10
  %i.bmk = load i16, ptr %i.bmj, align 2, !noalias !8852, !noundef !17
  %i.bml = icmp ult i16 %i.bmi, %i.bmk
  br i1 %i.bml, label %._crit_edge.i.i.i.i.i2280, label %.lr.ph.i.i.i.i.i2273

bb.lc:                                            ; preds = %.lr.ph.i.i.i.i.i2273
  %.not.i54.i.i.i.i.i2294 = icmp eq i64 %.sroa.5.059.i.i.i.i.i2275, 0
  %..i55.i.i.i.i.i2295 = select i1 %.not.i54.i.i.i.i.i2294, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i2274, i64 noundef %..i55.i.i.i.i.i2295, i64 noundef 8) #51, !noalias !8855
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #54
          to label %.noexc.i.i.i2296 unwind label %bb.ld, !noalias !8856

.noexc.i.i.i2296:                                 ; preds = %bb.lc
  unreachable

bb.ld:                                            ; preds = %bb.lc
  %i.bmm = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.noexc867:                                        ; preds = %.prol.loopexit9819, %.new9820, %._crit_edge.i.i.i.i.i2280.thread, %._crit_edge.i.i.i.i.i2280
  %.sroa.115086.2 = phi ptr [ %i.blo, %._crit_edge.i.i.i.i.i2280 ], [ %.sroa.115086.17057, %._crit_edge.i.i.i.i.i2280.thread ], [ %.pn30.i.i.i.i.i.i2287.lcssa.unr, %.prol.loopexit9819 ], [ %.pn30.i.i.i.i.i.i2287.7, %.new9820 ] ; 2 uses
  %.sroa.275090.2 = phi i64 [ %i.blr, %._crit_edge.i.i.i.i.i2280 ], [ %i.bln, %._crit_edge.i.i.i.i.i2280.thread ], [ 0, %.new9820 ], [ 0, %.prol.loopexit9819 ]
  %.sroa.405100.0 = add i64 %.sroa.405100.07059, -1 ; 2 uses
  %i.bmn = icmp eq i64 %.sroa.405100.0, 0
  br i1 %i.bmn, label %.loopexit.i.i2313, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2269"

"_ZN4core3ptr64drop_in_place$LT$console..utils..StyledObject$LT$$RF$str$GT$$GT$17h1e14615d2c6972d3E.exit868": ; preds = %bb.kt, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2323", %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2393"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  %.sroa.0.0.copyload.i.i.i.i.i869 = load ptr, ptr %.sroa.04359.sroa.4.0..sroa_idx, align 8, !alias.scope !8857 ; 7 uses
  %.not.i.i.i.i.i.i870 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i869, null
  br i1 %.not.i.i.i.i.i.i870, label %"_ZN4core3ptr62drop_in_place$LT$console..utils..StyledObject$LT$usize$GT$$GT$17h10e4dff4493942ebE.exit889", label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i881"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i881": ; preds = %"_ZN4core3ptr64drop_in_place$LT$console..utils..StyledObject$LT$$RF$str$GT$$GT$17h1e14615d2c6972d3E.exit868"
  %.sroa.5.0.copyload.i.i.i.i.i872 = load i64, ptr %.sroa.04359.sroa.8.0..sroa_idx, align 8, !alias.scope !8857 ; 2 uses
  %.sroa.4.0.copyload.i.i.i.i.i874 = load i64, ptr %.sroa.04359.sroa.7.0..sroa_idx, align 8, !alias.scope !8857 ; 9 uses
  %i.bmo = icmp eq i64 %.sroa.5.0.copyload.i.i.i.i.i872, 0
  %i.bmp = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i874, 0 ; 2 uses
  br i1 %i.bmo, label %bb.le, label %bb.lf

bb.le:                                            ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i881"
  br i1 %i.bmp, label %.loopexit.i.i2523, label %.lr.ph.i.i.i2538.preheader

.lr.ph.i.i.i2538.preheader:                       ; preds = %bb.le
  %xtraiter9848 = and i64 %.sroa.4.0.copyload.i.i.i.i.i874, 7 ; 2 uses
  %lcmp.mod9849.not = icmp eq i64 %xtraiter9848, 0
  br i1 %lcmp.mod9849.not, label %.lr.ph.i.i.i2538.prol.loopexit, label %.lr.ph.i.i.i2538.prol

.lr.ph.i.i.i2538.prol:                            ; preds = %.lr.ph.i.i.i2538.preheader, %.lr.ph.i.i.i2538.prol
  %.sroa.019.021.i.i.i2539.prol = phi ptr [ %i.bmr, %.lr.ph.i.i.i2538.prol ], [ %.sroa.0.0.copyload.i.i.i.i.i869, %.lr.ph.i.i.i2538.preheader ]
  %.sroa.018.020.i.i.i2540.prol = phi i64 [ %i.bms, %.lr.ph.i.i.i2538.prol ], [ %.sroa.4.0.copyload.i.i.i.i.i874, %.lr.ph.i.i.i2538.preheader ]
  %prol.iter9850 = phi i64 [ %prol.iter9850.next, %.lr.ph.i.i.i2538.prol ], [ 0, %.lr.ph.i.i.i2538.preheader ]
  %i.bmq = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i.i2539.prol, i64 24
  %i.bmr = load ptr, ptr %i.bmq, align 8, !noalias !8858, !nonnull !17, !noundef !17 ; 3 uses
  %i.bms = add i64 %.sroa.018.020.i.i.i2540.prol, -1 ; 2 uses
  %prol.iter9850.next = add i64 %prol.iter9850, 1 ; 2 uses
  %prol.iter9850.cmp.not = icmp eq i64 %prol.iter9850.next, %xtraiter9848
  br i1 %prol.iter9850.cmp.not, label %.lr.ph.i.i.i2538.prol.loopexit, label %.lr.ph.i.i.i2538.prol, !llvm.loop !7947

.lr.ph.i.i.i2538.prol.loopexit:                   ; preds = %.lr.ph.i.i.i2538.prol, %.lr.ph.i.i.i2538.preheader
  %.lcssa9357.unr = phi ptr [ poison, %.lr.ph.i.i.i2538.preheader ], [ %i.bmr, %.lr.ph.i.i.i2538.prol ]
  %.sroa.019.021.i.i.i2539.unr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i869, %.lr.ph.i.i.i2538.preheader ], [ %i.bmr, %.lr.ph.i.i.i2538.prol ]
  %.sroa.018.020.i.i.i2540.unr = phi i64 [ %.sroa.4.0.copyload.i.i.i.i.i874, %.lr.ph.i.i.i2538.preheader ], [ %i.bms, %.lr.ph.i.i.i2538.prol ]
  %i.bmt = icmp ult i64 %.sroa.4.0.copyload.i.i.i.i.i874, 8
  br i1 %i.bmt, label %.loopexit.i.i2523, label %.lr.ph.i.i.i2538

.lr.ph.i.i.i2538:                                 ; preds = %.lr.ph.i.i.i2538.prol.loopexit, %.lr.ph.i.i.i2538
  %.sroa.019.021.i.i.i2539 = phi ptr [ %i.bnj, %.lr.ph.i.i.i2538 ], [ %.sroa.019.021.i.i.i2539.unr, %.lr.ph.i.i.i2538.prol.loopexit ]
  %.sroa.018.020.i.i.i2540 = phi i64 [ %i.bnk, %.lr.ph.i.i.i2538 ], [ %.sroa.018.020.i.i.i2540.unr, %.lr.ph.i.i.i2538.prol.loopexit ]
  %i.bmu = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i.i2539, i64 24
  %i.bmv = load ptr, ptr %i.bmu, align 8, !noalias !8858, !nonnull !17, !noundef !17
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.bmv, i64 24
  %i.bmx = load ptr, ptr %i.bmw, align 8, !noalias !8858, !nonnull !17, !noundef !17
  %i.bmy = getelementptr inbounds nuw i8, ptr %i.bmx, i64 24
  %i.bmz = load ptr, ptr %i.bmy, align 8, !noalias !8858, !nonnull !17, !noundef !17
  %i.bna = getelementptr inbounds nuw i8, ptr %i.bmz, i64 24
  %i.bnb = load ptr, ptr %i.bna, align 8, !noalias !8858, !nonnull !17, !noundef !17
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.bnb, i64 24
  %i.bnd = load ptr, ptr %i.bnc, align 8, !noalias !8858, !nonnull !17, !noundef !17
  %i.bne = getelementptr inbounds nuw i8, ptr %i.bnd, i64 24
  %i.bnf = load ptr, ptr %i.bne, align 8, !noalias !8858, !nonnull !17, !noundef !17
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bnf, i64 24
  %i.bnh = load ptr, ptr %i.bng, align 8, !noalias !8858, !nonnull !17, !noundef !17
  %i.bni = getelementptr inbounds nuw i8, ptr %i.bnh, i64 24
  %i.bnj = load ptr, ptr %i.bni, align 8, !noalias !8858, !nonnull !17, !noundef !17 ; 2 uses
  %i.bnk = add i64 %.sroa.018.020.i.i.i2540, -8   ; 2 uses
  %i.bnl = icmp eq i64 %i.bnk, 0
  br i1 %i.bnl, label %.loopexit.i.i2523, label %.lr.ph.i.i.i2538

.loopexit.i.i2523:                                ; preds = %.lr.ph.i.i.i2538.prol.loopexit, %.lr.ph.i.i.i2538, %bb.le
  %.sroa.0.0.ph.i.i2525 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i869, %bb.le ], [ %.lcssa9357.unr, %.lr.ph.i.i.i2538.prol.loopexit ], [ %i.bnj, %.lr.ph.i.i.i2538 ] ; 3 uses
  %i.bnm = load ptr, ptr %.sroa.0.0.ph.i.i2525, align 8, !noalias !8859, !noundef !17 ; 2 uses
  %.not.i.i4.i.i.i2526 = icmp eq ptr %i.bnm, null
  br i1 %.not.i.i4.i.i.i2526, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2533", label %.lr.ph.i3.i.i2527

.lr.ph.i3.i.i2527:                                ; preds = %.loopexit.i.i2523, %.lr.ph.i3.i.i2527
  %i.bnn = phi ptr [ %i.bnp, %.lr.ph.i3.i.i2527 ], [ %i.bnm, %.loopexit.i.i2523 ] ; 3 uses
  %.sroa.0.06.i.i.i2528 = phi ptr [ %i.bnn, %.lr.ph.i3.i.i2527 ], [ %.sroa.0.0.ph.i.i2525, %.loopexit.i.i2523 ]
  %.sroa.5.05.i.i.i2529 = phi i64 [ %i.bno, %.lr.ph.i3.i.i2527 ], [ 0, %.loopexit.i.i2523 ] ; 2 uses
  %i.bno = add i64 %.sroa.5.05.i.i.i2529, 1       ; 2 uses
  %.not.i.i.i.i2530 = icmp eq i64 %.sroa.5.05.i.i.i2529, 0
  %..i.i.i.i2531 = select i1 %.not.i.i.i.i2530, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i.i2528, i64 noundef %..i.i.i.i2531, i64 noundef 8) #51, !noalias !8860
  %i.bnp = load ptr, ptr %i.bnn, align 8, !noalias !8859, !noundef !17 ; 2 uses
  %.not.i.i.i.i.i2532 = icmp eq ptr %i.bnp, null
  br i1 %.not.i.i.i.i.i2532, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2533.loopexit", label %.lr.ph.i3.i.i2527

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2533.loopexit": ; preds = %.lr.ph.i3.i.i2527
  %i.bnq = icmp eq i64 %i.bno, 0
  %i.bnr = select i1 %i.bnq, i64 24, i64 120
  br label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2533"

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2533": ; preds = %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2533.loopexit", %.loopexit.i.i2523
  %.sroa.5.0.lcssa.i.i.i2534 = phi i64 [ 24, %.loopexit.i.i2523 ], [ %i.bnr, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2533.loopexit" ]
  %.sroa.0.0.lcssa.i.i.i2535 = phi ptr [ %.sroa.0.0.ph.i.i2525, %.loopexit.i.i2523 ], [ %i.bnn, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2533.loopexit" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i.i2535, i64 noundef %.sroa.5.0.lcssa.i.i.i2534, i64 noundef 8) #51, !noalias !8860
  br label %"_ZN4core3ptr62drop_in_place$LT$console..utils..StyledObject$LT$usize$GT$$GT$17h10e4dff4493942ebE.exit889"

bb.lf:                                            ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i881"
  br i1 %i.bmp, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2479", label %.lr.ph.i.i2.i2508.preheader

.lr.ph.i.i2.i2508.preheader:                      ; preds = %bb.lf
  %xtraiter9829 = and i64 %.sroa.4.0.copyload.i.i.i.i.i874, 7 ; 2 uses
  %lcmp.mod9830.not = icmp eq i64 %xtraiter9829, 0
  br i1 %lcmp.mod9830.not, label %.lr.ph.i.i2.i2508.prol.loopexit, label %.lr.ph.i.i2.i2508.prol

.lr.ph.i.i2.i2508.prol:                           ; preds = %.lr.ph.i.i2.i2508.preheader, %.lr.ph.i.i2.i2508.prol
  %.sroa.012.015.i.i.i2509.prol = phi ptr [ %.sroa.012.0.i.i.i2511.prol, %.lr.ph.i.i2.i2508.prol ], [ %.sroa.0.0.copyload.i.i.i.i.i869, %.lr.ph.i.i2.i2508.preheader ]
  %.sroa.011.014.i.i.i2510.prol = phi i64 [ %i.bnt, %.lr.ph.i.i2.i2508.prol ], [ %.sroa.4.0.copyload.i.i.i.i.i874, %.lr.ph.i.i2.i2508.preheader ]
  %prol.iter9831 = phi i64 [ %prol.iter9831.next, %.lr.ph.i.i2.i2508.prol ], [ 0, %.lr.ph.i.i2.i2508.preheader ]
  %i.bns = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i2509.prol, i64 24
  %i.bnt = add i64 %.sroa.011.014.i.i.i2510.prol, -1 ; 2 uses
  %.sroa.012.0.i.i.i2511.prol = load ptr, ptr %i.bns, align 8, !noalias !8861, !nonnull !17, !noundef !17 ; 3 uses
  %prol.iter9831.next = add i64 %prol.iter9831, 1 ; 2 uses
  %prol.iter9831.cmp.not = icmp eq i64 %prol.iter9831.next, %xtraiter9829
  br i1 %prol.iter9831.cmp.not, label %.lr.ph.i.i2.i2508.prol.loopexit, label %.lr.ph.i.i2.i2508.prol, !llvm.loop !7957

.lr.ph.i.i2.i2508.prol.loopexit:                  ; preds = %.lr.ph.i.i2.i2508.prol, %.lr.ph.i.i2.i2508.preheader
  %.sroa.012.0.i.i.i2511.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.i2508.preheader ], [ %.sroa.012.0.i.i.i2511.prol, %.lr.ph.i.i2.i2508.prol ]
  %.sroa.012.015.i.i.i2509.unr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i869, %.lr.ph.i.i2.i2508.preheader ], [ %.sroa.012.0.i.i.i2511.prol, %.lr.ph.i.i2.i2508.prol ]
  %.sroa.011.014.i.i.i2510.unr = phi i64 [ %.sroa.4.0.copyload.i.i.i.i.i874, %.lr.ph.i.i2.i2508.preheader ], [ %i.bnt, %.lr.ph.i.i2.i2508.prol ]
  %i.bnu = icmp ult i64 %.sroa.4.0.copyload.i.i.i.i.i874, 8
  br i1 %i.bnu, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2479", label %.lr.ph.i.i2.i2508

.lr.ph.i.i2.i2508:                                ; preds = %.lr.ph.i.i2.i2508.prol.loopexit, %.lr.ph.i.i2.i2508
  %.sroa.012.015.i.i.i2509 = phi ptr [ %.sroa.012.0.i.i.i2511.7, %.lr.ph.i.i2.i2508 ], [ %.sroa.012.015.i.i.i2509.unr, %.lr.ph.i.i2.i2508.prol.loopexit ]
  %.sroa.011.014.i.i.i2510 = phi i64 [ %i.bod, %.lr.ph.i.i2.i2508 ], [ %.sroa.011.014.i.i.i2510.unr, %.lr.ph.i.i2.i2508.prol.loopexit ]
  %i.bnv = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i2509, i64 24
  %.sroa.012.0.i.i.i2511 = load ptr, ptr %i.bnv, align 8, !noalias !8861, !nonnull !17, !noundef !17
  %i.bnw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i2511, i64 24
  %.sroa.012.0.i.i.i2511.1 = load ptr, ptr %i.bnw, align 8, !noalias !8861, !nonnull !17, !noundef !17
  %i.bnx = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i2511.1, i64 24
  %.sroa.012.0.i.i.i2511.2 = load ptr, ptr %i.bnx, align 8, !noalias !8861, !nonnull !17, !noundef !17
  %i.bny = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i2511.2, i64 24
  %.sroa.012.0.i.i.i2511.3 = load ptr, ptr %i.bny, align 8, !noalias !8861, !nonnull !17, !noundef !17
  %i.bnz = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i2511.3, i64 24
  %.sroa.012.0.i.i.i2511.4 = load ptr, ptr %i.bnz, align 8, !noalias !8861, !nonnull !17, !noundef !17
  %i.boa = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i2511.4, i64 24
  %.sroa.012.0.i.i.i2511.5 = load ptr, ptr %i.boa, align 8, !noalias !8861, !nonnull !17, !noundef !17
  %i.bob = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i2511.5, i64 24
  %.sroa.012.0.i.i.i2511.6 = load ptr, ptr %i.bob, align 8, !noalias !8861, !nonnull !17, !noundef !17
  %i.boc = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i2511.6, i64 24
  %i.bod = add i64 %.sroa.011.014.i.i.i2510, -8   ; 2 uses
  %.sroa.012.0.i.i.i2511.7 = load ptr, ptr %i.boc, align 8, !noalias !8861, !nonnull !17, !noundef !17 ; 2 uses
  %i.boe = icmp eq i64 %i.bod, 0
  br i1 %i.boe, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2479", label %.lr.ph.i.i2.i2508

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2479": ; preds = %.lr.ph.i.i2.i2508.prol.loopexit, %.lr.ph.i.i2.i2508, %bb.lf
  %.sroa.012.0.lcssa.i.i.i2513 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i869, %bb.lf ], [ %.sroa.012.0.i.i.i2511.lcssa.unr, %.lr.ph.i.i2.i2508.prol.loopexit ], [ %.sroa.012.0.i.i.i2511.7, %.lr.ph.i.i2.i2508 ] ; 3 uses
  %i.bof = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i2513, i64 10
  %i.bog = load i16, ptr %i.bof, align 2, !noalias !8862, !noundef !17
  %.not6010 = icmp eq i16 %i.bog, 0
  br i1 %.not6010, label %.lr.ph.i.i.i.i.i2483, label %.noexc887

.lr.ph.i.i.i.i.i2483:                             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2479", %bb.lh
  %.sroa.0.060.i.i.i.i.i2484 = phi ptr [ %i.boh, %bb.lh ], [ %.sroa.012.0.lcssa.i.i.i2513, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2479" ] ; 4 uses
  %.sroa.5.059.i.i.i.i.i2485 = phi i64 [ %i.boz, %bb.lh ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2479" ] ; 4 uses
  %i.boh = load ptr, ptr %.sroa.0.060.i.i.i.i.i2484, align 8, !noalias !8863, !noundef !17 ; 5 uses
  %.not.i.i.i.i.i.i.i2486 = icmp eq ptr %i.boh, null
  br i1 %.not.i.i.i.i.i.i.i2486, label %bb.li, label %bb.lh

._crit_edge.i.i.i.i.i2490:                        ; preds = %bb.lh
  %i.boi = zext i16 %i.bpb to i64
  %i.boj = icmp eq i64 %i.boz, 0
  %i.bok = add nuw nsw i64 %i.boi, 1              ; 2 uses
  br i1 %i.boj, label %.noexc887, label %bb.lg

bb.lg:                                            ; preds = %._crit_edge.i.i.i.i.i2490
  %i.bol = getelementptr inbounds nuw i8, ptr %i.boh, i64 24
  %i.bom = icmp ult i16 %i.bpb, 11
  call void @llvm.assume(i1 %i.bom)
  %i.bon = getelementptr inbounds nuw [8 x i8], ptr %i.bol, i64 %i.bok ; 2 uses
  %xtraiter9837 = and i64 %i.boz, 7               ; 2 uses
  %lcmp.mod9838.not = icmp eq i64 %xtraiter9837, 0
  br i1 %lcmp.mod9838.not, label %.prol.loopexit9833, label %.prol.preheader9832

.prol.preheader9832:                              ; preds = %bb.lg, %.prol.preheader9832
  %.pn30.in.i.i.i.i.i.i2494.prol = phi ptr [ %i.boo, %.prol.preheader9832 ], [ %i.bon, %bb.lg ]
  %.pn28.in.i.i.i.i.i.i2495.prol = phi i64 [ %.pn28.i.i.i.i.i.i2496.prol, %.prol.preheader9832 ], [ %i.boz, %bb.lg ]
  %prol.iter9839 = phi i64 [ %prol.iter9839.next, %.prol.preheader9832 ], [ 0, %bb.lg ]
  %.pn28.i.i.i.i.i.i2496.prol = add i64 %.pn28.in.i.i.i.i.i.i2495.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i2497.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i2494.prol, align 8, !noalias !8864, !nonnull !17, !noundef !17 ; 2 uses
  %i.boo = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2497.prol, i64 24 ; 2 uses
  %prol.iter9839.next = add i64 %prol.iter9839, 1 ; 2 uses
  %prol.iter9839.cmp.not = icmp eq i64 %prol.iter9839.next, %xtraiter9837
  br i1 %prol.iter9839.cmp.not, label %.prol.loopexit9833, label %.prol.preheader9832, !llvm.loop !7974

.prol.loopexit9833:                               ; preds = %.prol.preheader9832, %bb.lg
  %.pn30.i.i.i.i.i.i2497.lcssa.unr = phi ptr [ poison, %bb.lg ], [ %.pn30.i.i.i.i.i.i2497.prol, %.prol.preheader9832 ]
  %.pn30.in.i.i.i.i.i.i2494.unr = phi ptr [ %i.bon, %bb.lg ], [ %i.boo, %.prol.preheader9832 ]
  %.pn28.in.i.i.i.i.i.i2495.unr = phi i64 [ %i.boz, %bb.lg ], [ %.pn28.i.i.i.i.i.i2496.prol, %.prol.preheader9832 ]
  %i.bop = icmp ult i64 %.sroa.5.059.i.i.i.i.i2485, 7
  br i1 %i.bop, label %.noexc887, label %.new9834

.new9834:                                         ; preds = %.prol.loopexit9833, %.new9834
  %.pn30.in.i.i.i.i.i.i2494 = phi ptr [ %i.boy, %.new9834 ], [ %.pn30.in.i.i.i.i.i.i2494.unr, %.prol.loopexit9833 ]
  %.pn28.in.i.i.i.i.i.i2495 = phi i64 [ %.pn28.i.i.i.i.i.i2496.7, %.new9834 ], [ %.pn28.in.i.i.i.i.i.i2495.unr, %.prol.loopexit9833 ]
  %.pn30.i.i.i.i.i.i2497 = load ptr, ptr %.pn30.in.i.i.i.i.i.i2494, align 8, !noalias !8864, !nonnull !17, !noundef !17
  %i.boq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2497, i64 24
  %.pn30.i.i.i.i.i.i2497.1 = load ptr, ptr %i.boq, align 8, !noalias !8864, !nonnull !17, !noundef !17
  %i.bor = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2497.1, i64 24
  %.pn30.i.i.i.i.i.i2497.2 = load ptr, ptr %i.bor, align 8, !noalias !8864, !nonnull !17, !noundef !17
  %i.bos = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2497.2, i64 24
  %.pn30.i.i.i.i.i.i2497.3 = load ptr, ptr %i.bos, align 8, !noalias !8864, !nonnull !17, !noundef !17
  %i.bot = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2497.3, i64 24
  %.pn30.i.i.i.i.i.i2497.4 = load ptr, ptr %i.bot, align 8, !noalias !8864, !nonnull !17, !noundef !17
  %i.bou = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2497.4, i64 24
  %.pn30.i.i.i.i.i.i2497.5 = load ptr, ptr %i.bou, align 8, !noalias !8864, !nonnull !17, !noundef !17
  %i.bov = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2497.5, i64 24
  %.pn30.i.i.i.i.i.i2497.6 = load ptr, ptr %i.bov, align 8, !noalias !8864, !nonnull !17, !noundef !17
  %i.bow = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2497.6, i64 24
  %.pn28.i.i.i.i.i.i2496.7 = add i64 %.pn28.in.i.i.i.i.i.i2495, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i2497.7 = load ptr, ptr %i.bow, align 8, !noalias !8864, !nonnull !17, !noundef !17 ; 2 uses
  %i.box = icmp eq i64 %.pn28.i.i.i.i.i.i2496.7, 0
  %i.boy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2497.7, i64 24
  br i1 %i.box, label %.noexc887, label %.new9834

bb.lh:                                            ; preds = %.lr.ph.i.i.i.i.i2483
  %i.boz = add i64 %.sroa.5.059.i.i.i.i.i2485, 1  ; 5 uses
  %i.bpa = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i.i2484, i64 8
  %i.bpb = load i16, ptr %i.bpa, align 8, !noalias !8863 ; 3 uses
  %.not.i.i.i.i.i.i2487 = icmp eq i64 %.sroa.5.059.i.i.i.i.i2485, 0
  %..i.i.i.i.i.i2488 = select i1 %.not.i.i.i.i.i.i2487, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i2484, i64 noundef %..i.i.i.i.i.i2488, i64 noundef 8) #51, !noalias !8865
  %i.bpc = getelementptr inbounds nuw i8, ptr %i.boh, i64 10
  %i.bpd = load i16, ptr %i.bpc, align 2, !noalias !8862, !noundef !17
  %i.bpe = icmp ult i16 %i.bpb, %i.bpd
  br i1 %i.bpe, label %._crit_edge.i.i.i.i.i2490, label %.lr.ph.i.i.i.i.i2483

bb.li:                                            ; preds = %.lr.ph.i.i.i.i.i2483
  %.not.i54.i.i.i.i.i2504 = icmp eq i64 %.sroa.5.059.i.i.i.i.i2485, 0
  %..i55.i.i.i.i.i2505 = select i1 %.not.i54.i.i.i.i.i2504, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i2484, i64 noundef %..i55.i.i.i.i.i2505, i64 noundef 8) #51, !noalias !8865
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #54
          to label %.noexc.i.i.i2506 unwind label %bb.lj, !noalias !8866

.noexc.i.i.i2506:                                 ; preds = %bb.li
  unreachable

bb.lj:                                            ; preds = %bb.li
  %i.bpf = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.noexc887:                                        ; preds = %.prol.loopexit9833, %.new9834, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2479", %._crit_edge.i.i.i.i.i2490
  %.sroa.115110.3 = phi ptr [ %.sroa.012.0.lcssa.i.i.i2513, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2479" ], [ %i.boh, %._crit_edge.i.i.i.i.i2490 ], [ %.pn30.i.i.i.i.i.i2497.lcssa.unr, %.prol.loopexit9833 ], [ %.pn30.i.i.i.i.i.i2497.7, %.new9834 ] ; 2 uses
  %.sroa.275114.3 = phi i64 [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2479" ], [ %i.bok, %._crit_edge.i.i.i.i.i2490 ], [ 0, %.new9834 ], [ 0, %.prol.loopexit9833 ]
  %.sroa.405124.07061 = add i64 %.sroa.5.0.copyload.i.i.i.i.i872, -1 ; 2 uses
  %i.bpg = icmp eq i64 %.sroa.405124.07061, 0
  br i1 %i.bpg, label %.loopexit.i.i2453, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2409"

.loopexit.i.i2453:                                ; preds = %.noexc888, %.noexc887
  %.sroa.115110.1.lcssa = phi ptr [ %.sroa.115110.3, %.noexc887 ], [ %.sroa.115110.2, %.noexc888 ] ; 3 uses
  %i.bph = load ptr, ptr %.sroa.115110.1.lcssa, align 8, !noalias !8867, !noundef !17 ; 2 uses
  %.not.i.i4.i.i.i2456 = icmp eq ptr %i.bph, null
  br i1 %.not.i.i4.i.i.i2456, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2463", label %.lr.ph.i3.i.i2457

.lr.ph.i3.i.i2457:                                ; preds = %.loopexit.i.i2453, %.lr.ph.i3.i.i2457
  %i.bpi = phi ptr [ %i.bpk, %.lr.ph.i3.i.i2457 ], [ %i.bph, %.loopexit.i.i2453 ] ; 3 uses
  %.sroa.0.06.i.i.i2458 = phi ptr [ %i.bpi, %.lr.ph.i3.i.i2457 ], [ %.sroa.115110.1.lcssa, %.loopexit.i.i2453 ]
  %.sroa.5.05.i.i.i2459 = phi i64 [ %i.bpj, %.lr.ph.i3.i.i2457 ], [ 0, %.loopexit.i.i2453 ] ; 2 uses
  %i.bpj = add i64 %.sroa.5.05.i.i.i2459, 1       ; 2 uses
  %.not.i.i.i.i2460 = icmp eq i64 %.sroa.5.05.i.i.i2459, 0
  %..i.i.i.i2461 = select i1 %.not.i.i.i.i2460, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i.i2458, i64 noundef %..i.i.i.i2461, i64 noundef 8) #51, !noalias !8868
  %i.bpk = load ptr, ptr %i.bpi, align 8, !noalias !8867, !noundef !17 ; 2 uses
  %.not.i.i.i.i.i2462 = icmp eq ptr %i.bpk, null
  br i1 %.not.i.i.i.i.i2462, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2463.loopexit", label %.lr.ph.i3.i.i2457

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2463.loopexit": ; preds = %.lr.ph.i3.i.i2457
  %i.bpl = icmp eq i64 %i.bpj, 0
  %i.bpm = select i1 %i.bpl, i64 24, i64 120
  br label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2463"

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2463": ; preds = %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2463.loopexit", %.loopexit.i.i2453
  %.sroa.5.0.lcssa.i.i.i2464 = phi i64 [ 24, %.loopexit.i.i2453 ], [ %i.bpm, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2463.loopexit" ]
  %.sroa.0.0.lcssa.i.i.i2465 = phi ptr [ %.sroa.115110.1.lcssa, %.loopexit.i.i2453 ], [ %i.bpi, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2463.loopexit" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i.i2465, i64 noundef %.sroa.5.0.lcssa.i.i.i2464, i64 noundef 8) #51, !noalias !8868
  br label %"_ZN4core3ptr62drop_in_place$LT$console..utils..StyledObject$LT$usize$GT$$GT$17h10e4dff4493942ebE.exit889"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2409": ; preds = %.noexc887, %.noexc888
  %.sroa.405124.07064 = phi i64 [ %.sroa.405124.0, %.noexc888 ], [ %.sroa.405124.07061, %.noexc887 ]
  %.sroa.275114.17063 = phi i64 [ %.sroa.275114.2, %.noexc888 ], [ %.sroa.275114.3, %.noexc887 ] ; 2 uses
  %.sroa.115110.17062 = phi ptr [ %.sroa.115110.2, %.noexc888 ], [ %.sroa.115110.3, %.noexc887 ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.115110.17062) ]
  %i.bpn = getelementptr inbounds nuw i8, ptr %.sroa.115110.17062, i64 10
  %i.bpo = load i16, ptr %i.bpn, align 2, !noalias !8869, !noundef !17
  %i.bpp = zext i16 %i.bpo to i64
  %i.bpq = icmp ult i64 %.sroa.275114.17063, %i.bpp
  br i1 %i.bpq, label %._crit_edge.i.i.i.i.i2420.thread, label %.lr.ph.i.i.i.i.i2413

._crit_edge.i.i.i.i.i2420.thread:                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2409"
  %i.bpr = add nuw nsw i64 %.sroa.275114.17063, 1
  br label %.noexc888

.lr.ph.i.i.i.i.i2413:                             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2409", %bb.ll
  %.sroa.0.060.i.i.i.i.i2414 = phi ptr [ %i.bps, %bb.ll ], [ %.sroa.115110.17062, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2409" ] ; 4 uses
  %.sroa.5.059.i.i.i.i.i2415 = phi i64 [ %i.bqk, %bb.ll ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2409" ] ; 4 uses
  %i.bps = load ptr, ptr %.sroa.0.060.i.i.i.i.i2414, align 8, !noalias !8870, !noundef !17 ; 5 uses
  %.not.i.i.i.i.i.i.i2416 = icmp eq ptr %i.bps, null
  br i1 %.not.i.i.i.i.i.i.i2416, label %bb.lm, label %bb.ll

._crit_edge.i.i.i.i.i2420:                        ; preds = %bb.ll
  %i.bpt = zext i16 %i.bqm to i64
  %i.bpu = icmp eq i64 %i.bqk, 0
  %i.bpv = add nuw nsw i64 %i.bpt, 1              ; 2 uses
  br i1 %i.bpu, label %.noexc888, label %bb.lk

bb.lk:                                            ; preds = %._crit_edge.i.i.i.i.i2420
  %i.bpw = getelementptr inbounds nuw i8, ptr %i.bps, i64 24
  %i.bpx = icmp ult i16 %i.bqm, 11
  call void @llvm.assume(i1 %i.bpx)
  %i.bpy = getelementptr inbounds nuw [8 x i8], ptr %i.bpw, i64 %i.bpv ; 2 uses
  %xtraiter9845 = and i64 %i.bqk, 7               ; 2 uses
  %lcmp.mod9846.not = icmp eq i64 %xtraiter9845, 0
  br i1 %lcmp.mod9846.not, label %.prol.loopexit9841, label %.prol.preheader9840

.prol.preheader9840:                              ; preds = %bb.lk, %.prol.preheader9840
  %.pn30.in.i.i.i.i.i.i2424.prol = phi ptr [ %i.bpz, %.prol.preheader9840 ], [ %i.bpy, %bb.lk ]
  %.pn28.in.i.i.i.i.i.i2425.prol = phi i64 [ %.pn28.i.i.i.i.i.i2426.prol, %.prol.preheader9840 ], [ %i.bqk, %bb.lk ]
  %prol.iter9847 = phi i64 [ %prol.iter9847.next, %.prol.preheader9840 ], [ 0, %bb.lk ]
  %.pn28.i.i.i.i.i.i2426.prol = add i64 %.pn28.in.i.i.i.i.i.i2425.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i2427.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i2424.prol, align 8, !noalias !8871, !nonnull !17, !noundef !17 ; 2 uses
  %i.bpz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2427.prol, i64 24 ; 2 uses
  %prol.iter9847.next = add i64 %prol.iter9847, 1 ; 2 uses
  %prol.iter9847.cmp.not = icmp eq i64 %prol.iter9847.next, %xtraiter9845
  br i1 %prol.iter9847.cmp.not, label %.prol.loopexit9841, label %.prol.preheader9840, !llvm.loop !8003

.prol.loopexit9841:                               ; preds = %.prol.preheader9840, %bb.lk
  %.pn30.i.i.i.i.i.i2427.lcssa.unr = phi ptr [ poison, %bb.lk ], [ %.pn30.i.i.i.i.i.i2427.prol, %.prol.preheader9840 ]
  %.pn30.in.i.i.i.i.i.i2424.unr = phi ptr [ %i.bpy, %bb.lk ], [ %i.bpz, %.prol.preheader9840 ]
  %.pn28.in.i.i.i.i.i.i2425.unr = phi i64 [ %i.bqk, %bb.lk ], [ %.pn28.i.i.i.i.i.i2426.prol, %.prol.preheader9840 ]
  %i.bqa = icmp ult i64 %.sroa.5.059.i.i.i.i.i2415, 7
  br i1 %i.bqa, label %.noexc888, label %.new9842

.new9842:                                         ; preds = %.prol.loopexit9841, %.new9842
  %.pn30.in.i.i.i.i.i.i2424 = phi ptr [ %i.bqj, %.new9842 ], [ %.pn30.in.i.i.i.i.i.i2424.unr, %.prol.loopexit9841 ]
  %.pn28.in.i.i.i.i.i.i2425 = phi i64 [ %.pn28.i.i.i.i.i.i2426.7, %.new9842 ], [ %.pn28.in.i.i.i.i.i.i2425.unr, %.prol.loopexit9841 ]
  %.pn30.i.i.i.i.i.i2427 = load ptr, ptr %.pn30.in.i.i.i.i.i.i2424, align 8, !noalias !8871, !nonnull !17, !noundef !17
  %i.bqb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2427, i64 24
  %.pn30.i.i.i.i.i.i2427.1 = load ptr, ptr %i.bqb, align 8, !noalias !8871, !nonnull !17, !noundef !17
  %i.bqc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2427.1, i64 24
  %.pn30.i.i.i.i.i.i2427.2 = load ptr, ptr %i.bqc, align 8, !noalias !8871, !nonnull !17, !noundef !17
  %i.bqd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2427.2, i64 24
  %.pn30.i.i.i.i.i.i2427.3 = load ptr, ptr %i.bqd, align 8, !noalias !8871, !nonnull !17, !noundef !17
  %i.bqe = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2427.3, i64 24
  %.pn30.i.i.i.i.i.i2427.4 = load ptr, ptr %i.bqe, align 8, !noalias !8871, !nonnull !17, !noundef !17
  %i.bqf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2427.4, i64 24
  %.pn30.i.i.i.i.i.i2427.5 = load ptr, ptr %i.bqf, align 8, !noalias !8871, !nonnull !17, !noundef !17
  %i.bqg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2427.5, i64 24
  %.pn30.i.i.i.i.i.i2427.6 = load ptr, ptr %i.bqg, align 8, !noalias !8871, !nonnull !17, !noundef !17
  %i.bqh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2427.6, i64 24
  %.pn28.i.i.i.i.i.i2426.7 = add i64 %.pn28.in.i.i.i.i.i.i2425, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i2427.7 = load ptr, ptr %i.bqh, align 8, !noalias !8871, !nonnull !17, !noundef !17 ; 2 uses
  %i.bqi = icmp eq i64 %.pn28.i.i.i.i.i.i2426.7, 0
  %i.bqj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2427.7, i64 24
  br i1 %i.bqi, label %.noexc888, label %.new9842

bb.ll:                                            ; preds = %.lr.ph.i.i.i.i.i2413
  %i.bqk = add i64 %.sroa.5.059.i.i.i.i.i2415, 1  ; 5 uses
  %i.bql = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i.i2414, i64 8
  %i.bqm = load i16, ptr %i.bql, align 8, !noalias !8870 ; 3 uses
  %.not.i.i.i.i.i.i2417 = icmp eq i64 %.sroa.5.059.i.i.i.i.i2415, 0
  %..i.i.i.i.i.i2418 = select i1 %.not.i.i.i.i.i.i2417, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i2414, i64 noundef %..i.i.i.i.i.i2418, i64 noundef 8) #51, !noalias !8872
  %i.bqn = getelementptr inbounds nuw i8, ptr %i.bps, i64 10
  %i.bqo = load i16, ptr %i.bqn, align 2, !noalias !8869, !noundef !17
  %i.bqp = icmp ult i16 %i.bqm, %i.bqo
  br i1 %i.bqp, label %._crit_edge.i.i.i.i.i2420, label %.lr.ph.i.i.i.i.i2413

bb.lm:                                            ; preds = %.lr.ph.i.i.i.i.i2413
  %.not.i54.i.i.i.i.i2434 = icmp eq i64 %.sroa.5.059.i.i.i.i.i2415, 0
  %..i55.i.i.i.i.i2435 = select i1 %.not.i54.i.i.i.i.i2434, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i2414, i64 noundef %..i55.i.i.i.i.i2435, i64 noundef 8) #51, !noalias !8872
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #54
          to label %.noexc.i.i.i2436 unwind label %bb.ln, !noalias !8873

.noexc.i.i.i2436:                                 ; preds = %bb.lm
  unreachable

bb.ln:                                            ; preds = %bb.lm
  %i.bqq = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.noexc888:                                        ; preds = %.prol.loopexit9841, %.new9842, %._crit_edge.i.i.i.i.i2420.thread, %._crit_edge.i.i.i.i.i2420
  %.sroa.115110.2 = phi ptr [ %i.bps, %._crit_edge.i.i.i.i.i2420 ], [ %.sroa.115110.17062, %._crit_edge.i.i.i.i.i2420.thread ], [ %.pn30.i.i.i.i.i.i2427.lcssa.unr, %.prol.loopexit9841 ], [ %.pn30.i.i.i.i.i.i2427.7, %.new9842 ] ; 2 uses
  %.sroa.275114.2 = phi i64 [ %i.bpv, %._crit_edge.i.i.i.i.i2420 ], [ %i.bpr, %._crit_edge.i.i.i.i.i2420.thread ], [ 0, %.new9842 ], [ 0, %.prol.loopexit9841 ]
  %.sroa.405124.0 = add i64 %.sroa.405124.07064, -1 ; 2 uses
  %i.bqr = icmp eq i64 %.sroa.405124.0, 0
  br i1 %i.bqr, label %.loopexit.i.i2453, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2409"

"_ZN4core3ptr62drop_in_place$LT$console..utils..StyledObject$LT$usize$GT$$GT$17h10e4dff4493942ebE.exit889": ; preds = %"_ZN4core3ptr64drop_in_place$LT$console..utils..StyledObject$LT$$RF$str$GT$$GT$17h1e14615d2c6972d3E.exit868", %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2463", %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2533"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0.copyload) ]
  %.idx7117 = mul nuw nsw i64 %.sroa.19.0.copyload, 24
  %i.bqs = getelementptr inbounds nuw i8, ptr %.sroa.13.0.copyload, i64 %.idx7117
  %i.bqt = icmp eq i64 %.sroa.19.0.copyload, 0
  br i1 %i.bqt, label %"_ZN7similar4text6inline21InlineChange$LT$T$GT$15missing_newline17he6fc54d025be7b49E.exit.thread", label %.lr.ph7080.preheader

.lr.ph7080.preheader:                             ; preds = %"_ZN4core3ptr62drop_in_place$LT$console..utils..StyledObject$LT$usize$GT$$GT$17h10e4dff4493942ebE.exit889"
  %.sroa.0451.17077 = getelementptr inbounds nuw i8, ptr %.sroa.13.0.copyload, i64 24
  br label %.lr.ph7080

.lr.ph7080:                                       ; preds = %.lr.ph7080.preheader, %bb.mc
  %.sroa.0451.17079 = phi ptr [ %.sroa.0451.1, %bb.mc ], [ %.sroa.0451.17077, %.lr.ph7080.preheader ] ; 3 uses
  %.sroa.0451.07078 = phi ptr [ %.sroa.0451.17079, %bb.mc ], [ %.sroa.13.0.copyload, %.lr.ph7080.preheader ] ; 3 uses
  %i.bqu = load i8, ptr %.sroa.0451.07078, align 8, !range !21, !noundef !17
  %i.bqv = getelementptr inbounds nuw i8, ptr %.sroa.0451.07078, i64 8
  %i.bqw = load ptr, ptr %i.bqv, align 8, !nonnull !17, !align !31, !noundef !17
  %i.bqx = getelementptr inbounds nuw i8, ptr %.sroa.0451.07078, i64 16
  %i.bqy = load i64, ptr %i.bqx, align 8, !noundef !17
  invoke fastcc void @_ZN5insta6output16render_invisible17hdca59b7d9af24b28E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.dd, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bqw, i64 noundef %i.bqy, i1 noundef zeroext %.sroa.0.0.i)
          to label %bb.lo unwind label %.loopexit.split-lp6039.loopexit

bb.lo:                                            ; preds = %.lr.ph7080
  %i.bqz = trunc nuw i8 %i.bqu to i1
  br i1 %i.bqz, label %.noexc915.thread, label %.noexc901.thread

.noexc901.thread:                                 ; preds = %bb.lo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i64 24, i1 false)
  store ptr null, ptr %.sroa.0332.sroa.4.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.0332.sroa.8.0..sroa_idx, align 8
  store i8 1, ptr %.sroa.6334.0..sroa_idx335, align 8
  store i8 9, ptr %.sroa.10340.0..sroa_idx341, align 2
  store <4 x i8> <i8 2, i8 0, i8 0, i8 0>, ptr %.sroa.10340.sroa.7.0..sroa.10340.0..sroa_idx341.sroa_idx, align 4
  store ptr %i.cx, ptr %i.cy, align 8
  store ptr @"_ZN76_$LT$console..utils..StyledObject$LT$D$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h8ba3abe9e05663c5E", ptr %.sroa.4345.0..sroa_idx, align 8
  store ptr @305, ptr %i.cz, align 8
  store i64 1, ptr %i.acb, align 8
  store ptr null, ptr %i.acc, align 8
  store ptr %i.cy, ptr %i.acd, align 8
  store i64 1, ptr %i.ace, align 8
  invoke void @_ZN3std2io5stdio6_print17h361a6d98ea723aceE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.cz)
          to label %bb.lq unwind label %bb.lp

.noexc915.thread:                                 ; preds = %bb.lo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  %.sroa.04402.sroa.0.0.copyload = load i64, ptr %i.dd, align 8, !alias.scope !8874, !noalias !8875 ; 3 uses
  %.sroa.04402.sroa.4.0.copyload = load ptr, ptr %.sroa.04402.sroa.4.0..sroa_idx, align 8, !alias.scope !8874, !noalias !8875 ; 3 uses
  %.sroa.04402.sroa.5.0.copyload = load i64, ptr %.sroa.04402.sroa.5.0..sroa_idx, align 8, !alias.scope !8874, !noalias !8875
  call void @llvm.experimental.noalias.scope.decl(metadata !8876)
  call void @llvm.experimental.noalias.scope.decl(metadata !8877)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8878
  store ptr null, ptr %i.g, align 8, !noalias !8876
  store i64 0, ptr %.sroa.64395.sroa.8.8..sroa_idx, align 8, !noalias !8876
  store i8 1, ptr %.sroa.84397.24..sroa_idx, align 8, !noalias !8876
  store i8 9, ptr %.sroa.94400.sroa.5.0..sroa.94400.24..sroa_idx.sroa_idx, align 2, !noalias !8876
  store <4 x i8> <i8 2, i8 0, i8 0, i8 0>, ptr %.sroa.94400.sroa.7.0..sroa.94400.24..sroa_idx.sroa_idx, align 4, !noalias !8876
  invoke fastcc void @_ZN7console5utils5Style4attr17hbad207136d17f2d6E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.h, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.g, i8 noundef 3)
          to label %bb.mf unwind label %bb.md, !noalias !8878

bb.lp:                                            ; preds = %.noexc901.thread
  %i.bra = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr86drop_in_place$LT$console..utils..StyledObject$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h313fc6ceec913453E"(ptr noalias noundef align 8 dereferenceable(56) %i.cx) #55
          to label %.body790 unwind label %.loopexit.split-lp6035.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.lq:                                            ; preds = %.noexc901.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @llvm.experimental.noalias.scope.decl(metadata !8879)
  %.sroa.0.0.copyload.i.i.i.i.i918 = load ptr, ptr %.sroa.0332.sroa.4.0..sroa_idx, align 8, !alias.scope !8880 ; 7 uses
  %.not.i.i.i.i.i.i919 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i918, null
  br i1 %.not.i.i.i.i.i.i919, label %.loopexit7.i947, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i930"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i930": ; preds = %bb.lq
  %.sroa.5.0.copyload.i.i.i.i.i921 = load i64, ptr %.sroa.0332.sroa.8.0..sroa_idx, align 8, !alias.scope !8880 ; 2 uses
  %.sroa.4.0.copyload.i.i.i.i.i923 = load i64, ptr %.sroa.0332.sroa.7.0..sroa_idx, align 8, !alias.scope !8880 ; 9 uses
  %i.brb = icmp eq i64 %.sroa.5.0.copyload.i.i.i.i.i921, 0
  %i.brc = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i923, 0 ; 2 uses
  br i1 %i.brb, label %bb.lr, label %bb.ls

bb.lr:                                            ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i930"
  br i1 %i.brc, label %.loopexit.i.i2943, label %.lr.ph.i.i.i2958.preheader

.lr.ph.i.i.i2958.preheader:                       ; preds = %bb.lr
  %xtraiter9870 = and i64 %.sroa.4.0.copyload.i.i.i.i.i923, 7 ; 2 uses
  %lcmp.mod9871.not = icmp eq i64 %xtraiter9870, 0
end_hunk_2
begin_hunk_3_@_ZN5insta6output15SnapshotPrinter15print_changeset17h296982a1490293ddE:bb.a
  %.not.i.i.i.i.i2952 = icmp eq ptr %i.bsc, null
  br i1 %.not.i.i.i.i.i2952, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2953.loopexit", label %.lr.ph.i3.i.i2947

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2953.loopexit": ; preds = %.lr.ph.i3.i.i2947
  %i.bsd = icmp eq i64 %i.bsb, 0
  %i.bse = select i1 %i.bsd, i64 24, i64 120
  br label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2953"

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2953": ; preds = %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2953.loopexit", %.loopexit.i.i2943
  %.sroa.5.0.lcssa.i.i.i2954 = phi i64 [ 24, %.loopexit.i.i2943 ], [ %i.bse, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2953.loopexit" ]
  %.sroa.0.0.lcssa.i.i.i2955 = phi ptr [ %.sroa.0.0.ph.i.i2945, %.loopexit.i.i2943 ], [ %i.bsa, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2953.loopexit" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i.i2955, i64 noundef %.sroa.5.0.lcssa.i.i.i2954, i64 noundef 8) #51, !noalias !8883
  br label %.loopexit7.i947

bb.ls:                                            ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i930"
  br i1 %i.brc, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2899", label %.lr.ph.i.i2.i2928.preheader

.lr.ph.i.i2.i2928.preheader:                      ; preds = %bb.ls
  %xtraiter9851 = and i64 %.sroa.4.0.copyload.i.i.i.i.i923, 7 ; 2 uses
  %lcmp.mod9852.not = icmp eq i64 %xtraiter9851, 0
  br i1 %lcmp.mod9852.not, label %.lr.ph.i.i2.i2928.prol.loopexit, label %.lr.ph.i.i2.i2928.prol

.lr.ph.i.i2.i2928.prol:                           ; preds = %.lr.ph.i.i2.i2928.preheader, %.lr.ph.i.i2.i2928.prol
  %.sroa.012.015.i.i.i2929.prol = phi ptr [ %.sroa.012.0.i.i.i2931.prol, %.lr.ph.i.i2.i2928.prol ], [ %.sroa.0.0.copyload.i.i.i.i.i918, %.lr.ph.i.i2.i2928.preheader ]
  %.sroa.011.014.i.i.i2930.prol = phi i64 [ %i.bsg, %.lr.ph.i.i2.i2928.prol ], [ %.sroa.4.0.copyload.i.i.i.i.i923, %.lr.ph.i.i2.i2928.preheader ]
  %prol.iter9853 = phi i64 [ %prol.iter9853.next, %.lr.ph.i.i2.i2928.prol ], [ 0, %.lr.ph.i.i2.i2928.preheader ]
  %i.bsf = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i2929.prol, i64 24
  %i.bsg = add i64 %.sroa.011.014.i.i.i2930.prol, -1 ; 2 uses
  %.sroa.012.0.i.i.i2931.prol = load ptr, ptr %i.bsf, align 8, !noalias !8884, !nonnull !17, !noundef !17 ; 3 uses
  %prol.iter9853.next = add i64 %prol.iter9853, 1 ; 2 uses
  %prol.iter9853.cmp.not = icmp eq i64 %prol.iter9853.next, %xtraiter9851
  br i1 %prol.iter9853.cmp.not, label %.lr.ph.i.i2.i2928.prol.loopexit, label %.lr.ph.i.i2.i2928.prol, !llvm.loop !8044

.lr.ph.i.i2.i2928.prol.loopexit:                  ; preds = %.lr.ph.i.i2.i2928.prol, %.lr.ph.i.i2.i2928.preheader
  %.sroa.012.0.i.i.i2931.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.i2928.preheader ], [ %.sroa.012.0.i.i.i2931.prol, %.lr.ph.i.i2.i2928.prol ]
  %.sroa.012.015.i.i.i2929.unr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i918, %.lr.ph.i.i2.i2928.preheader ], [ %.sroa.012.0.i.i.i2931.prol, %.lr.ph.i.i2.i2928.prol ]
  %.sroa.011.014.i.i.i2930.unr = phi i64 [ %.sroa.4.0.copyload.i.i.i.i.i923, %.lr.ph.i.i2.i2928.preheader ], [ %i.bsg, %.lr.ph.i.i2.i2928.prol ]
  %i.bsh = icmp ult i64 %.sroa.4.0.copyload.i.i.i.i.i923, 8
  br i1 %i.bsh, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2899", label %.lr.ph.i.i2.i2928

.lr.ph.i.i2.i2928:                                ; preds = %.lr.ph.i.i2.i2928.prol.loopexit, %.lr.ph.i.i2.i2928
  %.sroa.012.015.i.i.i2929 = phi ptr [ %.sroa.012.0.i.i.i2931.7, %.lr.ph.i.i2.i2928 ], [ %.sroa.012.015.i.i.i2929.unr, %.lr.ph.i.i2.i2928.prol.loopexit ]
  %.sroa.011.014.i.i.i2930 = phi i64 [ %i.bsq, %.lr.ph.i.i2.i2928 ], [ %.sroa.011.014.i.i.i2930.unr, %.lr.ph.i.i2.i2928.prol.loopexit ]
  %i.bsi = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i2929, i64 24
  %.sroa.012.0.i.i.i2931 = load ptr, ptr %i.bsi, align 8, !noalias !8884, !nonnull !17, !noundef !17
  %i.bsj = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i2931, i64 24
  %.sroa.012.0.i.i.i2931.1 = load ptr, ptr %i.bsj, align 8, !noalias !8884, !nonnull !17, !noundef !17
  %i.bsk = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i2931.1, i64 24
  %.sroa.012.0.i.i.i2931.2 = load ptr, ptr %i.bsk, align 8, !noalias !8884, !nonnull !17, !noundef !17
  %i.bsl = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i2931.2, i64 24
  %.sroa.012.0.i.i.i2931.3 = load ptr, ptr %i.bsl, align 8, !noalias !8884, !nonnull !17, !noundef !17
  %i.bsm = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i2931.3, i64 24
  %.sroa.012.0.i.i.i2931.4 = load ptr, ptr %i.bsm, align 8, !noalias !8884, !nonnull !17, !noundef !17
  %i.bsn = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i2931.4, i64 24
  %.sroa.012.0.i.i.i2931.5 = load ptr, ptr %i.bsn, align 8, !noalias !8884, !nonnull !17, !noundef !17
  %i.bso = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i2931.5, i64 24
  %.sroa.012.0.i.i.i2931.6 = load ptr, ptr %i.bso, align 8, !noalias !8884, !nonnull !17, !noundef !17
  %i.bsp = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i2931.6, i64 24
  %i.bsq = add i64 %.sroa.011.014.i.i.i2930, -8   ; 2 uses
  %.sroa.012.0.i.i.i2931.7 = load ptr, ptr %i.bsp, align 8, !noalias !8884, !nonnull !17, !noundef !17 ; 2 uses
  %i.bsr = icmp eq i64 %i.bsq, 0
  br i1 %i.bsr, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2899", label %.lr.ph.i.i2.i2928

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2899": ; preds = %.lr.ph.i.i2.i2928.prol.loopexit, %.lr.ph.i.i2.i2928, %bb.ls
  %.sroa.012.0.lcssa.i.i.i2933 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i918, %bb.ls ], [ %.sroa.012.0.i.i.i2931.lcssa.unr, %.lr.ph.i.i2.i2928.prol.loopexit ], [ %.sroa.012.0.i.i.i2931.7, %.lr.ph.i.i2.i2928 ] ; 3 uses
  %i.bss = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i2933, i64 10
  %i.bst = load i16, ptr %i.bss, align 2, !noalias !8885, !noundef !17
  %.not6012 = icmp eq i16 %i.bst, 0
  br i1 %.not6012, label %.lr.ph.i.i.i.i.i2903, label %.noexc.i940

.lr.ph.i.i.i.i.i2903:                             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2899", %bb.lu
  %.sroa.0.060.i.i.i.i.i2904 = phi ptr [ %i.bsu, %bb.lu ], [ %.sroa.012.0.lcssa.i.i.i2933, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2899" ] ; 4 uses
  %.sroa.5.059.i.i.i.i.i2905 = phi i64 [ %i.btm, %bb.lu ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2899" ] ; 4 uses
  %i.bsu = load ptr, ptr %.sroa.0.060.i.i.i.i.i2904, align 8, !noalias !8886, !noundef !17 ; 5 uses
  %.not.i.i.i.i.i.i.i2906 = icmp eq ptr %i.bsu, null
  br i1 %.not.i.i.i.i.i.i.i2906, label %bb.lv, label %bb.lu

._crit_edge.i.i.i.i.i2910:                        ; preds = %bb.lu
  %i.bsv = zext i16 %i.bto to i64
  %i.bsw = icmp eq i64 %i.btm, 0
  %i.bsx = add nuw nsw i64 %i.bsv, 1              ; 2 uses
  br i1 %i.bsw, label %.noexc.i940, label %bb.lt

bb.lt:                                            ; preds = %._crit_edge.i.i.i.i.i2910
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.bsu, i64 24
  %i.bsz = icmp ult i16 %i.bto, 11
  call void @llvm.assume(i1 %i.bsz), !noalias !8879
  %i.bta = getelementptr inbounds nuw [8 x i8], ptr %i.bsy, i64 %i.bsx ; 2 uses
  %xtraiter9859 = and i64 %i.btm, 7               ; 2 uses
  %lcmp.mod9860.not = icmp eq i64 %xtraiter9859, 0
  br i1 %lcmp.mod9860.not, label %.prol.loopexit9855, label %.prol.preheader9854

.prol.preheader9854:                              ; preds = %bb.lt, %.prol.preheader9854
  %.pn30.in.i.i.i.i.i.i2914.prol = phi ptr [ %i.btb, %.prol.preheader9854 ], [ %i.bta, %bb.lt ]
  %.pn28.in.i.i.i.i.i.i2915.prol = phi i64 [ %.pn28.i.i.i.i.i.i2916.prol, %.prol.preheader9854 ], [ %i.btm, %bb.lt ]
  %prol.iter9861 = phi i64 [ %prol.iter9861.next, %.prol.preheader9854 ], [ 0, %bb.lt ]
  %.pn28.i.i.i.i.i.i2916.prol = add i64 %.pn28.in.i.i.i.i.i.i2915.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i2917.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i2914.prol, align 8, !noalias !8887, !nonnull !17, !noundef !17 ; 2 uses
  %i.btb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2917.prol, i64 24 ; 2 uses
  %prol.iter9861.next = add i64 %prol.iter9861, 1 ; 2 uses
  %prol.iter9861.cmp.not = icmp eq i64 %prol.iter9861.next, %xtraiter9859
  br i1 %prol.iter9861.cmp.not, label %.prol.loopexit9855, label %.prol.preheader9854, !llvm.loop !8061

.prol.loopexit9855:                               ; preds = %.prol.preheader9854, %bb.lt
  %.pn30.i.i.i.i.i.i2917.lcssa.unr = phi ptr [ poison, %bb.lt ], [ %.pn30.i.i.i.i.i.i2917.prol, %.prol.preheader9854 ]
  %.pn30.in.i.i.i.i.i.i2914.unr = phi ptr [ %i.bta, %bb.lt ], [ %i.btb, %.prol.preheader9854 ]
  %.pn28.in.i.i.i.i.i.i2915.unr = phi i64 [ %i.btm, %bb.lt ], [ %.pn28.i.i.i.i.i.i2916.prol, %.prol.preheader9854 ]
  %i.btc = icmp ult i64 %.sroa.5.059.i.i.i.i.i2905, 7
  br i1 %i.btc, label %.noexc.i940, label %.new9856

.new9856:                                         ; preds = %.prol.loopexit9855, %.new9856
  %.pn30.in.i.i.i.i.i.i2914 = phi ptr [ %i.btl, %.new9856 ], [ %.pn30.in.i.i.i.i.i.i2914.unr, %.prol.loopexit9855 ]
  %.pn28.in.i.i.i.i.i.i2915 = phi i64 [ %.pn28.i.i.i.i.i.i2916.7, %.new9856 ], [ %.pn28.in.i.i.i.i.i.i2915.unr, %.prol.loopexit9855 ]
  %.pn30.i.i.i.i.i.i2917 = load ptr, ptr %.pn30.in.i.i.i.i.i.i2914, align 8, !noalias !8887, !nonnull !17, !noundef !17
  %i.btd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2917, i64 24
  %.pn30.i.i.i.i.i.i2917.1 = load ptr, ptr %i.btd, align 8, !noalias !8887, !nonnull !17, !noundef !17
  %i.bte = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2917.1, i64 24
  %.pn30.i.i.i.i.i.i2917.2 = load ptr, ptr %i.bte, align 8, !noalias !8887, !nonnull !17, !noundef !17
  %i.btf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2917.2, i64 24
  %.pn30.i.i.i.i.i.i2917.3 = load ptr, ptr %i.btf, align 8, !noalias !8887, !nonnull !17, !noundef !17
  %i.btg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2917.3, i64 24
  %.pn30.i.i.i.i.i.i2917.4 = load ptr, ptr %i.btg, align 8, !noalias !8887, !nonnull !17, !noundef !17
  %i.bth = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2917.4, i64 24
  %.pn30.i.i.i.i.i.i2917.5 = load ptr, ptr %i.bth, align 8, !noalias !8887, !nonnull !17, !noundef !17
  %i.bti = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2917.5, i64 24
  %.pn30.i.i.i.i.i.i2917.6 = load ptr, ptr %i.bti, align 8, !noalias !8887, !nonnull !17, !noundef !17
  %i.btj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2917.6, i64 24
  %.pn28.i.i.i.i.i.i2916.7 = add i64 %.pn28.in.i.i.i.i.i.i2915, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i2917.7 = load ptr, ptr %i.btj, align 8, !noalias !8887, !nonnull !17, !noundef !17 ; 2 uses
  %i.btk = icmp eq i64 %.pn28.i.i.i.i.i.i2916.7, 0
  %i.btl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2917.7, i64 24
  br i1 %i.btk, label %.noexc.i940, label %.new9856

bb.lu:                                            ; preds = %.lr.ph.i.i.i.i.i2903
  %i.btm = add i64 %.sroa.5.059.i.i.i.i.i2905, 1  ; 5 uses
  %i.btn = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i.i2904, i64 8
  %i.bto = load i16, ptr %i.btn, align 8, !noalias !8886 ; 3 uses
  %.not.i.i.i.i.i.i2907 = icmp eq i64 %.sroa.5.059.i.i.i.i.i2905, 0
  %..i.i.i.i.i.i2908 = select i1 %.not.i.i.i.i.i.i2907, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i2904, i64 noundef %..i.i.i.i.i.i2908, i64 noundef 8) #51, !noalias !8888
  %i.btp = getelementptr inbounds nuw i8, ptr %i.bsu, i64 10
  %i.btq = load i16, ptr %i.btp, align 2, !noalias !8885, !noundef !17
  %i.btr = icmp ult i16 %i.bto, %i.btq
  br i1 %i.btr, label %._crit_edge.i.i.i.i.i2910, label %.lr.ph.i.i.i.i.i2903

bb.lv:                                            ; preds = %.lr.ph.i.i.i.i.i2903
  %.not.i54.i.i.i.i.i2924 = icmp eq i64 %.sroa.5.059.i.i.i.i.i2905, 0
  %..i55.i.i.i.i.i2925 = select i1 %.not.i54.i.i.i.i.i2924, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i2904, i64 noundef %..i55.i.i.i.i.i2925, i64 noundef 8) #51, !noalias !8888
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #54
          to label %.noexc.i.i.i2926 unwind label %bb.lw, !noalias !8889

.noexc.i.i.i2926:                                 ; preds = %bb.lv
  unreachable

bb.lw:                                            ; preds = %bb.lv
  %i.bts = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !8879
  unreachable

.noexc.i940:                                      ; preds = %.prol.loopexit9855, %.new9856, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2899", %._crit_edge.i.i.i.i.i2910
  %.sroa.115178.3 = phi ptr [ %.sroa.012.0.lcssa.i.i.i2933, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2899" ], [ %i.bsu, %._crit_edge.i.i.i.i.i2910 ], [ %.pn30.i.i.i.i.i.i2917.lcssa.unr, %.prol.loopexit9855 ], [ %.pn30.i.i.i.i.i.i2917.7, %.new9856 ] ; 2 uses
  %.sroa.275182.3 = phi i64 [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2899" ], [ %i.bsx, %._crit_edge.i.i.i.i.i2910 ], [ 0, %.new9856 ], [ 0, %.prol.loopexit9855 ]
  %.sroa.405192.07066 = add i64 %.sroa.5.0.copyload.i.i.i.i.i921, -1 ; 2 uses
  %i.btt = icmp eq i64 %.sroa.405192.07066, 0
  br i1 %i.btt, label %.loopexit.i.i2873, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2829"

.loopexit.i.i2873:                                ; preds = %.noexc4.i945, %.noexc.i940
  %.sroa.115178.1.lcssa = phi ptr [ %.sroa.115178.3, %.noexc.i940 ], [ %.sroa.115178.2, %.noexc4.i945 ] ; 3 uses
  %i.btu = load ptr, ptr %.sroa.115178.1.lcssa, align 8, !noalias !8890, !noundef !17 ; 2 uses
  %.not.i.i4.i.i.i2876 = icmp eq ptr %i.btu, null
  br i1 %.not.i.i4.i.i.i2876, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2883", label %.lr.ph.i3.i.i2877

.lr.ph.i3.i.i2877:                                ; preds = %.loopexit.i.i2873, %.lr.ph.i3.i.i2877
  %i.btv = phi ptr [ %i.btx, %.lr.ph.i3.i.i2877 ], [ %i.btu, %.loopexit.i.i2873 ] ; 3 uses
  %.sroa.0.06.i.i.i2878 = phi ptr [ %i.btv, %.lr.ph.i3.i.i2877 ], [ %.sroa.115178.1.lcssa, %.loopexit.i.i2873 ]
  %.sroa.5.05.i.i.i2879 = phi i64 [ %i.btw, %.lr.ph.i3.i.i2877 ], [ 0, %.loopexit.i.i2873 ] ; 2 uses
  %i.btw = add i64 %.sroa.5.05.i.i.i2879, 1       ; 2 uses
  %.not.i.i.i.i2880 = icmp eq i64 %.sroa.5.05.i.i.i2879, 0
  %..i.i.i.i2881 = select i1 %.not.i.i.i.i2880, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i.i2878, i64 noundef %..i.i.i.i2881, i64 noundef 8) #51, !noalias !8891
  %i.btx = load ptr, ptr %i.btv, align 8, !noalias !8890, !noundef !17 ; 2 uses
  %.not.i.i.i.i.i2882 = icmp eq ptr %i.btx, null
  br i1 %.not.i.i.i.i.i2882, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2883.loopexit", label %.lr.ph.i3.i.i2877

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2883.loopexit": ; preds = %.lr.ph.i3.i.i2877
  %i.bty = icmp eq i64 %i.btw, 0
  %i.btz = select i1 %i.bty, i64 24, i64 120
  br label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2883"

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2883": ; preds = %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2883.loopexit", %.loopexit.i.i2873
  %.sroa.5.0.lcssa.i.i.i2884 = phi i64 [ 24, %.loopexit.i.i2873 ], [ %i.btz, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2883.loopexit" ]
  %.sroa.0.0.lcssa.i.i.i2885 = phi ptr [ %.sroa.115178.1.lcssa, %.loopexit.i.i2873 ], [ %i.btv, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2883.loopexit" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i.i2885, i64 noundef %.sroa.5.0.lcssa.i.i.i2884, i64 noundef 8) #51, !noalias !8891
  br label %.loopexit7.i947

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2829": ; preds = %.noexc.i940, %.noexc4.i945
  %.sroa.405192.07069 = phi i64 [ %.sroa.405192.0, %.noexc4.i945 ], [ %.sroa.405192.07066, %.noexc.i940 ]
  %.sroa.275182.17068 = phi i64 [ %.sroa.275182.2, %.noexc4.i945 ], [ %.sroa.275182.3, %.noexc.i940 ] ; 2 uses
  %.sroa.115178.17067 = phi ptr [ %.sroa.115178.2, %.noexc4.i945 ], [ %.sroa.115178.3, %.noexc.i940 ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.115178.17067) ]
  %i.bua = getelementptr inbounds nuw i8, ptr %.sroa.115178.17067, i64 10
  %i.bub = load i16, ptr %i.bua, align 2, !noalias !8892, !noundef !17
  %i.buc = zext i16 %i.bub to i64
  %i.bud = icmp ult i64 %.sroa.275182.17068, %i.buc
  br i1 %i.bud, label %._crit_edge.i.i.i.i.i2840.thread, label %.lr.ph.i.i.i.i.i2833

._crit_edge.i.i.i.i.i2840.thread:                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2829"
  %i.bue = add nuw nsw i64 %.sroa.275182.17068, 1
  br label %.noexc4.i945

.lr.ph.i.i.i.i.i2833:                             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2829", %bb.ly
  %.sroa.0.060.i.i.i.i.i2834 = phi ptr [ %i.buf, %bb.ly ], [ %.sroa.115178.17067, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2829" ] ; 4 uses
  %.sroa.5.059.i.i.i.i.i2835 = phi i64 [ %i.bux, %bb.ly ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2829" ] ; 4 uses
  %i.buf = load ptr, ptr %.sroa.0.060.i.i.i.i.i2834, align 8, !noalias !8893, !noundef !17 ; 5 uses
  %.not.i.i.i.i.i.i.i2836 = icmp eq ptr %i.buf, null
  br i1 %.not.i.i.i.i.i.i.i2836, label %bb.lz, label %bb.ly

._crit_edge.i.i.i.i.i2840:                        ; preds = %bb.ly
  %i.bug = zext i16 %i.buz to i64
  %i.buh = icmp eq i64 %i.bux, 0
  %i.bui = add nuw nsw i64 %i.bug, 1              ; 2 uses
  br i1 %i.buh, label %.noexc4.i945, label %bb.lx

bb.lx:                                            ; preds = %._crit_edge.i.i.i.i.i2840
  %i.buj = getelementptr inbounds nuw i8, ptr %i.buf, i64 24
  %i.buk = icmp ult i16 %i.buz, 11
  call void @llvm.assume(i1 %i.buk), !noalias !8879
  %i.bul = getelementptr inbounds nuw [8 x i8], ptr %i.buj, i64 %i.bui ; 2 uses
  %xtraiter9867 = and i64 %i.bux, 7               ; 2 uses
  %lcmp.mod9868.not = icmp eq i64 %xtraiter9867, 0
  br i1 %lcmp.mod9868.not, label %.prol.loopexit9863, label %.prol.preheader9862

.prol.preheader9862:                              ; preds = %bb.lx, %.prol.preheader9862
  %.pn30.in.i.i.i.i.i.i2844.prol = phi ptr [ %i.bum, %.prol.preheader9862 ], [ %i.bul, %bb.lx ]
  %.pn28.in.i.i.i.i.i.i2845.prol = phi i64 [ %.pn28.i.i.i.i.i.i2846.prol, %.prol.preheader9862 ], [ %i.bux, %bb.lx ]
  %prol.iter9869 = phi i64 [ %prol.iter9869.next, %.prol.preheader9862 ], [ 0, %bb.lx ]
  %.pn28.i.i.i.i.i.i2846.prol = add i64 %.pn28.in.i.i.i.i.i.i2845.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i2847.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i2844.prol, align 8, !noalias !8894, !nonnull !17, !noundef !17 ; 2 uses
  %i.bum = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2847.prol, i64 24 ; 2 uses
  %prol.iter9869.next = add i64 %prol.iter9869, 1 ; 2 uses
  %prol.iter9869.cmp.not = icmp eq i64 %prol.iter9869.next, %xtraiter9867
  br i1 %prol.iter9869.cmp.not, label %.prol.loopexit9863, label %.prol.preheader9862, !llvm.loop !8090

.prol.loopexit9863:                               ; preds = %.prol.preheader9862, %bb.lx
  %.pn30.i.i.i.i.i.i2847.lcssa.unr = phi ptr [ poison, %bb.lx ], [ %.pn30.i.i.i.i.i.i2847.prol, %.prol.preheader9862 ]
  %.pn30.in.i.i.i.i.i.i2844.unr = phi ptr [ %i.bul, %bb.lx ], [ %i.bum, %.prol.preheader9862 ]
  %.pn28.in.i.i.i.i.i.i2845.unr = phi i64 [ %i.bux, %bb.lx ], [ %.pn28.i.i.i.i.i.i2846.prol, %.prol.preheader9862 ]
  %i.bun = icmp ult i64 %.sroa.5.059.i.i.i.i.i2835, 7
  br i1 %i.bun, label %.noexc4.i945, label %.new9864

.new9864:                                         ; preds = %.prol.loopexit9863, %.new9864
  %.pn30.in.i.i.i.i.i.i2844 = phi ptr [ %i.buw, %.new9864 ], [ %.pn30.in.i.i.i.i.i.i2844.unr, %.prol.loopexit9863 ]
  %.pn28.in.i.i.i.i.i.i2845 = phi i64 [ %.pn28.i.i.i.i.i.i2846.7, %.new9864 ], [ %.pn28.in.i.i.i.i.i.i2845.unr, %.prol.loopexit9863 ]
  %.pn30.i.i.i.i.i.i2847 = load ptr, ptr %.pn30.in.i.i.i.i.i.i2844, align 8, !noalias !8894, !nonnull !17, !noundef !17
  %i.buo = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2847, i64 24
  %.pn30.i.i.i.i.i.i2847.1 = load ptr, ptr %i.buo, align 8, !noalias !8894, !nonnull !17, !noundef !17
  %i.bup = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2847.1, i64 24
  %.pn30.i.i.i.i.i.i2847.2 = load ptr, ptr %i.bup, align 8, !noalias !8894, !nonnull !17, !noundef !17
  %i.buq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2847.2, i64 24
  %.pn30.i.i.i.i.i.i2847.3 = load ptr, ptr %i.buq, align 8, !noalias !8894, !nonnull !17, !noundef !17
  %i.bur = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2847.3, i64 24
  %.pn30.i.i.i.i.i.i2847.4 = load ptr, ptr %i.bur, align 8, !noalias !8894, !nonnull !17, !noundef !17
  %i.bus = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2847.4, i64 24
  %.pn30.i.i.i.i.i.i2847.5 = load ptr, ptr %i.bus, align 8, !noalias !8894, !nonnull !17, !noundef !17
  %i.but = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2847.5, i64 24
  %.pn30.i.i.i.i.i.i2847.6 = load ptr, ptr %i.but, align 8, !noalias !8894, !nonnull !17, !noundef !17
  %i.buu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2847.6, i64 24
  %.pn28.i.i.i.i.i.i2846.7 = add i64 %.pn28.in.i.i.i.i.i.i2845, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i2847.7 = load ptr, ptr %i.buu, align 8, !noalias !8894, !nonnull !17, !noundef !17 ; 2 uses
  %i.buv = icmp eq i64 %.pn28.i.i.i.i.i.i2846.7, 0
  %i.buw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2847.7, i64 24
  br i1 %i.buv, label %.noexc4.i945, label %.new9864

bb.ly:                                            ; preds = %.lr.ph.i.i.i.i.i2833
  %i.bux = add i64 %.sroa.5.059.i.i.i.i.i2835, 1  ; 5 uses
  %i.buy = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i.i2834, i64 8
  %i.buz = load i16, ptr %i.buy, align 8, !noalias !8893 ; 3 uses
  %.not.i.i.i.i.i.i2837 = icmp eq i64 %.sroa.5.059.i.i.i.i.i2835, 0
  %..i.i.i.i.i.i2838 = select i1 %.not.i.i.i.i.i.i2837, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i2834, i64 noundef %..i.i.i.i.i.i2838, i64 noundef 8) #51, !noalias !8895
  %i.bva = getelementptr inbounds nuw i8, ptr %i.buf, i64 10
  %i.bvb = load i16, ptr %i.bva, align 2, !noalias !8892, !noundef !17
  %i.bvc = icmp ult i16 %i.buz, %i.bvb
  br i1 %i.bvc, label %._crit_edge.i.i.i.i.i2840, label %.lr.ph.i.i.i.i.i2833

bb.lz:                                            ; preds = %.lr.ph.i.i.i.i.i2833
  %.not.i54.i.i.i.i.i2854 = icmp eq i64 %.sroa.5.059.i.i.i.i.i2835, 0
  %..i55.i.i.i.i.i2855 = select i1 %.not.i54.i.i.i.i.i2854, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i2834, i64 noundef %..i55.i.i.i.i.i2855, i64 noundef 8) #51, !noalias !8895
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #54
          to label %.noexc.i.i.i2856 unwind label %bb.ma, !noalias !8896

.noexc.i.i.i2856:                                 ; preds = %bb.lz
  unreachable

bb.ma:                                            ; preds = %bb.lz
  %i.bvd = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !8879
  unreachable

.noexc4.i945:                                     ; preds = %.prol.loopexit9863, %.new9864, %._crit_edge.i.i.i.i.i2840.thread, %._crit_edge.i.i.i.i.i2840
  %.sroa.115178.2 = phi ptr [ %i.buf, %._crit_edge.i.i.i.i.i2840 ], [ %.sroa.115178.17067, %._crit_edge.i.i.i.i.i2840.thread ], [ %.pn30.i.i.i.i.i.i2847.lcssa.unr, %.prol.loopexit9863 ], [ %.pn30.i.i.i.i.i.i2847.7, %.new9864 ] ; 2 uses
  %.sroa.275182.2 = phi i64 [ %i.bui, %._crit_edge.i.i.i.i.i2840 ], [ %i.bue, %._crit_edge.i.i.i.i.i2840.thread ], [ 0, %.new9864 ], [ 0, %.prol.loopexit9863 ]
  %.sroa.405192.0 = add i64 %.sroa.405192.07069, -1 ; 2 uses
  %i.bve = icmp eq i64 %.sroa.405192.0, 0
  br i1 %i.bve, label %.loopexit.i.i2873, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2829"

.loopexit7.i947:                                  ; preds = %bb.lq, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2883", %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i2953"
  %.val.i948 = load i64, ptr %i.cx, align 8, !range !30, !alias.scope !8879, !noundef !17 ; 2 uses
  %switch6.i949 = icmp sgt i64 %.val.i948, 0
  br i1 %switch6.i949, label %bb.mb, label %"_ZN4core3ptr86drop_in_place$LT$console..utils..StyledObject$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h313fc6ceec913453E.exit953"

bb.mb:                                            ; preds = %.loopexit7.i947
  %.val1.i950 = load ptr, ptr %i.acf, align 8, !alias.scope !8879, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i950, i64 noundef %.val.i948, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !8897
  br label %"_ZN4core3ptr86drop_in_place$LT$console..utils..StyledObject$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h313fc6ceec913453E.exit953"

"_ZN4core3ptr86drop_in_place$LT$console..utils..StyledObject$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h313fc6ceec913453E.exit953": ; preds = %bb.mb, %.loopexit7.i947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  br label %bb.mc

bb.mc:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$console..utils..StyledObject$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h313fc6ceec913453E.exit996", %"_ZN4core3ptr86drop_in_place$LT$console..utils..StyledObject$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h313fc6ceec913453E.exit953"
  %i.bvf = icmp eq ptr %.sroa.0451.17079, %i.bqs  ; 2 uses
  %.sroa.0451.1.idx = select i1 %i.bvf, i64 0, i64 24
  %.sroa.0451.1 = getelementptr inbounds nuw i8, ptr %.sroa.0451.17079, i64 %.sroa.0451.1.idx
  br i1 %i.bvf, label %.loopexit6037, label %.lr.ph7080

bb.md:                                            ; preds = %.noexc915.thread
  %i.bvg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %switch.i955 = icmp sgt i64 %.sroa.04402.sroa.0.0.copyload, 0
  br i1 %switch.i955, label %bb.me, label %.body790

bb.me:                                            ; preds = %bb.md
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04402.sroa.4.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.04402.sroa.4.0.copyload, i64 noundef %.sroa.04402.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !8898
  br label %.body790

bb.mf:                                            ; preds = %.noexc915.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8878
  %.sroa.64395.sroa.4.8.copyload4782 = load ptr, ptr %i.h, align 8, !noalias !8876
  %i.bvh = load <8 x i8>, ptr %.sroa.84397.24..sroa_idx4398, align 8, !noalias !8876
  %i.bvi = load <2 x i64>, ptr %.sroa.64395.sroa.7.8..sroa_idx4783, align 8, !noalias !8876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8878
  store i64 %.sroa.04402.sroa.0.0.copyload, ptr %i.da, align 8, !alias.scope !8878
  store ptr %.sroa.04402.sroa.4.0.copyload, ptr %.sroa.54393.0..sroa_idx, align 8, !alias.scope !8878
  store i64 %.sroa.04402.sroa.5.0.copyload, ptr %.sroa.64395.0..sroa_idx, align 8, !alias.scope !8878
  store ptr %.sroa.64395.sroa.4.8.copyload4782, ptr %.sroa.64395.sroa.4.0..sroa.64395.0..sroa_idx.sroa_idx, align 8, !alias.scope !8878
  store <2 x i64> %i.bvi, ptr %.sroa.64395.sroa.7.0..sroa.64395.0..sroa_idx.sroa_idx, align 8, !alias.scope !8878
  store <8 x i8> %i.bvh, ptr %.sroa.84397.0..sroa_idx, align 8, !alias.scope !8878
  store ptr %i.da, ptr %i.db, align 8
  store ptr @"_ZN76_$LT$console..utils..StyledObject$LT$D$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h8ba3abe9e05663c5E", ptr %.sroa.4318.0..sroa_idx, align 8
  store ptr @305, ptr %i.dc, align 8
  store i64 1, ptr %i.acg, align 8
  store ptr null, ptr %i.ach, align 8
  store ptr %i.db, ptr %i.aci, align 8
  store i64 1, ptr %i.acj, align 8
  invoke void @_ZN3std2io5stdio6_print17h361a6d98ea723aceE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.dc)
          to label %bb.mh unwind label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  %i.bvj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr86drop_in_place$LT$console..utils..StyledObject$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h313fc6ceec913453E"(ptr noalias noundef align 8 dereferenceable(56) %i.da) #55
          to label %.body790 unwind label %.loopexit.split-lp6035.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mh:                                            ; preds = %bb.mf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  call void @llvm.experimental.noalias.scope.decl(metadata !8899)
  %.sroa.0.0.copyload.i.i.i.i.i961 = load ptr, ptr %.sroa.64395.sroa.4.0..sroa.64395.0..sroa_idx.sroa_idx, align 8, !alias.scope !8900 ; 7 uses
  %.not.i.i.i.i.i.i962 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i961, null
  br i1 %.not.i.i.i.i.i.i962, label %.loopexit7.i990, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i973"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i973": ; preds = %bb.mh
  %.sroa.5.0.copyload.i.i.i.i.i964 = load i64, ptr %.sroa.64395.sroa.8.0..sroa.64395.0..sroa_idx.sroa_idx, align 8, !alias.scope !8900 ; 2 uses
  %.sroa.4.0.copyload.i.i.i.i.i966 = load i64, ptr %.sroa.64395.sroa.7.0..sroa.64395.0..sroa_idx.sroa_idx, align 8, !alias.scope !8900 ; 9 uses
  %i.bvk = icmp eq i64 %.sroa.5.0.copyload.i.i.i.i.i964, 0
  %i.bvl = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i966, 0 ; 2 uses
  br i1 %i.bvk, label %bb.mi, label %bb.mj

bb.mi:                                            ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i973"
  br i1 %i.bvl, label %.loopexit.i.i3083, label %.lr.ph.i.i.i3098.preheader

.lr.ph.i.i.i3098.preheader:                       ; preds = %bb.mi
  %xtraiter9892 = and i64 %.sroa.4.0.copyload.i.i.i.i.i966, 7 ; 2 uses
  %lcmp.mod9893.not = icmp eq i64 %xtraiter9892, 0
  br i1 %lcmp.mod9893.not, label %.lr.ph.i.i.i3098.prol.loopexit, label %.lr.ph.i.i.i3098.prol

.lr.ph.i.i.i3098.prol:                            ; preds = %.lr.ph.i.i.i3098.preheader, %.lr.ph.i.i.i3098.prol
  %.sroa.019.021.i.i.i3099.prol = phi ptr [ %i.bvn, %.lr.ph.i.i.i3098.prol ], [ %.sroa.0.0.copyload.i.i.i.i.i961, %.lr.ph.i.i.i3098.preheader ]
  %.sroa.018.020.i.i.i3100.prol = phi i64 [ %i.bvo, %.lr.ph.i.i.i3098.prol ], [ %.sroa.4.0.copyload.i.i.i.i.i966, %.lr.ph.i.i.i3098.preheader ]
  %prol.iter9894 = phi i64 [ %prol.iter9894.next, %.lr.ph.i.i.i3098.prol ], [ 0, %.lr.ph.i.i.i3098.preheader ]
  %i.bvm = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i.i3099.prol, i64 24
  %i.bvn = load ptr, ptr %i.bvm, align 8, !noalias !8901, !nonnull !17, !noundef !17 ; 3 uses
  %i.bvo = add i64 %.sroa.018.020.i.i.i3100.prol, -1 ; 2 uses
  %prol.iter9894.next = add i64 %prol.iter9894, 1 ; 2 uses
  %prol.iter9894.cmp.not = icmp eq i64 %prol.iter9894.next, %xtraiter9892
  br i1 %prol.iter9894.cmp.not, label %.lr.ph.i.i.i3098.prol.loopexit, label %.lr.ph.i.i.i3098.prol, !llvm.loop !8115
end_hunk_3
begin_hunk_4_@_ZN5insta6output15SnapshotPrinter15print_changeset17h296982a1490293ddE:bb.a
  %.not.i.i.i.i.i3092 = icmp eq ptr %i.bwl, null
  br i1 %.not.i.i.i.i.i3092, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3093.loopexit", label %.lr.ph.i3.i.i3087

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3093.loopexit": ; preds = %.lr.ph.i3.i.i3087
  %i.bwm = icmp eq i64 %i.bwk, 0
  %i.bwn = select i1 %i.bwm, i64 24, i64 120
  br label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3093"

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3093": ; preds = %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3093.loopexit", %.loopexit.i.i3083
  %.sroa.5.0.lcssa.i.i.i3094 = phi i64 [ 24, %.loopexit.i.i3083 ], [ %i.bwn, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3093.loopexit" ]
  %.sroa.0.0.lcssa.i.i.i3095 = phi ptr [ %.sroa.0.0.ph.i.i3085, %.loopexit.i.i3083 ], [ %i.bwj, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3093.loopexit" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i.i3095, i64 noundef %.sroa.5.0.lcssa.i.i.i3094, i64 noundef 8) #51, !noalias !8903
  br label %.loopexit7.i990

bb.mj:                                            ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i973"
  br i1 %i.bvl, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3039", label %.lr.ph.i.i2.i3068.preheader

.lr.ph.i.i2.i3068.preheader:                      ; preds = %bb.mj
  %xtraiter9873 = and i64 %.sroa.4.0.copyload.i.i.i.i.i966, 7 ; 2 uses
  %lcmp.mod9874.not = icmp eq i64 %xtraiter9873, 0
  br i1 %lcmp.mod9874.not, label %.lr.ph.i.i2.i3068.prol.loopexit, label %.lr.ph.i.i2.i3068.prol

.lr.ph.i.i2.i3068.prol:                           ; preds = %.lr.ph.i.i2.i3068.preheader, %.lr.ph.i.i2.i3068.prol
  %.sroa.012.015.i.i.i3069.prol = phi ptr [ %.sroa.012.0.i.i.i3071.prol, %.lr.ph.i.i2.i3068.prol ], [ %.sroa.0.0.copyload.i.i.i.i.i961, %.lr.ph.i.i2.i3068.preheader ]
  %.sroa.011.014.i.i.i3070.prol = phi i64 [ %i.bwp, %.lr.ph.i.i2.i3068.prol ], [ %.sroa.4.0.copyload.i.i.i.i.i966, %.lr.ph.i.i2.i3068.preheader ]
  %prol.iter9875 = phi i64 [ %prol.iter9875.next, %.lr.ph.i.i2.i3068.prol ], [ 0, %.lr.ph.i.i2.i3068.preheader ]
  %i.bwo = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i3069.prol, i64 24
  %i.bwp = add i64 %.sroa.011.014.i.i.i3070.prol, -1 ; 2 uses
  %.sroa.012.0.i.i.i3071.prol = load ptr, ptr %i.bwo, align 8, !noalias !8904, !nonnull !17, !noundef !17 ; 3 uses
  %prol.iter9875.next = add i64 %prol.iter9875, 1 ; 2 uses
  %prol.iter9875.cmp.not = icmp eq i64 %prol.iter9875.next, %xtraiter9873
  br i1 %prol.iter9875.cmp.not, label %.lr.ph.i.i2.i3068.prol.loopexit, label %.lr.ph.i.i2.i3068.prol, !llvm.loop !8125

.lr.ph.i.i2.i3068.prol.loopexit:                  ; preds = %.lr.ph.i.i2.i3068.prol, %.lr.ph.i.i2.i3068.preheader
  %.sroa.012.0.i.i.i3071.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.i3068.preheader ], [ %.sroa.012.0.i.i.i3071.prol, %.lr.ph.i.i2.i3068.prol ]
  %.sroa.012.015.i.i.i3069.unr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i961, %.lr.ph.i.i2.i3068.preheader ], [ %.sroa.012.0.i.i.i3071.prol, %.lr.ph.i.i2.i3068.prol ]
  %.sroa.011.014.i.i.i3070.unr = phi i64 [ %.sroa.4.0.copyload.i.i.i.i.i966, %.lr.ph.i.i2.i3068.preheader ], [ %i.bwp, %.lr.ph.i.i2.i3068.prol ]
  %i.bwq = icmp ult i64 %.sroa.4.0.copyload.i.i.i.i.i966, 8
  br i1 %i.bwq, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3039", label %.lr.ph.i.i2.i3068

.lr.ph.i.i2.i3068:                                ; preds = %.lr.ph.i.i2.i3068.prol.loopexit, %.lr.ph.i.i2.i3068
  %.sroa.012.015.i.i.i3069 = phi ptr [ %.sroa.012.0.i.i.i3071.7, %.lr.ph.i.i2.i3068 ], [ %.sroa.012.015.i.i.i3069.unr, %.lr.ph.i.i2.i3068.prol.loopexit ]
  %.sroa.011.014.i.i.i3070 = phi i64 [ %i.bwz, %.lr.ph.i.i2.i3068 ], [ %.sroa.011.014.i.i.i3070.unr, %.lr.ph.i.i2.i3068.prol.loopexit ]
  %i.bwr = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i3069, i64 24
  %.sroa.012.0.i.i.i3071 = load ptr, ptr %i.bwr, align 8, !noalias !8904, !nonnull !17, !noundef !17
  %i.bws = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i3071, i64 24
  %.sroa.012.0.i.i.i3071.1 = load ptr, ptr %i.bws, align 8, !noalias !8904, !nonnull !17, !noundef !17
  %i.bwt = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i3071.1, i64 24
  %.sroa.012.0.i.i.i3071.2 = load ptr, ptr %i.bwt, align 8, !noalias !8904, !nonnull !17, !noundef !17
  %i.bwu = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i3071.2, i64 24
  %.sroa.012.0.i.i.i3071.3 = load ptr, ptr %i.bwu, align 8, !noalias !8904, !nonnull !17, !noundef !17
  %i.bwv = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i3071.3, i64 24
  %.sroa.012.0.i.i.i3071.4 = load ptr, ptr %i.bwv, align 8, !noalias !8904, !nonnull !17, !noundef !17
  %i.bww = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i3071.4, i64 24
  %.sroa.012.0.i.i.i3071.5 = load ptr, ptr %i.bww, align 8, !noalias !8904, !nonnull !17, !noundef !17
  %i.bwx = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i3071.5, i64 24
  %.sroa.012.0.i.i.i3071.6 = load ptr, ptr %i.bwx, align 8, !noalias !8904, !nonnull !17, !noundef !17
  %i.bwy = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i3071.6, i64 24
  %i.bwz = add i64 %.sroa.011.014.i.i.i3070, -8   ; 2 uses
  %.sroa.012.0.i.i.i3071.7 = load ptr, ptr %i.bwy, align 8, !noalias !8904, !nonnull !17, !noundef !17 ; 2 uses
  %i.bxa = icmp eq i64 %i.bwz, 0
  br i1 %i.bxa, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3039", label %.lr.ph.i.i2.i3068

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3039": ; preds = %.lr.ph.i.i2.i3068.prol.loopexit, %.lr.ph.i.i2.i3068, %bb.mj
  %.sroa.012.0.lcssa.i.i.i3073 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i961, %bb.mj ], [ %.sroa.012.0.i.i.i3071.lcssa.unr, %.lr.ph.i.i2.i3068.prol.loopexit ], [ %.sroa.012.0.i.i.i3071.7, %.lr.ph.i.i2.i3068 ] ; 3 uses
  %i.bxb = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i3073, i64 10
  %i.bxc = load i16, ptr %i.bxb, align 2, !noalias !8905, !noundef !17
  %.not6013 = icmp eq i16 %i.bxc, 0
  br i1 %.not6013, label %.lr.ph.i.i.i.i.i3043, label %.noexc.i983

.lr.ph.i.i.i.i.i3043:                             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3039", %bb.ml
  %.sroa.0.060.i.i.i.i.i3044 = phi ptr [ %i.bxd, %bb.ml ], [ %.sroa.012.0.lcssa.i.i.i3073, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3039" ] ; 4 uses
  %.sroa.5.059.i.i.i.i.i3045 = phi i64 [ %i.bxv, %bb.ml ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3039" ] ; 4 uses
  %i.bxd = load ptr, ptr %.sroa.0.060.i.i.i.i.i3044, align 8, !noalias !8906, !noundef !17 ; 5 uses
  %.not.i.i.i.i.i.i.i3046 = icmp eq ptr %i.bxd, null
  br i1 %.not.i.i.i.i.i.i.i3046, label %bb.mm, label %bb.ml

._crit_edge.i.i.i.i.i3050:                        ; preds = %bb.ml
  %i.bxe = zext i16 %i.bxx to i64
  %i.bxf = icmp eq i64 %i.bxv, 0
  %i.bxg = add nuw nsw i64 %i.bxe, 1              ; 2 uses
  br i1 %i.bxf, label %.noexc.i983, label %bb.mk

bb.mk:                                            ; preds = %._crit_edge.i.i.i.i.i3050
  %i.bxh = getelementptr inbounds nuw i8, ptr %i.bxd, i64 24
  %i.bxi = icmp ult i16 %i.bxx, 11
  call void @llvm.assume(i1 %i.bxi), !noalias !8899
  %i.bxj = getelementptr inbounds nuw [8 x i8], ptr %i.bxh, i64 %i.bxg ; 2 uses
  %xtraiter9881 = and i64 %i.bxv, 7               ; 2 uses
  %lcmp.mod9882.not = icmp eq i64 %xtraiter9881, 0
  br i1 %lcmp.mod9882.not, label %.prol.loopexit9877, label %.prol.preheader9876

.prol.preheader9876:                              ; preds = %bb.mk, %.prol.preheader9876
  %.pn30.in.i.i.i.i.i.i3054.prol = phi ptr [ %i.bxk, %.prol.preheader9876 ], [ %i.bxj, %bb.mk ]
  %.pn28.in.i.i.i.i.i.i3055.prol = phi i64 [ %.pn28.i.i.i.i.i.i3056.prol, %.prol.preheader9876 ], [ %i.bxv, %bb.mk ]
  %prol.iter9883 = phi i64 [ %prol.iter9883.next, %.prol.preheader9876 ], [ 0, %bb.mk ]
  %.pn28.i.i.i.i.i.i3056.prol = add i64 %.pn28.in.i.i.i.i.i.i3055.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i3057.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i3054.prol, align 8, !noalias !8907, !nonnull !17, !noundef !17 ; 2 uses
  %i.bxk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3057.prol, i64 24 ; 2 uses
  %prol.iter9883.next = add i64 %prol.iter9883, 1 ; 2 uses
  %prol.iter9883.cmp.not = icmp eq i64 %prol.iter9883.next, %xtraiter9881
  br i1 %prol.iter9883.cmp.not, label %.prol.loopexit9877, label %.prol.preheader9876, !llvm.loop !8142

.prol.loopexit9877:                               ; preds = %.prol.preheader9876, %bb.mk
  %.pn30.i.i.i.i.i.i3057.lcssa.unr = phi ptr [ poison, %bb.mk ], [ %.pn30.i.i.i.i.i.i3057.prol, %.prol.preheader9876 ]
  %.pn30.in.i.i.i.i.i.i3054.unr = phi ptr [ %i.bxj, %bb.mk ], [ %i.bxk, %.prol.preheader9876 ]
  %.pn28.in.i.i.i.i.i.i3055.unr = phi i64 [ %i.bxv, %bb.mk ], [ %.pn28.i.i.i.i.i.i3056.prol, %.prol.preheader9876 ]
  %i.bxl = icmp ult i64 %.sroa.5.059.i.i.i.i.i3045, 7
  br i1 %i.bxl, label %.noexc.i983, label %.new9878

.new9878:                                         ; preds = %.prol.loopexit9877, %.new9878
  %.pn30.in.i.i.i.i.i.i3054 = phi ptr [ %i.bxu, %.new9878 ], [ %.pn30.in.i.i.i.i.i.i3054.unr, %.prol.loopexit9877 ]
  %.pn28.in.i.i.i.i.i.i3055 = phi i64 [ %.pn28.i.i.i.i.i.i3056.7, %.new9878 ], [ %.pn28.in.i.i.i.i.i.i3055.unr, %.prol.loopexit9877 ]
  %.pn30.i.i.i.i.i.i3057 = load ptr, ptr %.pn30.in.i.i.i.i.i.i3054, align 8, !noalias !8907, !nonnull !17, !noundef !17
  %i.bxm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3057, i64 24
  %.pn30.i.i.i.i.i.i3057.1 = load ptr, ptr %i.bxm, align 8, !noalias !8907, !nonnull !17, !noundef !17
  %i.bxn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3057.1, i64 24
  %.pn30.i.i.i.i.i.i3057.2 = load ptr, ptr %i.bxn, align 8, !noalias !8907, !nonnull !17, !noundef !17
  %i.bxo = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3057.2, i64 24
  %.pn30.i.i.i.i.i.i3057.3 = load ptr, ptr %i.bxo, align 8, !noalias !8907, !nonnull !17, !noundef !17
  %i.bxp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3057.3, i64 24
  %.pn30.i.i.i.i.i.i3057.4 = load ptr, ptr %i.bxp, align 8, !noalias !8907, !nonnull !17, !noundef !17
  %i.bxq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3057.4, i64 24
  %.pn30.i.i.i.i.i.i3057.5 = load ptr, ptr %i.bxq, align 8, !noalias !8907, !nonnull !17, !noundef !17
  %i.bxr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3057.5, i64 24
  %.pn30.i.i.i.i.i.i3057.6 = load ptr, ptr %i.bxr, align 8, !noalias !8907, !nonnull !17, !noundef !17
  %i.bxs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3057.6, i64 24
  %.pn28.i.i.i.i.i.i3056.7 = add i64 %.pn28.in.i.i.i.i.i.i3055, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i3057.7 = load ptr, ptr %i.bxs, align 8, !noalias !8907, !nonnull !17, !noundef !17 ; 2 uses
  %i.bxt = icmp eq i64 %.pn28.i.i.i.i.i.i3056.7, 0
  %i.bxu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3057.7, i64 24
  br i1 %i.bxt, label %.noexc.i983, label %.new9878

bb.ml:                                            ; preds = %.lr.ph.i.i.i.i.i3043
  %i.bxv = add i64 %.sroa.5.059.i.i.i.i.i3045, 1  ; 5 uses
  %i.bxw = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i.i3044, i64 8
  %i.bxx = load i16, ptr %i.bxw, align 8, !noalias !8906 ; 3 uses
  %.not.i.i.i.i.i.i3047 = icmp eq i64 %.sroa.5.059.i.i.i.i.i3045, 0
  %..i.i.i.i.i.i3048 = select i1 %.not.i.i.i.i.i.i3047, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i3044, i64 noundef %..i.i.i.i.i.i3048, i64 noundef 8) #51, !noalias !8908
  %i.bxy = getelementptr inbounds nuw i8, ptr %i.bxd, i64 10
  %i.bxz = load i16, ptr %i.bxy, align 2, !noalias !8905, !noundef !17
  %i.bya = icmp ult i16 %i.bxx, %i.bxz
  br i1 %i.bya, label %._crit_edge.i.i.i.i.i3050, label %.lr.ph.i.i.i.i.i3043

bb.mm:                                            ; preds = %.lr.ph.i.i.i.i.i3043
  %.not.i54.i.i.i.i.i3064 = icmp eq i64 %.sroa.5.059.i.i.i.i.i3045, 0
  %..i55.i.i.i.i.i3065 = select i1 %.not.i54.i.i.i.i.i3064, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i3044, i64 noundef %..i55.i.i.i.i.i3065, i64 noundef 8) #51, !noalias !8908
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #54
          to label %.noexc.i.i.i3066 unwind label %bb.mn, !noalias !8909

.noexc.i.i.i3066:                                 ; preds = %bb.mm
  unreachable

bb.mn:                                            ; preds = %bb.mm
  %i.byb = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !8899
  unreachable

.noexc.i983:                                      ; preds = %.prol.loopexit9877, %.new9878, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3039", %._crit_edge.i.i.i.i.i3050
  %.sroa.115202.3 = phi ptr [ %.sroa.012.0.lcssa.i.i.i3073, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3039" ], [ %i.bxd, %._crit_edge.i.i.i.i.i3050 ], [ %.pn30.i.i.i.i.i.i3057.lcssa.unr, %.prol.loopexit9877 ], [ %.pn30.i.i.i.i.i.i3057.7, %.new9878 ] ; 2 uses
  %.sroa.275206.3 = phi i64 [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3039" ], [ %i.bxg, %._crit_edge.i.i.i.i.i3050 ], [ 0, %.new9878 ], [ 0, %.prol.loopexit9877 ]
  %.sroa.405216.07071 = add i64 %.sroa.5.0.copyload.i.i.i.i.i964, -1 ; 2 uses
  %i.byc = icmp eq i64 %.sroa.405216.07071, 0
  br i1 %i.byc, label %.loopexit.i.i3013, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2969"

.loopexit.i.i3013:                                ; preds = %.noexc4.i988, %.noexc.i983
  %.sroa.115202.1.lcssa = phi ptr [ %.sroa.115202.3, %.noexc.i983 ], [ %.sroa.115202.2, %.noexc4.i988 ] ; 3 uses
  %i.byd = load ptr, ptr %.sroa.115202.1.lcssa, align 8, !noalias !8910, !noundef !17 ; 2 uses
  %.not.i.i4.i.i.i3016 = icmp eq ptr %i.byd, null
  br i1 %.not.i.i4.i.i.i3016, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3023", label %.lr.ph.i3.i.i3017

.lr.ph.i3.i.i3017:                                ; preds = %.loopexit.i.i3013, %.lr.ph.i3.i.i3017
  %i.bye = phi ptr [ %i.byg, %.lr.ph.i3.i.i3017 ], [ %i.byd, %.loopexit.i.i3013 ] ; 3 uses
  %.sroa.0.06.i.i.i3018 = phi ptr [ %i.bye, %.lr.ph.i3.i.i3017 ], [ %.sroa.115202.1.lcssa, %.loopexit.i.i3013 ]
  %.sroa.5.05.i.i.i3019 = phi i64 [ %i.byf, %.lr.ph.i3.i.i3017 ], [ 0, %.loopexit.i.i3013 ] ; 2 uses
  %i.byf = add i64 %.sroa.5.05.i.i.i3019, 1       ; 2 uses
  %.not.i.i.i.i3020 = icmp eq i64 %.sroa.5.05.i.i.i3019, 0
  %..i.i.i.i3021 = select i1 %.not.i.i.i.i3020, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i.i3018, i64 noundef %..i.i.i.i3021, i64 noundef 8) #51, !noalias !8911
  %i.byg = load ptr, ptr %i.bye, align 8, !noalias !8910, !noundef !17 ; 2 uses
  %.not.i.i.i.i.i3022 = icmp eq ptr %i.byg, null
  br i1 %.not.i.i.i.i.i3022, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3023.loopexit", label %.lr.ph.i3.i.i3017

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3023.loopexit": ; preds = %.lr.ph.i3.i.i3017
  %i.byh = icmp eq i64 %i.byf, 0
  %i.byi = select i1 %i.byh, i64 24, i64 120
  br label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3023"

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3023": ; preds = %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3023.loopexit", %.loopexit.i.i3013
  %.sroa.5.0.lcssa.i.i.i3024 = phi i64 [ 24, %.loopexit.i.i3013 ], [ %i.byi, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3023.loopexit" ]
  %.sroa.0.0.lcssa.i.i.i3025 = phi ptr [ %.sroa.115202.1.lcssa, %.loopexit.i.i3013 ], [ %i.bye, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3023.loopexit" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i.i3025, i64 noundef %.sroa.5.0.lcssa.i.i.i3024, i64 noundef 8) #51, !noalias !8911
  br label %.loopexit7.i990

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2969": ; preds = %.noexc.i983, %.noexc4.i988
  %.sroa.405216.07074 = phi i64 [ %.sroa.405216.0, %.noexc4.i988 ], [ %.sroa.405216.07071, %.noexc.i983 ]
  %.sroa.275206.17073 = phi i64 [ %.sroa.275206.2, %.noexc4.i988 ], [ %.sroa.275206.3, %.noexc.i983 ] ; 2 uses
  %.sroa.115202.17072 = phi ptr [ %.sroa.115202.2, %.noexc4.i988 ], [ %.sroa.115202.3, %.noexc.i983 ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.115202.17072) ]
  %i.byj = getelementptr inbounds nuw i8, ptr %.sroa.115202.17072, i64 10
  %i.byk = load i16, ptr %i.byj, align 2, !noalias !8912, !noundef !17
  %i.byl = zext i16 %i.byk to i64
  %i.bym = icmp ult i64 %.sroa.275206.17073, %i.byl
  br i1 %i.bym, label %._crit_edge.i.i.i.i.i2980.thread, label %.lr.ph.i.i.i.i.i2973

._crit_edge.i.i.i.i.i2980.thread:                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2969"
  %i.byn = add nuw nsw i64 %.sroa.275206.17073, 1
  br label %.noexc4.i988

.lr.ph.i.i.i.i.i2973:                             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2969", %bb.mp
  %.sroa.0.060.i.i.i.i.i2974 = phi ptr [ %i.byo, %bb.mp ], [ %.sroa.115202.17072, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2969" ] ; 4 uses
  %.sroa.5.059.i.i.i.i.i2975 = phi i64 [ %i.bzg, %bb.mp ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2969" ] ; 4 uses
  %i.byo = load ptr, ptr %.sroa.0.060.i.i.i.i.i2974, align 8, !noalias !8913, !noundef !17 ; 5 uses
  %.not.i.i.i.i.i.i.i2976 = icmp eq ptr %i.byo, null
  br i1 %.not.i.i.i.i.i.i.i2976, label %bb.mq, label %bb.mp

._crit_edge.i.i.i.i.i2980:                        ; preds = %bb.mp
  %i.byp = zext i16 %i.bzi to i64
  %i.byq = icmp eq i64 %i.bzg, 0
  %i.byr = add nuw nsw i64 %i.byp, 1              ; 2 uses
  br i1 %i.byq, label %.noexc4.i988, label %bb.mo

bb.mo:                                            ; preds = %._crit_edge.i.i.i.i.i2980
  %i.bys = getelementptr inbounds nuw i8, ptr %i.byo, i64 24
  %i.byt = icmp ult i16 %i.bzi, 11
  call void @llvm.assume(i1 %i.byt), !noalias !8899
  %i.byu = getelementptr inbounds nuw [8 x i8], ptr %i.bys, i64 %i.byr ; 2 uses
  %xtraiter9889 = and i64 %i.bzg, 7               ; 2 uses
  %lcmp.mod9890.not = icmp eq i64 %xtraiter9889, 0
  br i1 %lcmp.mod9890.not, label %.prol.loopexit9885, label %.prol.preheader9884

.prol.preheader9884:                              ; preds = %bb.mo, %.prol.preheader9884
  %.pn30.in.i.i.i.i.i.i2984.prol = phi ptr [ %i.byv, %.prol.preheader9884 ], [ %i.byu, %bb.mo ]
  %.pn28.in.i.i.i.i.i.i2985.prol = phi i64 [ %.pn28.i.i.i.i.i.i2986.prol, %.prol.preheader9884 ], [ %i.bzg, %bb.mo ]
  %prol.iter9891 = phi i64 [ %prol.iter9891.next, %.prol.preheader9884 ], [ 0, %bb.mo ]
  %.pn28.i.i.i.i.i.i2986.prol = add i64 %.pn28.in.i.i.i.i.i.i2985.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i2987.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i2984.prol, align 8, !noalias !8914, !nonnull !17, !noundef !17 ; 2 uses
  %i.byv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2987.prol, i64 24 ; 2 uses
  %prol.iter9891.next = add i64 %prol.iter9891, 1 ; 2 uses
  %prol.iter9891.cmp.not = icmp eq i64 %prol.iter9891.next, %xtraiter9889
  br i1 %prol.iter9891.cmp.not, label %.prol.loopexit9885, label %.prol.preheader9884, !llvm.loop !8171

.prol.loopexit9885:                               ; preds = %.prol.preheader9884, %bb.mo
  %.pn30.i.i.i.i.i.i2987.lcssa.unr = phi ptr [ poison, %bb.mo ], [ %.pn30.i.i.i.i.i.i2987.prol, %.prol.preheader9884 ]
  %.pn30.in.i.i.i.i.i.i2984.unr = phi ptr [ %i.byu, %bb.mo ], [ %i.byv, %.prol.preheader9884 ]
  %.pn28.in.i.i.i.i.i.i2985.unr = phi i64 [ %i.bzg, %bb.mo ], [ %.pn28.i.i.i.i.i.i2986.prol, %.prol.preheader9884 ]
  %i.byw = icmp ult i64 %.sroa.5.059.i.i.i.i.i2975, 7
  br i1 %i.byw, label %.noexc4.i988, label %.new9886

.new9886:                                         ; preds = %.prol.loopexit9885, %.new9886
  %.pn30.in.i.i.i.i.i.i2984 = phi ptr [ %i.bzf, %.new9886 ], [ %.pn30.in.i.i.i.i.i.i2984.unr, %.prol.loopexit9885 ]
  %.pn28.in.i.i.i.i.i.i2985 = phi i64 [ %.pn28.i.i.i.i.i.i2986.7, %.new9886 ], [ %.pn28.in.i.i.i.i.i.i2985.unr, %.prol.loopexit9885 ]
  %.pn30.i.i.i.i.i.i2987 = load ptr, ptr %.pn30.in.i.i.i.i.i.i2984, align 8, !noalias !8914, !nonnull !17, !noundef !17
  %i.byx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2987, i64 24
  %.pn30.i.i.i.i.i.i2987.1 = load ptr, ptr %i.byx, align 8, !noalias !8914, !nonnull !17, !noundef !17
  %i.byy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2987.1, i64 24
  %.pn30.i.i.i.i.i.i2987.2 = load ptr, ptr %i.byy, align 8, !noalias !8914, !nonnull !17, !noundef !17
  %i.byz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2987.2, i64 24
  %.pn30.i.i.i.i.i.i2987.3 = load ptr, ptr %i.byz, align 8, !noalias !8914, !nonnull !17, !noundef !17
  %i.bza = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2987.3, i64 24
  %.pn30.i.i.i.i.i.i2987.4 = load ptr, ptr %i.bza, align 8, !noalias !8914, !nonnull !17, !noundef !17
  %i.bzb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2987.4, i64 24
  %.pn30.i.i.i.i.i.i2987.5 = load ptr, ptr %i.bzb, align 8, !noalias !8914, !nonnull !17, !noundef !17
  %i.bzc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2987.5, i64 24
  %.pn30.i.i.i.i.i.i2987.6 = load ptr, ptr %i.bzc, align 8, !noalias !8914, !nonnull !17, !noundef !17
  %i.bzd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2987.6, i64 24
  %.pn28.i.i.i.i.i.i2986.7 = add i64 %.pn28.in.i.i.i.i.i.i2985, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i2987.7 = load ptr, ptr %i.bzd, align 8, !noalias !8914, !nonnull !17, !noundef !17 ; 2 uses
  %i.bze = icmp eq i64 %.pn28.i.i.i.i.i.i2986.7, 0
  %i.bzf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i2987.7, i64 24
  br i1 %i.bze, label %.noexc4.i988, label %.new9886

bb.mp:                                            ; preds = %.lr.ph.i.i.i.i.i2973
  %i.bzg = add i64 %.sroa.5.059.i.i.i.i.i2975, 1  ; 5 uses
  %i.bzh = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i.i2974, i64 8
  %i.bzi = load i16, ptr %i.bzh, align 8, !noalias !8913 ; 3 uses
  %.not.i.i.i.i.i.i2977 = icmp eq i64 %.sroa.5.059.i.i.i.i.i2975, 0
  %..i.i.i.i.i.i2978 = select i1 %.not.i.i.i.i.i.i2977, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i2974, i64 noundef %..i.i.i.i.i.i2978, i64 noundef 8) #51, !noalias !8915
  %i.bzj = getelementptr inbounds nuw i8, ptr %i.byo, i64 10
  %i.bzk = load i16, ptr %i.bzj, align 2, !noalias !8912, !noundef !17
  %i.bzl = icmp ult i16 %i.bzi, %i.bzk
  br i1 %i.bzl, label %._crit_edge.i.i.i.i.i2980, label %.lr.ph.i.i.i.i.i2973

bb.mq:                                            ; preds = %.lr.ph.i.i.i.i.i2973
  %.not.i54.i.i.i.i.i2994 = icmp eq i64 %.sroa.5.059.i.i.i.i.i2975, 0
  %..i55.i.i.i.i.i2995 = select i1 %.not.i54.i.i.i.i.i2994, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i2974, i64 noundef %..i55.i.i.i.i.i2995, i64 noundef 8) #51, !noalias !8915
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #54
          to label %.noexc.i.i.i2996 unwind label %bb.mr, !noalias !8916

.noexc.i.i.i2996:                                 ; preds = %bb.mq
  unreachable

bb.mr:                                            ; preds = %bb.mq
  %i.bzm = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !8899
  unreachable

.noexc4.i988:                                     ; preds = %.prol.loopexit9885, %.new9886, %._crit_edge.i.i.i.i.i2980.thread, %._crit_edge.i.i.i.i.i2980
  %.sroa.115202.2 = phi ptr [ %i.byo, %._crit_edge.i.i.i.i.i2980 ], [ %.sroa.115202.17072, %._crit_edge.i.i.i.i.i2980.thread ], [ %.pn30.i.i.i.i.i.i2987.lcssa.unr, %.prol.loopexit9885 ], [ %.pn30.i.i.i.i.i.i2987.7, %.new9886 ] ; 2 uses
  %.sroa.275206.2 = phi i64 [ %i.byr, %._crit_edge.i.i.i.i.i2980 ], [ %i.byn, %._crit_edge.i.i.i.i.i2980.thread ], [ 0, %.new9886 ], [ 0, %.prol.loopexit9885 ]
  %.sroa.405216.0 = add i64 %.sroa.405216.07074, -1 ; 2 uses
  %i.bzn = icmp eq i64 %.sroa.405216.0, 0
  br i1 %i.bzn, label %.loopexit.i.i3013, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i2969"

.loopexit7.i990:                                  ; preds = %bb.mh, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3023", %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3093"
  %.val.i991 = load i64, ptr %i.da, align 8, !range !30, !alias.scope !8899, !noundef !17 ; 2 uses
  %switch6.i992 = icmp sgt i64 %.val.i991, 0
  br i1 %switch6.i992, label %bb.ms, label %"_ZN4core3ptr86drop_in_place$LT$console..utils..StyledObject$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h313fc6ceec913453E.exit996"

bb.ms:                                            ; preds = %.loopexit7.i990
  %.val1.i993 = load ptr, ptr %.sroa.54393.0..sroa_idx, align 8, !alias.scope !8899, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i993, i64 noundef %.val.i991, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !8917
  br label %"_ZN4core3ptr86drop_in_place$LT$console..utils..StyledObject$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h313fc6ceec913453E.exit996"

"_ZN4core3ptr86drop_in_place$LT$console..utils..StyledObject$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h313fc6ceec913453E.exit996": ; preds = %bb.ms, %.loopexit7.i990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  br label %bb.mc

.noexc1008.thread:                                ; preds = %bb.iw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8918
  store ptr null, ptr %i.e, align 8, !noalias !8919
  store i64 0, ptr %.sroa.04285.sroa.8.8..sroa_idx, align 8, !noalias !8919
  store i8 6, ptr %.sroa.64287.8..sroa_idx, align 8, !noalias !8919
  store i8 9, ptr %.sroa.74290.sroa.5.0..sroa.74290.8..sroa_idx.sroa_idx, align 2, !noalias !8919
  store <4 x i8> <i8 2, i8 0, i8 0, i8 0>, ptr %.sroa.74290.sroa.7.0..sroa.74290.8..sroa_idx.sroa_idx, align 4, !noalias !8919
  invoke fastcc void @_ZN7console5utils5Style4attr17hbad207136d17f2d6E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.e, i8 noundef 1)
          to label %bb.mt unwind label %.loopexit.split-lp6039.loopexit.split-lp.loopexit.split-lp.loopexit

.invoke9201:                                      ; preds = %bb.iu, %bb.iw, %bb.iv
  %i.bzo = phi ptr [ @337, %bb.iv ], [ @339, %bb.iw ], [ @333, %bb.iu ]
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bzo) #54
          to label %.cont9202 unwind label %.loopexit.split-lp6039.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont9202:                                        ; preds = %.invoke9201
  unreachable

bb.mt:                                            ; preds = %.noexc1008.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8918
  %.sroa.04285.sroa.4.8.copyload4630 = load ptr, ptr %i.f, align 8, !noalias !8919
  %i.bzp = load <8 x i8>, ptr %.sroa.64287.8..sroa_idx4288, align 8, !noalias !8919
  %i.bzq = load <2 x i64>, ptr %.sroa.04285.sroa.7.8..sroa_idx4631, align 8, !noalias !8919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8918
  call void @llvm.experimental.noalias.scope.decl(metadata !8920)
  call void @llvm.experimental.noalias.scope.decl(metadata !8921)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8922
  store ptr %.sroa.04285.sroa.4.8.copyload4630, ptr %i.c, align 8, !noalias !8920
  store <2 x i64> %i.bzq, ptr %.sroa.04292.sroa.7.8..sroa_idx, align 8, !noalias !8920
  store <8 x i8> %i.bzp, ptr %.sroa.64294.8..sroa_idx, align 8, !noalias !8920
  invoke fastcc void @_ZN7console5utils5Style4attr17hbad207136d17f2d6E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.c, i8 noundef 0)
          to label %.noexc1026.thread unwind label %.loopexit.split-lp6039.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc1026.thread:                                ; preds = %bb.mt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8922
  %.sroa.04292.sroa.4.8.copyload4635 = load ptr, ptr %i.d, align 8, !noalias !8920
  %i.bzr = load <8 x i8>, ptr %.sroa.64294.8..sroa_idx4295, align 8, !noalias !8920
  %i.bzs = load <2 x i64>, ptr %.sroa.04292.sroa.7.8..sroa_idx4636, align 8, !noalias !8920
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8922
  store i64 %.sroa.94277.0.copyload, ptr %i.dr, align 8, !alias.scope !8922
  store ptr %.sroa.04292.sroa.4.8.copyload4635, ptr %.sroa.04292.sroa.4.0..sroa_idx, align 8, !alias.scope !8922
  store <2 x i64> %i.bzs, ptr %.sroa.04292.sroa.7.0..sroa_idx, align 8, !alias.scope !8922
  store <8 x i8> %i.bzr, ptr %.sroa.64294.0..sroa_idx, align 8, !alias.scope !8922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  store ptr @319, ptr %i.dq, align 8
  store i64 1, ptr %.sroa.0158.sroa.4.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.0158.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.0158.sroa.9.0..sroa_idx, align 8
  store i8 2, ptr %.sroa.6160.0..sroa_idx161, align 8
  store i8 9, ptr %.sroa.10166.0..sroa_idx167, align 2
  store <4 x i8> <i8 2, i8 0, i8 0, i8 0>, ptr %.sroa.10166.sroa.7.0..sroa.10166.0..sroa_idx167.sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  store <2 x ptr> <ptr @305, ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7b792248e218ac2cE">, ptr %i.dp, align 16
  store ptr %i.dr, ptr %i.abf, align 16
  store ptr @"_ZN76_$LT$console..utils..StyledObject$LT$D$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17he234217d3283371fE", ptr %.sroa.4175.0..sroa_idx, align 8
  store ptr %i.dq, ptr %i.abg, align 16
  store ptr @"_ZN76_$LT$console..utils..StyledObject$LT$D$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hab29918bae2e7f3fE", ptr %.sroa.4179.0..sroa_idx, align 8
  store ptr @338, ptr %i.ds, align 8
  store i64 3, ptr %i.abh, align 8
  store ptr @327, ptr %i.abi, align 8
  store i64 3, ptr %i.abj, align 8
  store ptr %i.dp, ptr %i.abk, align 8
  store i64 3, ptr %i.abl, align 8
  invoke void @_ZN3std2io5stdio6_print17h361a6d98ea723aceE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ds)
          to label %bb.mw unwind label %bb.mv

bb.mu:                                            ; preds = %bb.mv
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$console..utils..StyledObject$LT$usize$GT$$GT$17h10e4dff4493942ebE"(ptr noalias noundef align 8 dereferenceable(40) %i.dr) #55
          to label %.body790 unwind label %.loopexit.split-lp6035.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mv:                                            ; preds = %.noexc1026.thread
  %i.bzt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$console..utils..StyledObject$LT$$RF$str$GT$$GT$17h1e14615d2c6972d3E"(ptr noalias noundef align 8 dereferenceable(48) %i.dq) #55
          to label %bb.mu unwind label %.loopexit.split-lp6035.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
end_hunk_4
begin_hunk_5_@_ZN5insta6output15SnapshotPrinter15print_changeset17h296982a1490293ddE:bb.a
  %.not.i.i.i.i.i3512 = icmp eq ptr %i.cav, null
  br i1 %.not.i.i.i.i.i3512, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3513.loopexit", label %.lr.ph.i3.i.i3507

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3513.loopexit": ; preds = %.lr.ph.i3.i.i3507
  %i.caw = icmp eq i64 %i.cau, 0
  %i.cax = select i1 %i.caw, i64 24, i64 120
  br label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3513"

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3513": ; preds = %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3513.loopexit", %.loopexit.i.i3503
  %.sroa.5.0.lcssa.i.i.i3514 = phi i64 [ 24, %.loopexit.i.i3503 ], [ %i.cax, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3513.loopexit" ]
  %.sroa.0.0.lcssa.i.i.i3515 = phi ptr [ %.sroa.0.0.ph.i.i3505, %.loopexit.i.i3503 ], [ %i.cat, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3513.loopexit" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i.i3515, i64 noundef %.sroa.5.0.lcssa.i.i.i3514, i64 noundef 8) #51, !noalias !8926
  br label %"_ZN4core3ptr64drop_in_place$LT$console..utils..StyledObject$LT$$RF$str$GT$$GT$17h1e14615d2c6972d3E.exit1049"

bb.my:                                            ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i1041"
  br i1 %i.bzv, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3459", label %.lr.ph.i.i2.i3488.preheader

.lr.ph.i.i2.i3488.preheader:                      ; preds = %bb.my
  %xtraiter9721 = and i64 %.sroa.4.0.copyload.i.i.i.i.i1034, 7 ; 2 uses
  %lcmp.mod9722.not = icmp eq i64 %xtraiter9721, 0
  br i1 %lcmp.mod9722.not, label %.lr.ph.i.i2.i3488.prol.loopexit, label %.lr.ph.i.i2.i3488.prol

.lr.ph.i.i2.i3488.prol:                           ; preds = %.lr.ph.i.i2.i3488.preheader, %.lr.ph.i.i2.i3488.prol
  %.sroa.012.015.i.i.i3489.prol = phi ptr [ %.sroa.012.0.i.i.i3491.prol, %.lr.ph.i.i2.i3488.prol ], [ %.sroa.0.0.copyload.i.i.i.i.i1029, %.lr.ph.i.i2.i3488.preheader ]
  %.sroa.011.014.i.i.i3490.prol = phi i64 [ %i.caz, %.lr.ph.i.i2.i3488.prol ], [ %.sroa.4.0.copyload.i.i.i.i.i1034, %.lr.ph.i.i2.i3488.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.i3488.prol ], [ 0, %.lr.ph.i.i2.i3488.preheader ]
  %i.cay = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i3489.prol, i64 24
  %i.caz = add i64 %.sroa.011.014.i.i.i3490.prol, -1 ; 2 uses
  %.sroa.012.0.i.i.i3491.prol = load ptr, ptr %i.cay, align 8, !noalias !8927, !nonnull !17, !noundef !17 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter9721
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.i3488.prol.loopexit, label %.lr.ph.i.i2.i3488.prol, !llvm.loop !8210

.lr.ph.i.i2.i3488.prol.loopexit:                  ; preds = %.lr.ph.i.i2.i3488.prol, %.lr.ph.i.i2.i3488.preheader
  %.sroa.012.0.i.i.i3491.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.i3488.preheader ], [ %.sroa.012.0.i.i.i3491.prol, %.lr.ph.i.i2.i3488.prol ]
  %.sroa.012.015.i.i.i3489.unr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i1029, %.lr.ph.i.i2.i3488.preheader ], [ %.sroa.012.0.i.i.i3491.prol, %.lr.ph.i.i2.i3488.prol ]
  %.sroa.011.014.i.i.i3490.unr = phi i64 [ %.sroa.4.0.copyload.i.i.i.i.i1034, %.lr.ph.i.i2.i3488.preheader ], [ %i.caz, %.lr.ph.i.i2.i3488.prol ]
  %i.cba = icmp ult i64 %.sroa.4.0.copyload.i.i.i.i.i1034, 8
  br i1 %i.cba, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3459", label %.lr.ph.i.i2.i3488

.lr.ph.i.i2.i3488:                                ; preds = %.lr.ph.i.i2.i3488.prol.loopexit, %.lr.ph.i.i2.i3488
  %.sroa.012.015.i.i.i3489 = phi ptr [ %.sroa.012.0.i.i.i3491.7, %.lr.ph.i.i2.i3488 ], [ %.sroa.012.015.i.i.i3489.unr, %.lr.ph.i.i2.i3488.prol.loopexit ]
  %.sroa.011.014.i.i.i3490 = phi i64 [ %i.cbj, %.lr.ph.i.i2.i3488 ], [ %.sroa.011.014.i.i.i3490.unr, %.lr.ph.i.i2.i3488.prol.loopexit ]
  %i.cbb = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i3489, i64 24
  %.sroa.012.0.i.i.i3491 = load ptr, ptr %i.cbb, align 8, !noalias !8927, !nonnull !17, !noundef !17
  %i.cbc = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i3491, i64 24
  %.sroa.012.0.i.i.i3491.1 = load ptr, ptr %i.cbc, align 8, !noalias !8927, !nonnull !17, !noundef !17
  %i.cbd = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i3491.1, i64 24
  %.sroa.012.0.i.i.i3491.2 = load ptr, ptr %i.cbd, align 8, !noalias !8927, !nonnull !17, !noundef !17
  %i.cbe = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i3491.2, i64 24
  %.sroa.012.0.i.i.i3491.3 = load ptr, ptr %i.cbe, align 8, !noalias !8927, !nonnull !17, !noundef !17
  %i.cbf = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i3491.3, i64 24
  %.sroa.012.0.i.i.i3491.4 = load ptr, ptr %i.cbf, align 8, !noalias !8927, !nonnull !17, !noundef !17
  %i.cbg = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i3491.4, i64 24
  %.sroa.012.0.i.i.i3491.5 = load ptr, ptr %i.cbg, align 8, !noalias !8927, !nonnull !17, !noundef !17
  %i.cbh = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i3491.5, i64 24
  %.sroa.012.0.i.i.i3491.6 = load ptr, ptr %i.cbh, align 8, !noalias !8927, !nonnull !17, !noundef !17
  %i.cbi = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i3491.6, i64 24
  %i.cbj = add i64 %.sroa.011.014.i.i.i3490, -8   ; 2 uses
  %.sroa.012.0.i.i.i3491.7 = load ptr, ptr %i.cbi, align 8, !noalias !8927, !nonnull !17, !noundef !17 ; 2 uses
  %i.cbk = icmp eq i64 %i.cbj, 0
  br i1 %i.cbk, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3459", label %.lr.ph.i.i2.i3488

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3459": ; preds = %.lr.ph.i.i2.i3488.prol.loopexit, %.lr.ph.i.i2.i3488, %bb.my
  %.sroa.012.0.lcssa.i.i.i3493 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i1029, %bb.my ], [ %.sroa.012.0.i.i.i3491.lcssa.unr, %.lr.ph.i.i2.i3488.prol.loopexit ], [ %.sroa.012.0.i.i.i3491.7, %.lr.ph.i.i2.i3488 ] ; 3 uses
  %i.cbl = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i3493, i64 10
  %i.cbm = load i16, ptr %i.cbl, align 2, !noalias !8928, !noundef !17
  %.not6004 = icmp eq i16 %i.cbm, 0
  br i1 %.not6004, label %.lr.ph.i.i.i.i.i3463, label %.noexc1047

.lr.ph.i.i.i.i.i3463:                             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3459", %bb.na
  %.sroa.0.060.i.i.i.i.i3464 = phi ptr [ %i.cbn, %bb.na ], [ %.sroa.012.0.lcssa.i.i.i3493, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3459" ] ; 4 uses
  %.sroa.5.059.i.i.i.i.i3465 = phi i64 [ %i.ccf, %bb.na ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3459" ] ; 4 uses
  %i.cbn = load ptr, ptr %.sroa.0.060.i.i.i.i.i3464, align 8, !noalias !8929, !noundef !17 ; 5 uses
  %.not.i.i.i.i.i.i.i3466 = icmp eq ptr %i.cbn, null
  br i1 %.not.i.i.i.i.i.i.i3466, label %bb.nb, label %bb.na

._crit_edge.i.i.i.i.i3470:                        ; preds = %bb.na
  %i.cbo = zext i16 %i.cch to i64
  %i.cbp = icmp eq i64 %i.ccf, 0
  %i.cbq = add nuw nsw i64 %i.cbo, 1              ; 2 uses
  br i1 %i.cbp, label %.noexc1047, label %bb.mz

bb.mz:                                            ; preds = %._crit_edge.i.i.i.i.i3470
  %i.cbr = getelementptr inbounds nuw i8, ptr %i.cbn, i64 24
  %i.cbs = icmp ult i16 %i.cch, 11
  call void @llvm.assume(i1 %i.cbs)
  %i.cbt = getelementptr inbounds nuw [8 x i8], ptr %i.cbr, i64 %i.cbq ; 2 uses
  %xtraiter9727 = and i64 %i.ccf, 7               ; 2 uses
  %lcmp.mod9728.not = icmp eq i64 %xtraiter9727, 0
  br i1 %lcmp.mod9728.not, label %.prol.loopexit9724, label %.prol.preheader9723

.prol.preheader9723:                              ; preds = %bb.mz, %.prol.preheader9723
  %.pn30.in.i.i.i.i.i.i3474.prol = phi ptr [ %i.cbu, %.prol.preheader9723 ], [ %i.cbt, %bb.mz ]
  %.pn28.in.i.i.i.i.i.i3475.prol = phi i64 [ %.pn28.i.i.i.i.i.i3476.prol, %.prol.preheader9723 ], [ %i.ccf, %bb.mz ]
  %prol.iter9729 = phi i64 [ %prol.iter9729.next, %.prol.preheader9723 ], [ 0, %bb.mz ]
  %.pn28.i.i.i.i.i.i3476.prol = add i64 %.pn28.in.i.i.i.i.i.i3475.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i3477.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i3474.prol, align 8, !noalias !8930, !nonnull !17, !noundef !17 ; 2 uses
  %i.cbu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3477.prol, i64 24 ; 2 uses
  %prol.iter9729.next = add i64 %prol.iter9729, 1 ; 2 uses
  %prol.iter9729.cmp.not = icmp eq i64 %prol.iter9729.next, %xtraiter9727
  br i1 %prol.iter9729.cmp.not, label %.prol.loopexit9724, label %.prol.preheader9723, !llvm.loop !8227

.prol.loopexit9724:                               ; preds = %.prol.preheader9723, %bb.mz
  %.pn30.i.i.i.i.i.i3477.lcssa.unr = phi ptr [ poison, %bb.mz ], [ %.pn30.i.i.i.i.i.i3477.prol, %.prol.preheader9723 ]
  %.pn30.in.i.i.i.i.i.i3474.unr = phi ptr [ %i.cbt, %bb.mz ], [ %i.cbu, %.prol.preheader9723 ]
  %.pn28.in.i.i.i.i.i.i3475.unr = phi i64 [ %i.ccf, %bb.mz ], [ %.pn28.i.i.i.i.i.i3476.prol, %.prol.preheader9723 ]
  %i.cbv = icmp ult i64 %.sroa.5.059.i.i.i.i.i3465, 7
  br i1 %i.cbv, label %.noexc1047, label %.new

.new:                                             ; preds = %.prol.loopexit9724, %.new
  %.pn30.in.i.i.i.i.i.i3474 = phi ptr [ %i.cce, %.new ], [ %.pn30.in.i.i.i.i.i.i3474.unr, %.prol.loopexit9724 ]
  %.pn28.in.i.i.i.i.i.i3475 = phi i64 [ %.pn28.i.i.i.i.i.i3476.7, %.new ], [ %.pn28.in.i.i.i.i.i.i3475.unr, %.prol.loopexit9724 ]
  %.pn30.i.i.i.i.i.i3477 = load ptr, ptr %.pn30.in.i.i.i.i.i.i3474, align 8, !noalias !8930, !nonnull !17, !noundef !17
  %i.cbw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3477, i64 24
  %.pn30.i.i.i.i.i.i3477.1 = load ptr, ptr %i.cbw, align 8, !noalias !8930, !nonnull !17, !noundef !17
  %i.cbx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3477.1, i64 24
  %.pn30.i.i.i.i.i.i3477.2 = load ptr, ptr %i.cbx, align 8, !noalias !8930, !nonnull !17, !noundef !17
  %i.cby = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3477.2, i64 24
  %.pn30.i.i.i.i.i.i3477.3 = load ptr, ptr %i.cby, align 8, !noalias !8930, !nonnull !17, !noundef !17
  %i.cbz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3477.3, i64 24
  %.pn30.i.i.i.i.i.i3477.4 = load ptr, ptr %i.cbz, align 8, !noalias !8930, !nonnull !17, !noundef !17
  %i.cca = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3477.4, i64 24
  %.pn30.i.i.i.i.i.i3477.5 = load ptr, ptr %i.cca, align 8, !noalias !8930, !nonnull !17, !noundef !17
  %i.ccb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3477.5, i64 24
  %.pn30.i.i.i.i.i.i3477.6 = load ptr, ptr %i.ccb, align 8, !noalias !8930, !nonnull !17, !noundef !17
  %i.ccc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3477.6, i64 24
  %.pn28.i.i.i.i.i.i3476.7 = add i64 %.pn28.in.i.i.i.i.i.i3475, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i3477.7 = load ptr, ptr %i.ccc, align 8, !noalias !8930, !nonnull !17, !noundef !17 ; 2 uses
  %i.ccd = icmp eq i64 %.pn28.i.i.i.i.i.i3476.7, 0
  %i.cce = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3477.7, i64 24
  br i1 %i.ccd, label %.noexc1047, label %.new

bb.na:                                            ; preds = %.lr.ph.i.i.i.i.i3463
  %i.ccf = add i64 %.sroa.5.059.i.i.i.i.i3465, 1  ; 5 uses
  %i.ccg = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i.i3464, i64 8
  %i.cch = load i16, ptr %i.ccg, align 8, !noalias !8929 ; 3 uses
  %.not.i.i.i.i.i.i3467 = icmp eq i64 %.sroa.5.059.i.i.i.i.i3465, 0
  %..i.i.i.i.i.i3468 = select i1 %.not.i.i.i.i.i.i3467, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i3464, i64 noundef %..i.i.i.i.i.i3468, i64 noundef 8) #51, !noalias !8931
  %i.cci = getelementptr inbounds nuw i8, ptr %i.cbn, i64 10
  %i.ccj = load i16, ptr %i.cci, align 2, !noalias !8928, !noundef !17
  %i.cck = icmp ult i16 %i.cch, %i.ccj
  br i1 %i.cck, label %._crit_edge.i.i.i.i.i3470, label %.lr.ph.i.i.i.i.i3463

bb.nb:                                            ; preds = %.lr.ph.i.i.i.i.i3463
  %.not.i54.i.i.i.i.i3484 = icmp eq i64 %.sroa.5.059.i.i.i.i.i3465, 0
  %..i55.i.i.i.i.i3485 = select i1 %.not.i54.i.i.i.i.i3484, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i3464, i64 noundef %..i55.i.i.i.i.i3485, i64 noundef 8) #51, !noalias !8931
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #54
          to label %.noexc.i.i.i3486 unwind label %bb.nc, !noalias !8932

.noexc.i.i.i3486:                                 ; preds = %bb.nb
  unreachable

bb.nc:                                            ; preds = %bb.nb
  %i.ccl = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.noexc1047:                                       ; preds = %.prol.loopexit9724, %.new, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3459", %._crit_edge.i.i.i.i.i3470
  %.sroa.115270.3 = phi ptr [ %.sroa.012.0.lcssa.i.i.i3493, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3459" ], [ %i.cbn, %._crit_edge.i.i.i.i.i3470 ], [ %.pn30.i.i.i.i.i.i3477.lcssa.unr, %.prol.loopexit9724 ], [ %.pn30.i.i.i.i.i.i3477.7, %.new ] ; 2 uses
  %.sroa.275274.3 = phi i64 [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3459" ], [ %i.cbq, %._crit_edge.i.i.i.i.i3470 ], [ 0, %.new ], [ 0, %.prol.loopexit9724 ]
  %.sroa.405284.07033 = add i64 %.sroa.5.0.copyload.i.i.i.i.i1032, -1 ; 2 uses
  %i.ccm = icmp eq i64 %.sroa.405284.07033, 0
  br i1 %i.ccm, label %.loopexit.i.i3433, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3389"

.loopexit.i.i3433:                                ; preds = %.noexc1048, %.noexc1047
  %.sroa.115270.1.lcssa = phi ptr [ %.sroa.115270.3, %.noexc1047 ], [ %.sroa.115270.2, %.noexc1048 ] ; 3 uses
  %i.ccn = load ptr, ptr %.sroa.115270.1.lcssa, align 8, !noalias !8933, !noundef !17 ; 2 uses
  %.not.i.i4.i.i.i3436 = icmp eq ptr %i.ccn, null
  br i1 %.not.i.i4.i.i.i3436, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3443", label %.lr.ph.i3.i.i3437

.lr.ph.i3.i.i3437:                                ; preds = %.loopexit.i.i3433, %.lr.ph.i3.i.i3437
  %i.cco = phi ptr [ %i.ccq, %.lr.ph.i3.i.i3437 ], [ %i.ccn, %.loopexit.i.i3433 ] ; 3 uses
  %.sroa.0.06.i.i.i3438 = phi ptr [ %i.cco, %.lr.ph.i3.i.i3437 ], [ %.sroa.115270.1.lcssa, %.loopexit.i.i3433 ]
  %.sroa.5.05.i.i.i3439 = phi i64 [ %i.ccp, %.lr.ph.i3.i.i3437 ], [ 0, %.loopexit.i.i3433 ] ; 2 uses
  %i.ccp = add i64 %.sroa.5.05.i.i.i3439, 1       ; 2 uses
  %.not.i.i.i.i3440 = icmp eq i64 %.sroa.5.05.i.i.i3439, 0
  %..i.i.i.i3441 = select i1 %.not.i.i.i.i3440, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i.i3438, i64 noundef %..i.i.i.i3441, i64 noundef 8) #51, !noalias !8934
  %i.ccq = load ptr, ptr %i.cco, align 8, !noalias !8933, !noundef !17 ; 2 uses
  %.not.i.i.i.i.i3442 = icmp eq ptr %i.ccq, null
  br i1 %.not.i.i.i.i.i3442, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3443.loopexit", label %.lr.ph.i3.i.i3437

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3443.loopexit": ; preds = %.lr.ph.i3.i.i3437
  %i.ccr = icmp eq i64 %i.ccp, 0
  %i.ccs = select i1 %i.ccr, i64 24, i64 120
  br label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3443"

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3443": ; preds = %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3443.loopexit", %.loopexit.i.i3433
  %.sroa.5.0.lcssa.i.i.i3444 = phi i64 [ 24, %.loopexit.i.i3433 ], [ %i.ccs, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3443.loopexit" ]
  %.sroa.0.0.lcssa.i.i.i3445 = phi ptr [ %.sroa.115270.1.lcssa, %.loopexit.i.i3433 ], [ %i.cco, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3443.loopexit" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i.i3445, i64 noundef %.sroa.5.0.lcssa.i.i.i3444, i64 noundef 8) #51, !noalias !8934
  br label %"_ZN4core3ptr64drop_in_place$LT$console..utils..StyledObject$LT$$RF$str$GT$$GT$17h1e14615d2c6972d3E.exit1049"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3389": ; preds = %.noexc1047, %.noexc1048
  %.sroa.405284.07036 = phi i64 [ %.sroa.405284.0, %.noexc1048 ], [ %.sroa.405284.07033, %.noexc1047 ]
  %.sroa.275274.17035 = phi i64 [ %.sroa.275274.2, %.noexc1048 ], [ %.sroa.275274.3, %.noexc1047 ] ; 2 uses
  %.sroa.115270.17034 = phi ptr [ %.sroa.115270.2, %.noexc1048 ], [ %.sroa.115270.3, %.noexc1047 ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.115270.17034) ]
  %i.cct = getelementptr inbounds nuw i8, ptr %.sroa.115270.17034, i64 10
  %i.ccu = load i16, ptr %i.cct, align 2, !noalias !8935, !noundef !17
  %i.ccv = zext i16 %i.ccu to i64
  %i.ccw = icmp ult i64 %.sroa.275274.17035, %i.ccv
  br i1 %i.ccw, label %._crit_edge.i.i.i.i.i3400.thread, label %.lr.ph.i.i.i.i.i3393

._crit_edge.i.i.i.i.i3400.thread:                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3389"
  %i.ccx = add nuw nsw i64 %.sroa.275274.17035, 1
  br label %.noexc1048

.lr.ph.i.i.i.i.i3393:                             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3389", %bb.ne
  %.sroa.0.060.i.i.i.i.i3394 = phi ptr [ %i.ccy, %bb.ne ], [ %.sroa.115270.17034, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3389" ] ; 4 uses
  %.sroa.5.059.i.i.i.i.i3395 = phi i64 [ %i.cdq, %bb.ne ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3389" ] ; 4 uses
  %i.ccy = load ptr, ptr %.sroa.0.060.i.i.i.i.i3394, align 8, !noalias !8936, !noundef !17 ; 5 uses
  %.not.i.i.i.i.i.i.i3396 = icmp eq ptr %i.ccy, null
  br i1 %.not.i.i.i.i.i.i.i3396, label %bb.nf, label %bb.ne

._crit_edge.i.i.i.i.i3400:                        ; preds = %bb.ne
  %i.ccz = zext i16 %i.cds to i64
  %i.cda = icmp eq i64 %i.cdq, 0
  %i.cdb = add nuw nsw i64 %i.ccz, 1              ; 2 uses
  br i1 %i.cda, label %.noexc1048, label %bb.nd

bb.nd:                                            ; preds = %._crit_edge.i.i.i.i.i3400
  %i.cdc = getelementptr inbounds nuw i8, ptr %i.ccy, i64 24
  %i.cdd = icmp ult i16 %i.cds, 11
  call void @llvm.assume(i1 %i.cdd)
  %i.cde = getelementptr inbounds nuw [8 x i8], ptr %i.cdc, i64 %i.cdb ; 2 uses
  %xtraiter9735 = and i64 %i.cdq, 7               ; 2 uses
  %lcmp.mod9736.not = icmp eq i64 %xtraiter9735, 0
  br i1 %lcmp.mod9736.not, label %.prol.loopexit9731, label %.prol.preheader9730

.prol.preheader9730:                              ; preds = %bb.nd, %.prol.preheader9730
  %.pn30.in.i.i.i.i.i.i3404.prol = phi ptr [ %i.cdf, %.prol.preheader9730 ], [ %i.cde, %bb.nd ]
  %.pn28.in.i.i.i.i.i.i3405.prol = phi i64 [ %.pn28.i.i.i.i.i.i3406.prol, %.prol.preheader9730 ], [ %i.cdq, %bb.nd ]
  %prol.iter9737 = phi i64 [ %prol.iter9737.next, %.prol.preheader9730 ], [ 0, %bb.nd ]
  %.pn28.i.i.i.i.i.i3406.prol = add i64 %.pn28.in.i.i.i.i.i.i3405.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i3407.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i3404.prol, align 8, !noalias !8937, !nonnull !17, !noundef !17 ; 2 uses
  %i.cdf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3407.prol, i64 24 ; 2 uses
  %prol.iter9737.next = add i64 %prol.iter9737, 1 ; 2 uses
  %prol.iter9737.cmp.not = icmp eq i64 %prol.iter9737.next, %xtraiter9735
  br i1 %prol.iter9737.cmp.not, label %.prol.loopexit9731, label %.prol.preheader9730, !llvm.loop !8256

.prol.loopexit9731:                               ; preds = %.prol.preheader9730, %bb.nd
  %.pn30.i.i.i.i.i.i3407.lcssa.unr = phi ptr [ poison, %bb.nd ], [ %.pn30.i.i.i.i.i.i3407.prol, %.prol.preheader9730 ]
  %.pn30.in.i.i.i.i.i.i3404.unr = phi ptr [ %i.cde, %bb.nd ], [ %i.cdf, %.prol.preheader9730 ]
  %.pn28.in.i.i.i.i.i.i3405.unr = phi i64 [ %i.cdq, %bb.nd ], [ %.pn28.i.i.i.i.i.i3406.prol, %.prol.preheader9730 ]
  %i.cdg = icmp ult i64 %.sroa.5.059.i.i.i.i.i3395, 7
  br i1 %i.cdg, label %.noexc1048, label %.new9732

.new9732:                                         ; preds = %.prol.loopexit9731, %.new9732
  %.pn30.in.i.i.i.i.i.i3404 = phi ptr [ %i.cdp, %.new9732 ], [ %.pn30.in.i.i.i.i.i.i3404.unr, %.prol.loopexit9731 ]
  %.pn28.in.i.i.i.i.i.i3405 = phi i64 [ %.pn28.i.i.i.i.i.i3406.7, %.new9732 ], [ %.pn28.in.i.i.i.i.i.i3405.unr, %.prol.loopexit9731 ]
  %.pn30.i.i.i.i.i.i3407 = load ptr, ptr %.pn30.in.i.i.i.i.i.i3404, align 8, !noalias !8937, !nonnull !17, !noundef !17
  %i.cdh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3407, i64 24
  %.pn30.i.i.i.i.i.i3407.1 = load ptr, ptr %i.cdh, align 8, !noalias !8937, !nonnull !17, !noundef !17
  %i.cdi = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3407.1, i64 24
  %.pn30.i.i.i.i.i.i3407.2 = load ptr, ptr %i.cdi, align 8, !noalias !8937, !nonnull !17, !noundef !17
  %i.cdj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3407.2, i64 24
  %.pn30.i.i.i.i.i.i3407.3 = load ptr, ptr %i.cdj, align 8, !noalias !8937, !nonnull !17, !noundef !17
  %i.cdk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3407.3, i64 24
  %.pn30.i.i.i.i.i.i3407.4 = load ptr, ptr %i.cdk, align 8, !noalias !8937, !nonnull !17, !noundef !17
  %i.cdl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3407.4, i64 24
  %.pn30.i.i.i.i.i.i3407.5 = load ptr, ptr %i.cdl, align 8, !noalias !8937, !nonnull !17, !noundef !17
  %i.cdm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3407.5, i64 24
  %.pn30.i.i.i.i.i.i3407.6 = load ptr, ptr %i.cdm, align 8, !noalias !8937, !nonnull !17, !noundef !17
  %i.cdn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3407.6, i64 24
  %.pn28.i.i.i.i.i.i3406.7 = add i64 %.pn28.in.i.i.i.i.i.i3405, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i3407.7 = load ptr, ptr %i.cdn, align 8, !noalias !8937, !nonnull !17, !noundef !17 ; 2 uses
  %i.cdo = icmp eq i64 %.pn28.i.i.i.i.i.i3406.7, 0
  %i.cdp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3407.7, i64 24
  br i1 %i.cdo, label %.noexc1048, label %.new9732

bb.ne:                                            ; preds = %.lr.ph.i.i.i.i.i3393
  %i.cdq = add i64 %.sroa.5.059.i.i.i.i.i3395, 1  ; 5 uses
  %i.cdr = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i.i3394, i64 8
  %i.cds = load i16, ptr %i.cdr, align 8, !noalias !8936 ; 3 uses
  %.not.i.i.i.i.i.i3397 = icmp eq i64 %.sroa.5.059.i.i.i.i.i3395, 0
  %..i.i.i.i.i.i3398 = select i1 %.not.i.i.i.i.i.i3397, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i3394, i64 noundef %..i.i.i.i.i.i3398, i64 noundef 8) #51, !noalias !8938
  %i.cdt = getelementptr inbounds nuw i8, ptr %i.ccy, i64 10
  %i.cdu = load i16, ptr %i.cdt, align 2, !noalias !8935, !noundef !17
  %i.cdv = icmp ult i16 %i.cds, %i.cdu
  br i1 %i.cdv, label %._crit_edge.i.i.i.i.i3400, label %.lr.ph.i.i.i.i.i3393

bb.nf:                                            ; preds = %.lr.ph.i.i.i.i.i3393
  %.not.i54.i.i.i.i.i3414 = icmp eq i64 %.sroa.5.059.i.i.i.i.i3395, 0
  %..i55.i.i.i.i.i3415 = select i1 %.not.i54.i.i.i.i.i3414, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i3394, i64 noundef %..i55.i.i.i.i.i3415, i64 noundef 8) #51, !noalias !8938
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #54
          to label %.noexc.i.i.i3416 unwind label %bb.ng, !noalias !8939

.noexc.i.i.i3416:                                 ; preds = %bb.nf
  unreachable

bb.ng:                                            ; preds = %bb.nf
  %i.cdw = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.noexc1048:                                       ; preds = %.prol.loopexit9731, %.new9732, %._crit_edge.i.i.i.i.i3400.thread, %._crit_edge.i.i.i.i.i3400
  %.sroa.115270.2 = phi ptr [ %i.ccy, %._crit_edge.i.i.i.i.i3400 ], [ %.sroa.115270.17034, %._crit_edge.i.i.i.i.i3400.thread ], [ %.pn30.i.i.i.i.i.i3407.lcssa.unr, %.prol.loopexit9731 ], [ %.pn30.i.i.i.i.i.i3407.7, %.new9732 ] ; 2 uses
  %.sroa.275274.2 = phi i64 [ %i.cdb, %._crit_edge.i.i.i.i.i3400 ], [ %i.ccx, %._crit_edge.i.i.i.i.i3400.thread ], [ 0, %.new9732 ], [ 0, %.prol.loopexit9731 ]
  %.sroa.405284.0 = add i64 %.sroa.405284.07036, -1 ; 2 uses
  %i.cdx = icmp eq i64 %.sroa.405284.0, 0
  br i1 %i.cdx, label %.loopexit.i.i3433, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3389"

"_ZN4core3ptr64drop_in_place$LT$console..utils..StyledObject$LT$$RF$str$GT$$GT$17h1e14615d2c6972d3E.exit1049": ; preds = %bb.mw, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3443", %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3513"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  %.sroa.0.0.copyload.i.i.i.i.i1050 = load ptr, ptr %.sroa.04292.sroa.4.0..sroa_idx, align 8, !alias.scope !8940 ; 7 uses
  %.not.i.i.i.i.i.i1051 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i1050, null
  br i1 %.not.i.i.i.i.i.i1051, label %"_ZN4core3ptr62drop_in_place$LT$console..utils..StyledObject$LT$usize$GT$$GT$17h10e4dff4493942ebE.exit1070", label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i1062"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i1062": ; preds = %"_ZN4core3ptr64drop_in_place$LT$console..utils..StyledObject$LT$$RF$str$GT$$GT$17h1e14615d2c6972d3E.exit1049"
  %.sroa.5.0.copyload.i.i.i.i.i1053 = load i64, ptr %.sroa.04292.sroa.8.0..sroa_idx, align 8, !alias.scope !8940 ; 2 uses
  %.sroa.4.0.copyload.i.i.i.i.i1055 = load i64, ptr %.sroa.04292.sroa.7.0..sroa_idx, align 8, !alias.scope !8940 ; 9 uses
  %i.cdy = icmp eq i64 %.sroa.5.0.copyload.i.i.i.i.i1053, 0
  %i.cdz = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i1055, 0 ; 2 uses
  br i1 %i.cdy, label %bb.nh, label %bb.ni

bb.nh:                                            ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i1062"
  br i1 %i.cdz, label %.loopexit.i.i3643, label %.lr.ph.i.i.i3658.preheader

.lr.ph.i.i.i3658.preheader:                       ; preds = %bb.nh
  %xtraiter9760 = and i64 %.sroa.4.0.copyload.i.i.i.i.i1055, 7 ; 2 uses
  %lcmp.mod9761.not = icmp eq i64 %xtraiter9760, 0
  br i1 %lcmp.mod9761.not, label %.lr.ph.i.i.i3658.prol.loopexit, label %.lr.ph.i.i.i3658.prol

.lr.ph.i.i.i3658.prol:                            ; preds = %.lr.ph.i.i.i3658.preheader, %.lr.ph.i.i.i3658.prol
  %.sroa.019.021.i.i.i3659.prol = phi ptr [ %i.ceb, %.lr.ph.i.i.i3658.prol ], [ %.sroa.0.0.copyload.i.i.i.i.i1050, %.lr.ph.i.i.i3658.preheader ]
  %.sroa.018.020.i.i.i3660.prol = phi i64 [ %i.cec, %.lr.ph.i.i.i3658.prol ], [ %.sroa.4.0.copyload.i.i.i.i.i1055, %.lr.ph.i.i.i3658.preheader ]
  %prol.iter9762 = phi i64 [ %prol.iter9762.next, %.lr.ph.i.i.i3658.prol ], [ 0, %.lr.ph.i.i.i3658.preheader ]
  %i.cea = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i.i3659.prol, i64 24
  %i.ceb = load ptr, ptr %i.cea, align 8, !noalias !8941, !nonnull !17, !noundef !17 ; 3 uses
  %i.cec = add i64 %.sroa.018.020.i.i.i3660.prol, -1 ; 2 uses
  %prol.iter9762.next = add i64 %prol.iter9762, 1 ; 2 uses
  %prol.iter9762.cmp.not = icmp eq i64 %prol.iter9762.next, %xtraiter9760
  br i1 %prol.iter9762.cmp.not, label %.lr.ph.i.i.i3658.prol.loopexit, label %.lr.ph.i.i.i3658.prol, !llvm.loop !8277

.lr.ph.i.i.i3658.prol.loopexit:                   ; preds = %.lr.ph.i.i.i3658.prol, %.lr.ph.i.i.i3658.preheader
  %.lcssa9283.unr = phi ptr [ poison, %.lr.ph.i.i.i3658.preheader ], [ %i.ceb, %.lr.ph.i.i.i3658.prol ]
  %.sroa.019.021.i.i.i3659.unr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i1050, %.lr.ph.i.i.i3658.preheader ], [ %i.ceb, %.lr.ph.i.i.i3658.prol ]
  %.sroa.018.020.i.i.i3660.unr = phi i64 [ %.sroa.4.0.copyload.i.i.i.i.i1055, %.lr.ph.i.i.i3658.preheader ], [ %i.cec, %.lr.ph.i.i.i3658.prol ]
  %i.ced = icmp ult i64 %.sroa.4.0.copyload.i.i.i.i.i1055, 8
  br i1 %i.ced, label %.loopexit.i.i3643, label %.lr.ph.i.i.i3658

.lr.ph.i.i.i3658:                                 ; preds = %.lr.ph.i.i.i3658.prol.loopexit, %.lr.ph.i.i.i3658
  %.sroa.019.021.i.i.i3659 = phi ptr [ %i.cet, %.lr.ph.i.i.i3658 ], [ %.sroa.019.021.i.i.i3659.unr, %.lr.ph.i.i.i3658.prol.loopexit ]
  %.sroa.018.020.i.i.i3660 = phi i64 [ %i.ceu, %.lr.ph.i.i.i3658 ], [ %.sroa.018.020.i.i.i3660.unr, %.lr.ph.i.i.i3658.prol.loopexit ]
  %i.cee = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i.i3659, i64 24
  %i.cef = load ptr, ptr %i.cee, align 8, !noalias !8941, !nonnull !17, !noundef !17
  %i.ceg = getelementptr inbounds nuw i8, ptr %i.cef, i64 24
  %i.ceh = load ptr, ptr %i.ceg, align 8, !noalias !8941, !nonnull !17, !noundef !17
  %i.cei = getelementptr inbounds nuw i8, ptr %i.ceh, i64 24
  %i.cej = load ptr, ptr %i.cei, align 8, !noalias !8941, !nonnull !17, !noundef !17
  %i.cek = getelementptr inbounds nuw i8, ptr %i.cej, i64 24
  %i.cel = load ptr, ptr %i.cek, align 8, !noalias !8941, !nonnull !17, !noundef !17
  %i.cem = getelementptr inbounds nuw i8, ptr %i.cel, i64 24
  %i.cen = load ptr, ptr %i.cem, align 8, !noalias !8941, !nonnull !17, !noundef !17
  %i.ceo = getelementptr inbounds nuw i8, ptr %i.cen, i64 24
  %i.cep = load ptr, ptr %i.ceo, align 8, !noalias !8941, !nonnull !17, !noundef !17
  %i.ceq = getelementptr inbounds nuw i8, ptr %i.cep, i64 24
  %i.cer = load ptr, ptr %i.ceq, align 8, !noalias !8941, !nonnull !17, !noundef !17
  %i.ces = getelementptr inbounds nuw i8, ptr %i.cer, i64 24
  %i.cet = load ptr, ptr %i.ces, align 8, !noalias !8941, !nonnull !17, !noundef !17 ; 2 uses
  %i.ceu = add i64 %.sroa.018.020.i.i.i3660, -8   ; 2 uses
  %i.cev = icmp eq i64 %i.ceu, 0
  br i1 %i.cev, label %.loopexit.i.i3643, label %.lr.ph.i.i.i3658

.loopexit.i.i3643:                                ; preds = %.lr.ph.i.i.i3658.prol.loopexit, %.lr.ph.i.i.i3658, %bb.nh
  %.sroa.0.0.ph.i.i3645 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i1050, %bb.nh ], [ %.lcssa9283.unr, %.lr.ph.i.i.i3658.prol.loopexit ], [ %i.cet, %.lr.ph.i.i.i3658 ] ; 3 uses
  %i.cew = load ptr, ptr %.sroa.0.0.ph.i.i3645, align 8, !noalias !8942, !noundef !17 ; 2 uses
  %.not.i.i4.i.i.i3646 = icmp eq ptr %i.cew, null
  br i1 %.not.i.i4.i.i.i3646, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3653", label %.lr.ph.i3.i.i3647

.lr.ph.i3.i.i3647:                                ; preds = %.loopexit.i.i3643, %.lr.ph.i3.i.i3647
  %i.cex = phi ptr [ %i.cez, %.lr.ph.i3.i.i3647 ], [ %i.cew, %.loopexit.i.i3643 ] ; 3 uses
  %.sroa.0.06.i.i.i3648 = phi ptr [ %i.cex, %.lr.ph.i3.i.i3647 ], [ %.sroa.0.0.ph.i.i3645, %.loopexit.i.i3643 ]
  %.sroa.5.05.i.i.i3649 = phi i64 [ %i.cey, %.lr.ph.i3.i.i3647 ], [ 0, %.loopexit.i.i3643 ] ; 2 uses
  %i.cey = add i64 %.sroa.5.05.i.i.i3649, 1       ; 2 uses
  %.not.i.i.i.i3650 = icmp eq i64 %.sroa.5.05.i.i.i3649, 0
  %..i.i.i.i3651 = select i1 %.not.i.i.i.i3650, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i.i3648, i64 noundef %..i.i.i.i3651, i64 noundef 8) #51, !noalias !8943
  %i.cez = load ptr, ptr %i.cex, align 8, !noalias !8942, !noundef !17 ; 2 uses
  %.not.i.i.i.i.i3652 = icmp eq ptr %i.cez, null
  br i1 %.not.i.i.i.i.i3652, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3653.loopexit", label %.lr.ph.i3.i.i3647

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3653.loopexit": ; preds = %.lr.ph.i3.i.i3647
  %i.cfa = icmp eq i64 %i.cey, 0
  %i.cfb = select i1 %i.cfa, i64 24, i64 120
  br label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3653"

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3653": ; preds = %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3653.loopexit", %.loopexit.i.i3643
  %.sroa.5.0.lcssa.i.i.i3654 = phi i64 [ 24, %.loopexit.i.i3643 ], [ %i.cfb, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3653.loopexit" ]
  %.sroa.0.0.lcssa.i.i.i3655 = phi ptr [ %.sroa.0.0.ph.i.i3645, %.loopexit.i.i3643 ], [ %i.cex, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3653.loopexit" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i.i3655, i64 noundef %.sroa.5.0.lcssa.i.i.i3654, i64 noundef 8) #51, !noalias !8943
  br label %"_ZN4core3ptr62drop_in_place$LT$console..utils..StyledObject$LT$usize$GT$$GT$17h10e4dff4493942ebE.exit1070"

bb.ni:                                            ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i1062"
  br i1 %i.cdz, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3599", label %.lr.ph.i.i2.i3628.preheader

.lr.ph.i.i2.i3628.preheader:                      ; preds = %bb.ni
  %xtraiter9741 = and i64 %.sroa.4.0.copyload.i.i.i.i.i1055, 7 ; 2 uses
  %lcmp.mod9742.not = icmp eq i64 %xtraiter9741, 0
  br i1 %lcmp.mod9742.not, label %.lr.ph.i.i2.i3628.prol.loopexit, label %.lr.ph.i.i2.i3628.prol

.lr.ph.i.i2.i3628.prol:                           ; preds = %.lr.ph.i.i2.i3628.preheader, %.lr.ph.i.i2.i3628.prol
  %.sroa.012.015.i.i.i3629.prol = phi ptr [ %.sroa.012.0.i.i.i3631.prol, %.lr.ph.i.i2.i3628.prol ], [ %.sroa.0.0.copyload.i.i.i.i.i1050, %.lr.ph.i.i2.i3628.preheader ]
  %.sroa.011.014.i.i.i3630.prol = phi i64 [ %i.cfd, %.lr.ph.i.i2.i3628.prol ], [ %.sroa.4.0.copyload.i.i.i.i.i1055, %.lr.ph.i.i2.i3628.preheader ]
  %prol.iter9743 = phi i64 [ %prol.iter9743.next, %.lr.ph.i.i2.i3628.prol ], [ 0, %.lr.ph.i.i2.i3628.preheader ]
  %i.cfc = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i3629.prol, i64 24
  %i.cfd = add i64 %.sroa.011.014.i.i.i3630.prol, -1 ; 2 uses
  %.sroa.012.0.i.i.i3631.prol = load ptr, ptr %i.cfc, align 8, !noalias !8944, !nonnull !17, !noundef !17 ; 3 uses
  %prol.iter9743.next = add i64 %prol.iter9743, 1 ; 2 uses
  %prol.iter9743.cmp.not = icmp eq i64 %prol.iter9743.next, %xtraiter9741
  br i1 %prol.iter9743.cmp.not, label %.lr.ph.i.i2.i3628.prol.loopexit, label %.lr.ph.i.i2.i3628.prol, !llvm.loop !8287

.lr.ph.i.i2.i3628.prol.loopexit:                  ; preds = %.lr.ph.i.i2.i3628.prol, %.lr.ph.i.i2.i3628.preheader
  %.sroa.012.0.i.i.i3631.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.i3628.preheader ], [ %.sroa.012.0.i.i.i3631.prol, %.lr.ph.i.i2.i3628.prol ]
  %.sroa.012.015.i.i.i3629.unr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i1050, %.lr.ph.i.i2.i3628.preheader ], [ %.sroa.012.0.i.i.i3631.prol, %.lr.ph.i.i2.i3628.prol ]
  %.sroa.011.014.i.i.i3630.unr = phi i64 [ %.sroa.4.0.copyload.i.i.i.i.i1055, %.lr.ph.i.i2.i3628.preheader ], [ %i.cfd, %.lr.ph.i.i2.i3628.prol ]
  %i.cfe = icmp ult i64 %.sroa.4.0.copyload.i.i.i.i.i1055, 8
  br i1 %i.cfe, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3599", label %.lr.ph.i.i2.i3628

.lr.ph.i.i2.i3628:                                ; preds = %.lr.ph.i.i2.i3628.prol.loopexit, %.lr.ph.i.i2.i3628
  %.sroa.012.015.i.i.i3629 = phi ptr [ %.sroa.012.0.i.i.i3631.7, %.lr.ph.i.i2.i3628 ], [ %.sroa.012.015.i.i.i3629.unr, %.lr.ph.i.i2.i3628.prol.loopexit ]
  %.sroa.011.014.i.i.i3630 = phi i64 [ %i.cfn, %.lr.ph.i.i2.i3628 ], [ %.sroa.011.014.i.i.i3630.unr, %.lr.ph.i.i2.i3628.prol.loopexit ]
  %i.cff = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i3629, i64 24
  %.sroa.012.0.i.i.i3631 = load ptr, ptr %i.cff, align 8, !noalias !8944, !nonnull !17, !noundef !17
  %i.cfg = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i3631, i64 24
  %.sroa.012.0.i.i.i3631.1 = load ptr, ptr %i.cfg, align 8, !noalias !8944, !nonnull !17, !noundef !17
  %i.cfh = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i3631.1, i64 24
  %.sroa.012.0.i.i.i3631.2 = load ptr, ptr %i.cfh, align 8, !noalias !8944, !nonnull !17, !noundef !17
  %i.cfi = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i3631.2, i64 24
  %.sroa.012.0.i.i.i3631.3 = load ptr, ptr %i.cfi, align 8, !noalias !8944, !nonnull !17, !noundef !17
  %i.cfj = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i3631.3, i64 24
  %.sroa.012.0.i.i.i3631.4 = load ptr, ptr %i.cfj, align 8, !noalias !8944, !nonnull !17, !noundef !17
  %i.cfk = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i3631.4, i64 24
  %.sroa.012.0.i.i.i3631.5 = load ptr, ptr %i.cfk, align 8, !noalias !8944, !nonnull !17, !noundef !17
  %i.cfl = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i3631.5, i64 24
  %.sroa.012.0.i.i.i3631.6 = load ptr, ptr %i.cfl, align 8, !noalias !8944, !nonnull !17, !noundef !17
  %i.cfm = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i3631.6, i64 24
  %i.cfn = add i64 %.sroa.011.014.i.i.i3630, -8   ; 2 uses
  %.sroa.012.0.i.i.i3631.7 = load ptr, ptr %i.cfm, align 8, !noalias !8944, !nonnull !17, !noundef !17 ; 2 uses
  %i.cfo = icmp eq i64 %i.cfn, 0
  br i1 %i.cfo, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3599", label %.lr.ph.i.i2.i3628

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3599": ; preds = %.lr.ph.i.i2.i3628.prol.loopexit, %.lr.ph.i.i2.i3628, %bb.ni
  %.sroa.012.0.lcssa.i.i.i3633 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i1050, %bb.ni ], [ %.sroa.012.0.i.i.i3631.lcssa.unr, %.lr.ph.i.i2.i3628.prol.loopexit ], [ %.sroa.012.0.i.i.i3631.7, %.lr.ph.i.i2.i3628 ] ; 3 uses
  %i.cfp = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i3633, i64 10
  %i.cfq = load i16, ptr %i.cfp, align 2, !noalias !8945, !noundef !17
  %.not6005 = icmp eq i16 %i.cfq, 0
  br i1 %.not6005, label %.lr.ph.i.i.i.i.i3603, label %.noexc1068

.lr.ph.i.i.i.i.i3603:                             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3599", %bb.nk
  %.sroa.0.060.i.i.i.i.i3604 = phi ptr [ %i.cfr, %bb.nk ], [ %.sroa.012.0.lcssa.i.i.i3633, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3599" ] ; 4 uses
  %.sroa.5.059.i.i.i.i.i3605 = phi i64 [ %i.cgj, %bb.nk ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3599" ] ; 4 uses
  %i.cfr = load ptr, ptr %.sroa.0.060.i.i.i.i.i3604, align 8, !noalias !8946, !noundef !17 ; 5 uses
  %.not.i.i.i.i.i.i.i3606 = icmp eq ptr %i.cfr, null
  br i1 %.not.i.i.i.i.i.i.i3606, label %bb.nl, label %bb.nk

._crit_edge.i.i.i.i.i3610:                        ; preds = %bb.nk
  %i.cfs = zext i16 %i.cgl to i64
  %i.cft = icmp eq i64 %i.cgj, 0
  %i.cfu = add nuw nsw i64 %i.cfs, 1              ; 2 uses
  br i1 %i.cft, label %.noexc1068, label %bb.nj

bb.nj:                                            ; preds = %._crit_edge.i.i.i.i.i3610
  %i.cfv = getelementptr inbounds nuw i8, ptr %i.cfr, i64 24
  %i.cfw = icmp ult i16 %i.cgl, 11
  call void @llvm.assume(i1 %i.cfw)
  %i.cfx = getelementptr inbounds nuw [8 x i8], ptr %i.cfv, i64 %i.cfu ; 2 uses
  %xtraiter9749 = and i64 %i.cgj, 7               ; 2 uses
  %lcmp.mod9750.not = icmp eq i64 %xtraiter9749, 0
  br i1 %lcmp.mod9750.not, label %.prol.loopexit9745, label %.prol.preheader9744

.prol.preheader9744:                              ; preds = %bb.nj, %.prol.preheader9744
  %.pn30.in.i.i.i.i.i.i3614.prol = phi ptr [ %i.cfy, %.prol.preheader9744 ], [ %i.cfx, %bb.nj ]
  %.pn28.in.i.i.i.i.i.i3615.prol = phi i64 [ %.pn28.i.i.i.i.i.i3616.prol, %.prol.preheader9744 ], [ %i.cgj, %bb.nj ]
  %prol.iter9751 = phi i64 [ %prol.iter9751.next, %.prol.preheader9744 ], [ 0, %bb.nj ]
  %.pn28.i.i.i.i.i.i3616.prol = add i64 %.pn28.in.i.i.i.i.i.i3615.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i3617.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i3614.prol, align 8, !noalias !8947, !nonnull !17, !noundef !17 ; 2 uses
  %i.cfy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3617.prol, i64 24 ; 2 uses
  %prol.iter9751.next = add i64 %prol.iter9751, 1 ; 2 uses
  %prol.iter9751.cmp.not = icmp eq i64 %prol.iter9751.next, %xtraiter9749
  br i1 %prol.iter9751.cmp.not, label %.prol.loopexit9745, label %.prol.preheader9744, !llvm.loop !8304

.prol.loopexit9745:                               ; preds = %.prol.preheader9744, %bb.nj
  %.pn30.i.i.i.i.i.i3617.lcssa.unr = phi ptr [ poison, %bb.nj ], [ %.pn30.i.i.i.i.i.i3617.prol, %.prol.preheader9744 ]
  %.pn30.in.i.i.i.i.i.i3614.unr = phi ptr [ %i.cfx, %bb.nj ], [ %i.cfy, %.prol.preheader9744 ]
  %.pn28.in.i.i.i.i.i.i3615.unr = phi i64 [ %i.cgj, %bb.nj ], [ %.pn28.i.i.i.i.i.i3616.prol, %.prol.preheader9744 ]
  %i.cfz = icmp ult i64 %.sroa.5.059.i.i.i.i.i3605, 7
  br i1 %i.cfz, label %.noexc1068, label %.new9746

.new9746:                                         ; preds = %.prol.loopexit9745, %.new9746
  %.pn30.in.i.i.i.i.i.i3614 = phi ptr [ %i.cgi, %.new9746 ], [ %.pn30.in.i.i.i.i.i.i3614.unr, %.prol.loopexit9745 ]
  %.pn28.in.i.i.i.i.i.i3615 = phi i64 [ %.pn28.i.i.i.i.i.i3616.7, %.new9746 ], [ %.pn28.in.i.i.i.i.i.i3615.unr, %.prol.loopexit9745 ]
  %.pn30.i.i.i.i.i.i3617 = load ptr, ptr %.pn30.in.i.i.i.i.i.i3614, align 8, !noalias !8947, !nonnull !17, !noundef !17
  %i.cga = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3617, i64 24
  %.pn30.i.i.i.i.i.i3617.1 = load ptr, ptr %i.cga, align 8, !noalias !8947, !nonnull !17, !noundef !17
  %i.cgb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3617.1, i64 24
  %.pn30.i.i.i.i.i.i3617.2 = load ptr, ptr %i.cgb, align 8, !noalias !8947, !nonnull !17, !noundef !17
  %i.cgc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3617.2, i64 24
  %.pn30.i.i.i.i.i.i3617.3 = load ptr, ptr %i.cgc, align 8, !noalias !8947, !nonnull !17, !noundef !17
  %i.cgd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3617.3, i64 24
  %.pn30.i.i.i.i.i.i3617.4 = load ptr, ptr %i.cgd, align 8, !noalias !8947, !nonnull !17, !noundef !17
  %i.cge = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3617.4, i64 24
  %.pn30.i.i.i.i.i.i3617.5 = load ptr, ptr %i.cge, align 8, !noalias !8947, !nonnull !17, !noundef !17
  %i.cgf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3617.5, i64 24
  %.pn30.i.i.i.i.i.i3617.6 = load ptr, ptr %i.cgf, align 8, !noalias !8947, !nonnull !17, !noundef !17
  %i.cgg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3617.6, i64 24
  %.pn28.i.i.i.i.i.i3616.7 = add i64 %.pn28.in.i.i.i.i.i.i3615, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i3617.7 = load ptr, ptr %i.cgg, align 8, !noalias !8947, !nonnull !17, !noundef !17 ; 2 uses
  %i.cgh = icmp eq i64 %.pn28.i.i.i.i.i.i3616.7, 0
  %i.cgi = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3617.7, i64 24
  br i1 %i.cgh, label %.noexc1068, label %.new9746

bb.nk:                                            ; preds = %.lr.ph.i.i.i.i.i3603
  %i.cgj = add i64 %.sroa.5.059.i.i.i.i.i3605, 1  ; 5 uses
  %i.cgk = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i.i3604, i64 8
  %i.cgl = load i16, ptr %i.cgk, align 8, !noalias !8946 ; 3 uses
  %.not.i.i.i.i.i.i3607 = icmp eq i64 %.sroa.5.059.i.i.i.i.i3605, 0
  %..i.i.i.i.i.i3608 = select i1 %.not.i.i.i.i.i.i3607, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i3604, i64 noundef %..i.i.i.i.i.i3608, i64 noundef 8) #51, !noalias !8948
  %i.cgm = getelementptr inbounds nuw i8, ptr %i.cfr, i64 10
  %i.cgn = load i16, ptr %i.cgm, align 2, !noalias !8945, !noundef !17
  %i.cgo = icmp ult i16 %i.cgl, %i.cgn
  br i1 %i.cgo, label %._crit_edge.i.i.i.i.i3610, label %.lr.ph.i.i.i.i.i3603

bb.nl:                                            ; preds = %.lr.ph.i.i.i.i.i3603
  %.not.i54.i.i.i.i.i3624 = icmp eq i64 %.sroa.5.059.i.i.i.i.i3605, 0
  %..i55.i.i.i.i.i3625 = select i1 %.not.i54.i.i.i.i.i3624, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i3604, i64 noundef %..i55.i.i.i.i.i3625, i64 noundef 8) #51, !noalias !8948
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #54
          to label %.noexc.i.i.i3626 unwind label %bb.nm, !noalias !8949

.noexc.i.i.i3626:                                 ; preds = %bb.nl
  unreachable

bb.nm:                                            ; preds = %bb.nl
  %i.cgp = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.noexc1068:                                       ; preds = %.prol.loopexit9745, %.new9746, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3599", %._crit_edge.i.i.i.i.i3610
  %.sroa.115294.3 = phi ptr [ %.sroa.012.0.lcssa.i.i.i3633, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3599" ], [ %i.cfr, %._crit_edge.i.i.i.i.i3610 ], [ %.pn30.i.i.i.i.i.i3617.lcssa.unr, %.prol.loopexit9745 ], [ %.pn30.i.i.i.i.i.i3617.7, %.new9746 ] ; 2 uses
  %.sroa.275298.3 = phi i64 [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3599" ], [ %i.cfu, %._crit_edge.i.i.i.i.i3610 ], [ 0, %.new9746 ], [ 0, %.prol.loopexit9745 ]
  %.sroa.405308.07037 = add i64 %.sroa.5.0.copyload.i.i.i.i.i1053, -1 ; 2 uses
  %i.cgq = icmp eq i64 %.sroa.405308.07037, 0
  br i1 %i.cgq, label %.loopexit.i.i3573, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3529"

.loopexit.i.i3573:                                ; preds = %.noexc1069, %.noexc1068
  %.sroa.115294.1.lcssa = phi ptr [ %.sroa.115294.3, %.noexc1068 ], [ %.sroa.115294.2, %.noexc1069 ] ; 3 uses
  %i.cgr = load ptr, ptr %.sroa.115294.1.lcssa, align 8, !noalias !8950, !noundef !17 ; 2 uses
  %.not.i.i4.i.i.i3576 = icmp eq ptr %i.cgr, null
  br i1 %.not.i.i4.i.i.i3576, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3583", label %.lr.ph.i3.i.i3577

.lr.ph.i3.i.i3577:                                ; preds = %.loopexit.i.i3573, %.lr.ph.i3.i.i3577
  %i.cgs = phi ptr [ %i.cgu, %.lr.ph.i3.i.i3577 ], [ %i.cgr, %.loopexit.i.i3573 ] ; 3 uses
  %.sroa.0.06.i.i.i3578 = phi ptr [ %i.cgs, %.lr.ph.i3.i.i3577 ], [ %.sroa.115294.1.lcssa, %.loopexit.i.i3573 ]
  %.sroa.5.05.i.i.i3579 = phi i64 [ %i.cgt, %.lr.ph.i3.i.i3577 ], [ 0, %.loopexit.i.i3573 ] ; 2 uses
  %i.cgt = add i64 %.sroa.5.05.i.i.i3579, 1       ; 2 uses
  %.not.i.i.i.i3580 = icmp eq i64 %.sroa.5.05.i.i.i3579, 0
  %..i.i.i.i3581 = select i1 %.not.i.i.i.i3580, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i.i3578, i64 noundef %..i.i.i.i3581, i64 noundef 8) #51, !noalias !8951
  %i.cgu = load ptr, ptr %i.cgs, align 8, !noalias !8950, !noundef !17 ; 2 uses
  %.not.i.i.i.i.i3582 = icmp eq ptr %i.cgu, null
  br i1 %.not.i.i.i.i.i3582, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3583.loopexit", label %.lr.ph.i3.i.i3577

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3583.loopexit": ; preds = %.lr.ph.i3.i.i3577
  %i.cgv = icmp eq i64 %i.cgt, 0
  %i.cgw = select i1 %i.cgv, i64 24, i64 120
  br label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3583"

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3583": ; preds = %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3583.loopexit", %.loopexit.i.i3573
  %.sroa.5.0.lcssa.i.i.i3584 = phi i64 [ 24, %.loopexit.i.i3573 ], [ %i.cgw, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3583.loopexit" ]
  %.sroa.0.0.lcssa.i.i.i3585 = phi ptr [ %.sroa.115294.1.lcssa, %.loopexit.i.i3573 ], [ %i.cgs, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3583.loopexit" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i.i3585, i64 noundef %.sroa.5.0.lcssa.i.i.i3584, i64 noundef 8) #51, !noalias !8951
  br label %"_ZN4core3ptr62drop_in_place$LT$console..utils..StyledObject$LT$usize$GT$$GT$17h10e4dff4493942ebE.exit1070"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3529": ; preds = %.noexc1068, %.noexc1069
  %.sroa.405308.07040 = phi i64 [ %.sroa.405308.0, %.noexc1069 ], [ %.sroa.405308.07037, %.noexc1068 ]
  %.sroa.275298.17039 = phi i64 [ %.sroa.275298.2, %.noexc1069 ], [ %.sroa.275298.3, %.noexc1068 ] ; 2 uses
  %.sroa.115294.17038 = phi ptr [ %.sroa.115294.2, %.noexc1069 ], [ %.sroa.115294.3, %.noexc1068 ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.115294.17038) ]
  %i.cgx = getelementptr inbounds nuw i8, ptr %.sroa.115294.17038, i64 10
  %i.cgy = load i16, ptr %i.cgx, align 2, !noalias !8952, !noundef !17
  %i.cgz = zext i16 %i.cgy to i64
  %i.cha = icmp ult i64 %.sroa.275298.17039, %i.cgz
  br i1 %i.cha, label %._crit_edge.i.i.i.i.i3540.thread, label %.lr.ph.i.i.i.i.i3533

._crit_edge.i.i.i.i.i3540.thread:                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3529"
  %i.chb = add nuw nsw i64 %.sroa.275298.17039, 1
  br label %.noexc1069

.lr.ph.i.i.i.i.i3533:                             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3529", %bb.no
  %.sroa.0.060.i.i.i.i.i3534 = phi ptr [ %i.chc, %bb.no ], [ %.sroa.115294.17038, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3529" ] ; 4 uses
  %.sroa.5.059.i.i.i.i.i3535 = phi i64 [ %i.chu, %bb.no ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3529" ] ; 4 uses
  %i.chc = load ptr, ptr %.sroa.0.060.i.i.i.i.i3534, align 8, !noalias !8953, !noundef !17 ; 5 uses
  %.not.i.i.i.i.i.i.i3536 = icmp eq ptr %i.chc, null
  br i1 %.not.i.i.i.i.i.i.i3536, label %bb.np, label %bb.no

._crit_edge.i.i.i.i.i3540:                        ; preds = %bb.no
  %i.chd = zext i16 %i.chw to i64
  %i.che = icmp eq i64 %i.chu, 0
  %i.chf = add nuw nsw i64 %i.chd, 1              ; 2 uses
  br i1 %i.che, label %.noexc1069, label %bb.nn

bb.nn:                                            ; preds = %._crit_edge.i.i.i.i.i3540
  %i.chg = getelementptr inbounds nuw i8, ptr %i.chc, i64 24
  %i.chh = icmp ult i16 %i.chw, 11
  call void @llvm.assume(i1 %i.chh)
  %i.chi = getelementptr inbounds nuw [8 x i8], ptr %i.chg, i64 %i.chf ; 2 uses
  %xtraiter9757 = and i64 %i.chu, 7               ; 2 uses
  %lcmp.mod9758.not = icmp eq i64 %xtraiter9757, 0
  br i1 %lcmp.mod9758.not, label %.prol.loopexit9753, label %.prol.preheader9752

.prol.preheader9752:                              ; preds = %bb.nn, %.prol.preheader9752
  %.pn30.in.i.i.i.i.i.i3544.prol = phi ptr [ %i.chj, %.prol.preheader9752 ], [ %i.chi, %bb.nn ]
  %.pn28.in.i.i.i.i.i.i3545.prol = phi i64 [ %.pn28.i.i.i.i.i.i3546.prol, %.prol.preheader9752 ], [ %i.chu, %bb.nn ]
  %prol.iter9759 = phi i64 [ %prol.iter9759.next, %.prol.preheader9752 ], [ 0, %bb.nn ]
  %.pn28.i.i.i.i.i.i3546.prol = add i64 %.pn28.in.i.i.i.i.i.i3545.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i3547.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i3544.prol, align 8, !noalias !8954, !nonnull !17, !noundef !17 ; 2 uses
  %i.chj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3547.prol, i64 24 ; 2 uses
  %prol.iter9759.next = add i64 %prol.iter9759, 1 ; 2 uses
  %prol.iter9759.cmp.not = icmp eq i64 %prol.iter9759.next, %xtraiter9757
  br i1 %prol.iter9759.cmp.not, label %.prol.loopexit9753, label %.prol.preheader9752, !llvm.loop !8333

.prol.loopexit9753:                               ; preds = %.prol.preheader9752, %bb.nn
  %.pn30.i.i.i.i.i.i3547.lcssa.unr = phi ptr [ poison, %bb.nn ], [ %.pn30.i.i.i.i.i.i3547.prol, %.prol.preheader9752 ]
  %.pn30.in.i.i.i.i.i.i3544.unr = phi ptr [ %i.chi, %bb.nn ], [ %i.chj, %.prol.preheader9752 ]
  %.pn28.in.i.i.i.i.i.i3545.unr = phi i64 [ %i.chu, %bb.nn ], [ %.pn28.i.i.i.i.i.i3546.prol, %.prol.preheader9752 ]
  %i.chk = icmp ult i64 %.sroa.5.059.i.i.i.i.i3535, 7
  br i1 %i.chk, label %.noexc1069, label %.new9754

.new9754:                                         ; preds = %.prol.loopexit9753, %.new9754
  %.pn30.in.i.i.i.i.i.i3544 = phi ptr [ %i.cht, %.new9754 ], [ %.pn30.in.i.i.i.i.i.i3544.unr, %.prol.loopexit9753 ]
  %.pn28.in.i.i.i.i.i.i3545 = phi i64 [ %.pn28.i.i.i.i.i.i3546.7, %.new9754 ], [ %.pn28.in.i.i.i.i.i.i3545.unr, %.prol.loopexit9753 ]
  %.pn30.i.i.i.i.i.i3547 = load ptr, ptr %.pn30.in.i.i.i.i.i.i3544, align 8, !noalias !8954, !nonnull !17, !noundef !17
  %i.chl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3547, i64 24
  %.pn30.i.i.i.i.i.i3547.1 = load ptr, ptr %i.chl, align 8, !noalias !8954, !nonnull !17, !noundef !17
  %i.chm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3547.1, i64 24
  %.pn30.i.i.i.i.i.i3547.2 = load ptr, ptr %i.chm, align 8, !noalias !8954, !nonnull !17, !noundef !17
  %i.chn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3547.2, i64 24
  %.pn30.i.i.i.i.i.i3547.3 = load ptr, ptr %i.chn, align 8, !noalias !8954, !nonnull !17, !noundef !17
  %i.cho = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3547.3, i64 24
  %.pn30.i.i.i.i.i.i3547.4 = load ptr, ptr %i.cho, align 8, !noalias !8954, !nonnull !17, !noundef !17
  %i.chp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3547.4, i64 24
  %.pn30.i.i.i.i.i.i3547.5 = load ptr, ptr %i.chp, align 8, !noalias !8954, !nonnull !17, !noundef !17
  %i.chq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3547.5, i64 24
  %.pn30.i.i.i.i.i.i3547.6 = load ptr, ptr %i.chq, align 8, !noalias !8954, !nonnull !17, !noundef !17
  %i.chr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3547.6, i64 24
  %.pn28.i.i.i.i.i.i3546.7 = add i64 %.pn28.in.i.i.i.i.i.i3545, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i3547.7 = load ptr, ptr %i.chr, align 8, !noalias !8954, !nonnull !17, !noundef !17 ; 2 uses
  %i.chs = icmp eq i64 %.pn28.i.i.i.i.i.i3546.7, 0
  %i.cht = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3547.7, i64 24
  br i1 %i.chs, label %.noexc1069, label %.new9754

bb.no:                                            ; preds = %.lr.ph.i.i.i.i.i3533
  %i.chu = add i64 %.sroa.5.059.i.i.i.i.i3535, 1  ; 5 uses
  %i.chv = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i.i3534, i64 8
  %i.chw = load i16, ptr %i.chv, align 8, !noalias !8953 ; 3 uses
  %.not.i.i.i.i.i.i3537 = icmp eq i64 %.sroa.5.059.i.i.i.i.i3535, 0
  %..i.i.i.i.i.i3538 = select i1 %.not.i.i.i.i.i.i3537, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i3534, i64 noundef %..i.i.i.i.i.i3538, i64 noundef 8) #51, !noalias !8955
  %i.chx = getelementptr inbounds nuw i8, ptr %i.chc, i64 10
  %i.chy = load i16, ptr %i.chx, align 2, !noalias !8952, !noundef !17
  %i.chz = icmp ult i16 %i.chw, %i.chy
  br i1 %i.chz, label %._crit_edge.i.i.i.i.i3540, label %.lr.ph.i.i.i.i.i3533

bb.np:                                            ; preds = %.lr.ph.i.i.i.i.i3533
  %.not.i54.i.i.i.i.i3554 = icmp eq i64 %.sroa.5.059.i.i.i.i.i3535, 0
  %..i55.i.i.i.i.i3555 = select i1 %.not.i54.i.i.i.i.i3554, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i3534, i64 noundef %..i55.i.i.i.i.i3555, i64 noundef 8) #51, !noalias !8955
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #54
          to label %.noexc.i.i.i3556 unwind label %bb.nq, !noalias !8956

.noexc.i.i.i3556:                                 ; preds = %bb.np
  unreachable

bb.nq:                                            ; preds = %bb.np
  %i.cia = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.noexc1069:                                       ; preds = %.prol.loopexit9753, %.new9754, %._crit_edge.i.i.i.i.i3540.thread, %._crit_edge.i.i.i.i.i3540
  %.sroa.115294.2 = phi ptr [ %i.chc, %._crit_edge.i.i.i.i.i3540 ], [ %.sroa.115294.17038, %._crit_edge.i.i.i.i.i3540.thread ], [ %.pn30.i.i.i.i.i.i3547.lcssa.unr, %.prol.loopexit9753 ], [ %.pn30.i.i.i.i.i.i3547.7, %.new9754 ] ; 2 uses
  %.sroa.275298.2 = phi i64 [ %i.chf, %._crit_edge.i.i.i.i.i3540 ], [ %i.chb, %._crit_edge.i.i.i.i.i3540.thread ], [ 0, %.new9754 ], [ 0, %.prol.loopexit9753 ]
  %.sroa.405308.0 = add i64 %.sroa.405308.07040, -1 ; 2 uses
  %i.cib = icmp eq i64 %.sroa.405308.0, 0
  br i1 %i.cib, label %.loopexit.i.i3573, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3529"

"_ZN4core3ptr62drop_in_place$LT$console..utils..StyledObject$LT$usize$GT$$GT$17h10e4dff4493942ebE.exit1070": ; preds = %"_ZN4core3ptr64drop_in_place$LT$console..utils..StyledObject$LT$$RF$str$GT$$GT$17h1e14615d2c6972d3E.exit1049", %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3583", %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i3653"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0.copyload) ]
  %.idx7116 = mul nuw nsw i64 %.sroa.19.0.copyload, 24
  %i.cic = getelementptr inbounds nuw i8, ptr %.sroa.13.0.copyload, i64 %.idx7116
  %i.cid = icmp eq i64 %.sroa.19.0.copyload, 0
  br i1 %i.cid, label %"_ZN7similar4text6inline21InlineChange$LT$T$GT$15missing_newline17he6fc54d025be7b49E.exit.thread", label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %"_ZN4core3ptr62drop_in_place$LT$console..utils..StyledObject$LT$usize$GT$$GT$17h10e4dff4493942ebE.exit1070"
  %.sroa.0450.17053 = getelementptr inbounds nuw i8, ptr %.sroa.13.0.copyload, i64 24
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.oi
  %.sroa.0450.17055 = phi ptr [ %.sroa.0450.1, %bb.oi ], [ %.sroa.0450.17053, %.lr.ph.preheader ] ; 3 uses
  %.sroa.0450.07054 = phi ptr [ %.sroa.0450.17055, %bb.oi ], [ %.sroa.13.0.copyload, %.lr.ph.preheader ] ; 3 uses
  %i.cie = load i8, ptr %.sroa.0450.07054, align 8, !range !21, !noundef !17
  %i.cif = getelementptr inbounds nuw i8, ptr %.sroa.0450.07054, i64 8
  %i.cig = load ptr, ptr %i.cif, align 8, !nonnull !17, !align !31, !noundef !17
  %i.cih = getelementptr inbounds nuw i8, ptr %.sroa.0450.07054, i64 16
  %i.cii = load i64, ptr %i.cih, align 8, !noundef !17
  invoke fastcc void @_ZN5insta6output16render_invisible17hdca59b7d9af24b28E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.do, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cig, i64 noundef %i.cii, i1 noundef zeroext %.sroa.0.0.i)
          to label %bb.nu unwind label %.loopexit.split-lp6039.loopexit.split-lp.loopexit

"_ZN7similar4text6inline21InlineChange$LT$T$GT$15missing_newline17he6fc54d025be7b49E.exit": ; preds = %bb.ka
  br i1 %i.bdx, label %"_ZN7similar4text6inline21InlineChange$LT$T$GT$15missing_newline17he6fc54d025be7b49E.exit.thread", label %bb.nr

bb.nr:                                            ; preds = %"_ZN7similar4text6inline21InlineChange$LT$T$GT$15missing_newline17he6fc54d025be7b49E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  store ptr @340, ptr %i.co, align 8
  store i64 1, ptr %i.acu, align 8
  store ptr null, ptr %i.acv, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.acw, align 8
  store i64 0, ptr %i.acx, align 8
  invoke void @_ZN3std2io5stdio6_print17h361a6d98ea723aceE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.co)
          to label %bb.nt unwind label %.loopexit.split-lp6039.loopexit.split-lp.loopexit.split-lp.loopexit

"_ZN7similar4text6inline21InlineChange$LT$T$GT$15missing_newline17he6fc54d025be7b49E.exit.thread": ; preds = %"_ZN4core3ptr62drop_in_place$LT$console..utils..StyledObject$LT$usize$GT$$GT$17h10e4dff4493942ebE.exit771", %"_ZN4core3ptr62drop_in_place$LT$console..utils..StyledObject$LT$usize$GT$$GT$17h10e4dff4493942ebE.exit889", %"_ZN4core3ptr62drop_in_place$LT$console..utils..StyledObject$LT$usize$GT$$GT$17h10e4dff4493942ebE.exit1070", %.loopexit6037, %"_ZN7similar4text6inline21InlineChange$LT$T$GT$15missing_newline17he6fc54d025be7b49E.exit", %bb.nt
  %.sroa.03.37975 = phi i1 [ %.sroa.03.3, %bb.nt ], [ %.sroa.03.3, %.loopexit6037 ], [ %.sroa.03.3, %"_ZN7similar4text6inline21InlineChange$LT$T$GT$15missing_newline17he6fc54d025be7b49E.exit" ], [ true, %"_ZN4core3ptr62drop_in_place$LT$console..utils..StyledObject$LT$usize$GT$$GT$17h10e4dff4493942ebE.exit1070" ], [ %.sroa.03.2, %"_ZN4core3ptr62drop_in_place$LT$console..utils..StyledObject$LT$usize$GT$$GT$17h10e4dff4493942ebE.exit771" ], [ true, %"_ZN4core3ptr62drop_in_place$LT$console..utils..StyledObject$LT$usize$GT$$GT$17h10e4dff4493942ebE.exit889" ]
  %i.cij = icmp eq i64 %.sroa.114279.0.copyload, 0
  br i1 %i.cij, label %"_ZN4core3ptr67drop_in_place$LT$similar..text..inline..InlineChange$LT$str$GT$$GT$17h8f5e2353193a1da2E.exit1071", label %bb.ns

bb.ns:                                            ; preds = %"_ZN7similar4text6inline21InlineChange$LT$T$GT$15missing_newline17he6fc54d025be7b49E.exit.thread"
  %i.cik = mul nuw i64 %.sroa.114279.0.copyload, 24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.13.0.copyload, i64 noundef %i.cik, i64 noundef range(i64 1, -9223372036854775807) 8) #51
  br label %"_ZN4core3ptr67drop_in_place$LT$similar..text..inline..InlineChange$LT$str$GT$$GT$17h8f5e2353193a1da2E.exit1071"

bb.nt:                                            ; preds = %bb.nr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  br label %"_ZN7similar4text6inline21InlineChange$LT$T$GT$15missing_newline17he6fc54d025be7b49E.exit.thread"

"_ZN4core3ptr67drop_in_place$LT$similar..text..inline..InlineChange$LT$str$GT$$GT$17h8f5e2353193a1da2E.exit1071": ; preds = %bb.ns, %"_ZN7similar4text6inline21InlineChange$LT$T$GT$15missing_newline17he6fc54d025be7b49E.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.ij

bb.nu:                                            ; preds = %.lr.ph
  %i.cil = trunc nuw i8 %i.cie to i1
  br i1 %i.cil, label %.noexc1097.thread, label %.noexc1083.thread

.noexc1083.thread:                                ; preds = %bb.nu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.di, ptr noundef nonnull align 8 dereferenceable(24) %i.do, i64 24, i1 false)
  store ptr null, ptr %.sroa.0220.sroa.4.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.0220.sroa.8.0..sroa_idx, align 8
  store i8 2, ptr %.sroa.6222.0..sroa_idx223, align 8
  store i8 9, ptr %.sroa.10228.0..sroa_idx229, align 2
  store <4 x i8> <i8 2, i8 0, i8 0, i8 0>, ptr %.sroa.10228.sroa.7.0..sroa.10228.0..sroa_idx229.sroa_idx, align 4
  store ptr %i.di, ptr %i.dj, align 8
  store ptr @"_ZN76_$LT$console..utils..StyledObject$LT$D$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h8ba3abe9e05663c5E", ptr %.sroa.4233.0..sroa_idx, align 8
  store ptr @305, ptr %i.dk, align 8
  store i64 1, ptr %i.abm, align 8
  store ptr null, ptr %i.abn, align 8
  store ptr %i.dj, ptr %i.abo, align 8
  store i64 1, ptr %i.abp, align 8
  invoke void @_ZN3std2io5stdio6_print17h361a6d98ea723aceE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.dk)
          to label %bb.nw unwind label %bb.nv

.noexc1097.thread:                                ; preds = %bb.nu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  %.sroa.04335.sroa.0.0.copyload = load i64, ptr %i.do, align 8, !alias.scope !8957, !noalias !8958 ; 3 uses
  %.sroa.04335.sroa.4.0.copyload = load ptr, ptr %.sroa.04335.sroa.4.0..sroa_idx, align 8, !alias.scope !8957, !noalias !8958 ; 3 uses
  %.sroa.04335.sroa.5.0.copyload = load i64, ptr %.sroa.04335.sroa.5.0..sroa_idx, align 8, !alias.scope !8957, !noalias !8958
  call void @llvm.experimental.noalias.scope.decl(metadata !8959)
  call void @llvm.experimental.noalias.scope.decl(metadata !8960)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8961
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8961
  store ptr null, ptr %i.a, align 8, !noalias !8959
  store i64 0, ptr %.sroa.64328.sroa.8.8..sroa_idx, align 8, !noalias !8959
end_hunk_5
begin_hunk_6_@_ZN5insta6output15SnapshotPrinter15print_changeset17h296982a1490293ddE:bb.a
  %.not.i.i.i.i.i4072 = icmp eq ptr %i.cjo, null
  br i1 %.not.i.i.i.i.i4072, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4073.loopexit", label %.lr.ph.i3.i.i4067

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4073.loopexit": ; preds = %.lr.ph.i3.i.i4067
  %i.cjp = icmp eq i64 %i.cjn, 0
  %i.cjq = select i1 %i.cjp, i64 24, i64 120
  br label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4073"

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4073": ; preds = %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4073.loopexit", %.loopexit.i.i4063
  %.sroa.5.0.lcssa.i.i.i4074 = phi i64 [ 24, %.loopexit.i.i4063 ], [ %i.cjq, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4073.loopexit" ]
  %.sroa.0.0.lcssa.i.i.i4075 = phi ptr [ %.sroa.0.0.ph.i.i4065, %.loopexit.i.i4063 ], [ %i.cjm, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4073.loopexit" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i.i4075, i64 noundef %.sroa.5.0.lcssa.i.i.i4074, i64 noundef 8) #51, !noalias !8966
  br label %.loopexit7.i1129

bb.ny:                                            ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i1112"
  br i1 %i.cio, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i4019", label %.lr.ph.i.i2.i4048.preheader

.lr.ph.i.i2.i4048.preheader:                      ; preds = %bb.ny
  %xtraiter9763 = and i64 %.sroa.4.0.copyload.i.i.i.i.i1105, 7 ; 2 uses
  %lcmp.mod9764.not = icmp eq i64 %xtraiter9763, 0
  br i1 %lcmp.mod9764.not, label %.lr.ph.i.i2.i4048.prol.loopexit, label %.lr.ph.i.i2.i4048.prol

.lr.ph.i.i2.i4048.prol:                           ; preds = %.lr.ph.i.i2.i4048.preheader, %.lr.ph.i.i2.i4048.prol
  %.sroa.012.015.i.i.i4049.prol = phi ptr [ %.sroa.012.0.i.i.i4051.prol, %.lr.ph.i.i2.i4048.prol ], [ %.sroa.0.0.copyload.i.i.i.i.i1100, %.lr.ph.i.i2.i4048.preheader ]
  %.sroa.011.014.i.i.i4050.prol = phi i64 [ %i.cjs, %.lr.ph.i.i2.i4048.prol ], [ %.sroa.4.0.copyload.i.i.i.i.i1105, %.lr.ph.i.i2.i4048.preheader ]
  %prol.iter9765 = phi i64 [ %prol.iter9765.next, %.lr.ph.i.i2.i4048.prol ], [ 0, %.lr.ph.i.i2.i4048.preheader ]
  %i.cjr = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i4049.prol, i64 24
  %i.cjs = add i64 %.sroa.011.014.i.i.i4050.prol, -1 ; 2 uses
  %.sroa.012.0.i.i.i4051.prol = load ptr, ptr %i.cjr, align 8, !noalias !8967, !nonnull !17, !noundef !17 ; 3 uses
  %prol.iter9765.next = add i64 %prol.iter9765, 1 ; 2 uses
  %prol.iter9765.cmp.not = icmp eq i64 %prol.iter9765.next, %xtraiter9763
  br i1 %prol.iter9765.cmp.not, label %.lr.ph.i.i2.i4048.prol.loopexit, label %.lr.ph.i.i2.i4048.prol, !llvm.loop !8374

.lr.ph.i.i2.i4048.prol.loopexit:                  ; preds = %.lr.ph.i.i2.i4048.prol, %.lr.ph.i.i2.i4048.preheader
  %.sroa.012.0.i.i.i4051.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.i4048.preheader ], [ %.sroa.012.0.i.i.i4051.prol, %.lr.ph.i.i2.i4048.prol ]
  %.sroa.012.015.i.i.i4049.unr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i1100, %.lr.ph.i.i2.i4048.preheader ], [ %.sroa.012.0.i.i.i4051.prol, %.lr.ph.i.i2.i4048.prol ]
  %.sroa.011.014.i.i.i4050.unr = phi i64 [ %.sroa.4.0.copyload.i.i.i.i.i1105, %.lr.ph.i.i2.i4048.preheader ], [ %i.cjs, %.lr.ph.i.i2.i4048.prol ]
  %i.cjt = icmp ult i64 %.sroa.4.0.copyload.i.i.i.i.i1105, 8
  br i1 %i.cjt, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i4019", label %.lr.ph.i.i2.i4048

.lr.ph.i.i2.i4048:                                ; preds = %.lr.ph.i.i2.i4048.prol.loopexit, %.lr.ph.i.i2.i4048
  %.sroa.012.015.i.i.i4049 = phi ptr [ %.sroa.012.0.i.i.i4051.7, %.lr.ph.i.i2.i4048 ], [ %.sroa.012.015.i.i.i4049.unr, %.lr.ph.i.i2.i4048.prol.loopexit ]
  %.sroa.011.014.i.i.i4050 = phi i64 [ %i.ckc, %.lr.ph.i.i2.i4048 ], [ %.sroa.011.014.i.i.i4050.unr, %.lr.ph.i.i2.i4048.prol.loopexit ]
  %i.cju = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i4049, i64 24
  %.sroa.012.0.i.i.i4051 = load ptr, ptr %i.cju, align 8, !noalias !8967, !nonnull !17, !noundef !17
  %i.cjv = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i4051, i64 24
  %.sroa.012.0.i.i.i4051.1 = load ptr, ptr %i.cjv, align 8, !noalias !8967, !nonnull !17, !noundef !17
  %i.cjw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i4051.1, i64 24
  %.sroa.012.0.i.i.i4051.2 = load ptr, ptr %i.cjw, align 8, !noalias !8967, !nonnull !17, !noundef !17
  %i.cjx = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i4051.2, i64 24
  %.sroa.012.0.i.i.i4051.3 = load ptr, ptr %i.cjx, align 8, !noalias !8967, !nonnull !17, !noundef !17
  %i.cjy = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i4051.3, i64 24
  %.sroa.012.0.i.i.i4051.4 = load ptr, ptr %i.cjy, align 8, !noalias !8967, !nonnull !17, !noundef !17
  %i.cjz = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i4051.4, i64 24
  %.sroa.012.0.i.i.i4051.5 = load ptr, ptr %i.cjz, align 8, !noalias !8967, !nonnull !17, !noundef !17
  %i.cka = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i4051.5, i64 24
  %.sroa.012.0.i.i.i4051.6 = load ptr, ptr %i.cka, align 8, !noalias !8967, !nonnull !17, !noundef !17
  %i.ckb = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i4051.6, i64 24
  %i.ckc = add i64 %.sroa.011.014.i.i.i4050, -8   ; 2 uses
  %.sroa.012.0.i.i.i4051.7 = load ptr, ptr %i.ckb, align 8, !noalias !8967, !nonnull !17, !noundef !17 ; 2 uses
  %i.ckd = icmp eq i64 %i.ckc, 0
  br i1 %i.ckd, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i4019", label %.lr.ph.i.i2.i4048

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i4019": ; preds = %.lr.ph.i.i2.i4048.prol.loopexit, %.lr.ph.i.i2.i4048, %bb.ny
  %.sroa.012.0.lcssa.i.i.i4053 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i1100, %bb.ny ], [ %.sroa.012.0.i.i.i4051.lcssa.unr, %.lr.ph.i.i2.i4048.prol.loopexit ], [ %.sroa.012.0.i.i.i4051.7, %.lr.ph.i.i2.i4048 ] ; 3 uses
  %i.cke = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i4053, i64 10
  %i.ckf = load i16, ptr %i.cke, align 2, !noalias !8968, !noundef !17
  %.not6007 = icmp eq i16 %i.ckf, 0
  br i1 %.not6007, label %.lr.ph.i.i.i.i.i4023, label %.noexc.i1122

.lr.ph.i.i.i.i.i4023:                             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i4019", %bb.oa
  %.sroa.0.060.i.i.i.i.i4024 = phi ptr [ %i.ckg, %bb.oa ], [ %.sroa.012.0.lcssa.i.i.i4053, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i4019" ] ; 4 uses
  %.sroa.5.059.i.i.i.i.i4025 = phi i64 [ %i.cky, %bb.oa ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i4019" ] ; 4 uses
  %i.ckg = load ptr, ptr %.sroa.0.060.i.i.i.i.i4024, align 8, !noalias !8969, !noundef !17 ; 5 uses
  %.not.i.i.i.i.i.i.i4026 = icmp eq ptr %i.ckg, null
  br i1 %.not.i.i.i.i.i.i.i4026, label %bb.ob, label %bb.oa

._crit_edge.i.i.i.i.i4030:                        ; preds = %bb.oa
  %i.ckh = zext i16 %i.cla to i64
  %i.cki = icmp eq i64 %i.cky, 0
  %i.ckj = add nuw nsw i64 %i.ckh, 1              ; 2 uses
  br i1 %i.cki, label %.noexc.i1122, label %bb.nz

bb.nz:                                            ; preds = %._crit_edge.i.i.i.i.i4030
  %i.ckk = getelementptr inbounds nuw i8, ptr %i.ckg, i64 24
  %i.ckl = icmp ult i16 %i.cla, 11
  call void @llvm.assume(i1 %i.ckl), !noalias !8962
  %i.ckm = getelementptr inbounds nuw [8 x i8], ptr %i.ckk, i64 %i.ckj ; 2 uses
  %xtraiter9771 = and i64 %i.cky, 7               ; 2 uses
  %lcmp.mod9772.not = icmp eq i64 %xtraiter9771, 0
  br i1 %lcmp.mod9772.not, label %.prol.loopexit9767, label %.prol.preheader9766

.prol.preheader9766:                              ; preds = %bb.nz, %.prol.preheader9766
  %.pn30.in.i.i.i.i.i.i4034.prol = phi ptr [ %i.ckn, %.prol.preheader9766 ], [ %i.ckm, %bb.nz ]
  %.pn28.in.i.i.i.i.i.i4035.prol = phi i64 [ %.pn28.i.i.i.i.i.i4036.prol, %.prol.preheader9766 ], [ %i.cky, %bb.nz ]
  %prol.iter9773 = phi i64 [ %prol.iter9773.next, %.prol.preheader9766 ], [ 0, %bb.nz ]
  %.pn28.i.i.i.i.i.i4036.prol = add i64 %.pn28.in.i.i.i.i.i.i4035.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i4037.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i4034.prol, align 8, !noalias !8970, !nonnull !17, !noundef !17 ; 2 uses
  %i.ckn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i4037.prol, i64 24 ; 2 uses
  %prol.iter9773.next = add i64 %prol.iter9773, 1 ; 2 uses
  %prol.iter9773.cmp.not = icmp eq i64 %prol.iter9773.next, %xtraiter9771
  br i1 %prol.iter9773.cmp.not, label %.prol.loopexit9767, label %.prol.preheader9766, !llvm.loop !8391

.prol.loopexit9767:                               ; preds = %.prol.preheader9766, %bb.nz
  %.pn30.i.i.i.i.i.i4037.lcssa.unr = phi ptr [ poison, %bb.nz ], [ %.pn30.i.i.i.i.i.i4037.prol, %.prol.preheader9766 ]
  %.pn30.in.i.i.i.i.i.i4034.unr = phi ptr [ %i.ckm, %bb.nz ], [ %i.ckn, %.prol.preheader9766 ]
  %.pn28.in.i.i.i.i.i.i4035.unr = phi i64 [ %i.cky, %bb.nz ], [ %.pn28.i.i.i.i.i.i4036.prol, %.prol.preheader9766 ]
  %i.cko = icmp ult i64 %.sroa.5.059.i.i.i.i.i4025, 7
  br i1 %i.cko, label %.noexc.i1122, label %.new9768

.new9768:                                         ; preds = %.prol.loopexit9767, %.new9768
  %.pn30.in.i.i.i.i.i.i4034 = phi ptr [ %i.ckx, %.new9768 ], [ %.pn30.in.i.i.i.i.i.i4034.unr, %.prol.loopexit9767 ]
  %.pn28.in.i.i.i.i.i.i4035 = phi i64 [ %.pn28.i.i.i.i.i.i4036.7, %.new9768 ], [ %.pn28.in.i.i.i.i.i.i4035.unr, %.prol.loopexit9767 ]
  %.pn30.i.i.i.i.i.i4037 = load ptr, ptr %.pn30.in.i.i.i.i.i.i4034, align 8, !noalias !8970, !nonnull !17, !noundef !17
  %i.ckp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i4037, i64 24
  %.pn30.i.i.i.i.i.i4037.1 = load ptr, ptr %i.ckp, align 8, !noalias !8970, !nonnull !17, !noundef !17
  %i.ckq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i4037.1, i64 24
  %.pn30.i.i.i.i.i.i4037.2 = load ptr, ptr %i.ckq, align 8, !noalias !8970, !nonnull !17, !noundef !17
  %i.ckr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i4037.2, i64 24
  %.pn30.i.i.i.i.i.i4037.3 = load ptr, ptr %i.ckr, align 8, !noalias !8970, !nonnull !17, !noundef !17
  %i.cks = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i4037.3, i64 24
  %.pn30.i.i.i.i.i.i4037.4 = load ptr, ptr %i.cks, align 8, !noalias !8970, !nonnull !17, !noundef !17
  %i.ckt = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i4037.4, i64 24
  %.pn30.i.i.i.i.i.i4037.5 = load ptr, ptr %i.ckt, align 8, !noalias !8970, !nonnull !17, !noundef !17
  %i.cku = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i4037.5, i64 24
  %.pn30.i.i.i.i.i.i4037.6 = load ptr, ptr %i.cku, align 8, !noalias !8970, !nonnull !17, !noundef !17
  %i.ckv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i4037.6, i64 24
  %.pn28.i.i.i.i.i.i4036.7 = add i64 %.pn28.in.i.i.i.i.i.i4035, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i4037.7 = load ptr, ptr %i.ckv, align 8, !noalias !8970, !nonnull !17, !noundef !17 ; 2 uses
  %i.ckw = icmp eq i64 %.pn28.i.i.i.i.i.i4036.7, 0
  %i.ckx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i4037.7, i64 24
  br i1 %i.ckw, label %.noexc.i1122, label %.new9768

bb.oa:                                            ; preds = %.lr.ph.i.i.i.i.i4023
  %i.cky = add i64 %.sroa.5.059.i.i.i.i.i4025, 1  ; 5 uses
  %i.ckz = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i.i4024, i64 8
  %i.cla = load i16, ptr %i.ckz, align 8, !noalias !8969 ; 3 uses
  %.not.i.i.i.i.i.i4027 = icmp eq i64 %.sroa.5.059.i.i.i.i.i4025, 0
  %..i.i.i.i.i.i4028 = select i1 %.not.i.i.i.i.i.i4027, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i4024, i64 noundef %..i.i.i.i.i.i4028, i64 noundef 8) #51, !noalias !8971
  %i.clb = getelementptr inbounds nuw i8, ptr %i.ckg, i64 10
  %i.clc = load i16, ptr %i.clb, align 2, !noalias !8968, !noundef !17
  %i.cld = icmp ult i16 %i.cla, %i.clc
  br i1 %i.cld, label %._crit_edge.i.i.i.i.i4030, label %.lr.ph.i.i.i.i.i4023

bb.ob:                                            ; preds = %.lr.ph.i.i.i.i.i4023
  %.not.i54.i.i.i.i.i4044 = icmp eq i64 %.sroa.5.059.i.i.i.i.i4025, 0
  %..i55.i.i.i.i.i4045 = select i1 %.not.i54.i.i.i.i.i4044, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i4024, i64 noundef %..i55.i.i.i.i.i4045, i64 noundef 8) #51, !noalias !8971
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #54
          to label %.noexc.i.i.i4046 unwind label %bb.oc, !noalias !8972

.noexc.i.i.i4046:                                 ; preds = %bb.ob
  unreachable

bb.oc:                                            ; preds = %bb.ob
  %i.cle = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !8962
  unreachable

.noexc.i1122:                                     ; preds = %.prol.loopexit9767, %.new9768, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i4019", %._crit_edge.i.i.i.i.i4030
  %.sroa.115362.3 = phi ptr [ %.sroa.012.0.lcssa.i.i.i4053, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i4019" ], [ %i.ckg, %._crit_edge.i.i.i.i.i4030 ], [ %.pn30.i.i.i.i.i.i4037.lcssa.unr, %.prol.loopexit9767 ], [ %.pn30.i.i.i.i.i.i4037.7, %.new9768 ] ; 2 uses
  %.sroa.275366.3 = phi i64 [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i4019" ], [ %i.ckj, %._crit_edge.i.i.i.i.i4030 ], [ 0, %.new9768 ], [ 0, %.prol.loopexit9767 ]
  %.sroa.405376.07042 = add i64 %.sroa.5.0.copyload.i.i.i.i.i1103, -1 ; 2 uses
  %i.clf = icmp eq i64 %.sroa.405376.07042, 0
  br i1 %i.clf, label %.loopexit.i.i3993, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3949"

.loopexit.i.i3993:                                ; preds = %.noexc4.i1127, %.noexc.i1122
  %.sroa.115362.1.lcssa = phi ptr [ %.sroa.115362.3, %.noexc.i1122 ], [ %.sroa.115362.2, %.noexc4.i1127 ] ; 3 uses
  %i.clg = load ptr, ptr %.sroa.115362.1.lcssa, align 8, !noalias !8973, !noundef !17 ; 2 uses
  %.not.i.i4.i.i.i3996 = icmp eq ptr %i.clg, null
  br i1 %.not.i.i4.i.i.i3996, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4003", label %.lr.ph.i3.i.i3997

.lr.ph.i3.i.i3997:                                ; preds = %.loopexit.i.i3993, %.lr.ph.i3.i.i3997
  %i.clh = phi ptr [ %i.clj, %.lr.ph.i3.i.i3997 ], [ %i.clg, %.loopexit.i.i3993 ] ; 3 uses
  %.sroa.0.06.i.i.i3998 = phi ptr [ %i.clh, %.lr.ph.i3.i.i3997 ], [ %.sroa.115362.1.lcssa, %.loopexit.i.i3993 ]
  %.sroa.5.05.i.i.i3999 = phi i64 [ %i.cli, %.lr.ph.i3.i.i3997 ], [ 0, %.loopexit.i.i3993 ] ; 2 uses
  %i.cli = add i64 %.sroa.5.05.i.i.i3999, 1       ; 2 uses
  %.not.i.i.i.i4000 = icmp eq i64 %.sroa.5.05.i.i.i3999, 0
  %..i.i.i.i4001 = select i1 %.not.i.i.i.i4000, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i.i3998, i64 noundef %..i.i.i.i4001, i64 noundef 8) #51, !noalias !8974
  %i.clj = load ptr, ptr %i.clh, align 8, !noalias !8973, !noundef !17 ; 2 uses
  %.not.i.i.i.i.i4002 = icmp eq ptr %i.clj, null
  br i1 %.not.i.i.i.i.i4002, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4003.loopexit", label %.lr.ph.i3.i.i3997

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4003.loopexit": ; preds = %.lr.ph.i3.i.i3997
  %i.clk = icmp eq i64 %i.cli, 0
  %i.cll = select i1 %i.clk, i64 24, i64 120
  br label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4003"

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4003": ; preds = %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4003.loopexit", %.loopexit.i.i3993
  %.sroa.5.0.lcssa.i.i.i4004 = phi i64 [ 24, %.loopexit.i.i3993 ], [ %i.cll, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4003.loopexit" ]
  %.sroa.0.0.lcssa.i.i.i4005 = phi ptr [ %.sroa.115362.1.lcssa, %.loopexit.i.i3993 ], [ %i.clh, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4003.loopexit" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i.i4005, i64 noundef %.sroa.5.0.lcssa.i.i.i4004, i64 noundef 8) #51, !noalias !8974
  br label %.loopexit7.i1129

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3949": ; preds = %.noexc.i1122, %.noexc4.i1127
  %.sroa.405376.07045 = phi i64 [ %.sroa.405376.0, %.noexc4.i1127 ], [ %.sroa.405376.07042, %.noexc.i1122 ]
  %.sroa.275366.17044 = phi i64 [ %.sroa.275366.2, %.noexc4.i1127 ], [ %.sroa.275366.3, %.noexc.i1122 ] ; 2 uses
  %.sroa.115362.17043 = phi ptr [ %.sroa.115362.2, %.noexc4.i1127 ], [ %.sroa.115362.3, %.noexc.i1122 ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.115362.17043) ]
  %i.clm = getelementptr inbounds nuw i8, ptr %.sroa.115362.17043, i64 10
  %i.cln = load i16, ptr %i.clm, align 2, !noalias !8975, !noundef !17
  %i.clo = zext i16 %i.cln to i64
  %i.clp = icmp ult i64 %.sroa.275366.17044, %i.clo
  br i1 %i.clp, label %._crit_edge.i.i.i.i.i3960.thread, label %.lr.ph.i.i.i.i.i3953

._crit_edge.i.i.i.i.i3960.thread:                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3949"
  %i.clq = add nuw nsw i64 %.sroa.275366.17044, 1
  br label %.noexc4.i1127

.lr.ph.i.i.i.i.i3953:                             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3949", %bb.oe
  %.sroa.0.060.i.i.i.i.i3954 = phi ptr [ %i.clr, %bb.oe ], [ %.sroa.115362.17043, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3949" ] ; 4 uses
  %.sroa.5.059.i.i.i.i.i3955 = phi i64 [ %i.cmj, %bb.oe ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3949" ] ; 4 uses
  %i.clr = load ptr, ptr %.sroa.0.060.i.i.i.i.i3954, align 8, !noalias !8976, !noundef !17 ; 5 uses
  %.not.i.i.i.i.i.i.i3956 = icmp eq ptr %i.clr, null
  br i1 %.not.i.i.i.i.i.i.i3956, label %bb.of, label %bb.oe

._crit_edge.i.i.i.i.i3960:                        ; preds = %bb.oe
  %i.cls = zext i16 %i.cml to i64
  %i.clt = icmp eq i64 %i.cmj, 0
  %i.clu = add nuw nsw i64 %i.cls, 1              ; 2 uses
  br i1 %i.clt, label %.noexc4.i1127, label %bb.od

bb.od:                                            ; preds = %._crit_edge.i.i.i.i.i3960
  %i.clv = getelementptr inbounds nuw i8, ptr %i.clr, i64 24
  %i.clw = icmp ult i16 %i.cml, 11
  call void @llvm.assume(i1 %i.clw), !noalias !8962
  %i.clx = getelementptr inbounds nuw [8 x i8], ptr %i.clv, i64 %i.clu ; 2 uses
  %xtraiter9779 = and i64 %i.cmj, 7               ; 2 uses
  %lcmp.mod9780.not = icmp eq i64 %xtraiter9779, 0
  br i1 %lcmp.mod9780.not, label %.prol.loopexit9775, label %.prol.preheader9774

.prol.preheader9774:                              ; preds = %bb.od, %.prol.preheader9774
  %.pn30.in.i.i.i.i.i.i3964.prol = phi ptr [ %i.cly, %.prol.preheader9774 ], [ %i.clx, %bb.od ]
  %.pn28.in.i.i.i.i.i.i3965.prol = phi i64 [ %.pn28.i.i.i.i.i.i3966.prol, %.prol.preheader9774 ], [ %i.cmj, %bb.od ]
  %prol.iter9781 = phi i64 [ %prol.iter9781.next, %.prol.preheader9774 ], [ 0, %bb.od ]
  %.pn28.i.i.i.i.i.i3966.prol = add i64 %.pn28.in.i.i.i.i.i.i3965.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i3967.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i3964.prol, align 8, !noalias !8977, !nonnull !17, !noundef !17 ; 2 uses
  %i.cly = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3967.prol, i64 24 ; 2 uses
  %prol.iter9781.next = add i64 %prol.iter9781, 1 ; 2 uses
  %prol.iter9781.cmp.not = icmp eq i64 %prol.iter9781.next, %xtraiter9779
  br i1 %prol.iter9781.cmp.not, label %.prol.loopexit9775, label %.prol.preheader9774, !llvm.loop !8420

.prol.loopexit9775:                               ; preds = %.prol.preheader9774, %bb.od
  %.pn30.i.i.i.i.i.i3967.lcssa.unr = phi ptr [ poison, %bb.od ], [ %.pn30.i.i.i.i.i.i3967.prol, %.prol.preheader9774 ]
  %.pn30.in.i.i.i.i.i.i3964.unr = phi ptr [ %i.clx, %bb.od ], [ %i.cly, %.prol.preheader9774 ]
  %.pn28.in.i.i.i.i.i.i3965.unr = phi i64 [ %i.cmj, %bb.od ], [ %.pn28.i.i.i.i.i.i3966.prol, %.prol.preheader9774 ]
  %i.clz = icmp ult i64 %.sroa.5.059.i.i.i.i.i3955, 7
  br i1 %i.clz, label %.noexc4.i1127, label %.new9776

.new9776:                                         ; preds = %.prol.loopexit9775, %.new9776
  %.pn30.in.i.i.i.i.i.i3964 = phi ptr [ %i.cmi, %.new9776 ], [ %.pn30.in.i.i.i.i.i.i3964.unr, %.prol.loopexit9775 ]
  %.pn28.in.i.i.i.i.i.i3965 = phi i64 [ %.pn28.i.i.i.i.i.i3966.7, %.new9776 ], [ %.pn28.in.i.i.i.i.i.i3965.unr, %.prol.loopexit9775 ]
  %.pn30.i.i.i.i.i.i3967 = load ptr, ptr %.pn30.in.i.i.i.i.i.i3964, align 8, !noalias !8977, !nonnull !17, !noundef !17
  %i.cma = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3967, i64 24
  %.pn30.i.i.i.i.i.i3967.1 = load ptr, ptr %i.cma, align 8, !noalias !8977, !nonnull !17, !noundef !17
  %i.cmb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3967.1, i64 24
  %.pn30.i.i.i.i.i.i3967.2 = load ptr, ptr %i.cmb, align 8, !noalias !8977, !nonnull !17, !noundef !17
  %i.cmc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3967.2, i64 24
  %.pn30.i.i.i.i.i.i3967.3 = load ptr, ptr %i.cmc, align 8, !noalias !8977, !nonnull !17, !noundef !17
  %i.cmd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3967.3, i64 24
  %.pn30.i.i.i.i.i.i3967.4 = load ptr, ptr %i.cmd, align 8, !noalias !8977, !nonnull !17, !noundef !17
  %i.cme = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3967.4, i64 24
  %.pn30.i.i.i.i.i.i3967.5 = load ptr, ptr %i.cme, align 8, !noalias !8977, !nonnull !17, !noundef !17
  %i.cmf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3967.5, i64 24
  %.pn30.i.i.i.i.i.i3967.6 = load ptr, ptr %i.cmf, align 8, !noalias !8977, !nonnull !17, !noundef !17
  %i.cmg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3967.6, i64 24
  %.pn28.i.i.i.i.i.i3966.7 = add i64 %.pn28.in.i.i.i.i.i.i3965, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i3967.7 = load ptr, ptr %i.cmg, align 8, !noalias !8977, !nonnull !17, !noundef !17 ; 2 uses
  %i.cmh = icmp eq i64 %.pn28.i.i.i.i.i.i3966.7, 0
  %i.cmi = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i3967.7, i64 24
  br i1 %i.cmh, label %.noexc4.i1127, label %.new9776

bb.oe:                                            ; preds = %.lr.ph.i.i.i.i.i3953
  %i.cmj = add i64 %.sroa.5.059.i.i.i.i.i3955, 1  ; 5 uses
  %i.cmk = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i.i3954, i64 8
  %i.cml = load i16, ptr %i.cmk, align 8, !noalias !8976 ; 3 uses
  %.not.i.i.i.i.i.i3957 = icmp eq i64 %.sroa.5.059.i.i.i.i.i3955, 0
  %..i.i.i.i.i.i3958 = select i1 %.not.i.i.i.i.i.i3957, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i3954, i64 noundef %..i.i.i.i.i.i3958, i64 noundef 8) #51, !noalias !8978
  %i.cmm = getelementptr inbounds nuw i8, ptr %i.clr, i64 10
  %i.cmn = load i16, ptr %i.cmm, align 2, !noalias !8975, !noundef !17
  %i.cmo = icmp ult i16 %i.cml, %i.cmn
  br i1 %i.cmo, label %._crit_edge.i.i.i.i.i3960, label %.lr.ph.i.i.i.i.i3953

bb.of:                                            ; preds = %.lr.ph.i.i.i.i.i3953
  %.not.i54.i.i.i.i.i3974 = icmp eq i64 %.sroa.5.059.i.i.i.i.i3955, 0
  %..i55.i.i.i.i.i3975 = select i1 %.not.i54.i.i.i.i.i3974, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i3954, i64 noundef %..i55.i.i.i.i.i3975, i64 noundef 8) #51, !noalias !8978
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #54
          to label %.noexc.i.i.i3976 unwind label %bb.og, !noalias !8979

.noexc.i.i.i3976:                                 ; preds = %bb.of
  unreachable

bb.og:                                            ; preds = %bb.of
  %i.cmp = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !8962
  unreachable

.noexc4.i1127:                                    ; preds = %.prol.loopexit9775, %.new9776, %._crit_edge.i.i.i.i.i3960.thread, %._crit_edge.i.i.i.i.i3960
  %.sroa.115362.2 = phi ptr [ %i.clr, %._crit_edge.i.i.i.i.i3960 ], [ %.sroa.115362.17043, %._crit_edge.i.i.i.i.i3960.thread ], [ %.pn30.i.i.i.i.i.i3967.lcssa.unr, %.prol.loopexit9775 ], [ %.pn30.i.i.i.i.i.i3967.7, %.new9776 ] ; 2 uses
  %.sroa.275366.2 = phi i64 [ %i.clu, %._crit_edge.i.i.i.i.i3960 ], [ %i.clq, %._crit_edge.i.i.i.i.i3960.thread ], [ 0, %.new9776 ], [ 0, %.prol.loopexit9775 ]
  %.sroa.405376.0 = add i64 %.sroa.405376.07045, -1 ; 2 uses
  %i.cmq = icmp eq i64 %.sroa.405376.0, 0
  br i1 %i.cmq, label %.loopexit.i.i3993, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i3949"

.loopexit7.i1129:                                 ; preds = %bb.nw, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4003", %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4073"
  %.val.i1130 = load i64, ptr %i.di, align 8, !range !30, !alias.scope !8962, !noundef !17 ; 2 uses
  %switch6.i1131 = icmp sgt i64 %.val.i1130, 0
  br i1 %switch6.i1131, label %bb.oh, label %"_ZN4core3ptr86drop_in_place$LT$console..utils..StyledObject$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h313fc6ceec913453E.exit1135"

bb.oh:                                            ; preds = %.loopexit7.i1129
  %.val1.i1132 = load ptr, ptr %i.abq, align 8, !alias.scope !8962, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1132, i64 noundef %.val.i1130, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !8980
  br label %"_ZN4core3ptr86drop_in_place$LT$console..utils..StyledObject$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h313fc6ceec913453E.exit1135"

"_ZN4core3ptr86drop_in_place$LT$console..utils..StyledObject$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h313fc6ceec913453E.exit1135": ; preds = %bb.oh, %.loopexit7.i1129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  br label %bb.oi

bb.oi:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$console..utils..StyledObject$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h313fc6ceec913453E.exit1178", %"_ZN4core3ptr86drop_in_place$LT$console..utils..StyledObject$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h313fc6ceec913453E.exit1135"
  %i.cmr = icmp eq ptr %.sroa.0450.17055, %i.cic  ; 2 uses
  %.sroa.0450.1.idx = select i1 %i.cmr, i64 0, i64 24
  %.sroa.0450.1 = getelementptr inbounds nuw i8, ptr %.sroa.0450.17055, i64 %.sroa.0450.1.idx
  br i1 %i.cmr, label %.loopexit6037, label %.lr.ph

bb.oj:                                            ; preds = %.noexc1097.thread
  %i.cms = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %switch.i1137 = icmp sgt i64 %.sroa.04335.sroa.0.0.copyload, 0
  br i1 %switch.i1137, label %bb.ok, label %.body790

bb.ok:                                            ; preds = %bb.oj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04335.sroa.4.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.04335.sroa.4.0.copyload, i64 noundef %.sroa.04335.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !8981
  br label %.body790

bb.ol:                                            ; preds = %.noexc1097.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8961
  %.sroa.64328.sroa.4.8.copyload4684 = load ptr, ptr %i.b, align 8, !noalias !8959
  %i.cmt = load <8 x i8>, ptr %.sroa.84330.24..sroa_idx4331, align 8, !noalias !8959
  %i.cmu = load <2 x i64>, ptr %.sroa.64328.sroa.7.8..sroa_idx4685, align 8, !noalias !8959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8961
  store i64 %.sroa.04335.sroa.0.0.copyload, ptr %i.dl, align 8, !alias.scope !8961
  store ptr %.sroa.04335.sroa.4.0.copyload, ptr %.sroa.54326.0..sroa_idx, align 8, !alias.scope !8961
  store i64 %.sroa.04335.sroa.5.0.copyload, ptr %.sroa.64328.0..sroa_idx, align 8, !alias.scope !8961
  store ptr %.sroa.64328.sroa.4.8.copyload4684, ptr %.sroa.64328.sroa.4.0..sroa.64328.0..sroa_idx.sroa_idx, align 8, !alias.scope !8961
  store <2 x i64> %i.cmu, ptr %.sroa.64328.sroa.7.0..sroa.64328.0..sroa_idx.sroa_idx, align 8, !alias.scope !8961
  store <8 x i8> %i.cmt, ptr %.sroa.84330.0..sroa_idx, align 8, !alias.scope !8961
  store ptr %i.dl, ptr %i.dm, align 8
  store ptr @"_ZN76_$LT$console..utils..StyledObject$LT$D$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h8ba3abe9e05663c5E", ptr %.sroa.4206.0..sroa_idx, align 8
  store ptr @305, ptr %i.dn, align 8
  store i64 1, ptr %i.abr, align 8
  store ptr null, ptr %i.abs, align 8
  store ptr %i.dm, ptr %i.abt, align 8
  store i64 1, ptr %i.abu, align 8
  invoke void @_ZN3std2io5stdio6_print17h361a6d98ea723aceE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.dn)
          to label %bb.on unwind label %bb.om

bb.om:                                            ; preds = %bb.ol
  %i.cmv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr86drop_in_place$LT$console..utils..StyledObject$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h313fc6ceec913453E"(ptr noalias noundef align 8 dereferenceable(56) %i.dl) #55
          to label %.body790 unwind label %.loopexit.split-lp6035.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.on:                                            ; preds = %bb.ol
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  call void @llvm.experimental.noalias.scope.decl(metadata !8982)
  %.sroa.0.0.copyload.i.i.i.i.i1143 = load ptr, ptr %.sroa.64328.sroa.4.0..sroa.64328.0..sroa_idx.sroa_idx, align 8, !alias.scope !8983 ; 7 uses
  %.not.i.i.i.i.i.i1144 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i1143, null
  br i1 %.not.i.i.i.i.i.i1144, label %.loopexit7.i1172, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i1155"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i1155": ; preds = %bb.on
  %.sroa.5.0.copyload.i.i.i.i.i1146 = load i64, ptr %.sroa.64328.sroa.8.0..sroa.64328.0..sroa_idx.sroa_idx, align 8, !alias.scope !8983 ; 2 uses
  %.sroa.4.0.copyload.i.i.i.i.i1148 = load i64, ptr %.sroa.64328.sroa.7.0..sroa.64328.0..sroa_idx.sroa_idx, align 8, !alias.scope !8983 ; 9 uses
  %i.cmw = icmp eq i64 %.sroa.5.0.copyload.i.i.i.i.i1146, 0
  %i.cmx = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i1148, 0 ; 2 uses
  br i1 %i.cmw, label %bb.oo, label %bb.op

bb.oo:                                            ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i1155"
  br i1 %i.cmx, label %.loopexit.i.i4203, label %.lr.ph.i.i.i4218.preheader

.lr.ph.i.i.i4218.preheader:                       ; preds = %bb.oo
  %xtraiter9804 = and i64 %.sroa.4.0.copyload.i.i.i.i.i1148, 7 ; 2 uses
  %lcmp.mod9805.not = icmp eq i64 %xtraiter9804, 0
  br i1 %lcmp.mod9805.not, label %.lr.ph.i.i.i4218.prol.loopexit, label %.lr.ph.i.i.i4218.prol

.lr.ph.i.i.i4218.prol:                            ; preds = %.lr.ph.i.i.i4218.preheader, %.lr.ph.i.i.i4218.prol
  %.sroa.019.021.i.i.i4219.prol = phi ptr [ %i.cmz, %.lr.ph.i.i.i4218.prol ], [ %.sroa.0.0.copyload.i.i.i.i.i1143, %.lr.ph.i.i.i4218.preheader ]
  %.sroa.018.020.i.i.i4220.prol = phi i64 [ %i.cna, %.lr.ph.i.i.i4218.prol ], [ %.sroa.4.0.copyload.i.i.i.i.i1148, %.lr.ph.i.i.i4218.preheader ]
  %prol.iter9806 = phi i64 [ %prol.iter9806.next, %.lr.ph.i.i.i4218.prol ], [ 0, %.lr.ph.i.i.i4218.preheader ]
  %i.cmy = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i.i4219.prol, i64 24
  %i.cmz = load ptr, ptr %i.cmy, align 8, !noalias !8984, !nonnull !17, !noundef !17 ; 3 uses
  %i.cna = add i64 %.sroa.018.020.i.i.i4220.prol, -1 ; 2 uses
  %prol.iter9806.next = add i64 %prol.iter9806, 1 ; 2 uses
  %prol.iter9806.cmp.not = icmp eq i64 %prol.iter9806.next, %xtraiter9804
  br i1 %prol.iter9806.cmp.not, label %.lr.ph.i.i.i4218.prol.loopexit, label %.lr.ph.i.i.i4218.prol, !llvm.loop !8445
end_hunk_6
begin_hunk_7_@_ZN5insta6output15SnapshotPrinter15print_changeset17h296982a1490293ddE:bb.a
  %.not.i.i.i.i.i4212 = icmp eq ptr %i.cnx, null
  br i1 %.not.i.i.i.i.i4212, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4213.loopexit", label %.lr.ph.i3.i.i4207

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4213.loopexit": ; preds = %.lr.ph.i3.i.i4207
  %i.cny = icmp eq i64 %i.cnw, 0
  %i.cnz = select i1 %i.cny, i64 24, i64 120
  br label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4213"

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4213": ; preds = %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4213.loopexit", %.loopexit.i.i4203
  %.sroa.5.0.lcssa.i.i.i4214 = phi i64 [ 24, %.loopexit.i.i4203 ], [ %i.cnz, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4213.loopexit" ]
  %.sroa.0.0.lcssa.i.i.i4215 = phi ptr [ %.sroa.0.0.ph.i.i4205, %.loopexit.i.i4203 ], [ %i.cnv, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4213.loopexit" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i.i4215, i64 noundef %.sroa.5.0.lcssa.i.i.i4214, i64 noundef 8) #51, !noalias !8986
  br label %.loopexit7.i1172

bb.op:                                            ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i1155"
  br i1 %i.cmx, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i4159", label %.lr.ph.i.i2.i4188.preheader

.lr.ph.i.i2.i4188.preheader:                      ; preds = %bb.op
  %xtraiter9785 = and i64 %.sroa.4.0.copyload.i.i.i.i.i1148, 7 ; 2 uses
  %lcmp.mod9786.not = icmp eq i64 %xtraiter9785, 0
  br i1 %lcmp.mod9786.not, label %.lr.ph.i.i2.i4188.prol.loopexit, label %.lr.ph.i.i2.i4188.prol

.lr.ph.i.i2.i4188.prol:                           ; preds = %.lr.ph.i.i2.i4188.preheader, %.lr.ph.i.i2.i4188.prol
  %.sroa.012.015.i.i.i4189.prol = phi ptr [ %.sroa.012.0.i.i.i4191.prol, %.lr.ph.i.i2.i4188.prol ], [ %.sroa.0.0.copyload.i.i.i.i.i1143, %.lr.ph.i.i2.i4188.preheader ]
  %.sroa.011.014.i.i.i4190.prol = phi i64 [ %i.cob, %.lr.ph.i.i2.i4188.prol ], [ %.sroa.4.0.copyload.i.i.i.i.i1148, %.lr.ph.i.i2.i4188.preheader ]
  %prol.iter9787 = phi i64 [ %prol.iter9787.next, %.lr.ph.i.i2.i4188.prol ], [ 0, %.lr.ph.i.i2.i4188.preheader ]
  %i.coa = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i4189.prol, i64 24
  %i.cob = add i64 %.sroa.011.014.i.i.i4190.prol, -1 ; 2 uses
  %.sroa.012.0.i.i.i4191.prol = load ptr, ptr %i.coa, align 8, !noalias !8987, !nonnull !17, !noundef !17 ; 3 uses
  %prol.iter9787.next = add i64 %prol.iter9787, 1 ; 2 uses
  %prol.iter9787.cmp.not = icmp eq i64 %prol.iter9787.next, %xtraiter9785
  br i1 %prol.iter9787.cmp.not, label %.lr.ph.i.i2.i4188.prol.loopexit, label %.lr.ph.i.i2.i4188.prol, !llvm.loop !8455

.lr.ph.i.i2.i4188.prol.loopexit:                  ; preds = %.lr.ph.i.i2.i4188.prol, %.lr.ph.i.i2.i4188.preheader
  %.sroa.012.0.i.i.i4191.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.i4188.preheader ], [ %.sroa.012.0.i.i.i4191.prol, %.lr.ph.i.i2.i4188.prol ]
  %.sroa.012.015.i.i.i4189.unr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i1143, %.lr.ph.i.i2.i4188.preheader ], [ %.sroa.012.0.i.i.i4191.prol, %.lr.ph.i.i2.i4188.prol ]
  %.sroa.011.014.i.i.i4190.unr = phi i64 [ %.sroa.4.0.copyload.i.i.i.i.i1148, %.lr.ph.i.i2.i4188.preheader ], [ %i.cob, %.lr.ph.i.i2.i4188.prol ]
  %i.coc = icmp ult i64 %.sroa.4.0.copyload.i.i.i.i.i1148, 8
  br i1 %i.coc, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i4159", label %.lr.ph.i.i2.i4188

.lr.ph.i.i2.i4188:                                ; preds = %.lr.ph.i.i2.i4188.prol.loopexit, %.lr.ph.i.i2.i4188
  %.sroa.012.015.i.i.i4189 = phi ptr [ %.sroa.012.0.i.i.i4191.7, %.lr.ph.i.i2.i4188 ], [ %.sroa.012.015.i.i.i4189.unr, %.lr.ph.i.i2.i4188.prol.loopexit ]
  %.sroa.011.014.i.i.i4190 = phi i64 [ %i.col, %.lr.ph.i.i2.i4188 ], [ %.sroa.011.014.i.i.i4190.unr, %.lr.ph.i.i2.i4188.prol.loopexit ]
  %i.cod = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i4189, i64 24
  %.sroa.012.0.i.i.i4191 = load ptr, ptr %i.cod, align 8, !noalias !8987, !nonnull !17, !noundef !17
  %i.coe = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i4191, i64 24
  %.sroa.012.0.i.i.i4191.1 = load ptr, ptr %i.coe, align 8, !noalias !8987, !nonnull !17, !noundef !17
  %i.cof = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i4191.1, i64 24
  %.sroa.012.0.i.i.i4191.2 = load ptr, ptr %i.cof, align 8, !noalias !8987, !nonnull !17, !noundef !17
  %i.cog = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i4191.2, i64 24
  %.sroa.012.0.i.i.i4191.3 = load ptr, ptr %i.cog, align 8, !noalias !8987, !nonnull !17, !noundef !17
  %i.coh = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i4191.3, i64 24
  %.sroa.012.0.i.i.i4191.4 = load ptr, ptr %i.coh, align 8, !noalias !8987, !nonnull !17, !noundef !17
  %i.coi = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i4191.4, i64 24
  %.sroa.012.0.i.i.i4191.5 = load ptr, ptr %i.coi, align 8, !noalias !8987, !nonnull !17, !noundef !17
  %i.coj = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i4191.5, i64 24
  %.sroa.012.0.i.i.i4191.6 = load ptr, ptr %i.coj, align 8, !noalias !8987, !nonnull !17, !noundef !17
  %i.cok = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i4191.6, i64 24
  %i.col = add i64 %.sroa.011.014.i.i.i4190, -8   ; 2 uses
  %.sroa.012.0.i.i.i4191.7 = load ptr, ptr %i.cok, align 8, !noalias !8987, !nonnull !17, !noundef !17 ; 2 uses
  %i.com = icmp eq i64 %i.col, 0
  br i1 %i.com, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i4159", label %.lr.ph.i.i2.i4188

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i4159": ; preds = %.lr.ph.i.i2.i4188.prol.loopexit, %.lr.ph.i.i2.i4188, %bb.op
  %.sroa.012.0.lcssa.i.i.i4193 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i1143, %bb.op ], [ %.sroa.012.0.i.i.i4191.lcssa.unr, %.lr.ph.i.i2.i4188.prol.loopexit ], [ %.sroa.012.0.i.i.i4191.7, %.lr.ph.i.i2.i4188 ] ; 3 uses
  %i.con = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i4193, i64 10
  %i.coo = load i16, ptr %i.con, align 2, !noalias !8988, !noundef !17
  %.not6008 = icmp eq i16 %i.coo, 0
  br i1 %.not6008, label %.lr.ph.i.i.i.i.i4163, label %.noexc.i1165

.lr.ph.i.i.i.i.i4163:                             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i4159", %bb.or
  %.sroa.0.060.i.i.i.i.i4164 = phi ptr [ %i.cop, %bb.or ], [ %.sroa.012.0.lcssa.i.i.i4193, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i4159" ] ; 4 uses
  %.sroa.5.059.i.i.i.i.i4165 = phi i64 [ %i.cph, %bb.or ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i4159" ] ; 4 uses
  %i.cop = load ptr, ptr %.sroa.0.060.i.i.i.i.i4164, align 8, !noalias !8989, !noundef !17 ; 5 uses
  %.not.i.i.i.i.i.i.i4166 = icmp eq ptr %i.cop, null
  br i1 %.not.i.i.i.i.i.i.i4166, label %bb.os, label %bb.or

._crit_edge.i.i.i.i.i4170:                        ; preds = %bb.or
  %i.coq = zext i16 %i.cpj to i64
  %i.cor = icmp eq i64 %i.cph, 0
  %i.cos = add nuw nsw i64 %i.coq, 1              ; 2 uses
  br i1 %i.cor, label %.noexc.i1165, label %bb.oq

bb.oq:                                            ; preds = %._crit_edge.i.i.i.i.i4170
  %i.cot = getelementptr inbounds nuw i8, ptr %i.cop, i64 24
  %i.cou = icmp ult i16 %i.cpj, 11
  call void @llvm.assume(i1 %i.cou), !noalias !8982
  %i.cov = getelementptr inbounds nuw [8 x i8], ptr %i.cot, i64 %i.cos ; 2 uses
  %xtraiter9793 = and i64 %i.cph, 7               ; 2 uses
  %lcmp.mod9794.not = icmp eq i64 %xtraiter9793, 0
  br i1 %lcmp.mod9794.not, label %.prol.loopexit9789, label %.prol.preheader9788

.prol.preheader9788:                              ; preds = %bb.oq, %.prol.preheader9788
  %.pn30.in.i.i.i.i.i.i4174.prol = phi ptr [ %i.cow, %.prol.preheader9788 ], [ %i.cov, %bb.oq ]
  %.pn28.in.i.i.i.i.i.i4175.prol = phi i64 [ %.pn28.i.i.i.i.i.i4176.prol, %.prol.preheader9788 ], [ %i.cph, %bb.oq ]
  %prol.iter9795 = phi i64 [ %prol.iter9795.next, %.prol.preheader9788 ], [ 0, %bb.oq ]
  %.pn28.i.i.i.i.i.i4176.prol = add i64 %.pn28.in.i.i.i.i.i.i4175.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i4177.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i4174.prol, align 8, !noalias !8990, !nonnull !17, !noundef !17 ; 2 uses
  %i.cow = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i4177.prol, i64 24 ; 2 uses
  %prol.iter9795.next = add i64 %prol.iter9795, 1 ; 2 uses
  %prol.iter9795.cmp.not = icmp eq i64 %prol.iter9795.next, %xtraiter9793
  br i1 %prol.iter9795.cmp.not, label %.prol.loopexit9789, label %.prol.preheader9788, !llvm.loop !8472

.prol.loopexit9789:                               ; preds = %.prol.preheader9788, %bb.oq
  %.pn30.i.i.i.i.i.i4177.lcssa.unr = phi ptr [ poison, %bb.oq ], [ %.pn30.i.i.i.i.i.i4177.prol, %.prol.preheader9788 ]
  %.pn30.in.i.i.i.i.i.i4174.unr = phi ptr [ %i.cov, %bb.oq ], [ %i.cow, %.prol.preheader9788 ]
  %.pn28.in.i.i.i.i.i.i4175.unr = phi i64 [ %i.cph, %bb.oq ], [ %.pn28.i.i.i.i.i.i4176.prol, %.prol.preheader9788 ]
  %i.cox = icmp ult i64 %.sroa.5.059.i.i.i.i.i4165, 7
  br i1 %i.cox, label %.noexc.i1165, label %.new9790

.new9790:                                         ; preds = %.prol.loopexit9789, %.new9790
  %.pn30.in.i.i.i.i.i.i4174 = phi ptr [ %i.cpg, %.new9790 ], [ %.pn30.in.i.i.i.i.i.i4174.unr, %.prol.loopexit9789 ]
  %.pn28.in.i.i.i.i.i.i4175 = phi i64 [ %.pn28.i.i.i.i.i.i4176.7, %.new9790 ], [ %.pn28.in.i.i.i.i.i.i4175.unr, %.prol.loopexit9789 ]
  %.pn30.i.i.i.i.i.i4177 = load ptr, ptr %.pn30.in.i.i.i.i.i.i4174, align 8, !noalias !8990, !nonnull !17, !noundef !17
  %i.coy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i4177, i64 24
  %.pn30.i.i.i.i.i.i4177.1 = load ptr, ptr %i.coy, align 8, !noalias !8990, !nonnull !17, !noundef !17
  %i.coz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i4177.1, i64 24
  %.pn30.i.i.i.i.i.i4177.2 = load ptr, ptr %i.coz, align 8, !noalias !8990, !nonnull !17, !noundef !17
  %i.cpa = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i4177.2, i64 24
  %.pn30.i.i.i.i.i.i4177.3 = load ptr, ptr %i.cpa, align 8, !noalias !8990, !nonnull !17, !noundef !17
  %i.cpb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i4177.3, i64 24
  %.pn30.i.i.i.i.i.i4177.4 = load ptr, ptr %i.cpb, align 8, !noalias !8990, !nonnull !17, !noundef !17
  %i.cpc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i4177.4, i64 24
  %.pn30.i.i.i.i.i.i4177.5 = load ptr, ptr %i.cpc, align 8, !noalias !8990, !nonnull !17, !noundef !17
  %i.cpd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i4177.5, i64 24
  %.pn30.i.i.i.i.i.i4177.6 = load ptr, ptr %i.cpd, align 8, !noalias !8990, !nonnull !17, !noundef !17
  %i.cpe = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i4177.6, i64 24
  %.pn28.i.i.i.i.i.i4176.7 = add i64 %.pn28.in.i.i.i.i.i.i4175, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i4177.7 = load ptr, ptr %i.cpe, align 8, !noalias !8990, !nonnull !17, !noundef !17 ; 2 uses
  %i.cpf = icmp eq i64 %.pn28.i.i.i.i.i.i4176.7, 0
  %i.cpg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i4177.7, i64 24
  br i1 %i.cpf, label %.noexc.i1165, label %.new9790

bb.or:                                            ; preds = %.lr.ph.i.i.i.i.i4163
  %i.cph = add i64 %.sroa.5.059.i.i.i.i.i4165, 1  ; 5 uses
  %i.cpi = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i.i4164, i64 8
  %i.cpj = load i16, ptr %i.cpi, align 8, !noalias !8989 ; 3 uses
  %.not.i.i.i.i.i.i4167 = icmp eq i64 %.sroa.5.059.i.i.i.i.i4165, 0
  %..i.i.i.i.i.i4168 = select i1 %.not.i.i.i.i.i.i4167, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i4164, i64 noundef %..i.i.i.i.i.i4168, i64 noundef 8) #51, !noalias !8991
  %i.cpk = getelementptr inbounds nuw i8, ptr %i.cop, i64 10
  %i.cpl = load i16, ptr %i.cpk, align 2, !noalias !8988, !noundef !17
  %i.cpm = icmp ult i16 %i.cpj, %i.cpl
  br i1 %i.cpm, label %._crit_edge.i.i.i.i.i4170, label %.lr.ph.i.i.i.i.i4163

bb.os:                                            ; preds = %.lr.ph.i.i.i.i.i4163
  %.not.i54.i.i.i.i.i4184 = icmp eq i64 %.sroa.5.059.i.i.i.i.i4165, 0
  %..i55.i.i.i.i.i4185 = select i1 %.not.i54.i.i.i.i.i4184, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i4164, i64 noundef %..i55.i.i.i.i.i4185, i64 noundef 8) #51, !noalias !8991
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #54
          to label %.noexc.i.i.i4186 unwind label %bb.ot, !noalias !8992

.noexc.i.i.i4186:                                 ; preds = %bb.os
  unreachable

bb.ot:                                            ; preds = %bb.os
  %i.cpn = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !8982
  unreachable

.noexc.i1165:                                     ; preds = %.prol.loopexit9789, %.new9790, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i4159", %._crit_edge.i.i.i.i.i4170
  %.sroa.115386.3 = phi ptr [ %.sroa.012.0.lcssa.i.i.i4193, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i4159" ], [ %i.cop, %._crit_edge.i.i.i.i.i4170 ], [ %.pn30.i.i.i.i.i.i4177.lcssa.unr, %.prol.loopexit9789 ], [ %.pn30.i.i.i.i.i.i4177.7, %.new9790 ] ; 2 uses
  %.sroa.275390.3 = phi i64 [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i4159" ], [ %i.cos, %._crit_edge.i.i.i.i.i4170 ], [ 0, %.new9790 ], [ 0, %.prol.loopexit9789 ]
  %.sroa.405400.07047 = add i64 %.sroa.5.0.copyload.i.i.i.i.i1146, -1 ; 2 uses
  %i.cpo = icmp eq i64 %.sroa.405400.07047, 0
  br i1 %i.cpo, label %.loopexit.i.i4133, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i4089"

.loopexit.i.i4133:                                ; preds = %.noexc4.i1170, %.noexc.i1165
  %.sroa.115386.1.lcssa = phi ptr [ %.sroa.115386.3, %.noexc.i1165 ], [ %.sroa.115386.2, %.noexc4.i1170 ] ; 3 uses
  %i.cpp = load ptr, ptr %.sroa.115386.1.lcssa, align 8, !noalias !8993, !noundef !17 ; 2 uses
  %.not.i.i4.i.i.i4136 = icmp eq ptr %i.cpp, null
  br i1 %.not.i.i4.i.i.i4136, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4143", label %.lr.ph.i3.i.i4137

.lr.ph.i3.i.i4137:                                ; preds = %.loopexit.i.i4133, %.lr.ph.i3.i.i4137
  %i.cpq = phi ptr [ %i.cps, %.lr.ph.i3.i.i4137 ], [ %i.cpp, %.loopexit.i.i4133 ] ; 3 uses
  %.sroa.0.06.i.i.i4138 = phi ptr [ %i.cpq, %.lr.ph.i3.i.i4137 ], [ %.sroa.115386.1.lcssa, %.loopexit.i.i4133 ]
  %.sroa.5.05.i.i.i4139 = phi i64 [ %i.cpr, %.lr.ph.i3.i.i4137 ], [ 0, %.loopexit.i.i4133 ] ; 2 uses
  %i.cpr = add i64 %.sroa.5.05.i.i.i4139, 1       ; 2 uses
  %.not.i.i.i.i4140 = icmp eq i64 %.sroa.5.05.i.i.i4139, 0
  %..i.i.i.i4141 = select i1 %.not.i.i.i.i4140, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i.i4138, i64 noundef %..i.i.i.i4141, i64 noundef 8) #51, !noalias !8994
  %i.cps = load ptr, ptr %i.cpq, align 8, !noalias !8993, !noundef !17 ; 2 uses
  %.not.i.i.i.i.i4142 = icmp eq ptr %i.cps, null
  br i1 %.not.i.i.i.i.i4142, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4143.loopexit", label %.lr.ph.i3.i.i4137

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4143.loopexit": ; preds = %.lr.ph.i3.i.i4137
  %i.cpt = icmp eq i64 %i.cpr, 0
  %i.cpu = select i1 %i.cpt, i64 24, i64 120
  br label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4143"

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4143": ; preds = %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4143.loopexit", %.loopexit.i.i4133
  %.sroa.5.0.lcssa.i.i.i4144 = phi i64 [ 24, %.loopexit.i.i4133 ], [ %i.cpu, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4143.loopexit" ]
  %.sroa.0.0.lcssa.i.i.i4145 = phi ptr [ %.sroa.115386.1.lcssa, %.loopexit.i.i4133 ], [ %i.cpq, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4143.loopexit" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i.i4145, i64 noundef %.sroa.5.0.lcssa.i.i.i4144, i64 noundef 8) #51, !noalias !8994
  br label %.loopexit7.i1172

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i4089": ; preds = %.noexc.i1165, %.noexc4.i1170
  %.sroa.405400.07050 = phi i64 [ %.sroa.405400.0, %.noexc4.i1170 ], [ %.sroa.405400.07047, %.noexc.i1165 ]
  %.sroa.275390.17049 = phi i64 [ %.sroa.275390.2, %.noexc4.i1170 ], [ %.sroa.275390.3, %.noexc.i1165 ] ; 2 uses
  %.sroa.115386.17048 = phi ptr [ %.sroa.115386.2, %.noexc4.i1170 ], [ %.sroa.115386.3, %.noexc.i1165 ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.115386.17048) ]
  %i.cpv = getelementptr inbounds nuw i8, ptr %.sroa.115386.17048, i64 10
  %i.cpw = load i16, ptr %i.cpv, align 2, !noalias !8995, !noundef !17
  %i.cpx = zext i16 %i.cpw to i64
  %i.cpy = icmp ult i64 %.sroa.275390.17049, %i.cpx
  br i1 %i.cpy, label %._crit_edge.i.i.i.i.i4100.thread, label %.lr.ph.i.i.i.i.i4093

._crit_edge.i.i.i.i.i4100.thread:                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i4089"
  %i.cpz = add nuw nsw i64 %.sroa.275390.17049, 1
  br label %.noexc4.i1170

.lr.ph.i.i.i.i.i4093:                             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i4089", %bb.ov
  %.sroa.0.060.i.i.i.i.i4094 = phi ptr [ %i.cqa, %bb.ov ], [ %.sroa.115386.17048, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i4089" ] ; 4 uses
  %.sroa.5.059.i.i.i.i.i4095 = phi i64 [ %i.cqs, %bb.ov ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i4089" ] ; 4 uses
  %i.cqa = load ptr, ptr %.sroa.0.060.i.i.i.i.i4094, align 8, !noalias !8996, !noundef !17 ; 5 uses
  %.not.i.i.i.i.i.i.i4096 = icmp eq ptr %i.cqa, null
  br i1 %.not.i.i.i.i.i.i.i4096, label %bb.ow, label %bb.ov

._crit_edge.i.i.i.i.i4100:                        ; preds = %bb.ov
  %i.cqb = zext i16 %i.cqu to i64
  %i.cqc = icmp eq i64 %i.cqs, 0
  %i.cqd = add nuw nsw i64 %i.cqb, 1              ; 2 uses
  br i1 %i.cqc, label %.noexc4.i1170, label %bb.ou

bb.ou:                                            ; preds = %._crit_edge.i.i.i.i.i4100
  %i.cqe = getelementptr inbounds nuw i8, ptr %i.cqa, i64 24
  %i.cqf = icmp ult i16 %i.cqu, 11
  call void @llvm.assume(i1 %i.cqf), !noalias !8982
  %i.cqg = getelementptr inbounds nuw [8 x i8], ptr %i.cqe, i64 %i.cqd ; 2 uses
  %xtraiter9801 = and i64 %i.cqs, 7               ; 2 uses
  %lcmp.mod9802.not = icmp eq i64 %xtraiter9801, 0
  br i1 %lcmp.mod9802.not, label %.prol.loopexit9797, label %.prol.preheader9796

.prol.preheader9796:                              ; preds = %bb.ou, %.prol.preheader9796
  %.pn30.in.i.i.i.i.i.i4104.prol = phi ptr [ %i.cqh, %.prol.preheader9796 ], [ %i.cqg, %bb.ou ]
  %.pn28.in.i.i.i.i.i.i4105.prol = phi i64 [ %.pn28.i.i.i.i.i.i4106.prol, %.prol.preheader9796 ], [ %i.cqs, %bb.ou ]
  %prol.iter9803 = phi i64 [ %prol.iter9803.next, %.prol.preheader9796 ], [ 0, %bb.ou ]
  %.pn28.i.i.i.i.i.i4106.prol = add i64 %.pn28.in.i.i.i.i.i.i4105.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i4107.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i4104.prol, align 8, !noalias !8997, !nonnull !17, !noundef !17 ; 2 uses
  %i.cqh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i4107.prol, i64 24 ; 2 uses
  %prol.iter9803.next = add i64 %prol.iter9803, 1 ; 2 uses
  %prol.iter9803.cmp.not = icmp eq i64 %prol.iter9803.next, %xtraiter9801
  br i1 %prol.iter9803.cmp.not, label %.prol.loopexit9797, label %.prol.preheader9796, !llvm.loop !8501

.prol.loopexit9797:                               ; preds = %.prol.preheader9796, %bb.ou
  %.pn30.i.i.i.i.i.i4107.lcssa.unr = phi ptr [ poison, %bb.ou ], [ %.pn30.i.i.i.i.i.i4107.prol, %.prol.preheader9796 ]
  %.pn30.in.i.i.i.i.i.i4104.unr = phi ptr [ %i.cqg, %bb.ou ], [ %i.cqh, %.prol.preheader9796 ]
  %.pn28.in.i.i.i.i.i.i4105.unr = phi i64 [ %i.cqs, %bb.ou ], [ %.pn28.i.i.i.i.i.i4106.prol, %.prol.preheader9796 ]
  %i.cqi = icmp ult i64 %.sroa.5.059.i.i.i.i.i4095, 7
  br i1 %i.cqi, label %.noexc4.i1170, label %.new9798

.new9798:                                         ; preds = %.prol.loopexit9797, %.new9798
  %.pn30.in.i.i.i.i.i.i4104 = phi ptr [ %i.cqr, %.new9798 ], [ %.pn30.in.i.i.i.i.i.i4104.unr, %.prol.loopexit9797 ]
  %.pn28.in.i.i.i.i.i.i4105 = phi i64 [ %.pn28.i.i.i.i.i.i4106.7, %.new9798 ], [ %.pn28.in.i.i.i.i.i.i4105.unr, %.prol.loopexit9797 ]
  %.pn30.i.i.i.i.i.i4107 = load ptr, ptr %.pn30.in.i.i.i.i.i.i4104, align 8, !noalias !8997, !nonnull !17, !noundef !17
  %i.cqj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i4107, i64 24
  %.pn30.i.i.i.i.i.i4107.1 = load ptr, ptr %i.cqj, align 8, !noalias !8997, !nonnull !17, !noundef !17
  %i.cqk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i4107.1, i64 24
  %.pn30.i.i.i.i.i.i4107.2 = load ptr, ptr %i.cqk, align 8, !noalias !8997, !nonnull !17, !noundef !17
  %i.cql = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i4107.2, i64 24
  %.pn30.i.i.i.i.i.i4107.3 = load ptr, ptr %i.cql, align 8, !noalias !8997, !nonnull !17, !noundef !17
  %i.cqm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i4107.3, i64 24
  %.pn30.i.i.i.i.i.i4107.4 = load ptr, ptr %i.cqm, align 8, !noalias !8997, !nonnull !17, !noundef !17
  %i.cqn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i4107.4, i64 24
  %.pn30.i.i.i.i.i.i4107.5 = load ptr, ptr %i.cqn, align 8, !noalias !8997, !nonnull !17, !noundef !17
  %i.cqo = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i4107.5, i64 24
  %.pn30.i.i.i.i.i.i4107.6 = load ptr, ptr %i.cqo, align 8, !noalias !8997, !nonnull !17, !noundef !17
  %i.cqp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i4107.6, i64 24
  %.pn28.i.i.i.i.i.i4106.7 = add i64 %.pn28.in.i.i.i.i.i.i4105, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i4107.7 = load ptr, ptr %i.cqp, align 8, !noalias !8997, !nonnull !17, !noundef !17 ; 2 uses
  %i.cqq = icmp eq i64 %.pn28.i.i.i.i.i.i4106.7, 0
  %i.cqr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i4107.7, i64 24
  br i1 %i.cqq, label %.noexc4.i1170, label %.new9798

bb.ov:                                            ; preds = %.lr.ph.i.i.i.i.i4093
  %i.cqs = add i64 %.sroa.5.059.i.i.i.i.i4095, 1  ; 5 uses
  %i.cqt = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i.i4094, i64 8
  %i.cqu = load i16, ptr %i.cqt, align 8, !noalias !8996 ; 3 uses
  %.not.i.i.i.i.i.i4097 = icmp eq i64 %.sroa.5.059.i.i.i.i.i4095, 0
  %..i.i.i.i.i.i4098 = select i1 %.not.i.i.i.i.i.i4097, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i4094, i64 noundef %..i.i.i.i.i.i4098, i64 noundef 8) #51, !noalias !8998
  %i.cqv = getelementptr inbounds nuw i8, ptr %i.cqa, i64 10
  %i.cqw = load i16, ptr %i.cqv, align 2, !noalias !8995, !noundef !17
  %i.cqx = icmp ult i16 %i.cqu, %i.cqw
  br i1 %i.cqx, label %._crit_edge.i.i.i.i.i4100, label %.lr.ph.i.i.i.i.i4093

bb.ow:                                            ; preds = %.lr.ph.i.i.i.i.i4093
  %.not.i54.i.i.i.i.i4114 = icmp eq i64 %.sroa.5.059.i.i.i.i.i4095, 0
  %..i55.i.i.i.i.i4115 = select i1 %.not.i54.i.i.i.i.i4114, i64 24, i64 120
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i.i4094, i64 noundef %..i55.i.i.i.i.i4115, i64 noundef 8) #51, !noalias !8998
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #54
          to label %.noexc.i.i.i4116 unwind label %bb.ox, !noalias !8999

.noexc.i.i.i4116:                                 ; preds = %bb.ow
  unreachable

bb.ox:                                            ; preds = %bb.ow
  %i.cqy = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !8982
  unreachable

.noexc4.i1170:                                    ; preds = %.prol.loopexit9797, %.new9798, %._crit_edge.i.i.i.i.i4100.thread, %._crit_edge.i.i.i.i.i4100
  %.sroa.115386.2 = phi ptr [ %i.cqa, %._crit_edge.i.i.i.i.i4100 ], [ %.sroa.115386.17048, %._crit_edge.i.i.i.i.i4100.thread ], [ %.pn30.i.i.i.i.i.i4107.lcssa.unr, %.prol.loopexit9797 ], [ %.pn30.i.i.i.i.i.i4107.7, %.new9798 ] ; 2 uses
  %.sroa.275390.2 = phi i64 [ %i.cqd, %._crit_edge.i.i.i.i.i4100 ], [ %i.cpz, %._crit_edge.i.i.i.i.i4100.thread ], [ 0, %.new9798 ], [ 0, %.prol.loopexit9797 ]
  %.sroa.405400.0 = add i64 %.sroa.405400.07050, -1 ; 2 uses
  %i.cqz = icmp eq i64 %.sroa.405400.0, 0
  br i1 %i.cqz, label %.loopexit.i.i4133, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hc6a06763891922abE.exit.i.i4089"

.loopexit7.i1172:                                 ; preds = %bb.on, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4143", %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17he35ec8775d45142fE.exit.i.i4213"
  %.val.i1173 = load i64, ptr %i.dl, align 8, !range !30, !alias.scope !8982, !noundef !17 ; 2 uses
  %switch6.i1174 = icmp sgt i64 %.val.i1173, 0
  br i1 %switch6.i1174, label %bb.oy, label %"_ZN4core3ptr86drop_in_place$LT$console..utils..StyledObject$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h313fc6ceec913453E.exit1178"

bb.oy:                                            ; preds = %.loopexit7.i1172
  %.val1.i1175 = load ptr, ptr %.sroa.54326.0..sroa_idx, align 8, !alias.scope !8982, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1175, i64 noundef %.val.i1173, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !9000
  br label %"_ZN4core3ptr86drop_in_place$LT$console..utils..StyledObject$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h313fc6ceec913453E.exit1178"

"_ZN4core3ptr86drop_in_place$LT$console..utils..StyledObject$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h313fc6ceec913453E.exit1178": ; preds = %bb.oy, %.loopexit7.i1172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  br label %bb.oi
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN5insta6output15SnapshotPrinter5print17hf7cfba0d17a4ec8bE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [72 x i8], align 8                ; 14 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [72 x i8], align 8                ; 11 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [48 x i8], align 8                ; 9 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [48 x i8], align 8                ; 9 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [40 x i8], align 8                ; 9 uses
  %i.o = alloca [48 x i8], align 8                ; 9 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [80 x i8], align 8                ; 16 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [48 x i8], align 8                ; 9 uses
  %i.t = alloca [48 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  %i.v = alloca [72 x i8], align 8                ; 13 uses
  %i.w = alloca [24 x i8], align 8                ; 8 uses
  %i.x = alloca [72 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 8 uses
  %i.z = alloca [72 x i8], align 8                ; 13 uses
  %i.aa = alloca [24 x i8], align 8               ; 8 uses
  %i.ab = alloca [72 x i8], align 8               ; 13 uses
  %i.ac = alloca [48 x i8], align 8               ; 8 uses
  %i.ad = alloca [32 x i8], align 8               ; 8 uses
  %i.ae = alloca [32 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 8 uses
  %i.ag = alloca [72 x i8], align 8               ; 7 uses
  %i.ah = alloca [24 x i8], align 8               ; 8 uses
  %i.ai = alloca [72 x i8], align 8               ; 7 uses
  %i.aj = alloca [24 x i8], align 8               ; 8 uses
  %i.ak = alloca [72 x i8], align 8               ; 13 uses
  %i.al = alloca [24 x i8], align 8               ; 8 uses
  %i.am = alloca [72 x i8], align 8               ; 13 uses
  %i.an = alloca [32 x i8], align 8               ; 8 uses
  %i.ao = alloca [32 x i8], align 8               ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 8 uses
  %i.aq = alloca [72 x i8], align 8               ; 7 uses
  %i.ar = alloca [24 x i8], align 8               ; 8 uses
  %i.as = alloca [72 x i8], align 8               ; 7 uses
  %i.at = alloca [24 x i8], align 8               ; 8 uses
  %i.au = alloca [72 x i8], align 8               ; 13 uses
  %i.av = alloca [32 x i8], align 8               ; 8 uses
  %i.aw = alloca [32 x i8], align 8               ; 6 uses
  %i.ax = alloca [24 x i8], align 8               ; 8 uses
  %i.ay = alloca [72 x i8], align 8               ; 7 uses
  %i.az = alloca [24 x i8], align 8               ; 5 uses
  %i.ba = alloca [40 x i8], align 8               ; 11 uses
  %i.bb = alloca [16 x i8], align 8               ; 5 uses
  %i.bc = alloca [48 x i8], align 8               ; 8 uses
  %i.bd = alloca [16 x i8], align 8               ; 5 uses
  %i.be = alloca [32 x i8], align 8               ; 7 uses
  %i.bf = alloca [40 x i8], align 8               ; 10 uses
  %i.bg = alloca [16 x i8], align 8               ; 5 uses
  %i.bh = alloca [24 x i8], align 8               ; 4 uses
  %i.bi = alloca [24 x i8], align 8               ; 11 uses
  %i.bj = alloca [48 x i8], align 8               ; 12 uses
  %i.bk = alloca [48 x i8], align 8               ; 8 uses
  %i.bl = alloca [24 x i8], align 8               ; 6 uses
  %i.bm = alloca [48 x i8], align 8               ; 10 uses
  %i.bn = alloca [16 x i8], align 8               ; 5 uses
  %i.bo = alloca [48 x i8], align 8               ; 8 uses
  %i.bp = alloca [48 x i8], align 8               ; 12 uses
  %i.bq = alloca [16 x i8], align 8               ; 5 uses
  %i.br = alloca [48 x i8], align 8               ; 8 uses
  %i.bs = alloca [48 x i8], align 8               ; 10 uses
  %i.bt = alloca [16 x i8], align 8               ; 5 uses
  %i.bu = alloca [48 x i8], align 8               ; 8 uses
end_hunk_7
begin_hunk_8_@_ZN7similar10algorithms5utils17common_suffix_len17hbe1d6208897bcdf3E:bb.a

bb.g:                                             ; preds = %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ac, i64 noundef %.val9.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #54, !noalias !22141
  unreachable

"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit17.i.i.i.i": ; preds = %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i"
  %i.af = getelementptr i8, ptr %i.aa, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.af, align 8, !noalias !22141, !nonnull !17, !noundef !17
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i.i, i64 %i.ac ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !22144, !noundef !17
  %.not.i.i.i.i.i = icmp eq i64 %i.z, %i.ai
  br i1 %.not.i.i.i.i.i, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i", label %"_ZN115_$LT$core..iter..adapters..take_while..TakeWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h88d81d371cf7b718E.exit"

"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i": ; preds = %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit17.i.i.i.i"
  %i.aj = load ptr, ptr %i.ag, align 8, !noalias !22144, !nonnull !17, !align !31, !noundef !17
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %i.x, ptr nonnull readonly align 1 %i.aj, i64 %i.z), !alias.scope !22145, !noalias !22146
  %i.ak = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.ak, label %bb.h, label %"_ZN115_$LT$core..iter..adapters..take_while..TakeWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h88d81d371cf7b718E.exit"

bb.h:                                             ; preds = %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i"
  %i.al = add nuw i64 %.sroa.01.050.i.i.i, 1      ; 2 uses
  %exitcond101.not.i.i.i = icmp eq i64 %i.al, %i.d
  br i1 %exitcond101.not.i.i.i, label %"_ZN115_$LT$core..iter..adapters..take_while..TakeWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h88d81d371cf7b718E.exit", label %bb.b

"_ZN115_$LT$core..iter..adapters..take_while..TakeWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h88d81d371cf7b718E.exit": ; preds = %bb.h, %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i", %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit17.i.i.i.i", %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.d, %bb.h ], [ %.sroa.01.050.i.i.i, %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i" ], [ %.sroa.01.050.i.i.i, %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit17.i.i.i.i" ], [ %i.c, %bb.b ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17hd4a850fbcba52b1fE(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp uge i64 %1, %2
  %i.b = icmp uge i64 %4, %5
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %"_ZN115_$LT$core..iter..adapters..take_while..TakeWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h1eddccab9a0b41bbE.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.c = sub nuw i64 %2, %1                       ; 2 uses
  %i.d = sub nuw i64 %5, %4                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val15.i.i.i.i = load i64, ptr %i.e, align 8   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val13.i.i.i.i = load i64, ptr %i.f, align 8   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val12.i.i.i.i = load ptr, ptr %i.g, align 8, !nonnull !17
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val14.i.i.i.i = load ptr, ptr %i.h, align 8, !nonnull !17
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.i.i.i
  %i.i = phi i64 [ %2, %.lr.ph.i.i.i ], [ %i.l, %bb.h ]
  %.sroa.01.052.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ah, %bb.h ] ; 4 uses
  %i.j = phi i64 [ %5, %.lr.ph.i.i.i ], [ %i.k, %bb.h ]
  %i.k = add i64 %i.j, -1                         ; 4 uses
  %exitcond.not.i.i.i = icmp eq i64 %.sroa.01.052.i.i.i, %i.c
  br i1 %exitcond.not.i.i.i, label %"_ZN115_$LT$core..iter..adapters..take_while..TakeWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h1eddccab9a0b41bbE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = add i64 %i.i, -1                         ; 4 uses
  %i.m = icmp ult i64 %i.k, %.val15.i.i.i.i
  br i1 %i.m, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha09f87515b79da06E.exit.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.k, i64 noundef %.val15.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @830) #54, !noalias !22172
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha09f87515b79da06E.exit.i.i.i.i": ; preds = %bb.c
  %i.n = icmp ult i64 %i.l, %.val13.i.i.i.i
  br i1 %i.n, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha09f87515b79da06E.exit16.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha09f87515b79da06E.exit.i.i.i.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.l, i64 noundef %.val13.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #54, !noalias !22173
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha09f87515b79da06E.exit16.i.i.i.i": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha09f87515b79da06E.exit.i.i.i.i"
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.val14.i.i.i.i, i64 %i.k ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22175)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !22174, !noalias !22176, !noundef !17 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !22174, !noalias !22176, !noundef !17 ; 3 uses
  %i.t = icmp ult i64 %i.s, %i.q
  br i1 %i.t, label %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha09f87515b79da06E.exit16.i.i.i.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.s, i64 noundef %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #54, !noalias !22177
  unreachable

"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha09f87515b79da06E.exit16.i.i.i.i"
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.val12.i.i.i.i, i64 %i.l ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !22175, !noalias !22178, !noundef !17 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !22175, !noalias !22178, !noundef !17 ; 3 uses
  %i.z = icmp ult i64 %i.y, %i.w
  br i1 %i.z, label %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit17.i.i.i.i", label %bb.g

bb.g:                                             ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.y, i64 noundef %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #54, !noalias !22179
  unreachable

"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit17.i.i.i.i": ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i"
  %i.aa = load ptr, ptr %i.u, align 8, !alias.scope !22175, !noalias !22178, !nonnull !17, !align !29, !noundef !17
  %i.ab = load ptr, ptr %i.o, align 8, !alias.scope !22174, !noalias !22176, !nonnull !17, !align !29, !noundef !17
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.s ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.y ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ac, i64 8
  %.val9.i.i.i.i = load i64, ptr %i.ae, align 8, !noalias !22180, !noundef !17 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ad, i64 8
  %.val11.i.i.i.i = load i64, ptr %i.af, align 8, !noalias !22180, !noundef !17
  %.not.i.i.i.i.i.i = icmp eq i64 %.val9.i.i.i.i, %.val11.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i", label %"_ZN115_$LT$core..iter..adapters..take_while..TakeWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h1eddccab9a0b41bbE.exit"

"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i": ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit17.i.i.i.i"
  %.val10.i.i.i.i = load ptr, ptr %i.ad, align 8, !noalias !22180, !nonnull !17, !align !31, !noundef !17
  %.val.i.i.i.i = load ptr, ptr %i.ac, align 8, !noalias !22180, !nonnull !17, !align !31, !noundef !17
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i.i, ptr nonnull readonly align 1 %.val10.i.i.i.i, i64 %.val9.i.i.i.i), !alias.scope !22181, !noalias !22180
  %i.ag = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ag, label %bb.h, label %"_ZN115_$LT$core..iter..adapters..take_while..TakeWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h1eddccab9a0b41bbE.exit"

bb.h:                                             ; preds = %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i"
  %i.ah = add nuw i64 %.sroa.01.052.i.i.i, 1      ; 2 uses
  %exitcond105.not.i.i.i = icmp eq i64 %i.ah, %i.d
  br i1 %exitcond105.not.i.i.i, label %"_ZN115_$LT$core..iter..adapters..take_while..TakeWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h1eddccab9a0b41bbE.exit", label %bb.b

"_ZN115_$LT$core..iter..adapters..take_while..TakeWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h1eddccab9a0b41bbE.exit": ; preds = %bb.h, %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i", %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit17.i.i.i.i", %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.d, %bb.h ], [ %.sroa.01.052.i.i.i, %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i" ], [ %.sroa.01.052.i.i.i, %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit17.i.i.i.i" ], [ %i.c, %bb.b ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5utils6unique17h4935206e95fb3fa9E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [72 x i8], align 16               ; 12 uses
  %.sroa.0.i.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [48 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !range !21, !noalias !22364, !noundef !17
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %._ZN4core3ops8function6FnOnce9call_once17hb01039b87ec469cfE.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8b65765c51b6825bE.exit.i.i", !prof !23

._ZN4core3ops8function6FnOnce9call_once17hb01039b87ec469cfE.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.g, align 8, !noalias !22365
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !22365
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8b65765c51b6825bE.exit.i.i": ; preds = %bb.a
  %i.k = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE(), !noalias !22366 ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1        ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.m, ptr %i.n, align 8, !noalias !22366
  store i8 1, ptr %i.h, align 8, !noalias !22366
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit"

"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit": ; preds = %._ZN4core3ops8function6FnOnce9call_once17hb01039b87ec469cfE.exit_crit_edge.i.i, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8b65765c51b6825bE.exit.i.i"
  %.pre-phi140 = phi i64 [ %.pre1.i.i, %._ZN4core3ops8function6FnOnce9call_once17hb01039b87ec469cfE.exit_crit_edge.i.i ], [ %i.m, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8b65765c51b6825bE.exit.i.i" ]
  %i.o = phi i64 [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17hb01039b87ec469cfE.exit_crit_edge.i.i ], [ %i.l, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8b65765c51b6825bE.exit.i.i" ] ; 2 uses
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.g, align 8, !noalias !22365
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) @53, i64 32, i1 false)
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  store i64 %i.o, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 %.pre-phi140, ptr %.sroa.56.0..sroa_idx, align 8
  %i.q = icmp ult i64 %3, %4
  br i1 %i.q, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit"
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.59.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.711.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.913.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %umax = tail call i64 @llvm.umax.i64(i64 %3, i64 %2) ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.ai
  %.sroa.077.0.copyload.pre = load ptr, ptr %i.f, align 8 ; 4 uses
  %.sroa.2.0.copyload.pre = load i64, ptr %i.s, align 8 ; 3 uses
  %.sroa.378.0.copyload.pre = load i64, ptr %i.u, align 8 ; 2 uses
  %.val13.i.i.i = load <16 x i8>, ptr %.sroa.077.0.copyload.pre, align 16, !noalias !22367 ; 2 uses
  %i.v = icmp eq i64 %.sroa.2.0.copyload.pre, 0
  br i1 %i.v, label %._crit_edge.thread, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i: ; preds = %._crit_edge
  %i.w = mul i64 %.sroa.2.0.copyload.pre, 24      ; 2 uses
  %5 = add i64 %i.w, 24
  %6 = icmp ult i64 %5, -15
  call void @llvm.assume(i1 %6)
  %i.x = and i64 %i.w, -16                        ; 2 uses
  %7 = add i64 %i.x, 32                           ; 2 uses
  %i.y = add i64 %.sroa.2.0.copyload.pre, 17
  %i.z = add i64 %i.y, %7                         ; 3 uses
  %8 = icmp uge i64 %i.z, %7
  call void @llvm.assume(i1 %8)
  %9 = icmp ult i64 %i.z, 9223372036854775793
  call void @llvm.assume(i1 %9)
  %i.aa = sub i64 -32, %i.x
  %i.ab = getelementptr inbounds i8, ptr %.sroa.077.0.copyload.pre, i64 %i.aa
  br label %._crit_edge.thread

bb.b:                                             ; preds = %.lr.ph, %bb.ai
  %.sroa.013.0118 = phi i64 [ %3, %.lr.ph ], [ %i.ac, %bb.ai ] ; 4 uses
  %i.ac = add i64 %.sroa.013.0118, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.013.0118, %umax
  br i1 %exitcond.not, label %bb.c, label %bb.z

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @834) #54
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  unreachable

.loopexit100:                                     ; preds = %bb.ad
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr384drop_in_place$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..filter_map..FilterMap$LT$std..collections..hash..map..IntoIter$LT$$RF$$RF$str$C$core..option..Option$LT$usize$GT$$GT$$C$similar..algorithms..utils..unique$LT$$u5b$$RF$str$u5d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$similar..algorithms..utils..unique$LT$$u5b$$RF$str$u5d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h2e3447c0528777bcE.exit.i.i"

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr384drop_in_place$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..filter_map..FilterMap$LT$std..collections..hash..map..IntoIter$LT$$RF$$RF$str$C$core..option..Option$LT$usize$GT$$GT$$C$similar..algorithms..utils..unique$LT$$u5b$$RF$str$u5d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$similar..algorithms..utils..unique$LT$$u5b$$RF$str$u5d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h2e3447c0528777bcE.exit.i.i"

._crit_edge.thread:                               ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i, %._crit_edge
  %i.ad = phi i1 [ false, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ true, %._crit_edge ], [ true, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit" ] ; 4 uses
  %.val13.i.i.i159 = phi <16 x i8> [ %.val13.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ %.val13.i.i.i, %._crit_edge ], [ splat (i8 -1), %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit" ]
  %.sroa.077.0.copyload158 = phi ptr [ %.sroa.077.0.copyload.pre, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ %.sroa.077.0.copyload.pre, %._crit_edge ], [ @52, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit" ] ; 2 uses
  %.sroa.378.0.copyload157 = phi i64 [ %.sroa.378.0.copyload.pre, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ %.sroa.378.0.copyload.pre, %._crit_edge ], [ 0, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit" ] ; 2 uses
  %.sroa.5.sroa.0.0.i.i.i.i = phi i64 [ %i.z, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %._crit_edge ], [ undef, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit" ] ; 8 uses
  %.sroa.5.sroa.4.0.i.i.i.i = phi ptr [ %i.ab, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %._crit_edge ], [ undef, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit" ] ; 8 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ 0, %._crit_edge ], [ 0, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit" ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !22368
  %i.ae = icmp eq i64 %.sroa.378.0.copyload157, 0
  br i1 %i.ae, label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd25d73cff095b3acE.exit.i.i.i.i.i.i.i.i._crit_edge", label %.lr.ph189

.lr.ph189:                                        ; preds = %._crit_edge.thread
  %i.af = icmp sgt <16 x i8> %.val13.i.i.i159, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.077.0.copyload158, i64 16
  br label %bb.e

bb.d:                                             ; preds = %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd25d73cff095b3acE.exit.i.i.i.i.i.i.i.i"
  %i.ai = icmp eq i64 %i.aw, 0
  br i1 %i.ai, label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd25d73cff095b3acE.exit.i.i.i.i.i.i.i.i._crit_edge", label %bb.e

bb.e:                                             ; preds = %.lr.ph189, %bb.d
  %i.aj = phi i64 [ %.sroa.378.0.copyload157, %.lr.ph189 ], [ %i.aw, %bb.d ]
  %i.ak = phi i16 [ %i.ag, %.lr.ph189 ], [ %i.at, %bb.d ] ; 2 uses
  %.lcssa1721.i.i.i.i.i.i.i.i188 = phi ptr [ %.sroa.077.0.copyload158, %.lr.ph189 ], [ %.sroa.9.0.copyload.i.i.i.i, %bb.d ] ; 2 uses
  %.lcssa24.i.i.i.i.i.i.i.i187 = phi ptr [ %i.ah, %.lr.ph189 ], [ %.sroa.11.0.copyload.i.i.i.i, %bb.d ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd25d73cff095b3acE.exit.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.al = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa24.i.i.i.i.i.i.i.i187, %bb.e ] ; 2 uses
  %i.am = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1721.i.i.i.i.i.i.i.i188, %bb.e ]
  %.val911.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.al, align 16, !noalias !22369
  %i.an = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -384 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.an to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd25d73cff095b3acE.exit.i.i.i.i.i.i.i.i"

"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd25d73cff095b3acE.exit.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.e
  %.sroa.11.0.copyload.i.i.i.i = phi ptr [ %.lcssa24.i.i.i.i.i.i.i.i187, %bb.e ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.9.0.copyload.i.i.i.i = phi ptr [ %.lcssa1721.i.i.i.i.i.i.i.i188, %bb.e ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ak, %bb.e ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aq = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ar = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.as = zext nneg i16 %i.ar to i64
  %i.at = and i16 %i.aq, %.lcssa.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.au = sub nsw i64 0, %i.as
  %i.av = getelementptr inbounds [24 x i8], ptr %.sroa.9.0.copyload.i.i.i.i, i64 %i.au ; 2 uses
  %i.aw = add i64 %i.aj, -1                       ; 4 uses
  %.sroa.6.0..sroa_idx7.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.av, i64 -16
  %.sroa.6.0.copyload8.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx7.i.i.i.i.i.i.i.i, align 8, !noalias !22370
  switch i64 %.sroa.6.0.copyload8.i.i.i.i.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i" [
    i64 2, label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd25d73cff095b3acE.exit.i.i.i.i.i.i.i.i._crit_edge"
    i64 0, label %bb.d
  ]

"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd25d73cff095b3acE.exit.i.i.i.i.i.i.i.i._crit_edge": ; preds = %bb.d, %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd25d73cff095b3acE.exit.i.i.i.i.i.i.i.i", %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !22368
  %i.ax = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond.i.i = or i1 %i.ad, %i.ax
  br i1 %or.cond.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h5c492c6521e73613E.exit.thread, label %bb.f

bb.f:                                             ; preds = %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd25d73cff095b3acE.exit.i.i.i.i.i.i.i.i._crit_edge"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #51, !noalias !22371
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h5c492c6521e73613E.exit.thread

bb.g:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond6.i.i = or i1 %i.ad, %i.az
  br i1 %or.cond6.i.i, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #51, !noalias !22372
  br label %.thread

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i": ; preds = %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd25d73cff095b3acE.exit.i.i.i.i.i.i.i.i"
  %.sroa.8.0..sroa_idx9.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.av, i64 -8
  %.sroa.8.0.copyload10.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx9.i.i.i.i.i.i.i.i, align 8, !noalias !22370
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !22373
  %i.ba = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, 17) 8) #51, !noalias !22373 ; 6 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 96, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #54
          to label %.noexc.i.i.i.i unwind label %bb.g, !noalias !22368

.noexc.i.i.i.i:                                   ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"
  store ptr %1, ptr %i.ba, align 8, !noalias !22368
  %.sroa.47.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %2, ptr %.sroa.47.0..sroa_idx.i.i.i.i, align 8, !noalias !22368
  %.sroa.58.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 %.sroa.8.0.copyload10.i.i.i.i.i.i.i.i, ptr %.sroa.58.0..sroa_idx.i.i.i.i, align 8, !noalias !22368
  store i64 4, ptr %i.e, align 8, !noalias !22368
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  store ptr %i.ba, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !22368
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !22368
  call void @llvm.experimental.noalias.scope.decl(metadata !22374)
  call void @llvm.experimental.noalias.scope.decl(metadata !22375)
  %i.bc = icmp eq i64 %i.aw, 0
  br i1 %i.bc, label %._crit_edge197, label %.lr.ph196

.lr.ph196:                                        ; preds = %bb.j, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc626bb5891566959E.exit.i.i.i.i.i.i"
  %i.bd = phi i64 [ %i.bu, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc626bb5891566959E.exit.i.i.i.i.i.i" ], [ %i.aw, %bb.j ]
  %i.be = phi i16 [ %i.br, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc626bb5891566959E.exit.i.i.i.i.i.i" ], [ %i.at, %bb.j ]
  %.lcssa1218.i.i.i.i.i.i203 = phi ptr [ %.lcssa1216.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc626bb5891566959E.exit.i.i.i.i.i.i" ], [ %.sroa.9.0.copyload.i.i.i.i, %bb.j ] ; 2 uses
  %.lcssa22.i.i.i.i.i.i202 = phi ptr [ %.lcssa20.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc626bb5891566959E.exit.i.i.i.i.i.i" ], [ %.sroa.11.0.copyload.i.i.i.i, %bb.j ] ; 2 uses
  %.sroa.9.0.copyload43201 = phi i64 [ %i.cb, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc626bb5891566959E.exit.i.i.i.i.i.i" ], [ 1, %bb.j ] ; 7 uses
  %i.bf = phi ptr [ %i.bz, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc626bb5891566959E.exit.i.i.i.i.i.i" ], [ %i.ba, %bb.j ]
  br label %bb.l

bb.k:                                             ; preds = %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd25d73cff095b3acE.exit.i.i.i.i.i.i.i.i.i.i"
  %i.bg = icmp eq i64 %i.bu, 0
  br i1 %i.bg, label %._crit_edge197, label %bb.l

bb.l:                                             ; preds = %.lr.ph196, %bb.k
  %i.bh = phi i64 [ %i.bd, %.lr.ph196 ], [ %i.bu, %bb.k ]
  %i.bi = phi i16 [ %i.be, %.lr.ph196 ], [ %i.br, %bb.k ] ; 2 uses
  %.lcssa1721.i.i.i.i.i.i.i.i.i.i194 = phi ptr [ %.lcssa1218.i.i.i.i.i.i203, %.lr.ph196 ], [ %.lcssa1720.i.i.i.i.i.i.i.i.i.i, %bb.k ] ; 2 uses
  %.lcssa24.i.i.i.i.i.i.i.i.i.i193 = phi ptr [ %.lcssa22.i.i.i.i.i.i202, %.lr.ph196 ], [ %.lcssa23.i.i.i.i.i.i.i.i.i.i, %bb.k ] ; 2 uses
  %.lcssa1217.i.i.i.i.i.i192 = phi ptr [ %.lcssa1218.i.i.i.i.i.i203, %.lr.ph196 ], [ %.lcssa1216.i.i.i.i.i.i, %bb.k ]
  %.lcssa21.i.i.i.i.i.i191 = phi ptr [ %.lcssa22.i.i.i.i.i.i202, %.lr.ph196 ], [ %.lcssa20.i.i.i.i.i.i, %bb.k ]
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.bi, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd25d73cff095b3acE.exit.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.l, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bj = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa24.i.i.i.i.i.i.i.i.i.i193, %bb.l ] ; 2 uses
  %i.bk = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1721.i.i.i.i.i.i.i.i.i.i194, %bb.l ]
  %.val911.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bj, align 16, !noalias !22376
  %i.bl = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 -384 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.bl to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd25d73cff095b3acE.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd25d73cff095b3acE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.l
  %.lcssa20.i.i.i.i.i.i = phi ptr [ %.lcssa21.i.i.i.i.i.i191, %bb.l ], [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa1216.i.i.i.i.i.i = phi ptr [ %.lcssa1217.i.i.i.i.i.i192, %bb.l ], [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa23.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa24.i.i.i.i.i.i.i.i.i.i193, %bb.l ], [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa1720.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa1721.i.i.i.i.i.i.i.i.i.i194, %bb.l ], [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.bi, %bb.l ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bo = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bq = zext nneg i16 %i.bp to i64
  %i.br = and i16 %i.bo, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bs = sub nsw i64 0, %i.bq
  %i.bt = getelementptr inbounds [24 x i8], ptr %.lcssa1720.i.i.i.i.i.i.i.i.i.i, i64 %i.bs ; 2 uses
  %i.bu = add i64 %i.bh, -1                       ; 4 uses
  %.sroa.6.0..sroa_idx7.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bt, i64 -16
  %.sroa.6.0.copyload8.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx7.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !22377
  switch i64 %.sroa.6.0.copyload8.i.i.i.i.i.i.i.i.i.i, label %bb.m [
    i64 2, label %._crit_edge197
    i64 0, label %bb.k
  ]

bb.m:                                             ; preds = %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd25d73cff095b3acE.exit.i.i.i.i.i.i.i.i.i.i"
  %.sroa.8.0..sroa_idx9.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bt, i64 -8
  %.sroa.8.0.copyload10.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx9.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !22377
  %i.bv = icmp samesign ult i64 %.sroa.9.0.copyload43201, 384307168202282326
  call void @llvm.assume(i1 %i.bv)
  %i.bw = load i64, ptr %i.e, align 8, !range !20, !alias.scope !22378, !noalias !22379, !noundef !17
end_hunk_8
begin_hunk_9_@_ZN7similar10algorithms5utils6unique17h4935206e95fb3fa9E:bb.a
  %i.fz = getelementptr i8, ptr %.val3.i.i.i, i64 8
  %.val1.i.i.i.i.i = load i64, ptr %i.fz, align 8, !noalias !22405, !noundef !17
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.i.i.i, %.val1.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h78aa1da32846dd6bE.exit.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h78aa1da32846dd6bE.exit.thread.i.i", !prof !72

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h78aa1da32846dd6bE.exit.i.i": ; preds = %.lr.ph.i.i
  %.val.i.i.i.i.i = load ptr, ptr %.val3.i.i.i, align 8, !noalias !22405, !nonnull !17, !align !31, !noundef !17
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i, ptr nonnull readonly align 1 %.val.i.i.i.i, i64 %.val1.i.i.i.i), !alias.scope !22406, !noalias !22405
  %i.ga = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.ga, label %bb.ag, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h78aa1da32846dd6bE.exit.thread.i.i", !prof !66

._crit_edge.i.i:                                  ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h78aa1da32846dd6bE.exit.thread.i.i", %bb.aa
  %i.gb = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.gc = bitcast <16 x i1> %i.gb to i16
  %i.gd = icmp eq i16 %i.gc, 0
  br i1 %i.gd, label %bb.ab, label %bb.ac, !prof !22

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h78aa1da32846dd6bE.exit.thread.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h78aa1da32846dd6bE.exit.i.i", %.lr.ph.i.i
  %i.ge = add i16 %.sroa.06.0.i34.i.i, -1
  %i.gf = and i16 %i.ge, %.sroa.06.0.i34.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.gf, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.ab:                                            ; preds = %._crit_edge.i.i
  %i.gg = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.gh = add i64 %.sroa.01.0.i.i.i, %i.gg
  br label %bb.aa

bb.ac:                                            ; preds = %._crit_edge.i.i
  %i.gi = load i64, ptr %i.t, align 8, !alias.scope !22407, !noalias !22408, !noundef !17
  %i.gj = icmp eq i64 %i.gi, 0
  br i1 %i.gj, label %bb.ad, label %bb.ae, !prof !22

bb.ad:                                            ; preds = %bb.ac
  %i.gk = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hbedd0f491f79ff2dE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.45.0..sroa_idx, i1 noundef zeroext true)
          to label %.noexc30 unwind label %.loopexit100 ; 0 uses

.noexc30:                                         ; preds = %bb.ad
  %.val.i31.pre = load ptr, ptr %i.f, align 8, !alias.scope !22409, !noalias !22410
  %.val4.i.pre = load i64, ptr %i.s, align 8, !alias.scope !22409, !noalias !22410
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc30, %bb.ac
  %.val4.i = phi i64 [ %.val4.i.pre, %.noexc30 ], [ %i.fn, %bb.ac ] ; 4 uses
  %.val.i31 = phi ptr [ %.val.i31.pre, %.noexc30 ], [ %i.fo, %bb.ac ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22409)
  %.sroa.0.04.i.i.i32 = and i64 %.val4.i, %i.fk   ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.val.i31, i64 %.sroa.0.04.i.i.i32
  %.sroa.0.0.copyload.i35.i.i.i = load <16 x i8>, ptr %i.gl, align 1, !noalias !22411
  %i.gm = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i.i, zeroinitializer
  %i.gn = bitcast <16 x i1> %i.gm to i16          ; 2 uses
  %.not.not.i.not6.i.i.i = icmp eq i16 %i.gn, 0
  br i1 %.not.not.i.not6.i.i.i, label %.lr.ph.i.i.i35, label %._crit_edge.i.i.i, !prof !68

.lr.ph.i.i.i35:                                   ; preds = %bb.ae, %.lr.ph.i.i.i35
  %.sroa.0.07.i.i.i = phi i64 [ %.sroa.0.0.i.i.i36, %.lr.ph.i.i.i35 ], [ %.sroa.0.04.i.i.i32, %bb.ae ]
  %i.go = phi i64 [ %i.gp, %.lr.ph.i.i.i35 ], [ 0, %bb.ae ]
  %i.gp = add i64 %i.go, 16                       ; 2 uses
  %i.gq = add i64 %i.gp, %.sroa.0.07.i.i.i
  %.sroa.0.0.i.i.i36 = and i64 %i.gq, %.val4.i    ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.val.i31, i64 %.sroa.0.0.i.i.i36
  %.sroa.0.0.copyload.i3.i.i.i = load <16 x i8>, ptr %i.gr, align 1, !noalias !22411
  %i.gs = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i.i, zeroinitializer
  %i.gt = bitcast <16 x i1> %i.gs to i16          ; 2 uses
  %.not.not.i.not.i.i.i = icmp eq i16 %i.gt, 0
  br i1 %.not.not.i.not.i.i.i, label %.lr.ph.i.i.i35, label %._crit_edge.i.i.i, !prof !69

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i35, %bb.ae
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.0.04.i.i.i32, %bb.ae ], [ %.sroa.0.0.i.i.i36, %.lr.ph.i.i.i35 ]
  %.lcssa.i.i.i = phi i16 [ %i.gn, %bb.ae ], [ %i.gt, %.lr.ph.i.i.i35 ]
  %i.gu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.gv = zext nneg i16 %i.gu to i64
  %i.gw = add i64 %.sroa.0.0.lcssa.i.i.i, %i.gv
  %i.gx = and i64 %i.gw, %.val4.i                 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.val.i31, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !noalias !22412, !noundef !17 ; 2 uses
  %i.ha = icmp sgt i8 %i.gz, -1
  br i1 %i.ha, label %bb.af, label %bb.aj, !prof !22

bb.af:                                            ; preds = %._crit_edge.i.i.i
  %.val62.i.i.i.i = load <16 x i8>, ptr %.val.i31, align 16, !noalias !22412
  %i.hb = icmp slt <16 x i8> %.val62.i.i.i.i, zeroinitializer
  %i.hc = bitcast <16 x i1> %i.hb to i16          ; 2 uses
  %i.hd = icmp ne i16 %i.hc, 0
  call void @llvm.assume(i1 %i.hd)
  %i.he = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.hc, i1 true)
  %i.hf = zext nneg i16 %i.he to i64              ; 2 uses
  %.phi.trans.insert.i.i33 = getelementptr inbounds nuw i8, ptr %.val.i31, i64 %i.hf
  %.pre.i.i34 = load i8, ptr %.phi.trans.insert.i.i33, align 1, !noalias !22412
  br label %bb.aj

bb.ag:                                            ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h78aa1da32846dd6bE.exit.i.i"
  %i.hg = getelementptr inbounds i8, ptr %i.fx, i64 -16 ; 2 uses
  %i.hh = load i64, ptr %i.hg, align 8, !range !44, !noundef !17
  %.not17 = icmp eq i64 %i.hh, 0
  br i1 %.not17, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i64 0, ptr %i.hg, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.aj
  %exitcond133.not = icmp eq i64 %i.ac, %4
  br i1 %exitcond133.not, label %._crit_edge, label %bb.b

bb.aj:                                            ; preds = %bb.af, %._crit_edge.i.i.i
  %i.hi = phi i8 [ %.pre.i.i34, %bb.af ], [ %i.gz, %._crit_edge.i.i.i ]
  %.sroa.0.0.i5.i.i.i = phi i64 [ %i.hf, %bb.af ], [ %i.gx, %._crit_edge.i.i.i ] ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.val.i31, i64 %.sroa.0.0.i5.i.i.i
  %i.hk = add i64 %.sroa.0.0.i5.i.i.i, -16
  %i.hl = and i64 %i.hk, %.val4.i
  store i8 %i.fm, ptr %i.hj, align 1, !noalias !22412
  %i.hm = getelementptr i8, ptr %.val.i31, i64 %i.hl
  %i.hn = getelementptr i8, ptr %i.hm, i64 16
  store i8 %i.fm, ptr %i.hn, align 1, !noalias !22412
  %i.ho = sub nsw i64 0, %.sroa.0.0.i5.i.i.i
  %i.hp = getelementptr inbounds [24 x i8], ptr %.val.i31, i64 %i.ho ; 3 uses
  %i.hq = and i8 %i.hi, 1
  %i.hr = zext nneg i8 %i.hq to i64
  %i.hs = getelementptr inbounds i8, ptr %i.hp, i64 -24
  store ptr %i.cu, ptr %i.hs, align 8, !noalias !22409
  %.sroa.475.0..sroa_idx = getelementptr inbounds i8, ptr %i.hp, i64 -16
  store i64 1, ptr %.sroa.475.0..sroa_idx, align 8, !noalias !22409
  %.sroa.576.0..sroa_idx = getelementptr inbounds i8, ptr %i.hp, i64 -8
  store i64 %.sroa.013.0118, ptr %.sroa.576.0..sroa_idx, align 8, !noalias !22409
  %i.ht = load <2 x i64>, ptr %i.t, align 8, !alias.scope !22409, !noalias !22410
  %i.hu = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.hr, i64 0
  %i.hv = sub <2 x i64> %i.ht, %i.hu
  store <2 x i64> %i.hv, ptr %i.t, align 8, !alias.scope !22409, !noalias !22410
  br label %bb.ai

.thread:                                          ; preds = %bb.g, %bb.r, %.body.i.i.i.i, %bb.h, %"_ZN4core3ptr384drop_in_place$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..filter_map..FilterMap$LT$std..collections..hash..map..IntoIter$LT$$RF$$RF$str$C$core..option..Option$LT$usize$GT$$GT$$C$similar..algorithms..utils..unique$LT$$u5b$$RF$str$u5d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$similar..algorithms..utils..unique$LT$$u5b$$RF$str$u5d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h2e3447c0528777bcE.exit.i.i", %bb.x, %bb.y
  %.pn86 = phi { ptr, i32 } [ %i.cr, %bb.x ], [ %eh.lpad-body, %"_ZN4core3ptr384drop_in_place$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..filter_map..FilterMap$LT$std..collections..hash..map..IntoIter$LT$$RF$$RF$str$C$core..option..Option$LT$usize$GT$$GT$$C$similar..algorithms..utils..unique$LT$$u5b$$RF$str$u5d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$similar..algorithms..utils..unique$LT$$u5b$$RF$str$u5d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h2e3447c0528777bcE.exit.i.i" ], [ %i.cr, %bb.y ], [ %i.ay, %bb.g ], [ %i.cd, %bb.r ], [ %i.cd, %.body.i.i.i.i ], [ %i.ay, %bb.h ]
  resume { ptr, i32 } %.pn86

"_ZN4core3ptr384drop_in_place$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..filter_map..FilterMap$LT$std..collections..hash..map..IntoIter$LT$$RF$$RF$str$C$core..option..Option$LT$usize$GT$$GT$$C$similar..algorithms..utils..unique$LT$$u5b$$RF$str$u5d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$similar..algorithms..utils..unique$LT$$u5b$$RF$str$u5d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h2e3447c0528777bcE.exit.i.i": ; preds = %.loopexit.split-lp, %.loopexit100
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit100 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val20 = load ptr, ptr %i.f, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val21 = load i64, ptr %i.hw, align 8, !noundef !17
  call fastcc void @"_ZN4core3ptr112drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$$RF$str$C$core..option..Option$LT$usize$GT$$GT$$GT$17hf1a02aaed848c8fdE"(ptr %.val20, i64 %.val21) #55
  br label %.thread
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5utils6unique17hbe882b8d0b20c119E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [48 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !range !21, !noalias !22572, !noundef !17
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %._ZN4core3ops8function6FnOnce9call_once17hb01039b87ec469cfE.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8b65765c51b6825bE.exit.i.i", !prof !23

._ZN4core3ops8function6FnOnce9call_once17hb01039b87ec469cfE.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.e, align 8, !noalias !22573
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !22573
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8b65765c51b6825bE.exit.i.i": ; preds = %bb.a
  %i.i = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE(), !noalias !22574 ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %i.k = extractvalue { i64, i64 } %i.i, 1        ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.k, ptr %i.l, align 8, !noalias !22574
  store i8 1, ptr %i.f, align 8, !noalias !22574
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit"

"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit": ; preds = %._ZN4core3ops8function6FnOnce9call_once17hb01039b87ec469cfE.exit_crit_edge.i.i, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8b65765c51b6825bE.exit.i.i"
  %.pre-phi145 = phi i64 [ %.pre1.i.i, %._ZN4core3ops8function6FnOnce9call_once17hb01039b87ec469cfE.exit_crit_edge.i.i ], [ %i.k, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8b65765c51b6825bE.exit.i.i" ]
  %i.m = phi i64 [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17hb01039b87ec469cfE.exit_crit_edge.i.i ], [ %i.j, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8b65765c51b6825bE.exit.i.i" ] ; 2 uses
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.e, align 8, !noalias !22573
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @53, i64 32, i1 false)
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  store i64 %i.m, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  store i64 %.pre-phi145, ptr %.sroa.57.0..sroa_idx, align 8
  %i.o = icmp ult i64 %2, %3
  br i1 %i.o, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit"
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val23 = load i64, ptr %i.p, align 8, !noundef !17 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val22 = load ptr, ptr %i.q, align 8, !nonnull !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %umax = tail call i64 @llvm.umax.i64(i64 %.val23, i64 %2) ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.ai
  %.sroa.084.0.copyload.pre = load ptr, ptr %i.d, align 8 ; 4 uses
  %.sroa.2.0.copyload.pre = load i64, ptr %i.s, align 8 ; 4 uses
  %.sroa.385.0.copyload.pre = load i64, ptr %i.u, align 8 ; 2 uses
  %.val13.i.i.i = load <16 x i8>, ptr %.sroa.084.0.copyload.pre, align 16, !noalias !22575 ; 2 uses
  %i.v = icmp eq i64 %.sroa.2.0.copyload.pre, 0
  br i1 %i.v, label %._crit_edge.thread, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i: ; preds = %._crit_edge
  %4 = icmp slt i64 %.sroa.2.0.copyload.pre, 576460752303423487
  call void @llvm.assume(i1 %4)
  %i.w = shl i64 %.sroa.2.0.copyload.pre, 5       ; 2 uses
  %5 = add i64 %i.w, 32                           ; 2 uses
  %6 = add nsw i64 %.sroa.2.0.copyload.pre, 17
  %i.x = add i64 %6, %5                           ; 3 uses
  %7 = icmp uge i64 %i.x, %5
  call void @llvm.assume(i1 %7)
  %8 = icmp ult i64 %i.x, 9223372036854775793
  call void @llvm.assume(i1 %8)
  %i.y = sub nuw nsw i64 -32, %i.w
  %i.z = getelementptr inbounds i8, ptr %.sroa.084.0.copyload.pre, i64 %i.y
  br label %._crit_edge.thread

bb.b:                                             ; preds = %.lr.ph, %bb.ai
  %.sroa.015.0123 = phi i64 [ %2, %.lr.ph ], [ %i.aa, %bb.ai ] ; 4 uses
  %i.aa = add i64 %.sroa.015.0123, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.015.0123, %umax
  br i1 %exitcond.not, label %bb.c, label %bb.z

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax, i64 noundef %.val23, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @834) #54
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  unreachable

.loopexit104:                                     ; preds = %bb.ad
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr436drop_in_place$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..filter_map..FilterMap$LT$std..collections..hash..map..IntoIter$LT$$RF$str$C$core..option..Option$LT$usize$GT$$GT$$C$similar..algorithms..utils..unique$LT$similar..text..inline..MultiLookup$LT$str$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$similar..algorithms..utils..unique$LT$similar..text..inline..MultiLookup$LT$str$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h4d6cd7ba81740dc2E.exit.i.i"

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr436drop_in_place$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..filter_map..FilterMap$LT$std..collections..hash..map..IntoIter$LT$$RF$str$C$core..option..Option$LT$usize$GT$$GT$$C$similar..algorithms..utils..unique$LT$similar..text..inline..MultiLookup$LT$str$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$similar..algorithms..utils..unique$LT$similar..text..inline..MultiLookup$LT$str$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h4d6cd7ba81740dc2E.exit.i.i"

._crit_edge.thread:                               ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i, %._crit_edge
  %i.ab = phi i1 [ false, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ true, %._crit_edge ], [ true, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit" ] ; 4 uses
  %.val13.i.i.i165 = phi <16 x i8> [ %.val13.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ %.val13.i.i.i, %._crit_edge ], [ splat (i8 -1), %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit" ]
  %.sroa.084.0.copyload164 = phi ptr [ %.sroa.084.0.copyload.pre, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ %.sroa.084.0.copyload.pre, %._crit_edge ], [ @52, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit" ] ; 2 uses
  %.sroa.385.0.copyload163 = phi i64 [ %.sroa.385.0.copyload.pre, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ %.sroa.385.0.copyload.pre, %._crit_edge ], [ 0, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit" ] ; 2 uses
  %.sroa.5.sroa.0.0.i.i.i.i = phi i64 [ %i.x, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %._crit_edge ], [ undef, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit" ] ; 8 uses
  %.sroa.5.sroa.4.0.i.i.i.i = phi ptr [ %i.z, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %._crit_edge ], [ undef, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit" ] ; 8 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ 0, %._crit_edge ], [ 0, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit" ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22576
  %i.ac = icmp eq i64 %.sroa.385.0.copyload163, 0
  br i1 %i.ac, label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf4d9ca489849fcb2E.exit.i.i.i.i.i.i.i.i._crit_edge", label %.lr.ph195

.lr.ph195:                                        ; preds = %._crit_edge.thread
  %i.ad = icmp sgt <16 x i8> %.val13.i.i.i165, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.084.0.copyload164, i64 16
  br label %bb.e

bb.d:                                             ; preds = %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf4d9ca489849fcb2E.exit.i.i.i.i.i.i.i.i"
  %i.ag = icmp eq i64 %i.au, 0
  br i1 %i.ag, label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf4d9ca489849fcb2E.exit.i.i.i.i.i.i.i.i._crit_edge", label %bb.e

bb.e:                                             ; preds = %.lr.ph195, %bb.d
  %i.ah = phi i64 [ %.sroa.385.0.copyload163, %.lr.ph195 ], [ %i.au, %bb.d ]
  %i.ai = phi i16 [ %i.ae, %.lr.ph195 ], [ %i.ar, %bb.d ] ; 2 uses
  %.lcssa1620.i.i.i.i.i.i.i.i194 = phi ptr [ %.sroa.084.0.copyload164, %.lr.ph195 ], [ %.sroa.9.0.copyload.i.i.i.i, %bb.d ] ; 2 uses
  %.lcssa23.i.i.i.i.i.i.i.i193 = phi ptr [ %i.af, %.lr.ph195 ], [ %.sroa.11.0.copyload.i.i.i.i, %bb.d ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf4d9ca489849fcb2E.exit.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.aj = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa23.i.i.i.i.i.i.i.i193, %bb.e ] ; 2 uses
  %i.ak = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1620.i.i.i.i.i.i.i.i194, %bb.e ]
  %.val911.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.aj, align 16, !noalias !22577
  %i.al = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -512 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.al to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf4d9ca489849fcb2E.exit.i.i.i.i.i.i.i.i"

"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf4d9ca489849fcb2E.exit.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.e
  %.sroa.11.0.copyload.i.i.i.i = phi ptr [ %.lcssa23.i.i.i.i.i.i.i.i193, %bb.e ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.9.0.copyload.i.i.i.i = phi ptr [ %.lcssa1620.i.i.i.i.i.i.i.i194, %bb.e ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ai, %bb.e ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ao = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ap = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = and i16 %i.ao, %.lcssa.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.as = sub nsw i64 0, %i.aq
  %i.at = getelementptr inbounds [32 x i8], ptr %.sroa.9.0.copyload.i.i.i.i, i64 %i.as ; 2 uses
  %i.au = add i64 %i.ah, -1                       ; 4 uses
  %.sroa.6.0..sroa_idx6.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.at, i64 -16
  %.sroa.6.0.copyload7.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx6.i.i.i.i.i.i.i.i, align 8, !noalias !22578
  switch i64 %.sroa.6.0.copyload7.i.i.i.i.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i" [
    i64 2, label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf4d9ca489849fcb2E.exit.i.i.i.i.i.i.i.i._crit_edge"
    i64 0, label %bb.d
  ]

"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf4d9ca489849fcb2E.exit.i.i.i.i.i.i.i.i._crit_edge": ; preds = %bb.d, %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf4d9ca489849fcb2E.exit.i.i.i.i.i.i.i.i", %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22576
  %i.av = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond.i.i = or i1 %i.ab, %i.av
  br i1 %or.cond.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17ha95345892a2325ebE.exit.thread, label %bb.f

bb.f:                                             ; preds = %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf4d9ca489849fcb2E.exit.i.i.i.i.i.i.i.i._crit_edge"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #51, !noalias !22579
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17ha95345892a2325ebE.exit.thread

bb.g:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond6.i.i = or i1 %i.ab, %i.ax
  br i1 %or.cond6.i.i, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #51, !noalias !22580
  br label %.thread

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i": ; preds = %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf4d9ca489849fcb2E.exit.i.i.i.i.i.i.i.i"
  %.sroa.8.0..sroa_idx8.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.at, i64 -8
  %.sroa.8.0.copyload9.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx8.i.i.i.i.i.i.i.i, align 8, !noalias !22578
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !22581
  %i.ay = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, 17) 8) #51, !noalias !22581 ; 5 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 64, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #54
          to label %.noexc.i.i.i.i unwind label %bb.g, !noalias !22576

.noexc.i.i.i.i:                                   ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"
  store ptr %1, ptr %i.ay, align 8, !noalias !22576
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %.sroa.8.0.copyload9.i.i.i.i.i.i.i.i, ptr %i.ba, align 8, !noalias !22576
  store i64 4, ptr %i.c, align 8, !noalias !22576
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr %i.ay, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !22576
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !noalias !22576
  call void @llvm.experimental.noalias.scope.decl(metadata !22582)
  call void @llvm.experimental.noalias.scope.decl(metadata !22583)
  %i.bb = icmp eq i64 %i.au, 0
  br i1 %i.bb, label %._crit_edge203, label %.lr.ph202

.lr.ph202:                                        ; preds = %bb.j, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h534149ed42a0fd1eE.exit.i.i.i.i.i.i"
  %i.bc = phi i64 [ %i.bt, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h534149ed42a0fd1eE.exit.i.i.i.i.i.i" ], [ %i.au, %bb.j ]
  %i.bd = phi i16 [ %i.bq, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h534149ed42a0fd1eE.exit.i.i.i.i.i.i" ], [ %i.ar, %bb.j ]
  %.lcssa410.i.i.i.i.i.i209 = phi ptr [ %.lcssa48.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h534149ed42a0fd1eE.exit.i.i.i.i.i.i" ], [ %.sroa.9.0.copyload.i.i.i.i, %bb.j ] ; 2 uses
  %.lcssa14.i.i.i.i.i.i208 = phi ptr [ %.lcssa12.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h534149ed42a0fd1eE.exit.i.i.i.i.i.i" ], [ %.sroa.11.0.copyload.i.i.i.i, %bb.j ] ; 2 uses
  %.sroa.9.0.copyload47207 = phi i64 [ %i.cb, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h534149ed42a0fd1eE.exit.i.i.i.i.i.i" ], [ 1, %bb.j ] ; 7 uses
  %i.be = phi ptr [ %i.by, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h534149ed42a0fd1eE.exit.i.i.i.i.i.i" ], [ %i.ay, %bb.j ]
  br label %bb.l

bb.k:                                             ; preds = %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf4d9ca489849fcb2E.exit.i.i.i.i.i.i.i.i.i.i"
  %i.bf = icmp eq i64 %i.bt, 0
  br i1 %i.bf, label %._crit_edge203, label %bb.l

bb.l:                                             ; preds = %.lr.ph202, %bb.k
  %i.bg = phi i64 [ %i.bc, %.lr.ph202 ], [ %i.bt, %bb.k ]
  %i.bh = phi i16 [ %i.bd, %.lr.ph202 ], [ %i.bq, %bb.k ] ; 2 uses
  %.lcssa1620.i.i.i.i.i.i.i.i.i.i200 = phi ptr [ %.lcssa410.i.i.i.i.i.i209, %.lr.ph202 ], [ %.lcssa1619.i.i.i.i.i.i.i.i.i.i, %bb.k ] ; 2 uses
  %.lcssa23.i.i.i.i.i.i.i.i.i.i199 = phi ptr [ %.lcssa14.i.i.i.i.i.i208, %.lr.ph202 ], [ %.lcssa22.i.i.i.i.i.i.i.i.i.i, %bb.k ] ; 2 uses
  %.lcssa49.i.i.i.i.i.i198 = phi ptr [ %.lcssa410.i.i.i.i.i.i209, %.lr.ph202 ], [ %.lcssa48.i.i.i.i.i.i, %bb.k ]
  %.lcssa13.i.i.i.i.i.i197 = phi ptr [ %.lcssa14.i.i.i.i.i.i208, %.lr.ph202 ], [ %.lcssa12.i.i.i.i.i.i, %bb.k ]
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.bh, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf4d9ca489849fcb2E.exit.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.l, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bi = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa23.i.i.i.i.i.i.i.i.i.i199, %bb.l ] ; 2 uses
  %i.bj = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1620.i.i.i.i.i.i.i.i.i.i200, %bb.l ]
  %.val911.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bi, align 16, !noalias !22584
  %i.bk = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 -512 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.bk to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf4d9ca489849fcb2E.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf4d9ca489849fcb2E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.l
  %.lcssa12.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i197, %bb.l ], [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa48.i.i.i.i.i.i = phi ptr [ %.lcssa49.i.i.i.i.i.i198, %bb.l ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa22.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa23.i.i.i.i.i.i.i.i.i.i199, %bb.l ], [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa1619.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa1620.i.i.i.i.i.i.i.i.i.i200, %bb.l ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.bh, %bb.l ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bn = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bo = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bp = zext nneg i16 %i.bo to i64
  %i.bq = and i16 %i.bn, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.br = sub nsw i64 0, %i.bp
  %i.bs = getelementptr inbounds [32 x i8], ptr %.lcssa1619.i.i.i.i.i.i.i.i.i.i, i64 %i.br ; 2 uses
  %i.bt = add i64 %i.bg, -1                       ; 4 uses
  %.sroa.6.0..sroa_idx6.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bs, i64 -16
  %.sroa.6.0.copyload7.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx6.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !22585
  switch i64 %.sroa.6.0.copyload7.i.i.i.i.i.i.i.i.i.i, label %bb.m [
    i64 2, label %._crit_edge203
    i64 0, label %bb.k
  ]

bb.m:                                             ; preds = %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf4d9ca489849fcb2E.exit.i.i.i.i.i.i.i.i.i.i"
  %.sroa.8.0..sroa_idx8.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bs, i64 -8
  %.sroa.8.0.copyload9.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx8.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !22585
  %i.bu = icmp samesign ult i64 %.sroa.9.0.copyload47207, 576460752303423488
  call void @llvm.assume(i1 %i.bu)
  %i.bv = load i64, ptr %i.c, align 8, !range !20, !alias.scope !22586, !noalias !22587, !noundef !17
  %i.bw = icmp eq i64 %.sroa.9.0.copyload47207, %i.bv
  br i1 %i.bw, label %bb.q, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h534149ed42a0fd1eE.exit.i.i.i.i.i.i"
end_hunk_9
begin_hunk_10_@_ZN7similar10algorithms5utils6unique17hbe882b8d0b20c119E:bb.a
  %i.du = and i16 %i.dt, %.sroa.06.0.i34.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.du, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.ab:                                            ; preds = %._crit_edge.i.i
  %i.dv = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.dw = add i64 %.sroa.01.0.i.i.i, %i.dv
  br label %bb.aa

bb.ac:                                            ; preds = %._crit_edge.i.i
  %i.dx = load i64, ptr %i.t, align 8, !alias.scope !22609, !noalias !22610, !noundef !17
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %bb.ad, label %bb.ae, !prof !22

bb.ad:                                            ; preds = %bb.ac
  %i.dz = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hda3beba5c272f27bE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.46.0..sroa_idx, i1 noundef zeroext true)
          to label %.noexc36 unwind label %.loopexit104 ; 0 uses

.noexc36:                                         ; preds = %bb.ad
  %.val.i37.pre = load ptr, ptr %i.d, align 8, !alias.scope !22611, !noalias !22612
  %.val4.i.pre = load i64, ptr %i.s, align 8, !alias.scope !22611, !noalias !22612
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc36, %bb.ac
  %.val4.i = phi i64 [ %.val4.i.pre, %.noexc36 ], [ %i.dc, %bb.ac ] ; 4 uses
  %.val.i37 = phi ptr [ %.val.i37.pre, %.noexc36 ], [ %i.dd, %bb.ac ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !22611)
  %.sroa.0.04.i.i.i38 = and i64 %.val4.i, %i.cz   ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.val.i37, i64 %.sroa.0.04.i.i.i38
  %.sroa.0.0.copyload.i35.i.i.i = load <16 x i8>, ptr %i.ea, align 1, !noalias !22613
  %i.eb = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i.i, zeroinitializer
  %i.ec = bitcast <16 x i1> %i.eb to i16          ; 2 uses
  %.not.not.i.not6.i.i.i = icmp eq i16 %i.ec, 0
  br i1 %.not.not.i.not6.i.i.i, label %.lr.ph.i.i.i41, label %._crit_edge.i.i.i, !prof !68

.lr.ph.i.i.i41:                                   ; preds = %bb.ae, %.lr.ph.i.i.i41
  %.sroa.0.07.i.i.i = phi i64 [ %.sroa.0.0.i.i.i42, %.lr.ph.i.i.i41 ], [ %.sroa.0.04.i.i.i38, %bb.ae ]
  %i.ed = phi i64 [ %i.ee, %.lr.ph.i.i.i41 ], [ 0, %bb.ae ]
  %i.ee = add i64 %i.ed, 16                       ; 2 uses
  %i.ef = add i64 %i.ee, %.sroa.0.07.i.i.i
  %.sroa.0.0.i.i.i42 = and i64 %i.ef, %.val4.i    ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.val.i37, i64 %.sroa.0.0.i.i.i42
  %.sroa.0.0.copyload.i3.i.i.i = load <16 x i8>, ptr %i.eg, align 1, !noalias !22613
  %i.eh = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i.i, zeroinitializer
  %i.ei = bitcast <16 x i1> %i.eh to i16          ; 2 uses
  %.not.not.i.not.i.i.i = icmp eq i16 %i.ei, 0
  br i1 %.not.not.i.not.i.i.i, label %.lr.ph.i.i.i41, label %._crit_edge.i.i.i, !prof !69

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i41, %bb.ae
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.0.04.i.i.i38, %bb.ae ], [ %.sroa.0.0.i.i.i42, %.lr.ph.i.i.i41 ]
  %.lcssa.i.i.i = phi i16 [ %i.ec, %bb.ae ], [ %i.ei, %.lr.ph.i.i.i41 ]
  %i.ej = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ek = zext nneg i16 %i.ej to i64
  %i.el = add i64 %.sroa.0.0.lcssa.i.i.i, %i.ek
  %i.em = and i64 %i.el, %.val4.i                 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.val.i37, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !noalias !22614, !noundef !17 ; 2 uses
  %i.ep = icmp sgt i8 %i.eo, -1
  br i1 %i.ep, label %bb.af, label %bb.aj, !prof !22

bb.af:                                            ; preds = %._crit_edge.i.i.i
  %.val62.i.i.i.i = load <16 x i8>, ptr %.val.i37, align 16, !noalias !22614
  %i.eq = icmp slt <16 x i8> %.val62.i.i.i.i, zeroinitializer
  %i.er = bitcast <16 x i1> %i.eq to i16          ; 2 uses
  %i.es = icmp ne i16 %i.er, 0
  call void @llvm.assume(i1 %i.es)
  %i.et = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.er, i1 true)
  %i.eu = zext nneg i16 %i.et to i64              ; 2 uses
  %.phi.trans.insert.i.i39 = getelementptr inbounds nuw i8, ptr %.val.i37, i64 %i.eu
  %.pre.i.i40 = load i8, ptr %.phi.trans.insert.i.i39, align 1, !noalias !22614
  br label %bb.aj

bb.ag:                                            ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8cdc6fcff493a87fE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ev = getelementptr inbounds i8, ptr %i.dm, i64 -16 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !range !44, !noundef !17
  %.not19 = icmp eq i64 %i.ew, 0
  br i1 %.not19, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i64 0, ptr %i.ev, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.aj
  %exitcond138.not = icmp eq i64 %i.aa, %3
  br i1 %exitcond138.not, label %._crit_edge, label %bb.b

bb.aj:                                            ; preds = %bb.af, %._crit_edge.i.i.i
  %i.ex = phi i8 [ %.pre.i.i40, %bb.af ], [ %i.eo, %._crit_edge.i.i.i ]
  %.sroa.0.0.i5.i.i.i = phi i64 [ %i.eu, %bb.af ], [ %i.em, %._crit_edge.i.i.i ] ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.val.i37, i64 %.sroa.0.0.i5.i.i.i
  %i.ez = add i64 %.sroa.0.0.i5.i.i.i, -16
  %i.fa = and i64 %i.ez, %.val4.i
  store i8 %i.db, ptr %i.ey, align 1, !noalias !22614
  %i.fb = getelementptr i8, ptr %.val.i37, i64 %i.fa
  %i.fc = getelementptr i8, ptr %i.fb, i64 16
  store i8 %i.db, ptr %i.fc, align 1, !noalias !22614
  %i.fd = sub nsw i64 0, %.sroa.0.0.i5.i.i.i
  %i.fe = getelementptr inbounds [32 x i8], ptr %.val.i37, i64 %i.fd ; 4 uses
  %i.ff = and i8 %i.ex, 1
  %i.fg = zext nneg i8 %i.ff to i64
  %i.fh = getelementptr inbounds i8, ptr %i.fe, i64 -32
  store ptr %i.cw, ptr %i.fh, align 8, !noalias !22611
  %.sroa.481.0..sroa_idx = getelementptr inbounds i8, ptr %i.fe, i64 -24
  store i64 %i.cy, ptr %.sroa.481.0..sroa_idx, align 8, !noalias !22611
  %.sroa.582.0..sroa_idx = getelementptr inbounds i8, ptr %i.fe, i64 -16
  store i64 1, ptr %.sroa.582.0..sroa_idx, align 8, !noalias !22611
  %.sroa.683.0..sroa_idx = getelementptr inbounds i8, ptr %i.fe, i64 -8
  store i64 %.sroa.015.0123, ptr %.sroa.683.0..sroa_idx, align 8, !noalias !22611
  %i.fi = load <2 x i64>, ptr %i.t, align 8, !alias.scope !22611, !noalias !22612
  %i.fj = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.fg, i64 0
  %i.fk = sub <2 x i64> %i.fi, %i.fj
  store <2 x i64> %i.fk, ptr %i.t, align 8, !alias.scope !22611, !noalias !22612
  br label %bb.ai

.thread:                                          ; preds = %bb.g, %bb.r, %.body.i.i.i.i, %bb.h, %"_ZN4core3ptr436drop_in_place$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..filter_map..FilterMap$LT$std..collections..hash..map..IntoIter$LT$$RF$str$C$core..option..Option$LT$usize$GT$$GT$$C$similar..algorithms..utils..unique$LT$similar..text..inline..MultiLookup$LT$str$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$similar..algorithms..utils..unique$LT$similar..text..inline..MultiLookup$LT$str$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h4d6cd7ba81740dc2E.exit.i.i", %bb.x, %bb.y
  %.pn91 = phi { ptr, i32 } [ %i.cs, %bb.x ], [ %eh.lpad-body, %"_ZN4core3ptr436drop_in_place$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..filter_map..FilterMap$LT$std..collections..hash..map..IntoIter$LT$$RF$str$C$core..option..Option$LT$usize$GT$$GT$$C$similar..algorithms..utils..unique$LT$similar..text..inline..MultiLookup$LT$str$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$similar..algorithms..utils..unique$LT$similar..text..inline..MultiLookup$LT$str$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h4d6cd7ba81740dc2E.exit.i.i" ], [ %i.cs, %bb.y ], [ %i.aw, %bb.g ], [ %i.cd, %bb.r ], [ %i.cd, %.body.i.i.i.i ], [ %i.aw, %bb.h ]
  resume { ptr, i32 } %.pn91

"_ZN4core3ptr436drop_in_place$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..filter_map..FilterMap$LT$std..collections..hash..map..IntoIter$LT$$RF$str$C$core..option..Option$LT$usize$GT$$GT$$C$similar..algorithms..utils..unique$LT$similar..text..inline..MultiLookup$LT$str$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$similar..algorithms..utils..unique$LT$similar..text..inline..MultiLookup$LT$str$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h4d6cd7ba81740dc2E.exit.i.i": ; preds = %.loopexit.split-lp, %.loopexit104
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit104 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val24 = load ptr, ptr %i.d, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val25 = load i64, ptr %i.fl, align 8, !noundef !17
  call fastcc void @"_ZN4core3ptr108drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$core..option..Option$LT$usize$GT$$GT$$GT$17hcca7ad10a00a466dE"(ptr %.val24, i64 %.val25) #55
  br label %.thread
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5utils6unique17hc5a3b3ede7d3e1afE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [72 x i8], align 16               ; 11 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [48 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !range !21, !noalias !22788, !noundef !17
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %._ZN4core3ops8function6FnOnce9call_once17hb01039b87ec469cfE.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8b65765c51b6825bE.exit.i.i", !prof !23

._ZN4core3ops8function6FnOnce9call_once17hb01039b87ec469cfE.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.g, align 8, !noalias !22789
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !22789
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8b65765c51b6825bE.exit.i.i": ; preds = %bb.a
  %i.k = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE(), !noalias !22790 ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1        ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.m, ptr %i.n, align 8, !noalias !22790
  store i8 1, ptr %i.h, align 8, !noalias !22790
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit"

"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit": ; preds = %._ZN4core3ops8function6FnOnce9call_once17hb01039b87ec469cfE.exit_crit_edge.i.i, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8b65765c51b6825bE.exit.i.i"
  %.pre-phi143 = phi i64 [ %.pre1.i.i, %._ZN4core3ops8function6FnOnce9call_once17hb01039b87ec469cfE.exit_crit_edge.i.i ], [ %i.m, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8b65765c51b6825bE.exit.i.i" ]
  %i.o = phi i64 [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17hb01039b87ec469cfE.exit_crit_edge.i.i ], [ %i.l, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8b65765c51b6825bE.exit.i.i" ] ; 2 uses
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.g, align 8, !noalias !22789
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) @53, i64 32, i1 false)
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  store i64 %i.o, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 %.pre-phi143, ptr %.sroa.56.0..sroa_idx, align 8
  %i.q = icmp ult i64 %2, %3
  br i1 %i.q, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit"
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !22791, !noalias !22792, !noundef !17
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val19 = load i64, ptr %i.t, align 8, !noundef !17 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.u, align 8, !nonnull !17
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.59.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.711.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.913.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.aj
  %.sroa.081.0.copyload.pre = load ptr, ptr %i.f, align 8 ; 4 uses
  %.sroa.2.0.copyload.pre = load i64, ptr %i.w, align 8 ; 3 uses
  %.sroa.382.0.copyload.pre = load i64, ptr %i.y, align 8 ; 2 uses
  %.val13.i.i.i = load <16 x i8>, ptr %.sroa.081.0.copyload.pre, align 16, !noalias !22793 ; 2 uses
  %i.z = icmp eq i64 %.sroa.2.0.copyload.pre, 0
  br i1 %i.z, label %._crit_edge.thread, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i: ; preds = %._crit_edge
  %i.aa = mul i64 %.sroa.2.0.copyload.pre, 24     ; 2 uses
  %4 = add i64 %i.aa, 24
  %5 = icmp ult i64 %4, -15
  call void @llvm.assume(i1 %5)
  %i.ab = and i64 %i.aa, -16                      ; 2 uses
  %6 = add i64 %i.ab, 32                          ; 2 uses
  %i.ac = add i64 %.sroa.2.0.copyload.pre, 17
  %i.ad = add i64 %i.ac, %6                       ; 3 uses
  %7 = icmp uge i64 %i.ad, %6
  call void @llvm.assume(i1 %7)
  %8 = icmp ult i64 %i.ad, 9223372036854775793
  call void @llvm.assume(i1 %8)
  %i.ae = sub i64 -32, %i.ab
  %i.af = getelementptr inbounds i8, ptr %.sroa.081.0.copyload.pre, i64 %i.ae
  br label %._crit_edge.thread

bb.b:                                             ; preds = %.lr.ph, %bb.aj
  %.sroa.013.0121 = phi i64 [ %2, %.lr.ph ], [ %i.ag, %bb.aj ] ; 3 uses
  %i.ag = add i64 %.sroa.013.0121, 1              ; 2 uses
  %i.ah = sub i64 %.sroa.013.0121, %i.s           ; 3 uses
  %i.ai = icmp ult i64 %i.ah, %.val19
  br i1 %i.ai, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ah, i64 noundef %.val19, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @834) #54
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  unreachable

.loopexit102:                                     ; preds = %bb.ae
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr448drop_in_place$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..filter_map..FilterMap$LT$std..collections..hash..map..IntoIter$LT$$RF$u32$C$core..option..Option$LT$usize$GT$$GT$$C$similar..algorithms..utils..unique$LT$similar..algorithms..utils..OffsetLookup$LT$u32$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$similar..algorithms..utils..unique$LT$similar..algorithms..utils..OffsetLookup$LT$u32$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h2a224bfc4a311c4fE.exit.i.i"

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr448drop_in_place$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..filter_map..FilterMap$LT$std..collections..hash..map..IntoIter$LT$$RF$u32$C$core..option..Option$LT$usize$GT$$GT$$C$similar..algorithms..utils..unique$LT$similar..algorithms..utils..OffsetLookup$LT$u32$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$similar..algorithms..utils..unique$LT$similar..algorithms..utils..OffsetLookup$LT$u32$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h2a224bfc4a311c4fE.exit.i.i"

._crit_edge.thread:                               ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i, %._crit_edge
  %i.aj = phi i1 [ false, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ true, %._crit_edge ], [ true, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit" ] ; 4 uses
  %.val13.i.i.i163 = phi <16 x i8> [ %.val13.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ %.val13.i.i.i, %._crit_edge ], [ splat (i8 -1), %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit" ]
  %.sroa.081.0.copyload162 = phi ptr [ %.sroa.081.0.copyload.pre, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ %.sroa.081.0.copyload.pre, %._crit_edge ], [ @52, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit" ] ; 2 uses
  %.sroa.382.0.copyload161 = phi i64 [ %.sroa.382.0.copyload.pre, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ %.sroa.382.0.copyload.pre, %._crit_edge ], [ 0, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit" ] ; 2 uses
  %.sroa.5.sroa.0.0.i.i.i.i = phi i64 [ %i.ad, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %._crit_edge ], [ undef, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit" ] ; 8 uses
  %.sroa.5.sroa.4.0.i.i.i.i = phi ptr [ %i.af, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %._crit_edge ], [ undef, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit" ] ; 8 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ 0, %._crit_edge ], [ 0, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h70da1b7d6226cde3E.exit" ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !22794
  %i.ak = icmp eq i64 %.sroa.382.0.copyload161, 0
  br i1 %i.ak, label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56cc566a02fb20beE.exit.i.i.i.i.i.i.i.i._crit_edge", label %.lr.ph199

.lr.ph199:                                        ; preds = %._crit_edge.thread
  %i.al = icmp sgt <16 x i8> %.val13.i.i.i163, splat (i8 -1)
  %i.am = bitcast <16 x i1> %i.al to i16
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.081.0.copyload162, i64 16
  br label %bb.e

bb.d:                                             ; preds = %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56cc566a02fb20beE.exit.i.i.i.i.i.i.i.i"
  %i.ao = icmp eq i64 %i.bc, 0
  br i1 %i.ao, label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56cc566a02fb20beE.exit.i.i.i.i.i.i.i.i._crit_edge", label %bb.e

bb.e:                                             ; preds = %.lr.ph199, %bb.d
  %i.ap = phi i64 [ %.sroa.382.0.copyload161, %.lr.ph199 ], [ %i.bc, %bb.d ]
  %i.aq = phi i16 [ %i.am, %.lr.ph199 ], [ %i.az, %bb.d ] ; 2 uses
  %.lcssa1721.i.i.i.i.i.i.i.i198 = phi ptr [ %.sroa.081.0.copyload162, %.lr.ph199 ], [ %.sroa.9.0.copyload.i.i.i.i, %bb.d ] ; 2 uses
  %.lcssa24.i.i.i.i.i.i.i.i197 = phi ptr [ %i.an, %.lr.ph199 ], [ %.sroa.11.0.copyload.i.i.i.i, %bb.d ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56cc566a02fb20beE.exit.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ar = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa24.i.i.i.i.i.i.i.i197, %bb.e ] ; 2 uses
  %i.as = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1721.i.i.i.i.i.i.i.i198, %bb.e ]
  %.val911.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ar, align 16, !noalias !22795
  %i.at = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 -384 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.at to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56cc566a02fb20beE.exit.i.i.i.i.i.i.i.i"

"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56cc566a02fb20beE.exit.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.e
  %.sroa.11.0.copyload.i.i.i.i = phi ptr [ %.lcssa24.i.i.i.i.i.i.i.i197, %bb.e ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.9.0.copyload.i.i.i.i = phi ptr [ %.lcssa1721.i.i.i.i.i.i.i.i198, %bb.e ], [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.aq, %bb.e ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aw = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ax = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  %i.az = and i16 %i.aw, %.lcssa.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ba = sub nsw i64 0, %i.ay
  %i.bb = getelementptr inbounds [24 x i8], ptr %.sroa.9.0.copyload.i.i.i.i, i64 %i.ba ; 2 uses
  %i.bc = add i64 %i.ap, -1                       ; 4 uses
  %.sroa.6.0..sroa_idx7.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bb, i64 -16
  %.sroa.6.0.copyload8.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx7.i.i.i.i.i.i.i.i, align 8, !noalias !22796
  switch i64 %.sroa.6.0.copyload8.i.i.i.i.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i" [
    i64 2, label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56cc566a02fb20beE.exit.i.i.i.i.i.i.i.i._crit_edge"
    i64 0, label %bb.d
  ]

"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56cc566a02fb20beE.exit.i.i.i.i.i.i.i.i._crit_edge": ; preds = %bb.d, %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56cc566a02fb20beE.exit.i.i.i.i.i.i.i.i", %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !22794
  %i.bd = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond.i.i = or i1 %i.aj, %i.bd
  br i1 %or.cond.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h1cfd4c70d641e887E.exit.thread, label %bb.f

bb.f:                                             ; preds = %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56cc566a02fb20beE.exit.i.i.i.i.i.i.i.i._crit_edge"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #51, !noalias !22797
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h1cfd4c70d641e887E.exit.thread

bb.g:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond6.i.i = or i1 %i.aj, %i.bf
  br i1 %or.cond6.i.i, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #51, !noalias !22798
  br label %.thread

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i": ; preds = %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56cc566a02fb20beE.exit.i.i.i.i.i.i.i.i"
  %.sroa.8.0..sroa_idx9.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bb, i64 -8
  %.sroa.8.0.copyload10.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx9.i.i.i.i.i.i.i.i, align 8, !noalias !22796
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !22799
  %i.bg = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, 17) 8) #51, !noalias !22799 ; 5 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 64, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #54
          to label %.noexc.i.i.i.i unwind label %bb.g, !noalias !22794

.noexc.i.i.i.i:                                   ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"
  store ptr %1, ptr %i.bg, align 8, !noalias !22794
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %.sroa.8.0.copyload10.i.i.i.i.i.i.i.i, ptr %i.bi, align 8, !noalias !22794
  store i64 4, ptr %i.e, align 8, !noalias !22794
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  store ptr %i.bg, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !22794
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !noalias !22794
  call void @llvm.experimental.noalias.scope.decl(metadata !22800)
  call void @llvm.experimental.noalias.scope.decl(metadata !22801)
  %i.bj = icmp eq i64 %i.bc, 0
  br i1 %i.bj, label %._crit_edge207, label %.lr.ph206

.lr.ph206:                                        ; preds = %bb.j, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heb2b2ab26ddc1d9eE.exit.i.i.i.i.i.i"
  %i.bk = phi i64 [ %i.cb, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heb2b2ab26ddc1d9eE.exit.i.i.i.i.i.i" ], [ %i.bc, %bb.j ]
  %i.bl = phi i16 [ %i.by, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heb2b2ab26ddc1d9eE.exit.i.i.i.i.i.i" ], [ %i.az, %bb.j ]
  %.lcssa410.i.i.i.i.i.i213 = phi ptr [ %.lcssa48.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heb2b2ab26ddc1d9eE.exit.i.i.i.i.i.i" ], [ %.sroa.9.0.copyload.i.i.i.i, %bb.j ] ; 2 uses
  %.lcssa14.i.i.i.i.i.i212 = phi ptr [ %.lcssa12.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heb2b2ab26ddc1d9eE.exit.i.i.i.i.i.i" ], [ %.sroa.11.0.copyload.i.i.i.i, %bb.j ] ; 2 uses
  %.sroa.9.0.copyload47211 = phi i64 [ %i.cj, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heb2b2ab26ddc1d9eE.exit.i.i.i.i.i.i" ], [ 1, %bb.j ] ; 7 uses
  %i.bm = phi ptr [ %i.cg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heb2b2ab26ddc1d9eE.exit.i.i.i.i.i.i" ], [ %i.bg, %bb.j ]
  br label %bb.l

bb.k:                                             ; preds = %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56cc566a02fb20beE.exit.i.i.i.i.i.i.i.i.i.i"
  %i.bn = icmp eq i64 %i.cb, 0
  br i1 %i.bn, label %._crit_edge207, label %bb.l

bb.l:                                             ; preds = %.lr.ph206, %bb.k
  %i.bo = phi i64 [ %i.bk, %.lr.ph206 ], [ %i.cb, %bb.k ]
  %i.bp = phi i16 [ %i.bl, %.lr.ph206 ], [ %i.by, %bb.k ] ; 2 uses
  %.lcssa1721.i.i.i.i.i.i.i.i.i.i204 = phi ptr [ %.lcssa410.i.i.i.i.i.i213, %.lr.ph206 ], [ %.lcssa1720.i.i.i.i.i.i.i.i.i.i, %bb.k ] ; 2 uses
  %.lcssa24.i.i.i.i.i.i.i.i.i.i203 = phi ptr [ %.lcssa14.i.i.i.i.i.i212, %.lr.ph206 ], [ %.lcssa23.i.i.i.i.i.i.i.i.i.i, %bb.k ] ; 2 uses
  %.lcssa49.i.i.i.i.i.i202 = phi ptr [ %.lcssa410.i.i.i.i.i.i213, %.lr.ph206 ], [ %.lcssa48.i.i.i.i.i.i, %bb.k ]
  %.lcssa13.i.i.i.i.i.i201 = phi ptr [ %.lcssa14.i.i.i.i.i.i212, %.lr.ph206 ], [ %.lcssa12.i.i.i.i.i.i, %bb.k ]
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.bp, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56cc566a02fb20beE.exit.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.l, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bq = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa24.i.i.i.i.i.i.i.i.i.i203, %bb.l ] ; 2 uses
  %i.br = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1721.i.i.i.i.i.i.i.i.i.i204, %bb.l ]
  %.val911.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bq, align 16, !noalias !22802
  %i.bs = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 -384 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.bs to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56cc566a02fb20beE.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56cc566a02fb20beE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.l
  %.lcssa12.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i201, %bb.l ], [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa48.i.i.i.i.i.i = phi ptr [ %.lcssa49.i.i.i.i.i.i202, %bb.l ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa23.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa24.i.i.i.i.i.i.i.i.i.i203, %bb.l ], [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa1720.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa1721.i.i.i.i.i.i.i.i.i.i204, %bb.l ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.bp, %bb.l ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bv = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bx = zext nneg i16 %i.bw to i64
  %i.by = and i16 %i.bv, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bz = sub nsw i64 0, %i.bx
  %i.ca = getelementptr inbounds [24 x i8], ptr %.lcssa1720.i.i.i.i.i.i.i.i.i.i, i64 %i.bz ; 2 uses
  %i.cb = add i64 %i.bo, -1                       ; 4 uses
  %.sroa.6.0..sroa_idx7.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ca, i64 -16
  %.sroa.6.0.copyload8.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx7.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !22803
  switch i64 %.sroa.6.0.copyload8.i.i.i.i.i.i.i.i.i.i, label %bb.m [
    i64 2, label %._crit_edge207
    i64 0, label %bb.k
  ]

bb.m:                                             ; preds = %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56cc566a02fb20beE.exit.i.i.i.i.i.i.i.i.i.i"
  %.sroa.8.0..sroa_idx9.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ca, i64 -8
  %.sroa.8.0.copyload10.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx9.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !22803
  %i.cc = icmp samesign ult i64 %.sroa.9.0.copyload47211, 576460752303423488
  call void @llvm.assume(i1 %i.cc)
  %i.cd = load i64, ptr %i.e, align 8, !range !20, !alias.scope !22804, !noalias !22805, !noundef !17
  %i.ce = icmp eq i64 %.sroa.9.0.copyload47211, %i.cd
end_hunk_10
