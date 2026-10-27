Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/runner-48abcf66c7dc4d26.runner.23a7f17303957c59-cgu.12?download=true
inline.NumInlined: 260
inline.NumDeleted: 154
begin_hunk_0_@"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$16extract_internal17h3fcb0492b33b7401E":bb.a

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h48193bbc1e45c19aE.exit.i277" unwind label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.lt = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %.thread468 unwind label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.lu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22
  unreachable

"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h48193bbc1e45c19aE.exit.i277": ; preds = %bb.ey
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit282" unwind label %.loopexit519

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit282": ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h48193bbc1e45c19aE.exit.i277"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %.backedge

bb.fb:                                            ; preds = %bb.el, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$zip..read..ZipFile$LT$std..fs..File$GT$$GT$17hc28f96a83ffe7363E"(ptr noalias noundef align 8 dereferenceable(240) %i.ae)
          to label %bb.fc unwind label %.loopexit.split-lp530

bb.fc:                                            ; preds = %bb.fb, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.ea

bb.fd:                                            ; preds = %.body265
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE"(ptr noalias noundef align 8 dereferenceable(24) %i.ak) #23
          to label %.thread496 unwind label %bb.ck

bb.fe:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.ea

bb.ff:                                            ; preds = %bb.ea, %bb.cq
  %.sroa.0113.5 = phi i8 [ 1, %bb.cq ], [ %.sroa.0113.4, %bb.ea ] ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h48193bbc1e45c19aE.exit.i284" unwind label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.lv = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %.body260 unwind label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.lw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22
  unreachable

"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h48193bbc1e45c19aE.exit.i284": ; preds = %bb.ff
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit289" unwind label %.loopexit.split-lp520

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit289": ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h48193bbc1e45c19aE.exit.i284"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %i.lx = trunc nuw i8 %.sroa.0113.5 to i1
  br i1 %i.lx, label %bb.fi, label %.thread482

.thread482:                                       ; preds = %bb.cm, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit289", %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6c906c7206c24bbcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %bb.fo unwind label %bb.fn

bb.fi:                                            ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit289"
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$zip..read..ZipFile$LT$std..fs..File$GT$$GT$17hc28f96a83ffe7363E"(ptr noalias noundef align 8 dereferenceable(240) %i.ao)
          to label %.thread482 unwind label %.thread476.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fj:                                            ; preds = %.body260
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$zip..read..ZipFile$LT$std..fs..File$GT$$GT$17hc28f96a83ffe7363E"(ptr noalias noundef align 8 dereferenceable(240) %i.ao) #23
          to label %.thread468 unwind label %bb.ck

"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$$LP$std..path..PathBuf$C$u32$RP$$GT$$GT$17hc70083963376b634E.exit": ; preds = %bb.cj, %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.ly = load i64, ptr %i.aq, align 8, !range !9, !alias.scope !259, !noundef !4
  %i.lz = icmp eq i64 %i.ly, -9223372036854775808
  br i1 %i.lz, label %"_ZN4core3ptr162drop_in_place$LT$core..option..Option$LT$$LP$alloc..vec..Vec$LT$$RF$std..ffi..os_str..OsStr$GT$$C$$RF$fn$LP$$RF$std..path..Path$RP$$u20$.$GT$$u20$bool$RP$$GT$$GT$17he2c6f3b8f715b88aE.exit", label %bb.fk

bb.fk:                                            ; preds = %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$$LP$std..path..PathBuf$C$u32$RP$$GT$$GT$17hc70083963376b634E.exit"
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8ed9f51beb14d873E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aq)
          to label %"_ZN4core3ptr134drop_in_place$LT$$LP$alloc..vec..Vec$LT$$RF$std..ffi..os_str..OsStr$GT$$C$$RF$fn$LP$$RF$std..path..Path$RP$$u20$.$GT$$u20$bool$RP$$GT$17h2cbe3f81bd585efdE.exit.i" unwind label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.ma = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7d74562ce6a4b49E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aq)
          to label %.body290 unwind label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.mb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22
  unreachable

"_ZN4core3ptr134drop_in_place$LT$$LP$alloc..vec..Vec$LT$$RF$std..ffi..os_str..OsStr$GT$$C$$RF$fn$LP$$RF$std..path..Path$RP$$u20$.$GT$$u20$bool$RP$$GT$17h2cbe3f81bd585efdE.exit.i": ; preds = %bb.fk
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7d74562ce6a4b49E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aq)
          to label %"_ZN4core3ptr162drop_in_place$LT$core..option..Option$LT$$LP$alloc..vec..Vec$LT$$RF$std..ffi..os_str..OsStr$GT$$C$$RF$fn$LP$$RF$std..path..Path$RP$$u20$.$GT$$u20$bool$RP$$GT$$GT$17he2c6f3b8f715b88aE.exit" unwind label %bb.bt

bb.fn:                                            ; preds = %.thread482
  %i.mc = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0e93593924e8c98fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %.thread472 unwind label %bb.fp

bb.fo:                                            ; preds = %.thread482
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0e93593924e8c98fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$$LP$std..path..PathBuf$C$u32$RP$$GT$$GT$17hc70083963376b634E.exit" unwind label %bb.fq

bb.fp:                                            ; preds = %bb.fn
  %i.md = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22
  unreachable

.thread472:                                       ; preds = %bb.fq, %bb.fn, %.body250, %.thread468
  %.pn228 = phi { ptr, i32 } [ %.pn, %.body250 ], [ %.pn226471, %.thread468 ], [ %i.mc, %bb.fn ], [ %i.me, %bb.fq ]
  invoke fastcc void @"_ZN4core3ptr162drop_in_place$LT$core..option..Option$LT$$LP$alloc..vec..Vec$LT$$RF$std..ffi..os_str..OsStr$GT$$C$$RF$fn$LP$$RF$std..path..Path$RP$$u20$.$GT$$u20$bool$RP$$GT$$GT$17he2c6f3b8f715b88aE"(ptr noalias noundef align 8 dereferenceable(32) %i.aq) #23
          to label %.body290 unwind label %bb.ck

bb.fq:                                            ; preds = %bb.ci, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdacc56f85841a366E.exit.thread", %bb.fo
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %.thread472

"_ZN4core3ptr162drop_in_place$LT$core..option..Option$LT$$LP$alloc..vec..Vec$LT$$RF$std..ffi..os_str..OsStr$GT$$C$$RF$fn$LP$$RF$std..path..Path$RP$$u20$.$GT$$u20$bool$RP$$GT$$GT$17he2c6f3b8f715b88aE.exit": ; preds = %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$$LP$std..path..PathBuf$C$u32$RP$$GT$$GT$17hc70083963376b634E.exit", %"_ZN4core3ptr134drop_in_place$LT$$LP$alloc..vec..Vec$LT$$RF$std..ffi..os_str..OsStr$GT$$C$$RF$fn$LP$$RF$std..path..Path$RP$$u20$.$GT$$u20$bool$RP$$GT$17h2cbe3f81bd585efdE.exit.i", %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.mf = load i64, ptr %i.ar, align 8, !range !9, !alias.scope !260, !noundef !4
  %i.mg = icmp eq i64 %i.mf, -9223372036854775808
  br i1 %i.mg, label %"_ZN4core3ptr126drop_in_place$LT$core..option..Option$LT$$LP$std..path..PathBuf$C$fn$LP$$RF$std..path..Path$RP$$u20$.$GT$$u20$bool$RP$$GT$$GT$17h2b09fa1b64e6cc5fE.exit", label %bb.fr

bb.fr:                                            ; preds = %"_ZN4core3ptr162drop_in_place$LT$core..option..Option$LT$$LP$alloc..vec..Vec$LT$$RF$std..ffi..os_str..OsStr$GT$$C$$RF$fn$LP$$RF$std..path..Path$RP$$u20$.$GT$$u20$bool$RP$$GT$$GT$17he2c6f3b8f715b88aE.exit"
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %"_ZN4core3ptr98drop_in_place$LT$$LP$std..path..PathBuf$C$fn$LP$$RF$std..path..Path$RP$$u20$.$GT$$u20$bool$RP$$GT$17hef3b87513c63fc25E.exit.i" unwind label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.mh = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %.body unwind label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.mi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22
  unreachable

"_ZN4core3ptr98drop_in_place$LT$$LP$std..path..PathBuf$C$fn$LP$$RF$std..path..Path$RP$$u20$.$GT$$u20$bool$RP$$GT$17hef3b87513c63fc25E.exit.i": ; preds = %bb.fr
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %"_ZN4core3ptr126drop_in_place$LT$core..option..Option$LT$$LP$std..path..PathBuf$C$fn$LP$$RF$std..path..Path$RP$$u20$.$GT$$u20$bool$RP$$GT$$GT$17h2b09fa1b64e6cc5fE.exit" unwind label %bb.bq

.thread468:                                       ; preds = %.thread476.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ez, %.body260, %bb.fj
  %.pn226471 = phi { ptr, i32 } [ %i.lt, %bb.ez ], [ %.pn224, %bb.fj ], [ %.pn224, %.body260 ], [ %lpad.loopexit.split-lp961, %.thread476.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$$LP$std..path..PathBuf$C$u32$RP$$GT$$GT$17hc70083963376b634E"(ptr noalias noundef align 8 dereferenceable(24) %i.ap) #23
          to label %.thread472 unwind label %bb.ck

"_ZN4core3ptr126drop_in_place$LT$core..option..Option$LT$$LP$std..path..PathBuf$C$fn$LP$$RF$std..path..Path$RP$$u20$.$GT$$u20$bool$RP$$GT$$GT$17h2b09fa1b64e6cc5fE.exit": ; preds = %"_ZN4core3ptr162drop_in_place$LT$core..option..Option$LT$$LP$alloc..vec..Vec$LT$$RF$std..ffi..os_str..OsStr$GT$$C$$RF$fn$LP$$RF$std..path..Path$RP$$u20$.$GT$$u20$bool$RP$$GT$$GT$17he2c6f3b8f715b88aE.exit", %"_ZN4core3ptr98drop_in_place$LT$$LP$std..path..PathBuf$C$fn$LP$$RF$std..path..Path$RP$$u20$.$GT$$u20$bool$RP$$GT$17hef3b87513c63fc25E.exit.i", %.thread406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit301" unwind label %bb.fu

bb.fu:                                            ; preds = %"_ZN4core3ptr126drop_in_place$LT$core..option..Option$LT$$LP$std..path..PathBuf$C$fn$LP$$RF$std..path..Path$RP$$u20$.$GT$$u20$bool$RP$$GT$$GT$17h2b09fa1b64e6cc5fE.exit"
  %i.mj = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %common.resume unwind label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.mk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22
  unreachable

common.resume:                                    ; preds = %.body, %bb.fu
  %common.resume.op = phi { ptr, i32 } [ %i.mj, %bb.fu ], [ %.pn232, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit301": ; preds = %"_ZN4core3ptr126drop_in_place$LT$core..option..Option$LT$$LP$std..path..PathBuf$C$fn$LP$$RF$std..path..Path$RP$$u20$.$GT$$u20$bool$RP$$GT$$GT$17h2b09fa1b64e6cc5fE.exit"
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at)
  br label %bb.fw

bb.fw:                                            ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit301", %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.cb
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$31by_index_with_optional_password17h5deef39210dda19bE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(240) initializes((0, 16)) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.630 = alloca [24 x i8], align 8          ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 2 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.525 = alloca [40 x i8], align 8          ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.523 = alloca [24 x i8], align 8          ; 6 uses
  %i.f = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load i64, ptr %i.g, align 8, !noundef !4
  %i.i = icmp ult i64 %2, %i.h
  br i1 %i.i, label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h5568fed9e7206a73E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775804, ptr %i.j, align 8
  store i64 3, ptr %0, align 8
  br label %bb.c

"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h5568fed9e7206a73E.exit": ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw [232 x i8], ptr %i.l, i64 %2 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 202
  %i.o = load i8, ptr %i.n, align 2, !range !16, !noundef !4
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %bb.d

.sink.split:                                      ; preds = %bb.j, %"_ZN4core3ptr70drop_in_place$LT$alloc..borrow..Cow$LT$zip..types..ZipFileData$GT$$GT$17hc88d1db6decab2b7E.exit54"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.630)
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.f, %bb.h, %bb.e, %bb.b
  ret void

bb.d:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h5568fed9e7206a73E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.523)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN3zip4read12find_content17h697008d2b2aded1aE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noundef nonnull align 8 %i.m, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.q)
  %i.r = load i64, ptr %i.e, align 8, !range !8, !noundef !4
  %i.s = trunc nuw i64 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.523, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.s, label %bb.f, label %bb.g

bb.e:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h5568fed9e7206a73E.exit"
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775805, ptr %i.u, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @8, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 33, ptr %.sroa.521.0..sroa_idx, align 8
  store i64 3, ptr %0, align 8
  br label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.523, i64 24, i1 false)
  store i64 3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.523)
  br label %bb.c

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.523, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.523)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.525)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %.sroa.026.0.copyload = load i64, ptr %i.w, align 8
  call void @_ZN3zip4read18make_crypto_reader17h26e914539196162bE(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull align 8 %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef readonly align 1 captures(address, read_provenance) null, i64 undef, i64 %.sroa.026.0.copyload)
  %i.x = load i64, ptr %i.c, align 8, !range !8, !noundef !4
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.525, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.525, i64 24, i1 false)
  store i64 3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.525)
  br label %bb.c

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.525, ptr noundef nonnull align 8 dereferenceable(40) %i.z, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.525, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.525)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.630)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 184
  %i.ac = load i16, ptr %i.ab, align 8, !range !261, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 186
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 188
  %i.ag = load i32, ptr %i.af, align 4, !noundef !4
  call void @_ZN3zip4read11make_reader17h2fb06f7630f68ac7E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, i16 noundef %i.ac, i16 %i.ae, i32 noundef %i.ag, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
  %i.ah = load i64, ptr %i.a, align 8, !range !17, !noundef !4 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.630, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ai, label %"_ZN4core3ptr70drop_in_place$LT$alloc..borrow..Cow$LT$zip..types..ZipFileData$GT$$GT$17hc88d1db6decab2b7E.exit54", label %bb.j

"_ZN4core3ptr70drop_in_place$LT$alloc..borrow..Cow$LT$zip..types..ZipFileData$GT$$GT$17hc88d1db6decab2b7E.exit54": ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.630, i64 24, i1 false)
  store i64 3, ptr %0, align 8
  br label %.sink.split

bb.j:                                             ; preds = %bb.i
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.636.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.630, i64 24, i1 false)
  store i64 2, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 %i.ah, ptr %.sroa.535.0..sroa_idx, align 8
  br label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h733ccae000f67704E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4
  %i.b = tail call noundef zeroext i1 @"_ZN63_$LT$std..ffi..os_str..OsString$u20$as$u20$core..fmt..Debug$GT$3fmt17h1f8d7ac24ad25e91E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr122drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$alloc..boxed..Box$LT$str$GT$$C$zip..types..ZipFileData$GT$$GT$$GT$17h3657b01d64f9f75aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd2c34d7d9a6c3ba8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h37e361a9b9915892E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %"_ZN4core3ptr129drop_in_place$LT$alloc..raw_vec..RawVec$LT$indexmap..Bucket$LT$alloc..boxed..Box$LT$str$GT$$C$zip..types..ZipFileData$GT$$GT$$GT$17hcfe8a3e4940da0d2E.exit" unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h37e361a9b9915892E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22
  unreachable

"_ZN4core3ptr129drop_in_place$LT$alloc..raw_vec..RawVec$LT$indexmap..Bucket$LT$alloc..boxed..Box$LT$str$GT$$C$zip..types..ZipFileData$GT$$GT$$GT$17hcfe8a3e4940da0d2E.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr126drop_in_place$LT$core..option..Option$LT$$LP$std..path..PathBuf$C$fn$LP$$RF$std..path..Path$RP$$u20$.$GT$$u20$bool$RP$$GT$$GT$17h2b09fa1b64e6cc5fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !4
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN4core3ptr98drop_in_place$LT$$LP$std..path..PathBuf$C$fn$LP$$RF$std..path..Path$RP$$u20$.$GT$$u20$bool$RP$$GT$17hef3b87513c63fc25E.exit", %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %"_ZN4core3ptr98drop_in_place$LT$$LP$std..path..PathBuf$C$fn$LP$$RF$std..path..Path$RP$$u20$.$GT$$u20$bool$RP$$GT$17hef3b87513c63fc25E.exit" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h18a66af3b4281cb9E.exit.i.i.i.i.i" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22
  unreachable

"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h18a66af3b4281cb9E.exit.i.i.i.i.i": ; preds = %bb.d
  resume { ptr, i32 } %i.c

"_ZN4core3ptr98drop_in_place$LT$$LP$std..path..PathBuf$C$fn$LP$$RF$std..path..Path$RP$$u20$.$GT$$u20$bool$RP$$GT$17hef3b87513c63fc25E.exit": ; preds = %bb.c
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr162drop_in_place$LT$core..option..Option$LT$$LP$alloc..vec..Vec$LT$$RF$std..ffi..os_str..OsStr$GT$$C$$RF$fn$LP$$RF$std..path..Path$RP$$u20$.$GT$$u20$bool$RP$$GT$$GT$17he2c6f3b8f715b88aE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !4
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN4core3ptr134drop_in_place$LT$$LP$alloc..vec..Vec$LT$$RF$std..ffi..os_str..OsStr$GT$$C$$RF$fn$LP$$RF$std..path..Path$RP$$u20$.$GT$$u20$bool$RP$$GT$17h2cbe3f81bd585efdE.exit", %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8ed9f51beb14d873E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %"_ZN4core3ptr134drop_in_place$LT$$LP$alloc..vec..Vec$LT$$RF$std..ffi..os_str..OsStr$GT$$C$$RF$fn$LP$$RF$std..path..Path$RP$$u20$.$GT$$u20$bool$RP$$GT$17h2cbe3f81bd585efdE.exit" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7d74562ce6a4b49E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %"_ZN4core3ptr78drop_in_place$LT$alloc..raw_vec..RawVec$LT$$RF$std..ffi..os_str..OsStr$GT$$GT$17h58e9e10b284f458bE.exit.i.i" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22
  unreachable

"_ZN4core3ptr78drop_in_place$LT$alloc..raw_vec..RawVec$LT$$RF$std..ffi..os_str..OsStr$GT$$GT$17h58e9e10b284f458bE.exit.i.i": ; preds = %bb.d
  resume { ptr, i32 } %i.c

"_ZN4core3ptr134drop_in_place$LT$$LP$alloc..vec..Vec$LT$$RF$std..ffi..os_str..OsStr$GT$$C$$RF$fn$LP$$RF$std..path..Path$RP$$u20$.$GT$$u20$bool$RP$$GT$17h2cbe3f81bd585efdE.exit": ; preds = %bb.c
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7d74562ce6a4b49E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h48193bbc1e45c19aE.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h18a66af3b4281cb9E.exit.i.i.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22
  unreachable

"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h18a66af3b4281cb9E.exit.i.i.i": ; preds = %bb.b
  resume { ptr, i32 } %i.a

"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h48193bbc1e45c19aE.exit": ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h18a66af3b4281cb9E.exit.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22
  unreachable

"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h18a66af3b4281cb9E.exit.i": ; preds = %bb.b
  resume { ptr, i32 } %i.a

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit": ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h86d6ffc4b9a315b5E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.a = ptrtoint ptr %.val to i64
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h4bb30f154328ad08E.exit"
    i64 3, label %bb.b
    i64 0, label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h4bb30f154328ad08E.exit"
    i64 1, label %bb.c
  ], !prof !262

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.val, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.c)
  br label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h4bb30f154328ad08E.exit"

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val, i64 -1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8     ; 5 uses
  %i.e = getelementptr i8, ptr %.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !nonnull !4, !align !5, !noundef !4 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !12, !invariant.load !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !6, !invariant.load !4 ; 2 uses
  %i.k = icmp ult i64 %i.j, -9223372036854775807
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.h, 0
end_hunk_0
