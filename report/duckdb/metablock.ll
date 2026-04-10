inline.NumInlined: 13
inline.NumDeleted: 8
begin_hunk_0_@_ZN13duckdb_brotli20BrotliBuildMetaBlockEPNS_13MemoryManagerEPKhmmP19BrotliEncoderParamshhPNS_7CommandEmNS_11ContextTypeEPNS_14MetaBlockSplitE:bb.a
  %i.cl = zext i32 %i.ck to i64                   ; 2 uses
  %i.cm = and i64 %i.ch, %i.r
  %i.cn = lshr i64 %i.ch, %i.cl
  %i.co = sub nsw i64 %i.cl, %indvars.iv          ; 2 uses
  %i.cp = shl nsw i64 %i.co, 10
  %i.cq = shl nsw i64 %i.co, 1
  %11 = or i64 %i.cn, 65534
  %12 = add i64 %i.cq, %11
  %i.cr = shl i64 %12, %indvars.iv
  %i.cs = add nuw nsw i64 %i.cm, %i.bd
  %i.ct = add i64 %i.cs, %i.cr
  %i.cu = or i64 %i.ct, %i.cp
end_hunk_0
begin_hunk_1_@_ZN13duckdb_brotli20BrotliBuildMetaBlockEPNS_13MemoryManagerEPKhmmP19BrotliEncoderParamshhPNS_7CommandEmNS_11ContextTypeEPNS_14MetaBlockSplitE:bb.a
  %i.he = xor i32 %notmask.i16.i, -1
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = and i64 %i.gz, %i.hf
  %i.hh = lshr i64 %i.gz, %i.hd                   ; 2 uses
  %i.hi = and i64 %i.hh, 1
  %i.hj = or disjoint i64 %i.hi, 2
  %i.hk = shl i64 %i.hj, %i.hd
  %i.hl = sub nsw i64 %i.hd, %i.gv                ; 2 uses
  %i.hm = shl nsw i64 %i.hl, 10
  %i.hn = shl nsw i64 %i.hl, 1
  %13 = or i64 %i.hh, 65534
  %14 = add i64 %i.hn, %13
  %i.ho = shl i64 %14, %i.gv
  %i.hp = add nuw nsw i64 %i.hg, %i.gr
  %i.hq = add i64 %i.hp, %i.ho
  %i.hr = or i64 %i.hq, %i.hm
end_hunk_1
